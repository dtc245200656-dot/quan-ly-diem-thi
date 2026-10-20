-- Buoc 1: Tao co so du lieu
CREATE DATABASE QuanLyDiemThi;

-- Buoc 2: Chon co so du lieu
USE QuanLyDiemThi;

-- Buoc 3: Tao bang HocSinh
CREATE TABLE HocSinh (
    MaHS VARCHAR(20) PRIMARY KEY,
    TenHS VARCHAR(50),
    NgaySinh DATETIME,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);

-- Buoc 4: Tao bang MonHoc (MaMH thong nhat VARCHAR(50) theo de)
CREATE TABLE MonHoc (
    MaMH VARCHAR(50) PRIMARY KEY,
    TenMH VARCHAR(50),
    MaGV VARCHAR(20)
);

-- Buoc 5: Tao bang BangDiem
CREATE TABLE BangDiem (
    MaHS VARCHAR(20),
    MaMH VARCHAR(50),
    DiemThi INT,
    NgayKT DATETIME,
    PRIMARY KEY (MaHS, MaMH),
    FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
    FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);

-- Buoc 6: Tao bang GiaoVien
CREATE TABLE GiaoVien (
    MaGV VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(50),
    SDT VARCHAR(10)
);

-- Buoc 7: Bo sung khoa ngoai
ALTER TABLE MonHoc
ADD CONSTRAINT FK_MaGV
FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);

-- Kiem tra ket qua
SHOW TABLES;
