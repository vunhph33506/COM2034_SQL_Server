﻿CREATE DATABASE QLNHATRO_PH33506
USE QLNHATRO_PH33506
GO

CREATE TABLE LOAINHA(
	ID_LOAINHA NCHAR(10) PRIMARY KEY NOT NULL,
	TEN_LOAINHA NVARCHAR(255) NOT NULL
);
INSERT INTO LOAINHA (ID_LOAINHA, TEN_LOAINHA) VALUES
('1', N'Căn hộ chung cư'),
('2', N'Nhà riêng'),
('3', N'Phòng trọ kín'),
('4', N'Căn hộ mini'),
('5', N'Phòng trọ chung');

CREATE TABLE NGUOIDUNG(
	ID_NGUOIDUNG NCHAR(10) PRIMARY KEY NOT NULL,
	TEN_NGUOIDUNG NVARCHAR(255) NOT NULL,
	GIOITINH NVARCHAR(4) NOT NULL,
	DIENTHOAI NVARCHAR(11) NOT NULL,
	DIACHI NVARCHAR(255) NOT NULL,
	QUAN NVARCHAR(50) NOT NULL,
	EMAIL NVARCHAR(100) NULL
);
INSERT INTO NGUOIDUNG(ID_NGUOIDUNG, TEN_NGUOIDUNG, GIOITINH, DIENTHOAI, DIACHI, QUAN, EMAIL) VALUES
('1', 'NGUYEN VAN A', 'Nam', '0987654321', 'SO 10, DUONG TRAN DUY HUNG, QUAN CAU GIAY', 'CAU GIAY', 'VAN.A@gmail.com'),
('2', 'TRAN THI B', 'Nu', '0123456789', 'SO 20, DUONG NGUYEN CHI THANH, QUAN DONG DA', 'DONG DA', 'THI.B@gmail.com'),
('3', 'LE VAN C', 'Nam', '0909090909', 'SO 30, DUONG HAI BA TRUNG, QUAN HOAN KIEM', 'HOAN KIEM', 'VAN.C@gmail.com'),
('4', 'NGUYEN THI D', 'Nu', '0912345678', 'SO 40, DUONG LANG, QUAN DONG DA', 'DONG DA', 'THI.D@gmail.com'),
('5', 'PHAM VAN E', 'Nam', '0987123456', 'SO 50, DUONG NGUYEN VAN CU, QUAN LONG BIEN', 'LONG BIEN', 'VAN.E@gmail.com'),
('6', 'TRAN THI F', 'Nu', '0909090909', 'SO 60, DUONG NGUYEN TRAI, QUAN THANH XUAN', 'THANH XUAN', 'THI.F@gmail.com'),
('7', 'HOANG VAN G', 'Nam', '0912345678', 'SO 70, DUONG HO TUNG MAU, QUAN CAU GIAY', 'CAU GIAY', 'VAN.G@gmail.com'),
('8', 'NGUYEN THI H', 'Nu', '0987123456', 'SO 80, DUONG DOI CAN, QUAN BA DINH', 'BA DINH', 'THI.H@gmail.com'),
('9', 'LE VAN I', 'Nam', '0909090909', 'SO 90, DUONG PHAM HUNG, QUAN NAM TU LIEM', 'NAM TU LIEM', 'VAN.I@gmail.com'),
('10', 'PHAM THI K', 'Nu', '0912345678', 'SO 100, DUONG NGUYEN VAN LINH, QUAN HA DONG', 'HA DONG', 'THI.K@gmail.com'),
('11', 'TRAN VAN L', 'Nam', '0987123456', 'SO 110, DUONG PHAM HUNG, QUAN NAM TU LIEM', 'NAM TU LIEM', 'VAN.L@gmail.com'),
('12', 'NGUYEN THI M', 'Nu', '0909090909', 'SO 120, DUONG TRAN DUY HUNG, QUAN CAU GIAY', 'CAU GIAY', 'THI.M@gmail.com'),
('13', 'LE VAN N', 'Nam', '0912345678', 'SO 130, DUONG LE VAN LUONG, QUAN THANH XUAN', 'THANH XUAN', 'VAN.N@gmail.com'),
('14', 'PHAM THI O', 'Nu', '0987123456', 'SO 140, DUONG NGUYEN VAN CU, QUAN LONG BIEN', 'LONG BIEN', 'THI.O@gmail.com'),
('15', 'HOANG VAN P', 'Nam', '0909090909', 'SO 150, DUONG PHAM HUNG, QUAN NAM TU LIEM', 'NAM TU LIEM', 'VAN.P@gmail.com'),
('16', 'TRAN THI Q', 'Nu', '0912345678', 'SO 160, DUONG PHAM HUNG, QUAN NAM TU LIEM', 'NAM TU LIEM', 'THI.Q@gmail.com'),
('17', 'NGUYEN VAN S', 'Nam', '0987123456', 'SO 170, DUONG TRAN DUY HUNG, QUAN CAU GIAY', 'CAU GIAY', 'VAN.S@gmail.com'),
('18', 'LE THI T', 'Nu', '0909090909', 'SO 180, DUONG NGUYEN CHI THANH, QUAN DONG DA', 'DONG DA', 'THI.T@gmail.com'),
('19', 'HOANG VAN U', 'Nam', '0912345678', 'SO 190, DUONG HO TUNG MAU, QUAN CAU GIAY', 'CAU GIAY', 'VAN.U@gmail.com'),
('20', 'PHAM THI V', 'Nu', '0987123456', 'SO 200, DUONG TRAN DUY HUNG, QUAN CAU GIAY', 'CAU GIAY', 'THI.V@gmail.com');


CREATE TABLE NHATRO(
	ID_NHATRO NCHAR(10) PRIMARY KEY NOT NULL,
	ID_LOAINHA NCHAR(10) NOT NULL,
	DIENTICH FLOAT NOT NULL,
	GIAPHONG FLOAT NOT NULL,
	DIACHI NVARCHAR(255) NOT NULL,
	QUAN NVARCHAR(50) NOT NULL,
	MOTA NVARCHAR(MAX) NOT NULL,
	NGAY_DANGTIN DATE NOT NULL,
	ID_NGUOIDUNG NCHAR(10) NOT NULL,
	FOREIGN KEY(ID_LOAINHA) REFERENCES LOAINHA(ID_LOAINHA),
	FOREIGN KEY(ID_NGUOIDUNG) REFERENCES NGUOIDUNG(ID_NGUOIDUNG)
);
INSERT INTO NHATRO(ID_NHATRO, ID_LOAINHA, DIENTICH, GIAPHONG, DIACHI, QUAN, MOTA, NGAY_DANGTIN, ID_NGUOIDUNG) VALUES
('1', '1', 30.0, 3000000.0, 'SỐ 10, DUONG TRAN DUY HUNG, QUAN CAU GIAY', 'CAU GIAY', 'PHONG TRO MOI XAY, THOANG MAT, CO BAN CONG', '2022-05-10', '15'),
('2', '3', 25.0, 2500000.0, 'SỐ 20, DUONG NGUYEN CHI THANH, QUAN DONG DA', 'DONG DA', 'PHONG TRO TIEN NGHI, GAN TRUONG HOC VA CHO', '2022-07-15', '3'),
('3', '2', 35.0, 3500000.0, 'SỐ 30, DUONG HAI BA TRUNG, QUAN HOAN KIEM', 'HOAN KIEM', 'PHONG TRO CO NOI THAT DAY DU, GAN KHU TRUNG TAM THANH PHO', '2022-09-20', '12'),
('4', '4', 28.0, 2800000.0, 'SỐ 40, DUONG LANG, QUAN DONG DA', 'DONG DA', 'PHONG TRO MOI XAY, AN NINH TOT, GAN BEN XE VA TRUONG HOC', '2022-11-05', '19'),
('5', '5', 32.0, 3200000.0, 'SỐ 50, DUONG NGUYEN VAN CU, QUAN LONG BIEN', 'LONG BIEN', 'PHONG TRO SACH SE, YEN TINH, GAN GIAO THONG THUAN TIEN', '2023-01-10', '5'),
('6', '1', 40.0, 4000000.0, 'SỐ 60, DUONG NGUYEN TRAI, QUAN THANH XUAN', 'THANH XUAN', 'PHONG TRO RONG RAI, GAN CONG VIEN VA SIEU THI', '2023-03-25', '7'),
('7', '3', 30.0, 3200000.0, 'SỐ 70, DUONG NGUYEN KHUYEN, QUAN TAY HO', 'TAY HO', 'PHONG TRO GAN HO TAY, VIEW DEP, AN NINH 24/7', '2023-05-05', '1'),
('8', '2', 28.0, 2800000.0, 'SỐ 80, DUONG PHAM HUNG, QUAN NAM TU LIEM', 'NAM TU LIEM', 'PHONG TRO MOI XAY, GAN TRUONG DAI HOC, KTX SINH VIEN', '2023-07-10', '18'),
('9', '4', 35.0, 3500000.0, 'SỐ 90, DUONG LE DAI HANH, QUAN HAI BA TRUNG', 'HAI BA TRUNG', 'PHONG TRO GAN BENH VIEN, GIAO THONG THUAN TIEN', '2023-09-15', '4'),
('10', '5', 32.0, 3200000.0, 'SỐ 100, DUONG NGUYEN KHANH TOAN, QUAN CAU GIAY', 'CAU GIAY', 'PHONG TRO MOI XAY, TIEN NGHI DAY DU, GAN SIEU THI', '2023-11-20', '10'),
('11', '1', 30.0, 3000000.0, 'SỐ 110, DUONG LE VAN LUONG, QUAN THANH XUAN', 'THANH XUAN', 'PHONG TRO MOI XAY, GAN CONG VIEN, TRUONG HOC', '2023-01-25', '13'),
('12', '3', 25.0, 2500000.0, 'SỐ 120, DUONG NGUYEN TRAI, QUAN HA DONG', 'HA DONG', 'PHONG TRO SACH SE, GAN CHO, GIAO THONG THUAN TIEN', '2023-03-05', '11'),
('13', '2', 35.0, 3500000.0, 'SỐ 130, DUONG TRAN PHU, QUAN BA DINH', 'BA DINH', 'PHONG TRO CO GAC, GAN BENH VIEN, TRUONG DAI HOC', '2023-05-10', '9'),
('14', '4', 28.0, 2800000.0, 'SỐ 140, DUONG HOANG QUOC VIET, QUAN CAU GIAY', 'CAU GIAY', 'PHONG TRO MOI XAY, GAN SIEU THI, BENH VIEN', '2023-07-15', '8'),
('15', '5', 32.0, 3200000.0, 'SỐ 150, DUONG PHAM VAN DONG, QUAN THANH TRI', 'THANH TRI', 'PHONG TRO GAN CHO, GIAO THONG THUAN TIEN', '2023-09-20', '20'),
('16', '1', 30.0, 3000000.0, 'SỐ 160, DUONG NGUYEN VAN LINH, QUAN HA DONG', 'HA DONG', 'PHONG TRO MOI XAY, GAN TRUONG DAI HOC, CHO', '2023-11-05', '2'),
('17', '3', 35.0, 3500000.0, 'SỐ 170, DUONG NGUYEN DINH CHIEU, QUAN HAI BA TRUNG', 'HAI BA TRUNG', 'PHONG TRO GAN TRUONG CAO DANG, SIEU THI', '2024-01-10', '17'),
('18', '2', 32.0, 3200000.0, 'SỐ 180, DUONG LE THANH NGHI, QUAN DONG DA', 'DONG DA', 'PHONG TRO MOI XAY, GAN CONG VIEN, TRUONG HOC', '2024-03-15', '6'),
('19', '4', 30.0, 3000000.0, 'SỐ 190, DUONG DE THAM, QUAN BA DINH', 'BA DINH', 'PHONG TRO GAN CONG VIEN, BENH VIEN', '2024-05-20', '16'),
('20', '5', 35.0, 3500000.0, 'SỐ 200, DUONG NGUYEN TRAI, QUAN HA DONG', 'HA DONG', 'PHONG TRO GAN TRUONG DAI HOC, BENH VIEN', '2024-07-25', '14');

CREATE TABLE DANHGIA(
	ID_DANHGIA NCHAR(10) PRIMARY KEY NOT NULL,
	ID_NGUOIDUNG NCHAR(10) NOT NULL,
	ID_NHATRO NCHAR(10) NOT NULL,
	LIKE_DISLIKE BIT NOT NULL,
	ND_DANHGIA NVARCHAR(MAX) NULL,
	FOREIGN KEY(ID_NGUOIDUNG) REFERENCES NGUOIDUNG(ID_NGUOIDUNG),
	FOREIGN KEY(ID_NHATRO) REFERENCES NHATRO(ID_NHATRO)
);
INSERT INTO DANHGIA (ID_DANHGIA, ID_NGUOIDUNG, ID_NHATRO, LIKE_DISLIKE, ND_DANHGIA) VALUES
('1', '7', '12', 1, 'PHONG RONG RAI, GIA CA PHAI CHANG'),
('2', '13', '6', 0, 'PHONG HEP HOI, GIA HOI CAO VOI DIEN TICH'),
('3', '5', '9', 1, 'DIA CHI THUAN TIEN, PHONG SACH SE'),
('4', '10', '3', 1, 'GIA CA PHU HOP, GAN CONG VIEN'),
('5', '15', '20', 0, 'PHONG THIEU ANH SANG, DIA CHI HOI XA'),
('6', '6', '16', 1, 'PHONG RONG RAI, GAN CONG VIEN VA SIEU THI'),
('7', '16', '8', 0, 'GIA CAO VOI DIEN TICH, KHONG CO CHO DE XE'),
('8', '4', '13', 1, 'PHONG TRO MOI XAY, GAN TRUONG DAI HOC, KTX SINH VIEN'),
('9', '10', '17', 1, 'PHONG TRO GAN BENH VIEN, GIAO THONG THUAN TIEN'),
('10', '13', '1', 0, 'GIA CAO VOI TIEN NGHI, KHONG CO INTERNET'),
('11', '11', '14', 1, 'PHONG TRO MOI XAY, GAN CONG VIEN, TRUONG HOC'),
('12', '9', '2', 0, 'GIA PHONG CAO, DIA CHI KHONG TIEN LOI'),
('13', '8', '15', 1, 'PHONG TRO CO GAC, GAN BENH VIEN, TRUONG DAI HOC'),
('14', '20', '4', 1, 'PHONG TRO MOI XAY, GAN SIEU THI, BENH VIEN'),
('15', '2', '19', 0, 'GIA PHONG CAO, KHONG CO CHO DE XE'),
('16', '17', '5', 1, 'PHONG TRO MOI XAY, GAN TRUONG DAI HOC, CHO'),
('17', '19', '10', 0, 'GIA PHONG KHONG HOP LY, KHONG CO INTERNET'),
('18', '14', '18', 1, 'PHONG TRO MOI XAY, GAN CONG VIEN, TRUONG HOC'),
('19', '12', '7', 1, 'PHONG TRO GAN CONG VIEN, BENH VIEN')

SELECT NGUOIDUNG.ID_NGUOIDUNG ,NGUOIDUNG.TEN_NGUOIDUNG, LOAINHA.TEN_LOAINHA,NHATRO.DIACHI ,NHATRO.GIAPHONG ,NHATRO.DIENTICH ,DANHGIA.LIKE_DISLIKE ,DANHGIA.ND_DANHGIA FROM NGUOIDUNG
JOIN NHATRO ON NHATRO.ID_LOAINHA LIKE NGUOIDUNG.ID_NGUOIDUNG
JOIN LOAINHA ON LOAINHA.ID_LOAINHA LIKE NHATRO.ID_LOAINHA
JOIN DANHGIA ON NGUOIDUNG.ID_NGUOIDUNG LIKE DANHGIA.ID_DANHGIA