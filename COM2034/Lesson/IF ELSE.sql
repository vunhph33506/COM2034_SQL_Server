DECLARE @SCORE FLOAT;
SET @SCORE = 6.5;
IF @SCORE >= 8.5
	BEGIN
		PRINT 'DIEM TB: ' + CONVERT(NCHAR, @SCORE)
		PRINT 'GIOI';
	END
ELSE IF @SCORE >= 6.5
	BEGIN
		PRINT 'DIEM TB: ' + CONVERT(NCHAR, @SCORE)
		PRINT 'KHA';
	END

ELSE
	BEGIN
		PRINT 'DIEM TB: ' + CONVERT(NCHAR, @SCORE)
		PRINT 'YEU';
	END