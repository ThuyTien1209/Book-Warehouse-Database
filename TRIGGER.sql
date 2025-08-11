-- Cập nhật số lượng sách sau khi xuất, thông báo cần nhập thêm nếu dưới mức tồn tối thiểu
-- Mức tồn tối thiểu sách loại A: 10
-- Mức tồn tối thiểu sách loại B: 50
-- Mức tồn tối thiểu sách loại C: 80


CREATE TRIGGER TRG_SACH_CTDH
ON CTDH
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @SOLUONGCON INT, @SOLUONGBAN INT, @MASACH CHAR(4), @MALOAI CHAR(1), @MINSOLUONG INT;

    -- Lấy thông tin từ bảng INSERTED
    SELECT @SOLUONGBAN = SL, @MASACH = MASACH
    FROM INSERTED;

    -- Lấy số lượng tồn kho hiện tại của sách
    SELECT @SOLUONGCON = SL, @MALOAI = MALOAI
    FROM ANPHAM
    WHERE MASACH = @MASACH;

    -- Xác định mức tồn tối thiểu dựa trên loại sách
    IF @MALOAI = 'A'
        SET @MINSOLUONG = 10;
    ELSE IF @MALOAI = 'B'
        SET @MINSOLUONG = 50;
    ELSE IF @MALOAI = 'C'
        SET @MINSOLUONG = 80;

    -- Kiểm tra nếu số lượng xuất lớn hơn số lượng tồn kho
    IF (@SOLUONGBAN > @SOLUONGCON)
    BEGIN
        PRINT N'Mã sách này không có đủ số lượng để xuất';
        ROLLBACK TRANSACTION;
    END

    -- Kiểm tra nếu số lượng xuất làm tồn kho còn ít hơn mức tồn tối thiểu (loại A: 10 đơn vị, loại B: 50 đơn vị, loại C: 80 đơn vị)
    ELSE IF (@SOLUONGCON - @SOLUONGBAN < @MINSOLUONG)
    BEGIN
        PRINT N'Sau khi xuất số lượng còn ít hơn ' +  CAST(@MINSOLUONG AS NVARCHAR) + N' cuốn. Vui lòng nhập thêm.';
        -- Chỉ cho phép xuất nếu số lượng trong kho còn đủ sau khi xuất
        IF (@SOLUONGCON >= @SOLUONGBAN)
        BEGIN
            UPDATE ANPHAM
            SET SL = SL - @SOLUONGBAN
            WHERE MASACH = @MASACH;
        END
        ELSE
        BEGIN
            PRINT N'Số lượng không đủ để xuất';
            ROLLBACK TRANSACTION;
        END
    END
    -- Nếu không vi phạm mức tồn tối thiểu, chỉ cần cập nhật số lượng

    ELSE
    BEGIN
        UPDATE ANPHAM
        SET SL = SL - @SOLUONGBAN
        WHERE MASACH = @MASACH;
    END
END;


-- Thông báo nếu nhập hàng vượt quá sức chứa của kho 

CREATE TRIGGER trg_CheckStockLimit1
ON CTPN
AFTER INSERT
AS
BEGIN
    DECLARE @MASACH CHAR(5);
    DECLARE @SL_NHAP INT;
    DECLARE @SL_QUYEN INT;
    DECLARE @DVT NVARCHAR(10);  -- Đơn vị tính của sách
    DECLARE @TOTAL_QUANTITY INT;

    -- Lấy thông tin sách và số lượng nhập từ bảng CTPN
    SELECT @MASACH = MASACH, @SL_NHAP = SL
    FROM INSERTED;

    -- Lấy thông tin đơn vị tính (DVT) của sách từ bảng ANPHAM
    SELECT @DVT = DVT
    FROM ANPHAM
    WHERE MASACH = @MASACH;

    -- Tính số lượng quyển sách nhập vào dựa trên đơn vị tính
    IF @DVT = N'Bộ'  -- Nếu đơn vị tính là "Bộ", mỗi bộ có 2 quyển
    BEGIN
        SET @SL_QUYEN = @SL_NHAP * 2;
    END
    ELSE IF @DVT = 'Boxset'  -- Nếu đơn vị tính là "Boxset", mỗi boxset có 4 quyển
    BEGIN
        SET @SL_QUYEN = @SL_NHAP * 4;
    END
    ELSE  -- Nếu đơn vị tính là quyển (hoặc khác), số lượng quyển là chính xác số lượng nhập
    BEGIN
        SET @SL_QUYEN = @SL_NHAP;
    END

    -- Tính tổng số lượng quyển sách trong kho
    SELECT @TOTAL_QUANTITY = SUM(SL * CASE 
                                         WHEN DVT = 'Bộ' THEN 2
                                         WHEN DVT = 'Boxset' THEN 4
                                         ELSE 1
                                       END)
    FROM ANPHAM;

    -- Kiểm tra nếu tổng số lượng sách trong kho cộng với số lượng sách nhập vào vượt quá sức chứa kho (27,000 cuốn)
    IF @TOTAL_QUANTITY + @SL_QUYEN > 27000
    BEGIN
        -- Nếu vượt quá sức chứa, hiển thị thông báo lỗi và rollback giao dịch
        PRINT N'Số lượng sách nhập vào vượt quá sức chứa kho (27,000 cuốn)';
        ROLLBACK TRANSACTION;
    END
END;

-- Tự động cập nhật số lượng hàng trong kho sau khi nhập hàng

CREATE TRIGGER trg_AfterInsert_CTPN
ON CTPN
AFTER INSERT
AS
BEGIN
    -- Tự động cập nhật số lượng tồn kho trong bảng ANPHAM sau khi nhập sách
    DECLARE @MASACH CHAR (4);
    DECLARE @SL_NHAP INT;

    -- Lấy thông tin sách và số lượng nhập từ bảng CTPN
    SELECT @MASACH = MASACH, @SL_NHAP = SL
    FROM INSERTED;  -- INSERTED chứa các bản ghi vừa được thêm vào CTPN

    -- Cập nhật số lượng tồn kho trong bảng ANPHAM
    UPDATE ANPHAM
    SET SL = SL + @SL_NHAP
    WHERE MASACH = @MASACH;
END;







-- TRIGGER ĐẶC THÙ CHO TỪNG CHỨC VỤ
-- Trigger cho Kế toán kho: Tạo hóa đơn
CREATE TRIGGER TRG_NV_HD
ON HOADON
AFTER INSERT
AS
BEGIN
    DECLARE @MANV VARCHAR(5), @CHUCVU NVARCHAR(50);
    
    SELECT @MANV = MANV
    FROM INSERTED;
	SELECT @CHUCVU = CHUCVU FROM NHANVIEN WHERE MANV = @MANV

    IF @CHUCVU <> N'Kế toán kho'
    BEGIN
        PRINT N'Chỉ có Kế toán kho mới được tạo hóa đơn';
        ROLLBACK TRANSACTION;  
    END
END;

-- Trigger cho Giám sát kho: Tạo phiếu kiểm kê
CREATE TRIGGER TRG_NV_KK
ON KIEMKE
AFTER INSERT
AS
BEGIN
    DECLARE @MANV VARCHAR(5), @CHUCVU NVARCHAR(50);
    
    SELECT @MANV = MANV
    FROM INSERTED;
	SELECT @CHUCVU = CHUCVU FROM NHANVIEN WHERE MANV = @MANV

    IF @CHUCVU <> N'Giám sát kho'
    BEGIN
        PRINT N'Chỉ có Giám sát kho mới được tạo phiếu kiểm kê';
        ROLLBACK TRANSACTION;  
    END
END;
DELETE FROM KIEMKE WHERE MAKK = 'KK002'
INSERT INTO KIEMKE VALUES ('KK002', '2024-10-01', 'NV08')







