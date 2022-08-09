CREATE DATABASE DBSTORE_2
GO
USE DBSTORE_2
GO


-------------------------------------------* CREATE TABLE LOAI_SAN_PHAM--------------
CREATE TABLE LOAI_SAN_PHAM
(
    id INT IDENTITY(1,1),
    ten_loai_sp VARCHAR(50) NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id)
);
-------------------------------------------* CREATE TABLE DONG_SAN_PHAM--------------
CREATE TABLE DONG_SAN_PHAM
(
    id INT IDENTITY(1,1),
    id_loai_san_pham INT NOT NULL,
    ten_dong_san_pham VARCHAR(50) NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id),
    FOREIGN KEY (id_loai_san_pham) REFERENCES LOAI_SAN_PHAM(id)
);
-------------------------------------------* CREATE TABLE MAU_SAC--------------
CREATE TABLE MAU_SAC
(
    id INT IDENTITY(1,1),
    ten_mau_sac varchar(50) NOT NULL,
    ma_mau_sac_hex varchar(6) NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id)
)
-------------------------------------------* CREATE TABLE SAN_PHAM--------------
CREATE TABLE SAN_PHAM
(
    id INT IDENTITY(1,1),
    id_dong_san_pham INT NOT NULL ,
    gia_san_pham decimal(12, 2) NOT NULL,
    id_mau_sac INT NOT NULL,
    bo_nho_rom varchar(50) NOT NULL,
    ram VARCHAR(50) NOT NULL,
    kich_thuoc_man_hinh VARCHAR(50) NOT NULL,
    do_phan_giai_man_hinh VARCHAR(50) NOT NULL,
    camera_truoc VARCHAR(50) ,
    camera_sau VARCHAR(50) ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id),
    FOREIGN KEY (id_dong_san_pham) REFERENCES DONG_SAN_PHAM(id),
    FOREIGN KEY (id_mau_sac) REFERENCES MAU_SAC(id)
);
-------------------------------------------* CREATE TABLE TON_KHO--------------
CREATE TABLE TON_KHO
(
    id INT IDENTITY(1,1),
    id_san_pham INT ,
    so_luong_con_lai INT ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY(id),
    FOREIGN KEY (id_san_pham) REFERENCES SAN_PHAM(id)
);
-------------------------------------------* CREATE TABLE NGUOI_DUNG--------------
CREATE TABLE NGUOI_DUNG
(
    id INT IDENTITY(1,1),
    ten_nguoi_dung NVARCHAR(50),
    ho_va_ten NVARCHAR(50) ,
    email NVARCHAR(100) ,
    gioi_tinh NVARCHAR(50) ,
    ngay_sinh smalldatetime ,
    sdt varchar(15) ,
    dia_chi NVARCHAR(50) ,
    duong_dan_avatar NVARCHAR(250) ,
    mat_khau VARCHAR(400) ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate(),
    PRIMARY KEY (id, ten_nguoi_dung)
);
-------------------------------------------* CREATE TABLE NHOM--------------
CREATE TABLE NHOM
(
    id INT IDENTITY(1,1),
    ten_nhom NVARCHAR(50) NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate(),
    PRIMARY KEY (id)
);
-------------------------------------------* CREATE PHAN_QUYEN--------------
CREATE TABLE PHAN_QUYEN
(
    id INT IDENTITY(1,1),
    id_nguoi_dung INT NOT NULL,
    ten_nguoi_dung NVARCHAR(50) ,
    id_nhom INT NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate(),
    PRIMARY KEY (id),
    FOREIGN KEY (id_nhom) REFERENCES NHOM(id),
    FOREIGN KEY (id_nguoi_dung, ten_nguoi_dung) REFERENCES NGUOI_DUNG(id, ten_nguoi_dung)
);
-------------------------------------------* CREATE GIO_HANG--------------
CREATE TABLE GIO_HANG
(
    id INT IDENTITY(1,1),
    id_khach_hang INT NOT NULL,
    ten_nguoi_dung NVARCHAR(50) ,
    id_san_pham INT NOT NULL,
    gia_san_pham decimal (12, 2) ,
    so_luong bigINT,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id),
    FOREIGN key (id_khach_hang,ten_nguoi_dung) REFERENCES NGUOI_DUNG(id,ten_nguoi_dung),
    FOREIGN KEY (id_san_pham) REFERENCES SAN_PHAM(id)

);
-------------------------------------------* CREATE CHI_TIET_GIO_HANG--------------

-------------------------------------------* CREATE CREATE--------------
CREATE TABLE GIAM_GIA
(
    id INT IDENTITY(1,1),
    id_san_pham INT NOT NULL ,
    phan_tram float(3),
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id),
    FOREIGN KEY (id_san_pham) REFERENCES SAN_PHAM(id)
);
-------------------------------------------* CREATE HINH_SANPHAM--------------
CREATE TABLE HINH_SANPHAM
(
    id INT IDENTITY(1,1),
    id_san_pham INT NOT NULL,
    link_hinh_san_pham VARCHAR(500) NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id) FOREIGN KEY (id_san_pham) REFERENCES SAN_PHAM(id)
);
-------------------------------------------* CREATE HINH_MOTA_SANPHAM--------------
CREATE TABLE HINH_MOTA_SANPHAM
(
    id INT IDENTITY(1,1),
    id_dong_san_pham INT NOT NULL,
    link_hinh_mo_ta_san_pham VARCHAR(500) NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id) FOREIGN KEY (id_dong_san_pham) REFERENCES DONG_SAN_PHAM(id)
);
-------------------------------------------* CREATE HO_TRO--------------
CREATE TABLE HO_TRO
(
    id INT IDENTITY(1,1),
    ho_va_ten NVARCHAR(50) NOT NULL,
    email NVARCHAR(50) NOT NULL,
    sdt varchar(15) not null,
    noi_dung_ho_tro NVARCHAR(255),
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY(id)
);
-------------------------------------------* CREATE HOA_DON--------------
CREATE TABLE HOA_DON
(
    id INT IDENTITY(1,1),
    ngay_lap_hoa_don DATETIME NOT NULL DEFAULT GetDate(),
    id_khach_hang INT NOT NULL,
    ten_nguoi_dung NVARCHAR(50) ,
    tri_gia decimal (12, 2) ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id),
    FOREIGN key (id_khach_hang, ten_nguoi_dung) REFERENCES NGUOI_DUNG(id, ten_nguoi_dung)
);
-------------------------------------------* CREATE CHI_TIET_HOA_DON--------------
CREATE TABLE CHI_TIET_HOA_DON
(
    id INT IDENTITY(1,1),
    id_hoa_don INT,
    id_san_pham INT NOT NULL,
    gia_san_pham decimal (12, 2) NOT NULL,
    so_luong bigINT NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate()
        PRIMARY KEY (id),
    FOREIGN KEY (id_hoa_don) REFERENCES HOA_DON(id) ,
    FOREIGN KEY (id_san_pham) REFERENCES SAN_PHAM(id)
    ,
);
-------------------------------------------* CREATE TRANG_THAI_BAO_HANH--------------
CREATE TABLE TRANG_THAI_BAO_HANH
(
    id INT IDENTITY(1,1),
    ten_trang_thai_bao_hanh NVARCHAR(50),
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id)
);
-------------------------------------------* CREATE BAO_HANH--------------
CREATE TABLE BAO_HANH
(
    id INT IDENTITY(1,1),
    id_san_pham INT NOT NULL,
    id_don_hang INT NOT NULL,
    id_khach_hang INT NOT NULL,
    ten_nguoi_dung NVARCHAR(50),
    ngay_nhan DATE ,
    ngay_tra DATE ,
    phi_bao_hanh decimal (12, 2),
    noi_dung_bao_hanh NVARCHAR(255),
    id_trang_thai_bao_hanh INT NOT NULL,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY(id),
    FOREIGN key (id_trang_thai_bao_hanh) REFERENCES TRANG_THAI_BAO_HANH(id),
    FOREIGN key (id_don_hang) REFERENCES HOA_DON(id),
    FOREIGN key (id_khach_hang, ten_nguoi_dung) REFERENCES NGUOI_DUNG(id, ten_nguoi_dung)
);
-------------------------------------------* CREATE GIAO_HANG--------------
CREATE TABLE GIAO_HANG
(
    id INT IDENTITY(1,1),
    id_hoa_don INT NOT NULL,
    dia_chi_giao_hang NVARCHAR(50),
    ngay_giao_hang DATE ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY(id),
    FOREIGN KEY (id_hoa_don) REFERENCES HOA_DON(id)
);
-------------------------------------------* CREATE SLIDER--------------
CREATE TABLE SLIDER
(
    id INT IDENTITY(1,1),
    link_anh VARCHAR(max) ,
    tieu_de NVARCHAR(50) ,
    noi_dung NVARCHAR(100) ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id)
);

CREATE TABLE CUA_HANG
(
    id INT IDENTITY(1,1),
    ten_cua_hang NVARCHAR(50) NOT NULL,
    link_lo_go NVARCHAR(100) ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id)
);

CREATE TABLE CHAN_TRANG
(
    id INT IDENTITY(1,1),
    tieu_de NVARCHAR(50) NOT NULL,
    noi_dung VARCHAR(max) ,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id)
);
CREATE TABLE UU_DAI_KHACH_HANG
(
    id INT IDENTITY(1,1),
    tien_tich_luy varchar(100) ,
    san_pham_may int ,
    phu_kien int ,
    phu_kien_con_lai int ,
    thu_cu_len_doi int,
    qua_sinh_nhat money,
    thoi_gian_tao DATETIME NOT NULL DEFAULT GetDate() PRIMARY KEY (id)

);
CREATE TABLE QUA_KHACH_HANG(
                               ID INT not null,
                               ID_khach_hang INT ,
                               ngay_nhan_qua date,
                               TEN_PHAN_QUA NVARCHAR(100) ,
                               TRI_GIA FLOAT,
                               THOI_GIAN_TAO DATETIME NOT NULL DEFAULT GETDATE() PRIMARY KEY (ID)

);

