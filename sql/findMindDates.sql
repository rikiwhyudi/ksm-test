CREATE DEFINER=`root`@`%` FUNCTION `FindMinDate`(dates VARCHAR(255)) RETURNS date
    READS SQL DATA
    DETERMINISTIC
BEGIN

  DECLARE min_date DATE;           
  DECLARE date_str VARCHAR(10);     
  DECLARE current_position INT;         
  DECLARE str_length INT;       
  DECLARE next_comma INT;          
  DECLARE find_min_date INT;  

  SET current_position = 1;             
  SET str_length = LENGTH(dates);  
  SET min_date = NULL;             

  find_min_date: WHILE current_position <= str_length DO
    -- Cari posisi koma selanjutnya
    SET next_comma = LOCATE(',', dates, current_position);
    
    -- Ambil substring dari dates
    IF next_comma = 0 THEN
      SET date_str = SUBSTRING(dates, current_position);
    ELSE
      SET date_str = SUBSTRING(dates, current_position, next_comma - current_position);
    END IF;

    -- Ubah string menjadi tanggal dan temukan tanggal terkecil
    IF STR_TO_DATE(date_str, '%Y-%m-%d') IS NOT NULL THEN
      IF min_date IS NULL OR STR_TO_DATE(date_str, '%Y-%m-%d') < min_date THEN
        SET min_date = STR_TO_DATE(date_str, '%Y-%m-%d');
      END IF;
    END IF;

    IF next_comma = 0 THEN
      LEAVE find_min_date;
    END IF;

    -- Geser posisi untuk melewati koma dan spasi
    SET current_position = next_comma + 2;
  END WHILE;

  RETURN min_date;
END