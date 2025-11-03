-- PHANLOAI
INSERT INTO PHANLOAI (MALOAI, TENLOAI) VALUES
	('A', N'Sách có giá trị cao'),
	('B', N'Sách có giá trị trung bình'),
	('C', N'Sách có giá trị thấp');


-- SACH
INSERT INTO ANPHAM (MASACH, TENSACH, DVT, SL, MALOAI) VALUES
	('S001', N'Truyện Kiều', N'Quyển', '225', 'A'),
	('S002', N'Ngày xưa có một chuyện tình', N'Quyển', '94', 'C'),
	('S003', N'Tôi thấy hoa vàng trên cỏ xanh', N'Quyển', '130', 'B'),
	('S004', N'Một đời như kẻ tìm đường', N'Quyển', '139', 'C'),
	('S005', N'Harry Potter', N'Bộ', '152', 'B'),
	('S006', N'Nhóc Miko! Cô bé nhí nhảnh', N'Quyển', '173', 'A'),
	('S007', N'Đừng bao giờ đi ăn một mình', N'Quyển', '89', 'B'),
	('S008', N'Vừa nhắm mắt vừa mở cửa sổ', N'Quyển', '131', 'A'),
	('S009', N'Attack on Titan', N'Quyển', '223', 'B'),
	('S010', N'Tiền không mua được gì', N'Quyển', '226', 'B'),
	('S011', N'Tiếp thị 5.0: Công nghệ vị nhân sinh', N'Bộ', '293', 'B'),
	('S012', N'Bộ Manga - Nhóc Miko', N'Boxset', '233', 'C'),
	('S013', N'Võ Nguyên Giáp - Hào khí trăm năm', N'Quyển', '272', 'B'),
	('S014', N'Dấn thân', N'Quyển', '182', 'C'),
	('S015', N'1% Nỗ lực', N'Quyển', '211', 'B');


-- TACGIA
INSERT INTO TACGIA (MATG, HOTEN, NGAYSINH, GIOITINH, QUOCTICH) VALUES
	('TG01', N'Nguyễn Nhật Ánh', '1959-09-04', N'Nam', N'Việt Nam'),
	('TG02', N'Thu Giang', '1970-01-01', N'Nữ', N'Việt Nam'),
	('TG03', N'J.K. Rowling', '1965-07-31', N'Nữ', N'Anh'),
	('TG04', N'Nguyễn Duy Cẩn', '1907-07-15', N'Nam', N'Việt Nam'),
	('TG05', N'Nguyễn Ngọc Tư', '1988-01-20', N'Nữ', N'Việt Nam'),
	('TG06', N'Hồ Anh Thái', '1943-11-27', N'Nam', N'Việt Nam'),
	('TG07', N'Nguyễn Ngọc Thuần', '1954-02-24', N'Nam', N'Việt Nam'),
	('TG08', N'Sơn Nam', '1926-12-11', N'Nam', N'Việt Nam'),
	('TG09', N'Phạm Toàn', '1932-07-01', N'Nam', N'Việt Nam'),
	('TG10', N'Nguyễn Du', '1766-01-03', N'Nam', N'Việt Nam');


-- THELOAI
INSERT INTO THELOAI (MATL, TENTL, MOTA) VALUES
	('TL001', N'Tâm lý, tình cảm', N'Truyện ngắn hay những cuốn tiểu thuyết dài kỳ.'),
	('TL002', N'Tôn giáo', N'Sách nói về tư tưởng tôn giáo, nguồn gốc ra đời.'),
	('TL003', N'Văn hoá xã hội', N'Sách nói về nhiều khía cạnh trong cuộc sống.'),
	('TL004', N'Lịch sử', N'Sách nói về những dấu mốc những sự kiện lịch sử.'),
	('TL005', N'Văn học viễn tưởng', N'Sách viết nên từ trí tưởng tượng của con người.'),
	('TL006', N'Tiểu sử, tự truyện', N'Sách kể về cuộc đời hay những trải nghiệm có thật của chính tác giả. '),
	('TL007', N'Kinh dị, bí ẩn', N'Sách phù thuỷ, pháp sư, ma quỷ, ám hại...'),
	('TL008', N'Dạy nấu ăn', N'Sách chứa  những bí quyết để tạo nên một món ăn.'),
	('TL009', N'Khoa học công nghệ', N'Sách cung cấp các thông tin và các kiến thức liên quan tới khoa học và công nghệ.'),
	('TL010', N'Truyền cảm hứng', N'Sách nội dung tích cực.'),
	('TL011', N'Thiếu nhi', N'Sách có nội dung gần gũi với cuộc sống.');

-- VITRI
INSERT INTO VITRI (MAVITRI, KHUVUC, KE, TANG) VALUES
	('A-K01-T01', 'A', 'K01', 'T01'),
	('A-K01-T02', 'A', 'K01', 'T02'),
	('A-K01-T03', 'A', 'K01', 'T03'),
	('A-K01-T04', 'A', 'K01', 'T04'),
	('A-K01-T05', 'A', 'K01', 'T05'),
	('A-K02-T01', 'A', 'K02', 'T01'),
	('A-K02-T02', 'A', 'K02', 'T02'),
	('A-K02-T03', 'A', 'K02', 'T03'),
	('A-K02-T04', 'A', 'K02', 'T04'),
	('A-K02-T05', 'A', 'K02', 'T05'),
	('A-K03-T01', 'A', 'K03', 'T01'),
	('A-K03-T02', 'A', 'K03', 'T02'),
	('A-K03-T03', 'A', 'K03', 'T03'),
	('A-K03-T04', 'A', 'K03', 'T04'),
	('A-K03-T05', 'A', 'K03', 'T05'),
	('B-K01-T01', 'B', 'K01', 'T01'),
	('B-K01-T02', 'B', 'K01', 'T02'),
	('B-K01-T03', 'B', 'K01', 'T03'),
	('B-K01-T04', 'B', 'K01', 'T04'),
	('B-K01-T05', 'B', 'K01', 'T05'),
	('B-K02-T01', 'B', 'K02', 'T01'),
	('B-K02-T02', 'B', 'K02', 'T02'),
	('B-K02-T03', 'B', 'K02', 'T03'),
	('B-K02-T04', 'B', 'K02', 'T04'),
	('B-K02-T05', 'B', 'K02', 'T05'),
	('B-K03-T01', 'B', 'K03', 'T01'),
	('B-K03-T02', 'B', 'K03', 'T02'),
	('B-K03-T03', 'B', 'K03', 'T03'),
	('B-K03-T04', 'B', 'K03', 'T04'),
	('B-K03-T05', 'B', 'K03', 'T05'),
	('C-K01-T02', 'C', 'K01', 'T02'),
	('C-K01-T03', 'C', 'K01', 'T03'),
	('C-K01-T04', 'C', 'K01', 'T04'),
	('C-K01-T05', 'C', 'K01', 'T05'),
	('C-K02-T01', 'C', 'K02', 'T01'),
	('C-K02-T02', 'C', 'K02', 'T02'),
	('C-K02-T03', 'C', 'K02', 'T03'),
	('C-K02-T04', 'C', 'K02', 'T04'),
	('C-K02-T05', 'C', 'K02', 'T05'),
	('C-K03-T01', 'C', 'K03', 'T01'),
	('C-K03-T02', 'C', 'K03', 'T02'),
	('C-K03-T03', 'C', 'K03', 'T03'),
	('C-K03-T04', 'C', 'K03', 'T04'),
	('C-K03-T05', 'C', 'K03', 'T05');
	

-- NCC
INSERT INTO NCC (MANCC, TENNCC, DIACHI, SDT, EMAIL) VALUES
	('NCC01', N'Nhà In Sài Gòn', N'123 Nguyễn Thị Minh Khai, Quận 1, Hồ Chí Minh', '028 3822 3333', 'nhainsg@gmail.com'),
	('NCC02', N'Nhà In Tiến Bộ', N'45 Trường Chinh, Quận Tân Bình, Hồ Chí Minh', '028 3865 4444', 'tienbo.print@gmail.com'),
	('NCC03', N'Nhà In Hòa Bình', N'78 Lê Quang Đạo, Quận 4, Hồ Chí Minh', '028 3912 5555', 'hoabinhnprint@gmail.com'),
	('NCC04', N'Nhà In Minh Long', N'12 Phan Đình Phùng, Quận Phú Nhuận, Hồ Chí Minh', '028 3993 6666', 'minhlong.print@gmail.com'),
	('NCC05', N'Nhà In Đại Việt', N'89 Lý Thái Tổ, Quận 10, Hồ Chí Minh', '028 3851 7777', 'daivietprinting@gmail.com'),
	('NCC06', N'Nhà In Thành Công', N'56 Võ Thị Sáu, Quận 3, Hồ Chí Minh', '028 3827 8888', 'thanhcongpress@gmail.com');


-- KHACHHANG
INSERT INTO KHACHHANG (MAKH, TEN, DIACHI, SDT, EMAIL) VALUES
	('KH01', N'Cá Chép', N'211 Võ Văn Tần, Phường 5, Quận 3, Hồ Chí Minh', '028 6290 6951', 'cachep@gmail.com'),
	('KH02', N'Nhã Nam', N'120 Trần Phú, Phường 4, Quận 5, Hồ Chí Minh', '028 3928 9876', 'nhanam@gmail.com'),
	('KH03', N'FAHASA', N'456 Nguyễn Thị Minh Khai, Quận 1, Hồ Chí Minh', '028 3833 1122', 'fahasa@gmail.com'),
	('KH04', N'ArtBook', N'25 Nguyễn Huệ, Quận 1, Hồ Chí Minh', '028 3823 2333', 'artbook@gmail.com'),
	('KH05', N'Alpha Books', N'34 Lê Lợi, Quận 1, Hồ Chí Minh', '028 3920 4444', 'alphabooks@gmail.com'),
	('KH06', N'Hải An', N'88 Cao Thắng, Phường 12, Quận 10, Hồ Chí Minh', '028 3962 5555', 'haian@gmail.com'),
	('KH07', N'Phương Nam', N'106 Lê Duẩn, Quận 1, Hồ Chí Minh', '028 3831 6666', 'phuongnam@gmail.com'),
	('KH08', N'Tổng hợp', N'15 Trường Chinh, Quận Tân Bình, Hồ Chí Minh', '028 3867 7777', 'tonghop@gmail.com'),
	('KH09', N'E.Book', N'7 Nguyễn Cảnh Dị, Quận Bình Thạnh, Hồ Chí Minh', '028 3898 8888', 'e.book@gmail.com'),
	('KH10', N'Kim Đồng', N'72 Nguyễn Thái Học, Quận 10, Hồ Chí Minh', '028 3832 9999', 'kimdong@gmail.com'),
	('KH11', N'Tràng An', N'50 Lý Tự Trọng, Quận 1, Hồ Chí Minh', '028 3928 1111', 'trangan@gmail.com'),
	('KH12', N'Trí Đức', N'123 Phan Đình Phùng, Quận Phú Nhuận, Hồ Chí Minh', '028 3899 0000', 'triduc@gmail.com');


-- NHANVIEN
INSERT INTO NHANVIEN (MANV, HOTEN, GIOITINH, CHUCVU, SDT, EMAIL, GIOLAM) VALUES
	('NV01', N'Trịnh Trần Phương Tuấn', N'Nam ', N'Thủ kho', '0526170972', 'tuantrinh@gmail.com', '197'),
	('NV02', N'Đỗ Phú Quí', N'Nam ', N'Giám sát kho', '0526170973', 'quido@gmail.com', '203'),
	('NV03', N'Trần Minh Hiếu', N'Nam ', N'Kế toán kho', '0526170974', 'hieutran@gmail.com', '190'),
	('NV04', N'Nguyễn Thanh Tùng', N'Nam ', N'Nhân viên kho', '0526170975', 'tungnguyen@gmail.com', '211'),
	('NV05', N'Nguyễn Bảo Khánh', N'Nam ', N'Nhân viên kho', '0526170976', 'khanhnguyen@gmail.com', '240'),
	('NV06', N'Lê Trung Kiên', N'Nam ', N'Nhân viên kho', '0526170977', 'kienle@gmail.com', '176'),
	('NV07', N'Hoàng Việt Bảo Minh', N'Nam ', N'Nhân viên kho', '0526170978', 'minhhoang@gmail.com', '227'),
	('NV08', N'Nghiêm Vũ Hoàng Long', N'Nam ', N'Nhân viên kho', '0526170979', 'longnghiem@gmail.com', '226'),
	('NV09', N'Nguyễn Thảo Linh', N'Nữ', N'Nhân viên kho', '0526170980', 'linhnguyen@gmail.com', '169'),
	('NV10', N'Phương Mỹ Chi', N'Nữ', N'Nhân viên kho', '0526170981', 'chiphuong@gmail.com', '168');


-- PHIEUNHAP
INSERT INTO PHIEUNHAP (MAPN, NGAYNHAP, MANCC, MANV) VALUES
	('PN001', '2024-01-01', 'NCC01', 'NV04'),
	('PN002', '2024-01-15', 'NCC02', 'NV05'),
	('PN003', '2024-02-01', 'NCC06', 'NV06'),
	('PN004', '2024-02-15', 'NCC04', 'NV07'),
	('PN005', '2024-03-01', 'NCC05', 'NV07'),
	('PN006', '2024-03-15', 'NCC06', 'NV04'),
	('PN007', '2024-04-01', 'NCC03', 'NV10'),
	('PN008', '2024-04-15', 'NCC02', 'NV10'),
	('PN009', '2024-05-01', 'NCC06', 'NV10'),
	('PN010', '2024-05-15', 'NCC01', 'NV04');


-- DONHANG
INSERT INTO DONHANG (MADH, NGAYXUAT, MAKH, MANV) VALUES
	('DH001', '2024-09-05', 'KH01', 'NV04'),
	('DH002', '2024-09-11', 'KH02', 'NV05'),
	('DH003', '2024-09-15', 'KH03', 'NV06'),
	('DH004', '2024-09-25', 'KH04', 'NV07'),
	('DH005', '2024-10-10', 'KH05', 'NV08'),
	('DH006', '2024-10-18', 'KH06', 'NV09'),
	('DH007', '2024-10-29', 'KH07', 'NV10'),
	('DH008', '2024-11-02', 'KH08', 'NV06'),
	('DH009', '2024-11-13', 'KH09', 'NV08'),
	('DH010', '2024-11-25', 'KH10', 'NV05');


-- HOADON
INSERT INTO HOADON (MAHD, NGAYLAP, MAKH, MANV) VALUES
	('HD001', '2024-01-02', 'KH01', 'NV03'),
	('HD002', '2024-01-11', 'KH02', 'NV03'),
	('HD003', '2024-04-12', 'KH03', 'NV03'),
	('HD004', '2024-01-28', 'KH04', 'NV03'),
	('HD005', '2024-02-14', 'KH05', 'NV03'),
	('HD006', '2024-03-15', 'KH06', 'NV03'),
	('HD007', '2024-01-08', 'KH07', 'NV03'),
	('HD008', '2024-04-20', 'KH08', 'NV03'),
	('HD009', '2024-02-08', 'KH09', 'NV03'),
	('HD010', '2024-03-02', 'KH10', 'NV03');


-- KIEMKE
INSERT INTO KIEMKE (MAKK, NGAYKIEM, MANV) VALUES
	('KK001', '2024-09-01', 'NV02');


-- CHITIETTACGIA
INSERT INTO CTTG (MASACH, MATG) VALUES
	('S001', 'TG03'),
	('S001', 'TG09'),
	('S002', 'TG05'),
	('S003', 'TG01'),
	('S004', 'TG04'),
	('S005', 'TG03'),
	('S005', 'TG02'),
	('S007', 'TG04'),
	('S008', 'TG08'),
	('S009', 'TG05'),
	('S009', 'TG04'),
	('S011', 'TG06'),
	('S012', 'TG01'),
	('S013', 'TG07'),
	('S013', 'TG05'),
	('S014', 'TG10'),
	('S015', 'TG03');



-- CHITIETDONHANG
INSERT INTO CTDH (MADH, MASACH, SL, DONGIA) VALUES
	('DH001', 'S006', '72', '618,299'),
	('DH001', 'S001', '20', '42,582'),
	('DH001', 'S003', '34', '116,159'),
	('DH001', 'S014', '51', '219,151'),
	('DH002', 'S015', '47', '508,708'),
	('DH002', 'S002', '55', '314,338'),
	('DH003', 'S001', '79', '285,623'),
	('DH004', 'S004', '50', '126,128'),
	('DH004', 'S005', '44', '67,744'),
	('DH004', 'S007', '27', '107,905'),
	('DH005', 'S006', '38', '176,109'),
	('DH005', 'S009', '36', '44,552'),
	('DH006', 'S008', '24', '61,144'),
	('DH006', 'S012', '70', '63,547'),
	('DH006', 'S010', '36', '33,833'),
	('DH006', 'S005', '59', '77,223'),
	('DH007', 'S011', '57', '38,783'),
	('DH007', 'S013', '21', '39,555'),
	('DH008', 'S014', '59', '110,693'),
	('DH009', 'S007', '24', '35,877'),
	('DH009', 'S015', '64', '107,375'),
	('DH009', 'S012', '53', '33,361'),
	('DH010', 'S001', '46', '45,426'),
	('DH010', 'S003', '42', '89,628');


-- CHITIETKIEMKE
INSERT INTO CTKK (MAKK, MASACH, SLDAT, SLKHONGDAT, CACHXULY) VALUES
	('KK001', 'S001', '180', '45', N'Hủy bỏ'),
	('KK001', 'S002', '75', '19', N'Trả về nhà cung cấp'),
	('KK001', 'S003', '104', '26', N'Hủy bỏ'),
	('KK001', 'S004', '111', '28', N'Hủy bỏ'),
	('KK001', 'S005', '122', '30', N'Trả về nhà cung cấp'),
	('KK001', 'S006', '138', '35', N'Trả về nhà cung cấp'),
	('KK001', 'S007', '71', '18', N'Hủy bỏ'),
	('KK001', 'S008', '105', '26', N'Hủy bỏ'),
	('KK001', 'S009', '178', '45', N'Hủy bỏ'),
	('KK001', 'S010', '181', '45', N'Trả về nhà cung cấp'),
	('KK001', 'S011', '234', '59', N'Hủy bỏ'),
	('KK001', 'S012', '186', '47', N'Hủy bỏ'),
	('KK001', 'S013', '218', '54', N'Hủy bỏ'),
	('KK001', 'S014', '146', '36', N'Hủy bỏ'),
	('KK001', 'S015', '169', '42', N'Trả về nhà cung cấp');

-- CHITIETTHELOAI
INSERT INTO CTTL (MASACH, MATL) VALUES
	('S001', 'TL001'),
	('S001', 'TL002'),
	('S002', 'TL004'),
	('S003', 'TL003'),
	('S004', 'TL005'),
	('S005', 'TL003'),
	('S006', 'TL009'),
	('S006', 'TL004'),
	('S007', 'TL005'),
	('S008', 'TL011'),
	('S009', 'TL002'),
	('S010', 'TL006'),
	('S011', 'TL004'),
	('S011', 'TL003'),
	('S012', 'TL001'),
	('S013', 'TL007'),
	('S014', 'TL003'),
	('S015', 'TL004');


--CHITIETVITRI
INSERT INTO CTVT (MASACH, MAVITRI) VALUES
	('S001', 'A-K01-T01'),
	('S002', 'A-K01-T03'),
	('S003', 'A-K03-T05'),
	('S004', 'A-K01-T05'),
	('S005', 'A-K01-T02'),
	('S006', 'A-K02-T02'),
	('S006', 'A-K02-T03'),
	('S007', 'A-K01-T03'),
	('S008', 'A-K01-T05'),
	('S009', 'A-K02-T04'),
	('S009', 'B-K01-T01'),
	('S010', 'B-K01-T03'),
	('S011', 'A-K03-T02'),
	('S012', 'A-K02-T01'),
	('S013', 'A-K01-T02'),
	('S014', 'A-K03-T03'),
	('S014', 'A-K03-T04'),
	('S015', 'A-K01-T03');


-- CHITIETPHIEUNHAP
INSERT INTO CTPN (MAPN, MASACH, SL, DONGIA) VALUES
	('PN001', 'S011', '41', '628,864'),
	('PN001', 'S002', '48', '41,322'),
	('PN001', 'S006', '34', '35,328'),
	('PN001', 'S001', '22', '154,627'),
	('PN002', 'S010', '3', '402,489'),
	('PN002', 'S004', '39', '263,674'),
	('PN002', 'S002', '25', '668,291'),
	('PN003', 'S003', '12', '279,797'),
	('PN003', 'S001', '20', '136,182'),
	('PN004', 'S004', '43', '63,546'),
	('PN004', 'S005', '40', '128,026'),
	('PN004', 'S007', '26', '77,047'),
	('PN005', 'S011', '8', '74,794'),
	('PN005', 'S001', '15', '67,100'),
	('PN005', 'S033', '49', '54,447'),
	('PN005', 'S006', '11', '108,534'),
	('PN005', 'S005', '17', '74,185'),
	('PN005', 'S007', '32', '90,544'),
	('PN006', 'S006', '34', '33,066'),
	('PN006', 'S002', '13', '111,904'),
	('PN006', 'S004', '33', '115,568'),
	('PN006', 'S007', '31', '47,403'),
	('PN006', 'S008', '34', '65,529'),
	('PN006', 'S003', '20', '66,578'),
	('PN006', 'S015', '29', '34,134'),
	('PN007', 'S007', '42', '110,071'),
	('PN007', 'S013', '30', '40,570'),
	('PN008', 'S008', '36', '31,870'),
	('PN008', 'S014', '42', '29,077'),
	('PN009', 'S009', '9', '94,701'),
	('PN009', 'S015', '8', '116,795'),
	('PN010', 'S010', '1', '85,807'),
	('PN010', 'S003', '18', '82,426'),
	('PN010', 'S004', '30', '103,286'),
	('PN010', 'S009', '17', '33,346'),
	('PN010', 'S008', '35', '118,395');
	SELECT * FROM CTPN

-- CHITIETHOADON
INSERT INTO CTHD (MAHD, MASACH, SL, DONGIA) VALUES
	('HD001', 'S006', '72', '618,299'),
	('HD001', 'S001', '20', '42,582'),
	('HD001', 'S003', '34', '116,159'),
	('HD001', 'S014', '51', '219,151'),
	('HD002', 'S015', '47', '508,708'),
	('HD002', 'S002', '55', '314,338'),
	('HD003', 'S001', '79', '285,623'),
	('HD004', 'S004', '50', '126,128'),
	('HD004', 'S005', '44', '67,744'),
	('HD004', 'S007', '27', '107,905'),
	('HD005', 'S006', '38', '176,109'),
	('HD005', 'S009', '36', '44,552'),
	('HD006', 'S008', '24', '61,144'),
	('HD006', 'S012', '70', '63,547'),
	('HD006', 'S010', '36', '33,833'),
	('HD006', 'S005', '59', '77,223'),
	('HD007', 'S011', '57', '38,783'),
	('HD007', 'S013', '21', '39,555'),
	('HD008', 'S014', '59', '110,693'),
	('HD009', 'S007', '24', '35,877'),
	('HD009', 'S015', '64', '107,375'),
	('HD009', 'S012', '53', '33,361'),
	('HD010', 'S001', '46', '45,426'),
	('HD010', 'S003', '42', '89,628');




