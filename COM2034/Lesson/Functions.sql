﻿USE QLDA
GO
/*
JAVA: VOID == STORE PROCEDURE TRONG SQL
jAVA: RETURN STRUNG, INT, DOUBLE = FUNC TRONG SQL
FUNCTION DUOC TAO RA DE HOI TRO HOAC HOAT DONG DOC LAP
*/
IF OBJECT_ID('FN_TINH_TUOI', 'FN') IS NOT NULL
BEGIN
	DROP FUNCTION FN_TINH_TUOI
END
/*
3 LOAI FUNC:
- FN: TRA VE GIA TRI BINH THUONG
- IF: TRA VE 1 BANG
- TF: TRA VE NHIEU BANG
*/

-- TAO FUNCTION
CREATE FUNCTION FN_TINH_TUOI(@MANV NVARCHAR(9))
	RETURNS INT
	AS BEGIN
		DECLARE @RESULT INT; 
		SELECT @RESULT = YEAR(GETDATE()) - YEAR(NHANVIEN.NGSINH)
		FROM NHANVIEN WHERE MANV = @MANV
		RETURN @RESULT
	END

PRINT DBO.FN_TINH_TUOI('001')

-- XAY DUNG HAM TIM KIEM NV CO TON TAI HAY KHONG
CREATE FUNCTION FN_TIMNV(@MANV NVARCHAR(9))
	RETURNS BIT
AS BEGIN
	IF EXISTS(SELECT * FROM NHANVIEN WHERE MANV = @MANV)
	BEGIN
		RETURN 1
	END
	ELSE BEGIN
		RETURN 0
	END
	RETURN 0
END
BEGIN
	IF(DBO.FN_TIMNV('044') = 1)
	BEGIN
		PRINT 'TIM THAY NHAN VIEN'
	END ELSE
	BEGIN
		RAISERROR('KHONG TIM THAY', 16, 16)
	END
END


-- CAU 3 BAI THI:
-- TIM MANV VOI CAC THAM SO DAU VAO LA THONG TIN CUA NV DO
SELECT * FROM THANNHAN
-- B1: XOA NEU TON TAI
IF OBJECT_ID ('FN_TIMMANV', 'FN') IS NOT NULL
BEGIN
	DROP FUNCTION FN_TIMMANV
END
-- B2: TAO FUNC
CREATE FUNCTION FN_TIMMANV(@TENTN NVARCHAR(50), @PHAI NVARCHAR(50), @NGSINH NVARCHAR(50), @QUANHE NVARCHAR(50))
RETURNS NVARCHAR(9)
AS BEGIN
	IF EXISTS(SELECT * FROM THANNHAN WHERE TENTN = @TENTN AND PHAI = @PHAI AND NGSINH = @NGSINH AND QUANHE = @QUANHE)
	BEGIN
		DECLARE @RESULT NVARCHAR(9);
		SELECT @RESULT = MA_NVIEN FROM THANNHAN WHERE TENTN = @TENTN AND PHAI = @PHAI AND NGSINH = @NGSINH AND QUANHE = @QUANHE
		RETURN @RESULT
	END
	RETURN 'KHONG THAY'
END
PRINT DBO.FN_TIMMANV('Minh', 'NAM','1932-02-29', N'Vợ Chồng')

-- FUNCTION TRA VE TABLE
-- TAO HAM TIM CAC NHAN VIEN LUONG > 35000
CREATE FUNCTION IF_NVLUONGCAO(@LUONG INT)
RETURNS TABLE
AS 
	RETURN SELECT * FROM NHANVIEN WHERE LUONG> @LUONG
-- LUU Y: RETURN TBALE KHONG DUNG BEGIN END SAU AS
SELECT * FROM DBO.IF_NVLUONGCAO(35000)

-- FUNCTION DA CAU LENH VOI BANG