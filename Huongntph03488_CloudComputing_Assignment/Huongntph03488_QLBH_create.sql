-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-22 02:15:51.716


create database Huongntph03488_QLBH
go
-- tables
-- Table: ChitietHD
CREATE TABLE ChitietHD (
    MaHD varchar(10)  NOT NULL,
    MaSP varchar(10)  NOT NULL,
    Soluong int  NOT NULL,
)
;





-- Table: Hoadon
CREATE TABLE Hoadon (
    MaHD varchar(10)  NOT NULL,
    MaKH varchar(10)  NOT NULL,
    Giatien decimal(12,2)  NOT NULL,
    CONSTRAINT Hoadon_pk PRIMARY KEY  (MaHD)
)
;





-- Table: Khachhang
CREATE TABLE Khachhang (
    MaKH varchar(10)  NOT NULL,
    TenKH nvarchar(255)  NOT NULL,
    email nvarchar(255)  NULL,
    SDT int  NULL,
    Diachi nvarchar(255)  NULL,
    CONSTRAINT Khachhang_pk PRIMARY KEY  (MaKH)
)
;





-- Table: LoaiSP
CREATE TABLE LoaiSP (
    MaloaiSP varchar(10)  NOT NULL,
    TenLoaiSP nvarchar(255)  NOT NULL,
    Soluong int  NOT NULL,
    CONSTRAINT LoaiSP_pk PRIMARY KEY  (MaloaiSP)
)
;





-- Table: Sanpham
CREATE TABLE Sanpham (
    MaSP varchar(10)  NOT NULL,
    MaloaiSP varchar(10)  NOT NULL,
    TenSP nvarchar(255)  NOT NULL,
    Donvitinh char(10)  NULL,
    Mota varchar(1000)  NULL,
    giatien decimal(12,2)  NOT NULL,
    CONSTRAINT Sanpham_pk PRIMARY KEY  (MaSP)
)
;









-- foreign keys
-- Reference:  Hoadon_ChitietHD (table: ChitietHD)

ALTER TABLE ChitietHD ADD CONSTRAINT Hoadon_ChitietHD 
    FOREIGN KEY (MaHD)
    REFERENCES Hoadon (MaHD)
;

-- Reference:  Khachhang_Hoadon (table: Hoadon)

ALTER TABLE Hoadon ADD CONSTRAINT Khachhang_Hoadon 
    FOREIGN KEY (MaKH)
    REFERENCES Khachhang (MaKH)
;

-- Reference:  Sanpham_ChitietHD (table: ChitietHD)

ALTER TABLE ChitietHD ADD CONSTRAINT Sanpham_ChitietHD 
    FOREIGN KEY (MaSP)
    REFERENCES Sanpham (MaSP)
;

-- Reference:  Sanpham_LoaiSP (table: Sanpham)

ALTER TABLE Sanpham ADD CONSTRAINT Sanpham_LoaiSP 
    FOREIGN KEY (MaloaiSP)
    REFERENCES LoaiSP (MaloaiSP)
;





-- End of file.
---Thêm dữ liệu
insert into Khachhang values ('KH01', N'Nguyễn Thị Hương', null, null, null)
insert into Khachhang values ('KH02', N'Nguyễn Văn Thực', null, null, null)
insert into Khachhang values ('KH03', N'Trần Thị Hằng', null, null, null)
insert into Khachhang values ('KH04', N'Đỗ Đức Quyết', null, null, null)
insert into Khachhang values ('KH05', N'Tiêu Văn Quang', null, null, null)
-----
insert into Hoadon values ('HD01', 'KH01', '150000.00')
insert into Hoadon values ('HD02', 'KH02', '250000.00')
insert into Hoadon values ('HD03', 'KH03', '180000.00')
insert into Hoadon values ('HD04', 'KH04', '70000.00')
insert into Hoadon values ('HD05', 'KH05', '500000.00')
-----
insert into LoaiSP values ('Loai01', N'Sách', '500')
insert into LoaiSP values ('Loai02', N'Vở', '300')
insert into LoaiSP values ('Loai03', N'Bút', '200')
insert into LoaiSP values ('Loai04', N'Thước', '400')
insert into LoaiSP values ('Loai05', N'Sách tham khảo', '500')
-----
insert into Sanpham values ('SP01', 'Loai01', N'Sách giáo khoa', null, null, '50000')
insert into Sanpham values ('SP02', 'Loai02', N'Vở', null, null, '10000')
insert into Sanpham values ('SP03', 'Loai03', N'Sách tham khảo', null, null, '30000')
insert into Sanpham values ('SP04', 'Loai04', N'Bút', null, null, '5000')
insert into Sanpham values ('SP05', 'Loai05', N'Đồ dùng học tập', null, null, '20000')
-----
insert into ChitietHD values ('HD01', N'SP01', '500')
insert into ChitietHD values ('HD02', N'SP02', '300')
insert into ChitietHD values ('HD03', N'SP03', '200')
insert into ChitietHD values ('HD04', N'SP04', '400')
insert into ChitietHD values ('HD05', N'SP05', '500')


select * from dbo.ChitietHD
select * from dbo.Hoadon
select * from dbo.Khachhang
select * from dbo.LoaiSP
select * from dbo.Sanpham