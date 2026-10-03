CREATE DATABASE IF NOT EXISTS ews_anak CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ews_anak;

CREATE TABLE pasien (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    no_rawat CHAR(6) NOT NULL UNIQUE,
    no_rm VARCHAR(30) NULL,
    nama VARCHAR(150) NOT NULL,
    umur VARCHAR(30) NULL,
    ttl VARCHAR(150) NULL,
    tanggal_lahir DATE NULL,
    jenis_kelamin ENUM('L','P') NULL,
    alamat TEXT NULL,
    ruang VARCHAR(100) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE dokter (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(150) NOT NULL,
    status_aktif TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE pegawai (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(150) NOT NULL,
    username VARCHAR(100) NULL UNIQUE,
    password_hash VARCHAR(255) NULL,
    status_aktif TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE ews_anak (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    pasien_id BIGINT UNSIGNED NOT NULL,
    dokter_id BIGINT UNSIGNED NULL,
    pegawai_id BIGINT UNSIGNED NULL,
    tanggal_pemeriksaan DATE NOT NULL,
    jam_pemeriksaan TIME NOT NULL,
    data_observasi JSON NOT NULL,
    total_score DECIMAL(5,2) NULL,
    frekuensi_pemantauan VARCHAR(50) NULL,
    jumlah_intake VARCHAR(50) NULL,
    jumlah_output VARCHAR(50) NULL,
    catatan TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_ews_pasien FOREIGN KEY (pasien_id) REFERENCES pasien(id),
    CONSTRAINT fk_ews_dokter FOREIGN KEY (dokter_id) REFERENCES dokter(id),
    CONSTRAINT fk_ews_pegawai FOREIGN KEY (pegawai_id) REFERENCES pegawai(id)
) ENGINE=InnoDB;
