CREATE DEFINER=`root`@`%` PROCEDURE `KursPajak`()
BEGIN

 DECLARE kurs_pajak_count INT;
 
  START TRANSACTION;
  -- Buat tabel "kurs_pajak" jika belum ada
  CREATE TABLE IF NOT EXISTS `kurs_pajak` (
    `id_ksm_kurs_pajak` int(11) NOT NULL AUTO_INCREMENT,
    `kurs_rate` decimal(20,4) NOT NULL,
    `tgl` date NOT NULL,
    `curr_id` int(11) NOT NULL,
    PRIMARY KEY (`id_ksm_kurs_pajak`)
  );

  SELECT COUNT(*) INTO @kurs_pajak_count FROM `kurs_pajak`;

  IF @kurs_pajak_count = 0 THEN
    -- Isi tabel "kurs_pajak" dengan data dari tabel "ksm_kurs_pajak"
    INSERT INTO `kurs_pajak` (`kurs_rate`, `tgl`, `curr_id`)
    SELECT `kurs_rate`, `start_date`, `curr_id`
    FROM `ksm_kurs_pajak`;

    -- Tambahkan id_ksm_kurs_pajak dengan auto increment
    ALTER TABLE `kurs_pajak` MODIFY `id_ksm_kurs_pajak` int(11) NOT NULL AUTO_INCREMENT;
	COMMIT;
  ELSE
    ROLLBACK;
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Tabel "kurs_pajak" sudah memiliki data. Operasi dibatalkan.';
  END IF;
END