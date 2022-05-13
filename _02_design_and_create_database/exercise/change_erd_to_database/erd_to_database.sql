CREATE DATABASE if not exists `erd_to_database`;

USE erd_to_database;

CREATE TABLE phieu_xuat (
    so_px INT PRIMARY KEY,
    ngay_xuat DATE
);

CREATE TABLE  vat_tu (
    ma_vt INT PRIMARY KEY,
    ten_vt VARCHAR(50)
);
CREATE TABLE  phieu_nhap (
   so_pn INT PRIMARY KEY,
   ngay_nhap varchar(50)
);

CREATE TABLE  nha_cung_cap (
   ma_nha_cung_cap INT PRIMARY KEY,
   ten_nha_cung_cap varchar(50),
   dia_chi varchar(50)
);

CREATE TABLE  don_dat_hang (
    so_dh INT PRIMARY KEY,
    ngay_dh DATE,
    ma_nha_cung_cap  INT,
    FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap)
);


create table  phieu_xuat_vat_tu (
	don_gia_xuat int,
    so_luong_xuat int,
    so_px INT,
    ma_vt INT,
    primary key (so_px,ma_vt),
    ngay_xuat DATE,
    ten_vt VARCHAR(50),
	FOREIGN KEY (so_px) REFERENCES phieu_xuat(so_px),
    FOREIGN KEY (ma_vt) REFERENCES vat_tu(ma_vt)
);

create table  phieu_nhap_vat_tu (
	don_gia_nhap int,
    so_luong_nhap int,
    so_pn INT,
    ma_vt INT,
	primary key (so_pn,ma_vt),
    ngay_nhap DATE,
    ten_vt VARCHAR(50),
	FOREIGN KEY (so_pn) REFERENCES phieu_nhap(so_pn),
    FOREIGN KEY (ma_vt) REFERENCES vat_tu(ma_vt)
);

CREATE TABLE vat_tu_don_dat_hang (
    ngay_dh DATE,
    ten_vt VARCHAR(50),
    so_dh INT,
    ma_vt INT,
    PRIMARY KEY (so_dh , ma_vt),
    FOREIGN KEY (so_dh)
	REFERENCES don_dat_hang (so_dh),
    FOREIGN KEY (ma_vt)
	REFERENCES vat_tu (ma_vt)
);


create table  so_dien_thoai (
	ma_nha_cung_cap INT PRIMARY KEY,
    so_dien_thoai varchar(50),
    FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap)
);

 -- drop database `erd_to_database`;