
USE DBSTORE_2
GO


-------------------------------------------* INSERT LOAI_SAN_PHAM--------------------
INSERT INTO LOAI_SAN_PHAM
    (ten_loai_sp)
VALUES
    ('iPhone');
INSERT INTO LOAI_SAN_PHAM
(ten_loai_sp)
VALUES
    ('Mac');
INSERT INTO LOAI_SAN_PHAM
(ten_loai_sp)
VALUES
    ('iPad');
INSERT INTO LOAI_SAN_PHAM
(ten_loai_sp)
VALUES
    ('watch');
-------------------------------------------* INSERT DONG_SAN_PHAM------------------

-- 1
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    (1, 'iPhone XR');

-- 2
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    (1, 'iPhone 11');
-- 3
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 1, 'iPhone 12');
-- 4
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    (1, 'iPhone 12 Pro');
-- 5
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    (1, 'iPhone 12 Pro Max');
-- 6
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    (1, 'iPhone 13');
-- 7
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 1, 'iPhone 13 Pro');
-- 8
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 1, 'iPhone 13 Pro Max');
-- 9
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 2, 'Macbook Air M1 2021');
-- 10
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 2, 'Macbook Pro M1 2021');
-- 11
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 2, 'Macbook Pro M1 MAX 2021');
-- 12 new
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 2, 'iMac');
-- 13
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 3, 'iPad Mini 6');
-- 14
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    (3, 'iPad Mini 7.9');
-- 15
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 3, 'iPad Air 4');
-- 16
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 3, 'iPad Pro 11');
-- 17
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 4, 'Apple Watch SE');
-- 18
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 4, 'Apple Watch S5');
-- 19
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    ( 4, 'Apple Watch S6');
-- 20
INSERT INTO DONG_SAN_PHAM
(id_loai_san_pham, ten_dong_san_pham)
VALUES
    (4, 'Apple Watch S7');
-------------------------------------------* INSERT MAU_SAC------------------
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ( 'trang', 'f3f3f3');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ( 'den', '2e3034');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ( 'do', 'b41325');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ('xanh duong', '48aee6');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ('xanh ngoc', 'ade0cc');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ('vang dong', 'fcebd3');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ('xam', 'aaaeb0');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ('bac', 'dcdfde');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ('tim', 'dcdfde');
INSERT INTO MAU_SAC
(ten_mau_sac, ma_mau_sac_hex)
VALUES
    ('hong', 'ffc0cb');

-------------------------------------------* INSERT SAN_PHAM------------------
--iphone xr 64gb trắng, đen, đỏ, xanh dương
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 1 , 64, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 2 , 64, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 3 , 64, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 4 , 64, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
-- iphone xr 128gb trắng, đen, đỏ, xanh dương
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 1 , 128, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 2 , 128, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 3 , 128, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (1, 14990000, 4 , 128, 3, '6.1', '828 x 1792 Pixels', '7 MP', '12 MP');
-- iphone 11 64gb xanh ngọc, đen, trắng, tím
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 5, 64, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 2, 64, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 1, 64, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 9 , 64, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
-- iphone 11 128gb xanh ngọc, đen, trắng, tím
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 5, 128, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 2, 128, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 1, 128, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21490000, 9 , 128, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
-- iphone 11 256gb xanh ngọc, đen, trắng, tím
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21990000, 5, 256, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21990000, 2, 256, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21990000, 1, 256, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (2, 21990000, 9 , 256, 4, '6.1', '828 x 1792 Pixels', '12 MP', '2 camera 12 MP' );
-- iphone 12 256gb xanh ngọc, đen, trắng, tím  --
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 26990000, 5 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 26990000, 2 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 26990000, 1 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 26990000, 9 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
-- iphone 12 64gb xanh ngọc, đen, trắng, tím
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 22490000, 5 , 64, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 22490000, 2 , 64, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau
)
VALUES
    (3, 22490000, 1 , 64, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 22490000, 9 , 64, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );

-- iphone 12 512gb xanh ngọc, đen, trắng, tím
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 24490000, 5 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 24490000, 2 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau
)
VALUES
    (3, 24490000, 1 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (3, 24490000, 9 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );

-- iphone 12 pro 128gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 30490000, 1, 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 30490000, 2 , 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 30490000, 6 , 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 30490000, 4 , 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );

-- iphone 12 pro 256gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 31490000, 1, 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 31490000, 2 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 31490000, 6 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 31490000, 4 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );

-- iphone 12 pro 512gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 38490000, 1, 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 38490000, 2 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 38490000, 6 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (4, 38490000, 4 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );



-- iphone 12 pro max 128gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 32990000, 1, 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 32990000, 2 , 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 32990000, 6 , 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 32990000, 4 , 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
-- iphone 12 pro max 256gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 36990000, 1, 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 36990000, 2 , 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 36990000, 6 , 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 36990000, 4 , 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
-- iphone 12 pro max 512gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 41990000, 1, 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 41990000, 2 , 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 41990000, 6 , 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (5, 41990000, 4 , 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );

-- iphone 13 512gb xanh dương, đen, trắng, đỏ 4, 2, 1, 3  --
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 33990000, 4 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 33990000, 2 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 33990000, 1 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 33990000, 3 , 512, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
-- iphone 13 256gb xanh dương, đen, trắng, đỏ 4, 2, 1, 3  --
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 27990000, 4 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 27990000, 2 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 27990000, 1 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 27990000, 3 , 256, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
-- iphone 13 128gb xanh dương, đen, trắng, đỏ 4, 2, 1, 3  --
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 24990000, 4 , 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 24990000, 2 , 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 24990000, 1 , 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (6, 24990000, 3 , 128, 4, '6.1', '1170 x 2532 Pixels', '12 MP', '2 camera 12 MP' );



-- iphone 13 pro 128gb trắng, đen, vàng, xanh dương 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 30990000, 1, 128, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 30990000, 2 , 128, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 30990000, 6 , 128, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 30990000, 4 , 128, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
-- iphone 13 pro 256gb trắng, đen, vàng, xanh dương 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 34990000, 1, 256, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 34990000, 2 , 256, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 34990000, 6 , 256, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 34990000, 4 , 256, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
-- iphone 13 pro 512gb trắng, đen, vàng, xanh dương 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 40990000, 1, 512, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 40990000, 2 , 512, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 40990000, 6 , 512, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (7, 40990000, 4 , 512, 6, '6.1', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );


-- iphone 13 pro max 128gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 33990000, 1, 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 33990000, 2 , 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 33990000, 6 , 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 33990000, 4 , 128, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
-- iphone 13 pro max 256gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 36990000, 1, 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 36990000, 2 , 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 36990000, 6 , 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 36990000, 4 , 256, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
-- iphone 13 pro max 512gb trắng, đen, vàng, xanh ngọc 1, 2, 6, 4
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 43990000, 1, 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 43990000, 2 , 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 43990000, 6 , 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (8, 43990000, 4 , 512, 6, '6.7', '1170 x 2532 Pixels', '12 MP', '3 camera 12 MP' );
-- Macbook Air M1 2020 (8gb - 256gb) bạc, xám, vàng 8,7,6 -- https://www.topzone.vn/mac/apple-macbook-air-2020-mgn63saa
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 28990000, 8, 256, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 28990000, 7 , 256, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 28990000, 6 , 256, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook Air M1 2020 (8gb - 512gb) bạc, xám, vàng 8,7,6 -- https://www.topzone.vn/mac/apple-macbook-air-2020-m1-mgn73saa
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 34990000, 8, 512, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 34990000, 7 , 512, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 34990000, 6 , 512, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook Air M1 2020 (16gb - 512gb) vàng 6 -- https://www.topzone.vn/mac/apple-macbook-air-m1-2020-z12a00050
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 39490000, 6, 512, 16, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook Air M1 2020 (16gb - 256gb) vàng 6 -- https://www.topzone.vn/mac/apple-macbook-air-m1-2020-z124000de
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (9, 33990000, 6, 256, 16, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook Pro M1 2020 13.1 inch (8gb - 256gb) bạc, xám 8,7 -- https://www.topzone.vn/mac/apple-macbook-pro-2020-m1-myd82saa
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 34990000, 8, 256, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 34990000, 7 , 256, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook pro M1 2020 13.1 inch(8gb - 512gb) bạc, xám 8,7 -- https://www.topzone.vn/mac/apple-macbook-pro-2020-myd92saa
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 39990000, 8, 512, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 39990000, 7 , 512, 8, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook Air M1 2020 13.1 inch(16gb - 512gb) xám, bạc -- https://www.topzone.vn/mac/apple-macbook-pro-2020-z11c
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 44990000, 8, 512, 16, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 44990000, 7, 512, 16, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook Air M1 2020 13.1 inch (16gb - 256gb) xám, bạc -- https://www.topzone.vn/mac/apple-macbook-pro-m1-2020-z11b000ct
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 39990000, 8, 256, 16, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 39990000, 7, 256, 16, '13.3', 'Retina (2560 x 1600)', '12 MP', null );
--------------------------------------------------------------------
-- Macbook Pro M1 2020 14 inch (32gb - 1tb) bạc, xám 8,7 -- https://www.topzone.vn/mac/macbook-pro-14-m1-max-2021
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 87900000, 8, 1024, 32, '14', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 87900000, 7 , 1024, 32, '14', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook pro M1 2020 14 inch(32gb - 512gb) bạc, xám 8,7 -- https://www.topzone.vn/mac/macbook-pro-14-m1-max-2021-10-core-cpu
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 76900000, 8, 512, 32, '14', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 76900000, 7 , 512, 32, '14', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook pro M1 2020 14 inch(16gb - 1024) xám, bạc -- https://www.topzone.vn/mac/apple-macbook-pro-14-m1-pro-2021-10-core-cpu
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 64990000, 8, 1024, 16, '14', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (10, 64990000, 7, 1024, 16, '14', 'Retina (2560 x 1600)', '12 MP', null );
---------------------------------------------------------------------------------
-- Macbook pro M1 MAX 2021 16 inch(32 - 1024) xám, bạc -- https://www.topzone.vn/mac/apple-macbook-pro-16-m1-pro-2021-10-core-cpu
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (11, 90990000, 8, 1024, 32, '16', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (11, 90990000, 7, 1024, 32, '16', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (11, 90990000, 8, 1024, 32, '16', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (11, 90990000, 7, 1024, 32, '16', 'Retina (2560 x 1600)', '12 MP', null );
-- Macbook pro M1 MAX 2020 16 inch(16 - 1024) xám, bạc -- https://www.topzone.vn/mac/apple-macbook-pro-16-m1-pro-2021-10-core-cpu
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (11, 69990000, 8, 1024, 16, '16', 'Retina (2560 x 1600)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (11, 69990000, 7, 1024, 16, '16', 'Retina (2560 x 1600)', '12 MP', null );
-- iMac 8-256 gb https://www.topzone.vn/imac xanh duongw bacj, 4,8
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (12, 31490000, 4, 256, 8, '24', '4.5K (4480 x 2520)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (12, 31490000, 8, 256, 8, '24', '4.5K (4480 x 2520)', '12 MP', null );
-- iMac 8-512 gb https://www.topzone.vn/imac xanh dương bạc, xanh lá 4,8, 5
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (12, 45990000, 4, 512, 8, '24', '4.5K (4480 x 2520)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (12, 49990000, 8, 512, 8, '24', '4.5K (4480 x 2520)', '12 MP', null );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (12, 49990000, 5, 512, 8, '24', '4.5K (4480 x 2520)', '12 MP', null );

-----------------------------------------------------------------
-- ipad mini   -----------------------------------------------------------------
-- ipad mini 6 256 gb xám, trắng, đen, vàng 7,1,2,6 -- https://www.topzone.vn/mac/apple-macbook-pro-16-m1-pro-2021-10-core-cpu
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 20990000, 7, 256, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 20990000, 1, 256, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 20990000, 2, 256, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 20990000, 6, 256, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
-- ipad mini 6 64 gb xám, trắng, đen, vàng 7,1,2,6
-- https://www.topzone.vn/mac/apple-macbook-pro-16-m1-pro-2021-10-core-cpu
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 15990000, 7, 64, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 15990000, 1, 64, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 15990000, 2, 64, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (13, 15990000, 6, 64, 4, '8.3', '1488 x 2266 Pixels', '12 MP', '12 MP' );
---------------------------------------------
-- ipad mini 7.9 64 gb xám, bạc, vàng 8,7,6 -- https://www.topzone.vn/ipad/ipad-mini-79-inch-wifi-cellular-64gb-2019
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (14, 15990000, 8, 64, 3, '7.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (14, 15990000, 7, 64, 3, '7.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (14, 15990000, 6, 64, 3, '7.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
-- iPad Air 4 10.9 64 gb xanh dương, vàng, đen, trắng, xanh ngọc 4, 6, 2, 1, 5 -- https://www.topzone.vn/ipad/ipad-mini-79-inch-wifi-cellular-64gb-2019
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 17990000, 4, 64, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 17990000, 6 , 64, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 17990000, 2 , 64, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 17990000, 1, 64, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 17990000, 5, 64, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
-- iPad Air 4 10.9 256 gb xanh dương, vàng, đen, trắng, xanh ngọc 4, 6, 2, 1, 5 -- https://www.topzone.vn/ipad/ipad-air-4-wifi-256gb-2020
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 22490000, 4, 256, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 22490000, 6 , 256, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 22490000, 2 , 256, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (15, 22490000, 1, 256, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (14, 22490000, 5, 256, 4, '10.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
-- iPad Air 4 12.9 128 gb trắng
-- https://www.topzone.vn/ipad/ipad-pro-12-9-inch-wifi-128gb-2020
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (16, 26990000, 1, 256, 4, '12.9', '1488 x 2266 Pixels', '12 MP', '12 MP' );
--------------------------------------------------------------------
-- Apple Watch SE 2gb 32 gb đen, hồng, trắng 2,10,1 -- https://www.topzone.vn/ipad/ipad-pro-12-9-inch-wifi-128gb-2020
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (17, 11990000, 2, 32, 2, '1.78', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (17, 11990000, 10, 32, 2, '1.78', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (17, 11990000, 1, 32, 2, '1.78', '448 x 368 pixels', null, null);

-- Apple Watch SE 2gb 64 gb đen, hồng, trắng 2,10,1 -- https://www.topzone.vn/ipad/ipad-pro-12-9-inch-wifi-128gb-2020
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (17, 13990000, 2, 64, 2, '1.78', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (17, 13990000, 10, 64, 2, '1.78', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (17, 13990000, 1, 64, 2, '1.78', '448 x 368 pixels', null, null);
--------------------------------------------------------------------
-- Apple Watch S5 2gb 32 gb vàng, trắng 6,1 -- https://www.topzone.vn/apple-watch/s5-lte-40mm-vien-thep-day-thep-vang
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (18, 17990000, 2, 32, 2, '1.57 inch', '324 x 394 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (18, 17990000, 10, 32, 6, '1.57 inch', '324 x 394 pixels', null, null);
-------------------------------------------------------------------- -- Apple Watch S5 2gb 64 gb vàng, trắng 6,1 -- https://www.topzone.vn/apple-watch/s5-lte-40mm-vien-thep-day-thep-vang
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (18, 17990000, 2, 64, 2, '1.57 inch', '324 x 394 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (18, 17990000, 10, 64, 6, '1.57 inch', '324 x 394 pixels', null, null);
-------------------------------------------------------------------- -- Apple Watch S6 2gb 32 gb xanh dương, xanh lá chuối đậm, đen, đỏ, bạc kim loại, vàng kim loại  -- https://www.topzone.vn/apple-watch/s5-lte-40mm-vien-thep-day-thep-vang
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 19990000, 4, 32, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 19990000, 5, 32, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 19990000, 2 , 32, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 19990000, 3, 32, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 19990000, 8, 32, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 19990000, 6 , 32, 6, '1.78 inch', '448 x 368 pixels', null, null);

INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 21990000, 4, 64, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 21990000, 5, 64, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 21990000, 2 , 64, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 21990000, 3, 64, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 21990000, 8, 64, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (19, 21990000, 6 , 64, 6, '1.78 inch', '448 x 368 pixels', null, null);

-------------------------------------------------------------------- -- Apple Watch S7 2gb 32 gb xanh dương, xanh lá chuối đậm, đen, đỏ, bạc kim loại, vàng kim loại  -- https://www.topzone.vn/apple-watch/s5-lte-40mm-vien-thep-day-thep-vang
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 20990000, 4, 32, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 20990000, 5, 32, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 20990000, 2 , 32, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 20990000, 3, 32, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 20990000, 8, 32, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 20990000, 6 , 32, 6, '1.78 inch', '448 x 368 pixels', null, null);

INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 23990000, 4, 64, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 23990000, 5, 64, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 23990000, 2 , 64, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 23990000, 3, 64, 6, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 23990000, 8, 64, 2, '1.78 inch', '448 x 368 pixels', null, null);
INSERT INTO SAN_PHAM
(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau )
VALUES
    (20, 23990000, 6 , 64, 6, '1.78 inch', '448 x 368 pixels', null, null);



-------------------------------------------* INSERT TON_KHO--------------------
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 1, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 2, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 3, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 4, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 5, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 6, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 7, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 8, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 9, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 10, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 11, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 12, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 13, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 14, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 15, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 16, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 17, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 18, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 19, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 20, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 21, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 22, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 23, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 24, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 25, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 26, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 27, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 28, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 29, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 30, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 31, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 32, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 33, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 34, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 35, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 36, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 37, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 38, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 39, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 40, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 41, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 42, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 43, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 44, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 45, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 46, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 47, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 48, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 49, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 50, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 51, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 52, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 53, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 54, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 55, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 56, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 57, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 58, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 59, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 60, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 61, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 62, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 63, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 64, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 65, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 66, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 67, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 68, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 69, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 70, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 71, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 72, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 73, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 74, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 75, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 76, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 77, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 78, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 79, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 80, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 81, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 82, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 83, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 84, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 85, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 86, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 87, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 88, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 89, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 90, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 91, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 92, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 93, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 94, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 95, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 96, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 97, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 98, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 99, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 100, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 101, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 102, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 103, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 104, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 105, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 106, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 107, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 108, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 109, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 110, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 111, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 112, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 113, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 114, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 115, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 116, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 117, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 118, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 119, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 120, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 121, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 122, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 123, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 124, 1000);
INSERT INTO TON_KHO
(id_san_pham, so_luong_con_lai)
VALUES
    ( 125, 1000);

-------------------------------------------* INSERT NGUOI_DUNG--------------------
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('teoprovipno1', 'teo@gmail.com', N'Văn Đức', 'nam', ' 1/1/2001', '0135642433', N'Hà Nội', 1, 'tuitenteo123');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('hayimlang22', 'hil22@gmail.com', N'Minh Sơn', 'nam', '2/2/2001', '0155546435', N'Huế', 2, 'imlanglavang22');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('alabatrap57', 'ala57@gmail.com', N'Hoài Nam', 'nam', '4/9/2000', '0124755125', N'Hồ Chí Minh', 3, 't19130201aba');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('pipipitu242', 'pitu242@gmail.com', N'Như Ý', 'nu', '12/6/1998', '0192491872', N'Đà Nẵng', 4, 'chupapi12Ax');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('tuitenti151', 'tilatui@yahoo.com', N'Tiến Vũ', 'nu', '11/4/2000', '0128498823', N'Phú Thọ', 5, 'tilatui92');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('homnay24hmua', '24hmua12@st.hcmuaf.com', N'Nhật Đào', 'nu', '6/2/1999', '0875196235', N'Cần Thơ', 6, 'muacangay112i');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('goi113di', 'csgt24h@police.com', N'Ngô Phúc', 'nam', '2/9/1995', '0815729357', N'Bình Dương', 7, 'khoanhong114');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('thichmuasam113', 'dollar142@yahoo.com', N'My Linh', 'nu', '1/6/1997', '0819841922', N'Dong Nai', 8, 'thichthimua147');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ('adminTLoc', 'loc2p@gmail.com', N'Thành Lộc', 'nam', '3/3/1999', '0144893434', N'Hồ Chí Minh', 09, 'loc3chanJQK');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ( 'adminVThanh', 'thanh8ngon@gmail.com', N'Văn Thanh', 'nam', '4/4/2001', '0134143371', N'Hồ Chí Minh', 10, 'thanh8ngonJQK');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ( 'adminNHieu', 'hieut3@yahoo.com', N'Ngọc Hiếu', 'nam', '12/6/2002', '0921762176', N'Ninh Thuận', 11, 'hieuthu3JQK');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ( 'adminVMinh', 'minmin141@gmail.com', N'Văn Minh', 'nam', ' 9/9/2000', '0912645191', N'Bến Tre', 12, ' minh1met8JQK');
INSERT INTO NGUOI_DUNG
(ten_nguoi_dung,email, ho_va_ten,gioi_tinh,ngay_sinh,sdt,dia_chi,duong_dan_avatar,mat_khau)
VALUES
    ( 'adminJinn', 'jin173@gmail.com', N'Văn Jinn', 'nam', '5/2/1999', '0921784624', N'Đồng Tháp', 13, 'jinjinnJQK');

-------------------------------------------* INSERT LOAI_SAN_PHAM--------------------
INSERT INTO NHOM
(ten_nhom)
VALUES
    ('Admin');
INSERT INTO NHOM
(ten_nhom)
VALUES
    ('User');

-------------------------------------------* INSERT LOAI_SAN_PHAM--------------------
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (1, 'teoprovipno1', 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (2, 'hayimlang22', 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (3, 'alabatrap57' , 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (4, 'pipipitu242', 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (5, 'tuitenti151', 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (6, 'homnay24hmua', 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (7, 'goi113di', 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (8, 'thichmuasam113', 2);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (9, 'adminTLoc' , 1);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (10, 'adminVThanh', 1);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (11, 'adminNHieu', 1);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (12, 'adminVMinh', 1);
INSERT INTO PHAN_QUYEN
(id_nguoi_dung,ten_nguoi_dung,id_nhom)
VALUES
    (13, 'adminJinn', 1);

-------------------------------------------* INSERT GIO_HANG------------------


INSERT INTO GIO_HANG
( id_khach_hang,ten_nguoi_dung,id_san_pham, gia_san_pham,so_luong)
VALUES(1,'teoprovipno1', 1, 14990000, 1);

INSERT INTO GIO_HANG
( id_khach_hang,ten_nguoi_dung,id_san_pham, gia_san_pham,so_luong)

VALUES(1,'teoprovipno1', 2, 14990000,5);

INSERT INTO GIO_HANG
( id_khach_hang,ten_nguoi_dung,id_san_pham, gia_san_pham,so_luong)

VALUES(2,'hayimlang22', 1, 14990000, 1);

INSERT INTO GIO_HANG
( id_khach_hang,ten_nguoi_dung,id_san_pham, gia_san_pham,so_luong)
VALUES(2,'hayimlang22', 1, 14990000, 1);
-------------------------------------------* INSERT ------------------
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 1, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 2, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 3, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 4, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 5, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 6, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 7, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 8, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 9, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 10, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 11, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 12, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 13, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 14, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 15, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 16, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 17, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 18, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (19 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (20 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (21 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (22 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 23, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 24, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 25, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 26, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 27, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 28, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 29, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 30, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 31, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 32, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 33, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 34, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 35, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 36, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 37, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 38, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 39, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 40, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 41, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 42, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 43, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 44, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 45, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 46, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 47, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 48, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 49, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 50, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 51, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 52, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 53, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 54, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 55, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 56, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 57, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 58, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 59, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 60, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 61, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 62, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 63, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 64, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 65, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 66, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 67, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 68, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 69, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 70, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 71, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 72, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 73, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 74, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 75, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 76, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 77, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 78, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 79, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 80, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 81, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 82, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 83, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 84, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 85, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 86, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 87, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 88, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 89, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 90, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 91, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 92, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 93, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 94, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 95, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 96, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 97, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 98, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 99, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 100, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 101, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 102, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 103, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 104, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 105, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 106, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 107, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 108, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 109, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 110, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 111, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 112, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 113, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 114, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 115, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 116, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 117, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 118, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (119 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (120 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (121 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    (122 , 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 123, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 124, 10);
INSERT INTO GIAM_GIA
(id_san_pham, phan_tram)
VALUES
    ( 125, 10);

-------------------------------------------* INSERT HINH_SANPHAM------------------


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (1, 'view/client/assets/images/hinh-san-pham/1/iphone-xr-white-650x650 - Copy.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (1, 'view/client/assets/images/hinh-san-pham/1/iphone-xr-128gb-trang-1-650x650 - Copy.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (1, 'view/client/assets/images/hinh-san-pham/1/iphone-xr-128gb-trang-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (1, 'view/client/assets/images/hinh-san-pham/1/iphone-xr-white-650x650 - Copy (2).png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (2, 'view/client/assets/images/hinh-san-pham/2/iphone-xr-black-650x650 - Copy.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (2, 'view/client/assets/images/hinh-san-pham/2/iphone-xr-128gb-den-1-650x650 - Copy.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (2, 'view/client/assets/images/hinh-san-pham/2/iphone-xr-128gb-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (2, 'view/client/assets/images/hinh-san-pham/2/iphone-xr-black-650x650 - Copy (2).png');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (3, 'view/client/assets/images/hinh-san-pham/3/iphone-xr-red-650x650 - Copy.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (3, 'view/client/assets/images/hinh-san-pham/3/iphone-xr-128gb-do-1-650x650 - Copy.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (3, 'view/client/assets/images/hinh-san-pham/3/iphone-xr-128gb-do-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (3, 'view/client/assets/images/hinh-san-pham/3/iphone-xr-red-650x650 - Copy (2).png');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (4, 'view/client/assets/images/hinh-san-pham/4/iphone-xr-blue - Copy - Copy.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (4, 'view/client/assets/images/hinh-san-pham/4/iphone-xr-blue - Copy.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (4, 'view/client/assets/images/hinh-san-pham/4/iphone-xr-blue.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (4, 'view/client/assets/images/hinh-san-pham/4/iphone-xr-xanh-duong-1-1200x1200 - Copy.jpg');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (5, 'view/client/assets/images/hinh-san-pham/5/iphone-xr-white-650x650 - Copy.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (5, 'view/client/assets/images/hinh-san-pham/5/iphone-xr-128gb-trang-1-650x650 - Copy.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (5, 'view/client/assets/images/hinh-san-pham/5/iphone-xr-128gb-trang-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (5, 'view/client/assets/images/hinh-san-pham/5/iphone-xr-white-650x650 - Copy (2).png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (6, 'view/client/assets/images/hinh-san-pham/6/iphone-xr-black-650x650 - Copy.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (6, 'view/client/assets/images/hinh-san-pham/6/iphone-xr-128gb-den-1-650x650 - Copy.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (6, 'view/client/assets/images/hinh-san-pham/6/iphone-xr-128gb-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (6, 'view/client/assets/images/hinh-san-pham/6/iphone-xr-black-650x650 - Copy (2).png');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (7, 'view/client/assets/images/hinh-san-pham/7/iphone-xr-red-650x650 - Copy.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (7, 'view/client/assets/images/hinh-san-pham/7/iphone-xr-128gb-do-1-650x650 - Copy.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (7, 'view/client/assets/images/hinh-san-pham/7/iphone-xr-128gb-do-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (7, 'view/client/assets/images/hinh-san-pham/7/iphone-xr-red-650x650 - Copy (2).png');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (8, 'view/client/assets/images/hinh-san-pham/8/iphone-xr-blue - Copy - Copy.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (8, 'view/client/assets/images/hinh-san-pham/8/iphone-xr-blue - Copy.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (8, 'view/client/assets/images/hinh-san-pham/8/iphone-xr-blue.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (8, 'view/client/assets/images/hinh-san-pham/8/iphone-xr-xanh-duong-1-1200x1200 - Copy.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (9, 'view/client/assets/images/hinh-san-pham/9/iphone-11-green-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (9, 'view/client/assets/images/hinh-san-pham/9/iphone-11-256gb-xanh-la-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (9, 'view/client/assets/images/hinh-san-pham/9/iphone-11-256gb-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (9, 'view/client/assets/images/hinh-san-pham/9/iphone-11-256gb-xanh-la-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (9, 'view/client/assets/images/hinh-san-pham/9/iphone-11-256gb-xanh-la-5-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (10, 'view/client/assets/images/hinh-san-pham/10/iphone-11-black-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (10, 'view/client/assets/images/hinh-san-pham/10/iphone-11-256gb-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (10, 'view/client/assets/images/hinh-san-pham/10/iphone-11-256gb-den-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (10, 'view/client/assets/images/hinh-san-pham/10/iphone-11-256gb-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (10, 'view/client/assets/images/hinh-san-pham/10/iphone-11-256gb-den-6-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (11, 'view/client/assets/images/hinh-san-pham/11/iphone-11-white-1-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (11, 'view/client/assets/images/hinh-san-pham/11/iphone-11-256gb-trang-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (11, 'view/client/assets/images/hinh-san-pham/11/iphone-11-256gb-trang-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (11, 'view/client/assets/images/hinh-san-pham/11/iphone-11-256gb-trang-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (11, 'view/client/assets/images/hinh-san-pham/11/iphone-11-256gb-trang-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (12, 'view/client/assets/images/hinh-san-pham/12/iphone-11-purple-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (12, 'view/client/assets/images/hinh-san-pham/12/iphone-11-128gb-tim-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (12, 'view/client/assets/images/hinh-san-pham/12/iphone-11-128gb-tim-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (12, 'view/client/assets/images/hinh-san-pham/12/iphone-11-128gb-tim-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (12, 'view/client/assets/images/hinh-san-pham/12/iphone-11-128gb-tim-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (13, 'view/client/assets/images/hinh-san-pham/13/iphone-11-green-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (13, 'view/client/assets/images/hinh-san-pham/13/iphone-11-256gb-xanh-la-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (13, 'view/client/assets/images/hinh-san-pham/13/iphone-11-256gb-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (13, 'view/client/assets/images/hinh-san-pham/13/iphone-11-256gb-xanh-la-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (13, 'view/client/assets/images/hinh-san-pham/13/iphone-11-256gb-xanh-la-5-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (14, 'view/client/assets/images/hinh-san-pham/14/iphone-11-black-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (14, 'view/client/assets/images/hinh-san-pham/14/iphone-11-256gb-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (14, 'view/client/assets/images/hinh-san-pham/14/iphone-11-256gb-den-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (14, 'view/client/assets/images/hinh-san-pham/14/iphone-11-256gb-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (14, 'view/client/assets/images/hinh-san-pham/14/iphone-11-256gb-den-6-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (15, 'view/client/assets/images/hinh-san-pham/15/iphone-11-white-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (15, 'view/client/assets/images/hinh-san-pham/15/iphone-11-256gb-trang-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (15, 'view/client/assets/images/hinh-san-pham/15/iphone-11-256gb-trang-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (15, 'view/client/assets/images/hinh-san-pham/15/iphone-11-256gb-trang-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (15, 'view/client/assets/images/hinh-san-pham/15/iphone-11-256gb-trang-5-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (16, 'view/client/assets/images/hinh-san-pham/16/iphone-11-purple-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (16, 'view/client/assets/images/hinh-san-pham/16/iphone-11-128gb-tim-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (16, 'view/client/assets/images/hinh-san-pham/16/iphone-11-128gb-tim-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (16, 'view/client/assets/images/hinh-san-pham/16/iphone-11-128gb-tim-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (16, 'view/client/assets/images/hinh-san-pham/16/iphone-11-128gb-tim-5-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (17, 'view/client/assets/images/hinh-san-pham/17/iphone-11-green-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (17, 'view/client/assets/images/hinh-san-pham/17/iphone-11-256gb-xanh-la-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (17, 'view/client/assets/images/hinh-san-pham/17/iphone-11-256gb-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (17, 'view/client/assets/images/hinh-san-pham/17/iphone-11-256gb-xanh-la-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (17, 'view/client/assets/images/hinh-san-pham/17/iphone-11-256gb-xanh-la-5-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (18, 'view/client/assets/images/hinh-san-pham/18/iphone-11-black-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (18, 'view/client/assets/images/hinh-san-pham/18/iphone-11-256gb-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (18, 'view/client/assets/images/hinh-san-pham/18/iphone-11-256gb-den-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (18, 'view/client/assets/images/hinh-san-pham/18/iphone-11-256gb-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (18, 'view/client/assets/images/hinh-san-pham/18/iphone-11-256gb-den-6-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (19, 'view/client/assets/images/hinh-san-pham/19/iphone-11-white-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (19, 'view/client/assets/images/hinh-san-pham/19/iphone-11-256gb-trang-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (19, 'view/client/assets/images/hinh-san-pham/19/iphone-11-256gb-trang-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (19, 'view/client/assets/images/hinh-san-pham/19/iphone-11-256gb-trang-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (19, 'view/client/assets/images/hinh-san-pham/19/iphone-11-256gb-trang-5-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (20, 'view/client/assets/images/hinh-san-pham/20/iphone-11-purple-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (20, 'view/client/assets/images/hinh-san-pham/20/iphone-11-128gb-tim-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (20, 'view/client/assets/images/hinh-san-pham/20/iphone-11-128gb-tim-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (20, 'view/client/assets/images/hinh-san-pham/20/iphone-11-128gb-tim-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (20, 'view/client/assets/images/hinh-san-pham/20/iphone-11-128gb-tim-5-650x650.jpg');





INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (21, 'view/client/assets/images/hinh-san-pham/21/iphone-12-mini-green-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (21, 'view/client/assets/images/hinh-san-pham/21/iphone-12-mini-128gb-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (21, 'view/client/assets/images/hinh-san-pham/21/iphone-12-mini-128gb-xanh-la-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (21, 'view/client/assets/images/hinh-san-pham/21/iphone-12-mini-128gb-xanh-la-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (22, 'view/client/assets/images/hinh-san-pham/22/iphone-12-mini-black-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (22, 'view/client/assets/images/hinh-san-pham/22/iphone-12-mini-128gb-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (22, 'view/client/assets/images/hinh-san-pham/22/iphone-12-mini-128gb-den-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (22, 'view/client/assets/images/hinh-san-pham/22/iphone-12-mini-128gb-den-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (23, 'view/client/assets/images/hinh-san-pham/23/iphone-12-mini-white-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (23, 'view/client/assets/images/hinh-san-pham/23/iphone-12-mini-128gb-trang-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (23, 'view/client/assets/images/hinh-san-pham/23/iphone-12-mini-128gb-trang-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (23, 'view/client/assets/images/hinh-san-pham/23/iphone-12-mini-white-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (24, 'view/client/assets/images/hinh-san-pham/24/iphone-12-mini-purple-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (24, 'view/client/assets/images/hinh-san-pham/24/iphone-12-mini-128gb-tim-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (24, 'view/client/assets/images/hinh-san-pham/24/iphone-12-mini-128gb-tim-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (24, 'view/client/assets/images/hinh-san-pham/24/iphone-12-mini-128gb-tim-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (25, 'view/client/assets/images/hinh-san-pham/25/iphone-12-mini-green-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (25, 'view/client/assets/images/hinh-san-pham/25/iphone-12-mini-128gb-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (25, 'view/client/assets/images/hinh-san-pham/25/iphone-12-mini-128gb-xanh-la-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (25, 'view/client/assets/images/hinh-san-pham/25/iphone-12-mini-128gb-xanh-la-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (26, 'view/client/assets/images/hinh-san-pham/26/iphone-12-mini-black-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (26, 'view/client/assets/images/hinh-san-pham/26/iphone-12-mini-128gb-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (26, 'view/client/assets/images/hinh-san-pham/26/iphone-12-mini-128gb-den-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (26, 'view/client/assets/images/hinh-san-pham/26/iphone-12-mini-128gb-den-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (27, 'view/client/assets/images/hinh-san-pham/27/iphone-12-mini-white-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (27, 'view/client/assets/images/hinh-san-pham/27/iphone-12-mini-128gb-trang-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (27, 'view/client/assets/images/hinh-san-pham/27/iphone-12-mini-128gb-trang-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (27, 'view/client/assets/images/hinh-san-pham/27/iphone-12-mini-white-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (28, 'view/client/assets/images/hinh-san-pham/28/iphone-12-mini-purple-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (28, 'view/client/assets/images/hinh-san-pham/28/iphone-12-mini-128gb-tim-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (28, 'view/client/assets/images/hinh-san-pham/28/iphone-12-mini-128gb-tim-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (28, 'view/client/assets/images/hinh-san-pham/28/iphone-12-mini-128gb-tim-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (29, 'view/client/assets/images/hinh-san-pham/29/iphone-12-mini-green-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (29, 'view/client/assets/images/hinh-san-pham/29/iphone-12-mini-128gb-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (29, 'view/client/assets/images/hinh-san-pham/29/iphone-12-mini-128gb-xanh-la-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (29, 'view/client/assets/images/hinh-san-pham/29/iphone-12-mini-128gb-xanh-la-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (30, 'view/client/assets/images/hinh-san-pham/30/iphone-12-mini-black-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (30, 'view/client/assets/images/hinh-san-pham/30/iphone-12-mini-128gb-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (30, 'view/client/assets/images/hinh-san-pham/30/iphone-12-mini-128gb-den-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (30, 'view/client/assets/images/hinh-san-pham/30/iphone-12-mini-128gb-den-7-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (31, 'view/client/assets/images/hinh-san-pham/31/iphone-12-mini-white-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (31, 'view/client/assets/images/hinh-san-pham/31/iphone-12-mini-128gb-trang-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (31, 'view/client/assets/images/hinh-san-pham/31/iphone-12-mini-128gb-trang-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (31, 'view/client/assets/images/hinh-san-pham/31/iphone-12-mini-white-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (32, 'view/client/assets/images/hinh-san-pham/32/iphone-12-mini-purple-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (32, 'view/client/assets/images/hinh-san-pham/32/iphone-12-mini-128gb-tim-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (32, 'view/client/assets/images/hinh-san-pham/32/iphone-12-mini-128gb-tim-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (32, 'view/client/assets/images/hinh-san-pham/32/iphone-12-mini-128gb-tim-7-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (33, 'view/client/assets/images/hinh-san-pham/33/iphone-12-pro-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (33, 'view/client/assets/images/hinh-san-pham/33/iphone-12-pro-256gb-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (33, 'view/client/assets/images/hinh-san-pham/33/iphone-12-pro-256gb-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (33, 'view/client/assets/images/hinh-san-pham/33/iphone-12-pro-256gb-bac-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (34, 'view/client/assets/images/hinh-san-pham/34/iphone-12-pro-gray-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (34, 'view/client/assets/images/hinh-san-pham/34/iphone-12-pro-256gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (34, 'view/client/assets/images/hinh-san-pham/34/iphone-12-pro-256gb-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (34, 'view/client/assets/images/hinh-san-pham/34/iphone-12-pro-256gb-xam-7-1-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (35, 'view/client/assets/images/hinh-san-pham/35/iphone-12-pro-golden-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (35, 'view/client/assets/images/hinh-san-pham/35/iphone-12-pro-256gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (35, 'view/client/assets/images/hinh-san-pham/35/iphone-12-pro-256gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (35, 'view/client/assets/images/hinh-san-pham/35/iphone-12-pro-256gb-vang-dong-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (36, 'view/client/assets/images/hinh-san-pham/36/iphone-12-pro-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (36, 'view/client/assets/images/hinh-san-pham/36/iphone-12-pro-256gb-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (36, 'view/client/assets/images/hinh-san-pham/36/iphone-12-pro-256gb-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (36, 'view/client/assets/images/hinh-san-pham/36/iphone-12-pro-256gb-xanh-duong-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (37, 'view/client/assets/images/hinh-san-pham/37/iphone-12-pro-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (37, 'view/client/assets/images/hinh-san-pham/37/iphone-12-pro-256gb-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (37, 'view/client/assets/images/hinh-san-pham/37/iphone-12-pro-256gb-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (37, 'view/client/assets/images/hinh-san-pham/37/iphone-12-pro-256gb-bac-7-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (38, 'view/client/assets/images/hinh-san-pham/38/iphone-12-pro-gray-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (38, 'view/client/assets/images/hinh-san-pham/38/iphone-12-pro-256gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (38, 'view/client/assets/images/hinh-san-pham/38/iphone-12-pro-256gb-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (38, 'view/client/assets/images/hinh-san-pham/38/iphone-12-pro-256gb-xam-7-1-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (39, 'view/client/assets/images/hinh-san-pham/39/iphone-12-pro-golden-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (39, 'view/client/assets/images/hinh-san-pham/39/iphone-12-pro-256gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (39, 'view/client/assets/images/hinh-san-pham/39/iphone-12-pro-256gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (39, 'view/client/assets/images/hinh-san-pham/39/iphone-12-pro-256gb-vang-dong-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (40, 'view/client/assets/images/hinh-san-pham/40/iphone-12-pro-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (40, 'view/client/assets/images/hinh-san-pham/40/iphone-12-pro-256gb-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (40, 'view/client/assets/images/hinh-san-pham/40/iphone-12-pro-256gb-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (40, 'view/client/assets/images/hinh-san-pham/40/iphone-12-pro-256gb-xanh-duong-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (41, 'view/client/assets/images/hinh-san-pham/41/iphone-12-pro-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (41, 'view/client/assets/images/hinh-san-pham/41/iphone-12-pro-256gb-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (41, 'view/client/assets/images/hinh-san-pham/41/iphone-12-pro-256gb-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (41, 'view/client/assets/images/hinh-san-pham/41/iphone-12-pro-256gb-bac-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (42, 'view/client/assets/images/hinh-san-pham/42/iphone-12-pro-gray-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (42, 'view/client/assets/images/hinh-san-pham/42/iphone-12-pro-256gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (42, 'view/client/assets/images/hinh-san-pham/42/iphone-12-pro-256gb-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (42, 'view/client/assets/images/hinh-san-pham/42/iphone-12-pro-256gb-xam-7-1-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (43, 'view/client/assets/images/hinh-san-pham/43/iphone-12-pro-golden-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (43, 'view/client/assets/images/hinh-san-pham/43/iphone-12-pro-256gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (43, 'view/client/assets/images/hinh-san-pham/43/iphone-12-pro-256gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (43, 'view/client/assets/images/hinh-san-pham/43/iphone-12-pro-256gb-vang-dong-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (44, 'view/client/assets/images/hinh-san-pham/44/iphone-12-pro-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (44, 'view/client/assets/images/hinh-san-pham/44/iphone-12-pro-256gb-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (44, 'view/client/assets/images/hinh-san-pham/44/iphone-12-pro-256gb-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (44, 'view/client/assets/images/hinh-san-pham/44/iphone-12-pro-256gb-xanh-duong-7-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (45, 'view/client/assets/images/hinh-san-pham/45/iphone-12-promax-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (45, 'view/client/assets/images/hinh-san-pham/45/iphone-12-pro-max-512gb-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (45, 'view/client/assets/images/hinh-san-pham/45/iphone-12-pro-max-512gb-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (45, 'view/client/assets/images/hinh-san-pham/45/iphone-12-pro-max-512gb-bac-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (46, 'view/client/assets/images/hinh-san-pham/46/iphone-12-promax-gray-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (46, 'view/client/assets/images/hinh-san-pham/46/iphone-12-pro-max-512gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (46, 'view/client/assets/images/hinh-san-pham/46/iphone-12-pro-max-512gb-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (46, 'view/client/assets/images/hinh-san-pham/46/iphone-12-pro-max-512gb-xam-7-1-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (47, 'view/client/assets/images/hinh-san-pham/47/iphone-12-promax-golden-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (47, 'view/client/assets/images/hinh-san-pham/47/iphone-12-pro-max-512gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (47, 'view/client/assets/images/hinh-san-pham/47/iphone-12-pro-max-512gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (47, 'view/client/assets/images/hinh-san-pham/47/iphone-12-pro-max-512gb-vang-dong-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (48, 'view/client/assets/images/hinh-san-pham/48/iphone-12-promax-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (48, 'view/client/assets/images/hinh-san-pham/48/iphone-12-pro-max-512gb-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (48, 'view/client/assets/images/hinh-san-pham/48/iphone-12-pro-max-512gb-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (48, 'view/client/assets/images/hinh-san-pham/48/iphone-12-pro-max-512gb-xanh-duong-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (49, 'view/client/assets/images/hinh-san-pham/49/iphone-12-promax-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (49, 'view/client/assets/images/hinh-san-pham/49/iphone-12-pro-max-512gb-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (49, 'view/client/assets/images/hinh-san-pham/49/iphone-12-pro-max-512gb-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (49, 'view/client/assets/images/hinh-san-pham/49/iphone-12-pro-max-512gb-bac-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (50, 'view/client/assets/images/hinh-san-pham/50/iphone-12-promax-gray-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (50, 'view/client/assets/images/hinh-san-pham/50/iphone-12-pro-max-512gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (50, 'view/client/assets/images/hinh-san-pham/50/iphone-12-pro-max-512gb-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (50, 'view/client/assets/images/hinh-san-pham/50/iphone-12-pro-max-512gb-xam-7-1-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (51, 'view/client/assets/images/hinh-san-pham/51/iphone-12-promax-golden-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (51, 'view/client/assets/images/hinh-san-pham/51/iphone-12-pro-max-512gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (51, 'view/client/assets/images/hinh-san-pham/51/iphone-12-pro-max-512gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (51, 'view/client/assets/images/hinh-san-pham/51/iphone-12-pro-max-512gb-vang-dong-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (52, 'view/client/assets/images/hinh-san-pham/52/iphone-12-promax-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (52, 'view/client/assets/images/hinh-san-pham/52/iphone-12-pro-max-512gb-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (52, 'view/client/assets/images/hinh-san-pham/52/iphone-12-pro-max-512gb-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (52, 'view/client/assets/images/hinh-san-pham/52/iphone-12-pro-max-512gb-xanh-duong-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (53, 'view/client/assets/images/hinh-san-pham/53/iphone-12-promax-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (53, 'view/client/assets/images/hinh-san-pham/53/iphone-12-pro-max-512gb-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (53, 'view/client/assets/images/hinh-san-pham/53/iphone-12-pro-max-512gb-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (53, 'view/client/assets/images/hinh-san-pham/53/iphone-12-pro-max-512gb-bac-7-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (54, 'view/client/assets/images/hinh-san-pham/54/iphone-12-promax-gray-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (54, 'view/client/assets/images/hinh-san-pham/54/iphone-12-pro-max-512gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (54, 'view/client/assets/images/hinh-san-pham/54/iphone-12-pro-max-512gb-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (54, 'view/client/assets/images/hinh-san-pham/54/iphone-12-pro-max-512gb-xam-7-1-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (55, 'view/client/assets/images/hinh-san-pham/55/iphone-12-promax-golden-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (55, 'view/client/assets/images/hinh-san-pham/55/iphone-12-pro-max-512gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (55, 'view/client/assets/images/hinh-san-pham/55/iphone-12-pro-max-512gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (55, 'view/client/assets/images/hinh-san-pham/55/iphone-12-pro-max-512gb-vang-dong-7-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (56, 'view/client/assets/images/hinh-san-pham/56/iphone-12-promax-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (56, 'view/client/assets/images/hinh-san-pham/56/iphone-12-pro-max-512gb-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (56, 'view/client/assets/images/hinh-san-pham/56/iphone-12-pro-max-512gb-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (56, 'view/client/assets/images/hinh-san-pham/56/iphone-12-pro-max-512gb-xanh-duong-7-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (57, 'view/client/assets/images/hinh-san-pham/57/iphone-13-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (57, 'view/client/assets/images/hinh-san-pham/57/iphone-13-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (57, 'view/client/assets/images/hinh-san-pham/57/iphone-13-xanh-duong-2-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (57, 'view/client/assets/images/hinh-san-pham/57/iphone-13-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (58, 'view/client/assets/images/hinh-san-pham/58/iphone-13-black-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (58, 'view/client/assets/images/hinh-san-pham/58/iphone-13-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (58, 'view/client/assets/images/hinh-san-pham/58/iphone-13-den-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (58, 'view/client/assets/images/hinh-san-pham/58/iphone-13-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (59, 'view/client/assets/images/hinh-san-pham/59/iphone-13-white-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (59, 'view/client/assets/images/hinh-san-pham/59/iphone-13-trang-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (59, 'view/client/assets/images/hinh-san-pham/59/iphone-13-trang-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (59, 'view/client/assets/images/hinh-san-pham/59/iphone-13-trang-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (60, 'view/client/assets/images/hinh-san-pham/60/iphone-13-red-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (60, 'view/client/assets/images/hinh-san-pham/60/iphone-13-do-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (60, 'view/client/assets/images/hinh-san-pham/60/iphone-13-do-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (60, 'view/client/assets/images/hinh-san-pham/60/iphone-13-do-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (60, 'view/client/assets/images/hinh-san-pham/60/iphone-13-do-4-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (61, 'view/client/assets/images/hinh-san-pham/61/iphone-13-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (61, 'view/client/assets/images/hinh-san-pham/61/iphone-13-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (61, 'view/client/assets/images/hinh-san-pham/61/iphone-13-xanh-duong-2-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (61, 'view/client/assets/images/hinh-san-pham/61/iphone-13-xanh-duong-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (62, 'view/client/assets/images/hinh-san-pham/62/iphone-13-black-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (62, 'view/client/assets/images/hinh-san-pham/62/iphone-13-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (62, 'view/client/assets/images/hinh-san-pham/62/iphone-13-den-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (62, 'view/client/assets/images/hinh-san-pham/62/iphone-13-den-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (63, 'view/client/assets/images/hinh-san-pham/63/iphone-13-white-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (63, 'view/client/assets/images/hinh-san-pham/63/iphone-13-trang-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (63, 'view/client/assets/images/hinh-san-pham/63/iphone-13-trang-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (63, 'view/client/assets/images/hinh-san-pham/63/iphone-13-trang-3-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (64, 'view/client/assets/images/hinh-san-pham/64/iphone-13-red-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (64, 'view/client/assets/images/hinh-san-pham/64/iphone-13-do-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (64, 'view/client/assets/images/hinh-san-pham/64/iphone-13-do-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (64, 'view/client/assets/images/hinh-san-pham/64/iphone-13-do-3-650x650.jpg');




INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (65, 'view/client/assets/images/hinh-san-pham/65/iphone-13-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (65, 'view/client/assets/images/hinh-san-pham/65/iphone-13-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (65, 'view/client/assets/images/hinh-san-pham/65/iphone-13-xanh-duong-2-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (65, 'view/client/assets/images/hinh-san-pham/65/iphone-13-xanh-duong-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (66, 'view/client/assets/images/hinh-san-pham/66/iphone-13-black-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (66, 'view/client/assets/images/hinh-san-pham/66/iphone-13-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (66, 'view/client/assets/images/hinh-san-pham/66/iphone-13-den-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (66, 'view/client/assets/images/hinh-san-pham/66/iphone-13-den-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (67, 'view/client/assets/images/hinh-san-pham/67/iphone-13-white-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (67, 'view/client/assets/images/hinh-san-pham/67/iphone-13-trang-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (67, 'view/client/assets/images/hinh-san-pham/67/iphone-13-trang-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (67, 'view/client/assets/images/hinh-san-pham/67/iphone-13-trang-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (68, 'view/client/assets/images/hinh-san-pham/68/iphone-13-red-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (68, 'view/client/assets/images/hinh-san-pham/68/iphone-13-do-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (68, 'view/client/assets/images/hinh-san-pham/68/iphone-13-do-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (68, 'view/client/assets/images/hinh-san-pham/68/iphone-13-do-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (69, 'view/client/assets/images/hinh-san-pham/69/iphone-13-pro-silver-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (69, 'view/client/assets/images/hinh-san-pham/69/iphone-13-pro-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (69, 'view/client/assets/images/hinh-san-pham/69/iphone-13-pro-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (69, 'view/client/assets/images/hinh-san-pham/69/iphone-13-pro-bac-3-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (70, 'view/client/assets/images/hinh-san-pham/70/iphone-13-pro-grey-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (70, 'view/client/assets/images/hinh-san-pham/70/iphone-13-pro-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (70, 'view/client/assets/images/hinh-san-pham/70/iphone-13-pro-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (70, 'view/client/assets/images/hinh-san-pham/70/iphone-13-pro-xam-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (71, 'view/client/assets/images/hinh-san-pham/71/iphone-13-pro-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (71, 'view/client/assets/images/hinh-san-pham/71/iphone-13-pro-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (71, 'view/client/assets/images/hinh-san-pham/71/iphone-13-pro-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (71, 'view/client/assets/images/hinh-san-pham/71/iphone-13-pro-vang-dong-4-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (72, 'view/client/assets/images/hinh-san-pham/72/iphone-13-pro-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (72, 'view/client/assets/images/hinh-san-pham/72/iphone-13-pro-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (72, 'view/client/assets/images/hinh-san-pham/72/iphone-13-pro-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (72, 'view/client/assets/images/hinh-san-pham/72/iphone-13-pro-xanh-duong-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (73, 'view/client/assets/images/hinh-san-pham/73/iphone-13-pro-silver-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (73, 'view/client/assets/images/hinh-san-pham/73/iphone-13-pro-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (73, 'view/client/assets/images/hinh-san-pham/73/iphone-13-pro-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (73, 'view/client/assets/images/hinh-san-pham/73/iphone-13-pro-bac-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (74, 'view/client/assets/images/hinh-san-pham/74/iphone-13-pro-grey-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (74, 'view/client/assets/images/hinh-san-pham/74/iphone-13-pro-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (74, 'view/client/assets/images/hinh-san-pham/74/iphone-13-pro-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (74, 'view/client/assets/images/hinh-san-pham/74/iphone-13-pro-xam-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (75, 'view/client/assets/images/hinh-san-pham/75/iphone-13-pro-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (75, 'view/client/assets/images/hinh-san-pham/75/iphone-13-pro-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (75, 'view/client/assets/images/hinh-san-pham/75/iphone-13-pro-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (75, 'view/client/assets/images/hinh-san-pham/75/iphone-13-pro-vang-dong-4-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (76, 'view/client/assets/images/hinh-san-pham/76/iphone-13-pro-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (76, 'view/client/assets/images/hinh-san-pham/76/iphone-13-pro-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (76, 'view/client/assets/images/hinh-san-pham/76/iphone-13-pro-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (76, 'view/client/assets/images/hinh-san-pham/76/iphone-13-pro-xanh-duong-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (77, 'view/client/assets/images/hinh-san-pham/77/iphone-13-pro-silver-650x650.png');
INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (77, 'view/client/assets/images/hinh-san-pham/77/iphone-13-pro-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (77, 'view/client/assets/images/hinh-san-pham/77/iphone-13-pro-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (77, 'view/client/assets/images/hinh-san-pham/77/iphone-13-pro-bac-3-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (78, 'view/client/assets/images/hinh-san-pham/78/iphone-13-pro-max-grey-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (78, 'view/client/assets/images/hinh-san-pham/78/iphone-13-pro-max-256gb-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (78, 'view/client/assets/images/hinh-san-pham/78/iphone-13-pro-max-256gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (78, 'view/client/assets/images/hinh-san-pham/78/iphone-13-pro-max-256gb-xam-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (79, 'view/client/assets/images/hinh-san-pham/79/iphone-13-pro-max-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (79, 'view/client/assets/images/hinh-san-pham/79/iphone-13-pro-max-256gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (79, 'view/client/assets/images/hinh-san-pham/79/iphone-13-pro-max-256gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (79, 'view/client/assets/images/hinh-san-pham/79/iphone-13-pro-max-256gb-vang-dong-4-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (80, 'view/client/assets/images/hinh-san-pham/80/iphone-13-pro-max-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (80, 'view/client/assets/images/hinh-san-pham/80/iphone-13-pro-max-256gb-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (80, 'view/client/assets/images/hinh-san-pham/80/iphone-13-pro-max-256gb-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (80, 'view/client/assets/images/hinh-san-pham/80/iphone-13-pro-max-256gb-xanh-duong-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (81, 'view/client/assets/images/hinh-san-pham/81/iphone-13-pro-silver-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (81, 'view/client/assets/images/hinh-san-pham/81/iphone-13-pro-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (81, 'view/client/assets/images/hinh-san-pham/81/iphone-13-pro-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (81, 'view/client/assets/images/hinh-san-pham/81/iphone-13-pro-bac-4-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (82, 'view/client/assets/images/hinh-san-pham/82/iphone-13-pro-max-grey-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (82, 'view/client/assets/images/hinh-san-pham/82/iphone-13-pro-max-256gb-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (82, 'view/client/assets/images/hinh-san-pham/82/iphone-13-pro-max-256gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (82, 'view/client/assets/images/hinh-san-pham/82/iphone-13-pro-max-256gb-xam-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (83, 'view/client/assets/images/hinh-san-pham/83/iphone-13-pro-max-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (83, 'view/client/assets/images/hinh-san-pham/83/iphone-13-pro-max-256gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (83, 'view/client/assets/images/hinh-san-pham/83/iphone-13-pro-max-256gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (83, 'view/client/assets/images/hinh-san-pham/83/iphone-13-pro-max-256gb-vang-dong-4-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (84, 'view/client/assets/images/hinh-san-pham/84/iphone-13-pro-max-blue-200x200.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (84, 'view/client/assets/images/hinh-san-pham/84/iphone-13-pro-max-256gb-xanh-duong-1-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (84, 'view/client/assets/images/hinh-san-pham/84/iphone-13-pro-max-256gb-xanh-duong-2-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (84, 'view/client/assets/images/hinh-san-pham/84/iphone-13-pro-max-256gb-xanh-duong-3-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (85, 'view/client/assets/images/hinh-san-pham/85/iphone-13-pro-silver-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (85, 'view/client/assets/images/hinh-san-pham/85/iphone-13-pro-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (85, 'view/client/assets/images/hinh-san-pham/85/iphone-13-pro-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (85, 'view/client/assets/images/hinh-san-pham/85/iphone-13-pro-bac-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (86, 'view/client/assets/images/hinh-san-pham/86/iphone-13-pro-max-grey-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (86, 'view/client/assets/images/hinh-san-pham/86/iphone-13-pro-max-256gb-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (86, 'view/client/assets/images/hinh-san-pham/86/iphone-13-pro-max-256gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (86, 'view/client/assets/images/hinh-san-pham/86/iphone-13-pro-max-256gb-xam-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (87, 'view/client/assets/images/hinh-san-pham/87/iphone-13-pro-max-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (87, 'view/client/assets/images/hinh-san-pham/87/iphone-13-pro-max-256gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (87, 'view/client/assets/images/hinh-san-pham/87/iphone-13-pro-max-256gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (87, 'view/client/assets/images/hinh-san-pham/87/iphone-13-pro-max-256gb-vang-dong-4-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (88, 'view/client/assets/images/hinh-san-pham/88/iphone-13-pro-max-blue-200x200.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (88, 'view/client/assets/images/hinh-san-pham/88/iphone-13-pro-max-256gb-xanh-duong-1-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (88, 'view/client/assets/images/hinh-san-pham/88/iphone-13-pro-max-256gb-xanh-duong-2-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (88, 'view/client/assets/images/hinh-san-pham/88/iphone-13-pro-max-256gb-xanh-duong-3-200x200.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (89, 'view/client/assets/images/hinh-san-pham/89/iphone-13-pro-silver-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (89, 'view/client/assets/images/hinh-san-pham/89/iphone-13-pro-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (89, 'view/client/assets/images/hinh-san-pham/89/iphone-13-pro-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (89, 'view/client/assets/images/hinh-san-pham/89/iphone-13-pro-bac-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (90, 'view/client/assets/images/hinh-san-pham/90/iphone-13-pro-max-grey-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (90, 'view/client/assets/images/hinh-san-pham/90/iphone-13-pro-max-256gb-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (90, 'view/client/assets/images/hinh-san-pham/90/iphone-13-pro-max-256gb-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (90, 'view/client/assets/images/hinh-san-pham/90/iphone-13-pro-max-256gb-xam-3-650x650.jpg');



INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (91, 'view/client/assets/images/hinh-san-pham/91/iphone-13-pro-max-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (91, 'view/client/assets/images/hinh-san-pham/91/iphone-13-pro-max-256gb-vang-dong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (91, 'view/client/assets/images/hinh-san-pham/91/iphone-13-pro-max-256gb-vang-dong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (91, 'view/client/assets/images/hinh-san-pham/91/iphone-13-pro-max-256gb-vang-dong-4-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (92, 'view/client/assets/images/hinh-san-pham/92/iphone-13-pro-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (92, 'view/client/assets/images/hinh-san-pham/92/iphone-13-pro-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (92, 'view/client/assets/images/hinh-san-pham/92/iphone-13-pro-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (92, 'view/client/assets/images/hinh-san-pham/92/iphone-13-pro-xanh-duong-3-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (93, 'view/client/assets/images/hinh-san-pham/93/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (93, 'view/client/assets/images/hinh-san-pham/93/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (93, 'view/client/assets/images/hinh-san-pham/93/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (93, 'view/client/assets/images/hinh-san-pham/93/macbook-air-m1-silver-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (94, 'view/client/assets/images/hinh-san-pham/94/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (94, 'view/client/assets/images/hinh-san-pham/94/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (94, 'view/client/assets/images/hinh-san-pham/94/macbook-air-m1-spgry-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (94, 'view/client/assets/images/hinh-san-pham/94/macbook-air-m1-spgry-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (95, 'view/client/assets/images/hinh-san-pham/95/macbook-air-m1-2020-gold-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (95, 'view/client/assets/images/hinh-san-pham/95/macbook-air-m1-gold-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (95, 'view/client/assets/images/hinh-san-pham/95/macbook-air-m1-gold-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (95, 'view/client/assets/images/hinh-san-pham/95/macbook-air-m1-gold-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (96, 'view/client/assets/images/hinh-san-pham/96/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (96, 'view/client/assets/images/hinh-san-pham/96/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (96, 'view/client/assets/images/hinh-san-pham/96/macbook-air-m1-silver-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (96, 'view/client/assets/images/hinh-san-pham/96/macbook-air-m1-silver-04-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (97, 'view/client/assets/images/hinh-san-pham/97/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (97, 'view/client/assets/images/hinh-san-pham/97/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (97, 'view/client/assets/images/hinh-san-pham/97/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (97, 'view/client/assets/images/hinh-san-pham/97/macbook-air-m1-spgry-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (98, 'view/client/assets/images/hinh-san-pham/98/macbook-air-m1-2020-gold-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (98, 'view/client/assets/images/hinh-san-pham/98/macbook-air-m1-gold-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (98, 'view/client/assets/images/hinh-san-pham/98/macbook-air-m1-gold-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (98, 'view/client/assets/images/hinh-san-pham/98/macbook-air-m1-gold-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (99, 'view/client/assets/images/hinh-san-pham/99/macbook-air-m1-2020-gold-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (99, 'view/client/assets/images/hinh-san-pham/99/macbook-air-m1-gold-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (99, 'view/client/assets/images/hinh-san-pham/99/macbook-air-m1-gold-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (99, 'view/client/assets/images/hinh-san-pham/99/macbook-air-m1-gold-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (100, 'view/client/assets/images/hinh-san-pham/100/macbook-air-m1-2020-gold-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (100, 'view/client/assets/images/hinh-san-pham/100/macbook-air-m1-gold-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (100, 'view/client/assets/images/hinh-san-pham/100/macbook-air-m1-gold-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (100, 'view/client/assets/images/hinh-san-pham/100/macbook-air-m1-gold-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (101, 'view/client/assets/images/hinh-san-pham/101/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (101, 'view/client/assets/images/hinh-san-pham/101/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (101, 'view/client/assets/images/hinh-san-pham/101/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (101, 'view/client/assets/images/hinh-san-pham/101/macbook-air-m1-spgry-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (102, 'view/client/assets/images/hinh-san-pham/102/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (102, 'view/client/assets/images/hinh-san-pham/102/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (102, 'view/client/assets/images/hinh-san-pham/102/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (102, 'view/client/assets/images/hinh-san-pham/102/macbook-air-m1-spgry-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (103, 'view/client/assets/images/hinh-san-pham/103/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (103, 'view/client/assets/images/hinh-san-pham/103/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (103, 'view/client/assets/images/hinh-san-pham/103/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (103, 'view/client/assets/images/hinh-san-pham/103/macbook-air-m1-silver-04-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (104, 'view/client/assets/images/hinh-san-pham/104/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (104, 'view/client/assets/images/hinh-san-pham/104/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (104, 'view/client/assets/images/hinh-san-pham/104/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (104, 'view/client/assets/images/hinh-san-pham/104/macbook-air-m1-spgry-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (105, 'view/client/assets/images/hinh-san-pham/105/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (105, 'view/client/assets/images/hinh-san-pham/105/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (105, 'view/client/assets/images/hinh-san-pham/105/macbook-air-m1-silver-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (105, 'view/client/assets/images/hinh-san-pham/105/macbook-air-m1-silver-04-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (106, 'view/client/assets/images/hinh-san-pham/106/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (106, 'view/client/assets/images/hinh-san-pham/106/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (106, 'view/client/assets/images/hinh-san-pham/106/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (106, 'view/client/assets/images/hinh-san-pham/106/macbook-air-m1-spgry-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (107, 'view/client/assets/images/hinh-san-pham/107/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (107, 'view/client/assets/images/hinh-san-pham/107/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (107, 'view/client/assets/images/hinh-san-pham/107/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (107, 'view/client/assets/images/hinh-san-pham/107/macbook-air-m1-silver-04-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (108, 'view/client/assets/images/hinh-san-pham/108/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (108, 'view/client/assets/images/hinh-san-pham/108/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (108, 'view/client/assets/images/hinh-san-pham/108/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (108, 'view/client/assets/images/hinh-san-pham/108/macbook-air-m1-spgry-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (109, 'view/client/assets/images/hinh-san-pham/109/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (109, 'view/client/assets/images/hinh-san-pham/109/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (109, 'view/client/assets/images/hinh-san-pham/109/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (109, 'view/client/assets/images/hinh-san-pham/109/macbook-air-m1-silver-04-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (110, 'view/client/assets/images/hinh-san-pham/110/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (110, 'view/client/assets/images/hinh-san-pham/110/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (110, 'view/client/assets/images/hinh-san-pham/110/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (110, 'view/client/assets/images/hinh-san-pham/110/macbook-air-m1-silver-04-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (111, 'view/client/assets/images/hinh-san-pham/111/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (111, 'view/client/assets/images/hinh-san-pham/111/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (111, 'view/client/assets/images/hinh-san-pham/111/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (111, 'view/client/assets/images/hinh-san-pham/111/macbook-air-m1-silver-04-200x200.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (112, 'view/client/assets/images/hinh-san-pham/112/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (112, 'view/client/assets/images/hinh-san-pham/112/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (112, 'view/client/assets/images/hinh-san-pham/112/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (112, 'view/client/assets/images/hinh-san-pham/112/macbook-air-m1-spgry-04-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (113, 'view/client/assets/images/hinh-san-pham/113/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (113, 'view/client/assets/images/hinh-san-pham/113/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (113, 'view/client/assets/images/hinh-san-pham/113/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (113, 'view/client/assets/images/hinh-san-pham/113/macbook-air-m1-silver-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (114, 'view/client/assets/images/hinh-san-pham/114/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (114, 'view/client/assets/images/hinh-san-pham/114/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (114, 'view/client/assets/images/hinh-san-pham/114/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (114, 'view/client/assets/images/hinh-san-pham/114/macbook-air-m1-spgry-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (115, 'view/client/assets/images/hinh-san-pham/115/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (115, 'view/client/assets/images/hinh-san-pham/115/macbook-air-m1-silver-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (115, 'view/client/assets/images/hinh-san-pham/115/macbook-air-m1-silver-04-200x200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (115, 'view/client/assets/images/hinh-san-pham/115/macbook-air-m1-spgry-01-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (116, 'view/client/assets/images/hinh-san-pham/116/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (116, 'view/client/assets/images/hinh-san-pham/116/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (116, 'view/client/assets/images/hinh-san-pham/116/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (116, 'view/client/assets/images/hinh-san-pham/116/macbook-air-m1-spgry-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (117, 'view/client/assets/images/hinh-san-pham/117/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (117, 'view/client/assets/images/hinh-san-pham/117/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (117, 'view/client/assets/images/hinh-san-pham/117/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (117, 'view/client/assets/images/hinh-san-pham/117/macbook-air-m1-silver-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (118, 'view/client/assets/images/hinh-san-pham/118/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (118, 'view/client/assets/images/hinh-san-pham/118/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (118, 'view/client/assets/images/hinh-san-pham/118/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (118, 'view/client/assets/images/hinh-san-pham/118/macbook-air-m1-spgry-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (119, 'view/client/assets/images/hinh-san-pham/119/macbook-air-m1-2020-silver-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (119, 'view/client/assets/images/hinh-san-pham/119/macbook-air-m1-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (119, 'view/client/assets/images/hinh-san-pham/119/macbook-air-m1-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (119, 'view/client/assets/images/hinh-san-pham/119/macbook-air-m1-silver-03-650x650.jpg');


INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (120, 'view/client/assets/images/hinh-san-pham/120/macbook-air-m1-2020-spacegray-thumb-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (120, 'view/client/assets/images/hinh-san-pham/120/macbook-air-m1-spgry-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (120, 'view/client/assets/images/hinh-san-pham/120/macbook-air-m1-spgry-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (120, 'view/client/assets/images/hinh-san-pham/120/macbook-air-m1-spgry-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (121, 'view/client/assets/images/hinh-san-pham/121/thumb-imac-24inch-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (121, 'view/client/assets/images/hinh-san-pham/121/imac-24inch-7gpu-blue-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (121, 'view/client/assets/images/hinh-san-pham/121/imac-24inch-7gpu-blue-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (121, 'view/client/assets/images/hinh-san-pham/121/imac-24inch-7gpu-blue-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (122, 'view/client/assets/images/hinh-san-pham/122/thumb-imac-24inch-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (122, 'view/client/assets/images/hinh-san-pham/122/imac-silver-24inch-7gpu-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (122, 'view/client/assets/images/hinh-san-pham/122/imac-silver-24inch-7gpu-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (122, 'view/client/assets/images/hinh-san-pham/122/imac-silver-24inch-7gpu-04-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (123, 'view/client/assets/images/hinh-san-pham/123/thumb-imac-24inch-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (123, 'view/client/assets/images/hinh-san-pham/123/imac-24inch-7gpu-blue-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (123, 'view/client/assets/images/hinh-san-pham/123/imac-24inch-7gpu-blue-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (123, 'view/client/assets/images/hinh-san-pham/123/imac-24inch-7gpu-blue-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (124, 'view/client/assets/images/hinh-san-pham/124/thumb-imac-24inch-silver-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (124, 'view/client/assets/images/hinh-san-pham/124/imac-silver-24inch-7gpu-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (124, 'view/client/assets/images/hinh-san-pham/124/imac-silver-24inch-7gpu-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (124, 'view/client/assets/images/hinh-san-pham/124/imac-silver-24inch-7gpu-04-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (125, 'view/client/assets/images/hinh-san-pham/125/imac-24inch-green-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (125, 'view/client/assets/images/hinh-san-pham/125/imac-green-24inch-8gpu-2-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (125, 'view/client/assets/images/hinh-san-pham/125/imac-green-24inch-8gpu-3-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (125, 'view/client/assets/images/hinh-san-pham/125/imac-green-24inch-8gpu-4-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (126, 'view/client/assets/images/hinh-san-pham/126/ipad-mini-6-5g-gray-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (126, 'view/client/assets/images/hinh-san-pham/126/ipad-mini-6-gray-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (126, 'view/client/assets/images/hinh-san-pham/126/ipad-mini-6-gray-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (126, 'view/client/assets/images/hinh-san-pham/126/ipad-mini-6-gray-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (126, 'view/client/assets/images/hinh-san-pham/126/ipad-mini-6-gray-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (127, 'view/client/assets/images/hinh-san-pham/127/ipad-mini-6-5g-startlight-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (127, 'view/client/assets/images/hinh-san-pham/127/ipad-mini-6-starlight-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (127, 'view/client/assets/images/hinh-san-pham/127/ipad-mini-6-starlight-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (127, 'view/client/assets/images/hinh-san-pham/127/ipad-mini-6-starlight-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (127, 'view/client/assets/images/hinh-san-pham/127/ipad-mini-6-starlight-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (128, 'view/client/assets/images/hinh-san-pham/128/ipad-mini-6-5g-gray-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (128, 'view/client/assets/images/hinh-san-pham/128/ipad-mini-6-gray-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (128, 'view/client/assets/images/hinh-san-pham/128/ipad-mini-6-gray-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (128, 'view/client/assets/images/hinh-san-pham/128/ipad-mini-6-gray-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (128, 'view/client/assets/images/hinh-san-pham/128/ipad-mini-6-gray-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (129, 'view/client/assets/images/hinh-san-pham/129/ipad-mini-6-5g-pink-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (129, 'view/client/assets/images/hinh-san-pham/129/ipad-mini-6-pink-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (129, 'view/client/assets/images/hinh-san-pham/129/ipad-mini-6-pink-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (129, 'view/client/assets/images/hinh-san-pham/129/ipad-mini-6-pink-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (129, 'view/client/assets/images/hinh-san-pham/129/ipad-mini-6-pink-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (130, 'view/client/assets/images/hinh-san-pham/130/ipad-mini-6-5g-gray-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (130, 'view/client/assets/images/hinh-san-pham/130/ipad-mini-6-gray-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (130, 'view/client/assets/images/hinh-san-pham/130/ipad-mini-6-gray-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (130, 'view/client/assets/images/hinh-san-pham/130/ipad-mini-6-gray-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (130, 'view/client/assets/images/hinh-san-pham/130/ipad-mini-6-gray-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (131, 'view/client/assets/images/hinh-san-pham/131/ipad-mini-6-5g-startlight-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (131, 'view/client/assets/images/hinh-san-pham/131/ipad-mini-6-starlight-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (131, 'view/client/assets/images/hinh-san-pham/131/ipad-mini-6-starlight-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (131, 'view/client/assets/images/hinh-san-pham/131/ipad-mini-6-starlight-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (131, 'view/client/assets/images/hinh-san-pham/131/ipad-mini-6-starlight-6-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (132, 'view/client/assets/images/hinh-san-pham/132/ipad-mini-6-5g-gray-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (132, 'view/client/assets/images/hinh-san-pham/132/ipad-mini-6-gray-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (132, 'view/client/assets/images/hinh-san-pham/132/ipad-mini-6-gray-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (132, 'view/client/assets/images/hinh-san-pham/132/ipad-mini-6-gray-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (132, 'view/client/assets/images/hinh-san-pham/132/ipad-mini-6-gray-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (133, 'view/client/assets/images/hinh-san-pham/133/ipad-mini-6-5g-pink-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (133, 'view/client/assets/images/hinh-san-pham/133/ipad-mini-6-pink-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (133, 'view/client/assets/images/hinh-san-pham/133/ipad-mini-6-pink-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (133, 'view/client/assets/images/hinh-san-pham/133/ipad-mini-6-pink-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (133, 'view/client/assets/images/hinh-san-pham/133/ipad-mini-6-pink-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (134, 'view/client/assets/images/hinh-san-pham/134/ipad-mini-5-cellular-sliver-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (134, 'view/client/assets/images/hinh-san-pham/134/ipad-mini-5-cellular-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (134, 'view/client/assets/images/hinh-san-pham/134/ipad-mini-5-cellular-sliver-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (134, 'view/client/assets/images/hinh-san-pham/134/ipad-mini-5-cellular-sliver-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (134, 'view/client/assets/images/hinh-san-pham/134/ipad-mini-5-cellular-sliver-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (135, 'view/client/assets/images/hinh-san-pham/135/ipad-mini-5-cellular-gray-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (135, 'view/client/assets/images/hinh-san-pham/135/ipad-mini-5-cellular-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (135, 'view/client/assets/images/hinh-san-pham/135/ipad-mini-5-cellular-5-1-650x650 .jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (135, 'view/client/assets/images/hinh-san-pham/135/ipad-mini-5-cellular-gray-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (135, 'view/client/assets/images/hinh-san-pham/135/ipad-mini-5-cellular-gray-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (136, 'view/client/assets/images/hinh-san-pham/136/ipad-mini-5-cellular-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (136, 'view/client/assets/images/hinh-san-pham/136/ipad-mini-5-cellular-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (136, 'view/client/assets/images/hinh-san-pham/136/ipad-mini-5-cellular-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (136, 'view/client/assets/images/hinh-san-pham/136/ipad-mini-5-cellular-4-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (136, 'view/client/assets/images/hinh-san-pham/136/ipad-mini-5-cellular-5-2-650x650 .jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (137, 'view/client/assets/images/hinh-san-pham/137/ipad-air-4-wifi-sky-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (137, 'view/client/assets/images/hinh-san-pham/137/ipad-air-4-wifi-64gb-2020-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (137, 'view/client/assets/images/hinh-san-pham/137/ipad-air-4-wifi-64gb-2020-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (137, 'view/client/assets/images/hinh-san-pham/137/ipad-air-4-wifi-64gb-2020-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (137, 'view/client/assets/images/hinh-san-pham/137/ipad-air-4-wifi-64gb-2020-xanh-duong-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (138, 'view/client/assets/images/hinh-san-pham/138/ipad-air-4-cellular-rose-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (138, 'view/client/assets/images/hinh-san-pham/138/ipad-air-4-wifi-cellular-256gb-2020-vang-hong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (138, 'view/client/assets/images/hinh-san-pham/138/ipad-air-4-wifi-cellular-256gb-2020-vang-hong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (138, 'view/client/assets/images/hinh-san-pham/138/ipad-air-4-wifi-cellular-256gb-2020-vang-hong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (139, 'view/client/assets/images/hinh-san-pham/139/ipad-air-4-cellular-gray-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (139, 'view/client/assets/images/hinh-san-pham/139/ipad-air-4-wifi-64gb-2020-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (139, 'view/client/assets/images/hinh-san-pham/139/ipad-air-4-wifi-64gb-2020-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (139, 'view/client/assets/images/hinh-san-pham/139/ipad-air-4-wifi-64gb-2020-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (140, 'view/client/assets/images/hinh-san-pham/140/ipad-air-4-cellular-sliver-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (140, 'view/client/assets/images/hinh-san-pham/140/ipad-air-4-wifi-cellular-256gb-2020-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (140, 'view/client/assets/images/hinh-san-pham/140/ipad-air-4-wifi-cellular-256gb-2020-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (140, 'view/client/assets/images/hinh-san-pham/140/ipad-air-4-wifi-cellular-256gb-2020-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (141, 'view/client/assets/images/hinh-san-pham/141/ipad-air-4-cellular-green-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (141, 'view/client/assets/images/hinh-san-pham/141/ipad-air-4-wifi-cellular-256gb-2020-xanh-la-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (141, 'view/client/assets/images/hinh-san-pham/141/ipad-air-4-wifi-cellular-256gb-2020-xanh-la-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (141, 'view/client/assets/images/hinh-san-pham/141/ipad-air-4-wifi-cellular-256gb-2020-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (142, 'view/client/assets/images/hinh-san-pham/142/ipad-air-4-wifi-sky-blue-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (142, 'view/client/assets/images/hinh-san-pham/142/ipad-air-4-wifi-64gb-2020-xanh-duong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (142, 'view/client/assets/images/hinh-san-pham/142/ipad-air-4-wifi-64gb-2020-xanh-duong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (142, 'view/client/assets/images/hinh-san-pham/142/ipad-air-4-wifi-64gb-2020-xanh-duong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (142, 'view/client/assets/images/hinh-san-pham/142/ipad-air-4-wifi-64gb-2020-xanh-duong-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (143, 'view/client/assets/images/hinh-san-pham/143/ipad-air-4-cellular-rose-gold-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (143, 'view/client/assets/images/hinh-san-pham/143/ipad-air-4-wifi-cellular-256gb-2020-vang-hong-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (143, 'view/client/assets/images/hinh-san-pham/143/ipad-air-4-wifi-cellular-256gb-2020-vang-hong-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (143, 'view/client/assets/images/hinh-san-pham/143/ipad-air-4-wifi-cellular-256gb-2020-vang-hong-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (144, 'view/client/assets/images/hinh-san-pham/144/ipad-air-4-cellular-gray-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (144, 'view/client/assets/images/hinh-san-pham/144/ipad-air-4-wifi-64gb-2020-xam-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (144, 'view/client/assets/images/hinh-san-pham/144/ipad-air-4-wifi-64gb-2020-xam-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (144, 'view/client/assets/images/hinh-san-pham/144/ipad-air-4-wifi-64gb-2020-xam-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (145, 'view/client/assets/images/hinh-san-pham/145/ipad-air-4-cellular-sliver-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (145, 'view/client/assets/images/hinh-san-pham/145/ipad-air-4-wifi-cellular-256gb-2020-bac-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (145, 'view/client/assets/images/hinh-san-pham/145/ipad-air-4-wifi-cellular-256gb-2020-bac-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (145, 'view/client/assets/images/hinh-san-pham/145/ipad-air-4-wifi-cellular-256gb-2020-bac-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (146, 'view/client/assets/images/hinh-san-pham/146/ipad-air-4-cellular-green-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (146, 'view/client/assets/images/hinh-san-pham/146/ipad-air-4-wifi-cellular-256gb-2020-xanh-la-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (146, 'view/client/assets/images/hinh-san-pham/146/ipad-air-4-wifi-cellular-256gb-2020-xanh-la-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (146, 'view/client/assets/images/hinh-san-pham/146/ipad-air-4-wifi-cellular-256gb-2020-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (147, 'view/client/assets/images/hinh-san-pham/147/ipad-pro-m1-11-inch-wifi-silver-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (147, 'view/client/assets/images/hinh-san-pham/147/ipad-pro-m1-11-inch-wifi-silver-01-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (147, 'view/client/assets/images/hinh-san-pham/147/ipad-pro-m1-11-inch-wifi-silver-02-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (147, 'view/client/assets/images/hinh-san-pham/147/ipad-pro-m1-11-inch-wifi-silver-03-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (147, 'view/client/assets/images/hinh-san-pham/147/ipad-pro-m1-11-inch-wifi-silver-04-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (148, 'view/client/assets/images/hinh-san-pham/148/apple-watch-se-gps-44mm-1-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (148, 'view/client/assets/images/hinh-san-pham/148/apple-watch-se-gps-44mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (148, 'view/client/assets/images/hinh-san-pham/148/apple-watch-se-gps-44mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (148, 'view/client/assets/images/hinh-san-pham/148/apple-watch-se-gps-44mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (149, 'view/client/assets/images/hinh-san-pham/149/apple-watch-se-gps-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (149, 'view/client/assets/images/hinh-san-pham/149/apple-watch-se-gps-44mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (149, 'view/client/assets/images/hinh-san-pham/149/apple-watch-se-gps-44mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (149, 'view/client/assets/images/hinh-san-pham/149/apple-watch-se-gps-44mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (150, 'view/client/assets/images/hinh-san-pham/150/apple-watch-se-lte-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (150, 'view/client/assets/images/hinh-san-pham/150/apple-watch-se-lte-44mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (150, 'view/client/assets/images/hinh-san-pham/150/apple-watch-se-lte-44mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (150, 'view/client/assets/images/hinh-san-pham/150/apple-watch-se-lte-44mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (151, 'view/client/assets/images/hinh-san-pham/151/apple-watch-se-gps-44mm-1-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (151, 'view/client/assets/images/hinh-san-pham/151/apple-watch-se-gps-44mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (151, 'view/client/assets/images/hinh-san-pham/151/apple-watch-se-gps-44mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (151, 'view/client/assets/images/hinh-san-pham/151/apple-watch-se-gps-44mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (152, 'view/client/assets/images/hinh-san-pham/152/apple-watch-se-gps-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (152, 'view/client/assets/images/hinh-san-pham/152/apple-watch-se-gps-44mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (152, 'view/client/assets/images/hinh-san-pham/152/apple-watch-se-gps-44mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (152, 'view/client/assets/images/hinh-san-pham/152/apple-watch-se-gps-44mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (153, 'view/client/assets/images/hinh-san-pham/153/apple-watch-se-lte-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (153, 'view/client/assets/images/hinh-san-pham/153/apple-watch-se-lte-44mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (153, 'view/client/assets/images/hinh-san-pham/153/apple-watch-se-lte-44mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (153, 'view/client/assets/images/hinh-san-pham/153/apple-watch-se-lte-44mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (154, 'view/client/assets/images/hinh-san-pham/154/apple-watch-s5-gps-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (154, 'view/client/assets/images/hinh-san-pham/154/apple-watch-s5-gps-44mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (154, 'view/client/assets/images/hinh-san-pham/154/apple-watch-s5-gps-44mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (154, 'view/client/assets/images/hinh-san-pham/154/apple-watch-s5-gps-44mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (155, 'view/client/assets/images/hinh-san-pham/155/apple-watch-s5lte-40mm-goldstainless-steelcase-1.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (155, 'view/client/assets/images/hinh-san-pham/155/apple-watch-s5lte-40mm-goldstainless-steelcase-2-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (155, 'view/client/assets/images/hinh-san-pham/155/apple-watch-s5lte-40mm-goldstainless-steelcase-3-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (155, 'view/client/assets/images/hinh-san-pham/155/apple-watch-s5lte-40mm-goldstainless-steelcase-4-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (156, 'view/client/assets/images/hinh-san-pham/156/apple-watch-s5-gps-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (156, 'view/client/assets/images/hinh-san-pham/156/apple-watch-s5-gps-44mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (156, 'view/client/assets/images/hinh-san-pham/156/apple-watch-s5-gps-44mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (156, 'view/client/assets/images/hinh-san-pham/156/apple-watch-s5-gps-44mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (157, 'view/client/assets/images/hinh-san-pham/157/apple-watch-s5lte-40mm-goldstainless-steelcase-1.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (157, 'view/client/assets/images/hinh-san-pham/157/apple-watch-s5lte-40mm-goldstainless-steelcase-2-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (157, 'view/client/assets/images/hinh-san-pham/157/apple-watch-s5lte-40mm-goldstainless-steelcase-3-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (157, 'view/client/assets/images/hinh-san-pham/157/apple-watch-s5lte-40mm-goldstainless-steelcase-4-1200x1200.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (158, 'view/client/assets/images/hinh-san-pham/158/apple-watch-series-6-lte-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (158, 'view/client/assets/images/hinh-san-pham/158/apple-watch-series-6-lte-44mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (158, 'view/client/assets/images/hinh-san-pham/158/apple-watch-series-6-lte-44mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (158, 'view/client/assets/images/hinh-san-pham/158/apple-watch-series-6-lte-44mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (159, 'view/client/assets/images/hinh-san-pham/159/apple-watch-s6-lte-40mm-xanh-la-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (159, 'view/client/assets/images/hinh-san-pham/159/apple-watch-series-6-lte-40mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (159, 'view/client/assets/images/hinh-san-pham/159/apple-watch-series-6-lte-40mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (159, 'view/client/assets/images/hinh-san-pham/159/apple-watch-series-6-lte-40mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (160, 'view/client/assets/images/hinh-san-pham/160/apple-watch-series-6-lte-44mm-1-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (160, 'view/client/assets/images/hinh-san-pham/160/apple-watch-series-6-lte-44mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (160, 'view/client/assets/images/hinh-san-pham/160/apple-watch-series-6-lte-44mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (160, 'view/client/assets/images/hinh-san-pham/160/apple-watch-series-6-lte-44mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (161, 'view/client/assets/images/hinh-san-pham/161/apple-watch-series-6-gps-40mm-red-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (161, 'view/client/assets/images/hinh-san-pham/161/apple-watch-series-6-gps-40mm-red-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (161, 'view/client/assets/images/hinh-san-pham/161/apple-watch-series-6-gps-40mm-red-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (161, 'view/client/assets/images/hinh-san-pham/161/apple-watch-series-6-gps-40mm-red-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (162, 'view/client/assets/images/hinh-san-pham/162/apple-watch-series-6-gps-40mm-white-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (162, 'view/client/assets/images/hinh-san-pham/162/apple-watch-series-6-gps-40mm-white-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (162, 'view/client/assets/images/hinh-san-pham/162/apple-watch-series-6-gps-40mm-white-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (162, 'view/client/assets/images/hinh-san-pham/162/apple-watch-series-6-gps-40mm-white-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (163, 'view/client/assets/images/hinh-san-pham/163/apple-watch-series-6-lte-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (163, 'view/client/assets/images/hinh-san-pham/163/apple-watch-series-6-lte-44mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (163, 'view/client/assets/images/hinh-san-pham/163/apple-watch-series-6-lte-44mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (163, 'view/client/assets/images/hinh-san-pham/163/apple-watch-series-6-lte-44mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (164, 'view/client/assets/images/hinh-san-pham/164/apple-watch-series-6-gps-40mm-blue-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (164, 'view/client/assets/images/hinh-san-pham/164/apple-watch-series-6-gps-40mm-blue-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (164, 'view/client/assets/images/hinh-san-pham/164/apple-watch-series-6-gps-40mm-blue-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (164, 'view/client/assets/images/hinh-san-pham/164/apple-watch-series-6-gps-40mm-blue-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (165, 'view/client/assets/images/hinh-san-pham/165/apple-watch-s6-lte-40mm-xanh-la-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (165, 'view/client/assets/images/hinh-san-pham/165/apple-watch-series-6-lte-40mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (165, 'view/client/assets/images/hinh-san-pham/165/apple-watch-series-6-lte-40mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (165, 'view/client/assets/images/hinh-san-pham/165/apple-watch-series-6-lte-40mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (166, 'view/client/assets/images/hinh-san-pham/166/apple-watch-series-6-lte-44mm-1-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (166, 'view/client/assets/images/hinh-san-pham/166/apple-watch-series-6-lte-44mm-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (166, 'view/client/assets/images/hinh-san-pham/166/apple-watch-series-6-lte-44mm-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (166, 'view/client/assets/images/hinh-san-pham/166/apple-watch-series-6-lte-44mm-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (167, 'view/client/assets/images/hinh-san-pham/167/apple-watch-series-6-gps-40mm-red-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (167, 'view/client/assets/images/hinh-san-pham/167/apple-watch-series-6-gps-40mm-red-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (167, 'view/client/assets/images/hinh-san-pham/167/apple-watch-series-6-gps-40mm-red-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (167, 'view/client/assets/images/hinh-san-pham/167/apple-watch-series-6-gps-40mm-red-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (168, 'view/client/assets/images/hinh-san-pham/168/apple-watch-series-6-gps-40mm-white-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (168, 'view/client/assets/images/hinh-san-pham/168/apple-watch-series-6-gps-40mm-white-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (168, 'view/client/assets/images/hinh-san-pham/168/apple-watch-series-6-gps-40mm-white-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (168, 'view/client/assets/images/hinh-san-pham/168/apple-watch-series-6-gps-40mm-white-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (169, 'view/client/assets/images/hinh-san-pham/169/apple-watch-series-6-lte-44mm-1-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (169, 'view/client/assets/images/hinh-san-pham/169/apple-watch-series-6-lte-44mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (169, 'view/client/assets/images/hinh-san-pham/169/apple-watch-series-6-lte-44mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (169, 'view/client/assets/images/hinh-san-pham/169/apple-watch-series-6-lte-44mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (170, 'view/client/assets/images/hinh-san-pham/170/apple-watch-s7-lte-41mm-xanh-duong-2-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (170, 'view/client/assets/images/hinh-san-pham/170/apple-watch-s7-lte-41mm-xanh-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (170, 'view/client/assets/images/hinh-san-pham/170/apple-watch-s7-lte-41mm-xanh-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (170, 'view/client/assets/images/hinh-san-pham/170/apple-watch-s7-lte-41mm-xanh-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (171, 'view/client/assets/images/hinh-san-pham/171/apple-watch-s7-lte-41mm-xanh-la-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (171, 'view/client/assets/images/hinh-san-pham/171/apple-watch-s7-lte-41mm-xanh-la-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (171, 'view/client/assets/images/hinh-san-pham/171/apple-watch-s7-lte-41mm-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (171, 'view/client/assets/images/hinh-san-pham/171/apple-watch-s7-lte-41mm-xanh-la-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (172, 'view/client/assets/images/hinh-san-pham/172/apple-watch-series-7-gps-41mm-den-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (172, 'view/client/assets/images/hinh-san-pham/172/apple-watch-series-7-gps-41mm-den-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (172, 'view/client/assets/images/hinh-san-pham/172/apple-watch-series-7-gps-41mm-den-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (172, 'view/client/assets/images/hinh-san-pham/172/apple-watch-series-7-gps-41mm-den-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (173, 'view/client/assets/images/hinh-san-pham/173/apple-watch-s7-lte-45mm-do-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (173, 'view/client/assets/images/hinh-san-pham/173/apple-watch-s7-lte-45mm-do-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (173, 'view/client/assets/images/hinh-san-pham/173/apple-watch-s7-lte-45mm-do-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (173, 'view/client/assets/images/hinh-san-pham/173/apple-watch-s7-lte-45mm-do-5-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (174, 'view/client/assets/images/hinh-san-pham/174/apple-watch-s7-gps-45mm-vang-nhat-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (174, 'view/client/assets/images/hinh-san-pham/174/apple-watch-s7-yellow-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (174, 'view/client/assets/images/hinh-san-pham/174/apple-watch-s7-yellow-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (174, 'view/client/assets/images/hinh-san-pham/174/apple-watch-s7-yellow-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (175, 'view/client/assets/images/hinh-san-pham/175/apple-watch-s7-lte-41mm-vien-thep-3-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (175, 'view/client/assets/images/hinh-san-pham/175/apple-watch-series-7-lte-41mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (175, 'view/client/assets/images/hinh-san-pham/175/apple-watch-series-7-lte-41mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (175, 'view/client/assets/images/hinh-san-pham/175/apple-watch-series-7-lte-41mm-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (176, 'view/client/assets/images/hinh-san-pham/176/apple-watch-s7-lte-41mm-xanh-duong-2-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (176, 'view/client/assets/images/hinh-san-pham/176/apple-watch-s7-lte-41mm-xanh-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (176, 'view/client/assets/images/hinh-san-pham/176/apple-watch-s7-lte-41mm-xanh-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (176, 'view/client/assets/images/hinh-san-pham/176/apple-watch-s7-lte-41mm-xanh-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (177, 'view/client/assets/images/hinh-san-pham/177/apple-watch-s7-lte-41mm-xanh-la-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (177, 'view/client/assets/images/hinh-san-pham/177/apple-watch-s7-lte-41mm-xanh-la-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (177, 'view/client/assets/images/hinh-san-pham/177/apple-watch-s7-lte-41mm-xanh-la-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (177, 'view/client/assets/images/hinh-san-pham/177/apple-watch-s7-lte-41mm-xanh-la-4-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (178, 'view/client/assets/images/hinh-san-pham/178/apple-watch-s7-gps-45mm-den-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (178, 'view/client/assets/images/hinh-san-pham/178/apple-watch-s7-black-2-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (178, 'view/client/assets/images/hinh-san-pham/178/apple-watch-s7-black-3-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (178, 'view/client/assets/images/hinh-san-pham/178/apple-watch-s7-black-5-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (179, 'view/client/assets/images/hinh-san-pham/179/apple-watch-s7-gps-45mm-do-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (179, 'view/client/assets/images/hinh-san-pham/179/apple-watch-s7-red-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (179, 'view/client/assets/images/hinh-san-pham/179/apple-watch-s7-red-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (179, 'view/client/assets/images/hinh-san-pham/179/apple-watch-s7-red-5-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (180, 'view/client/assets/images/hinh-san-pham/180/apple-watch-s7-gps-45mm-vang-nhat-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (180, 'view/client/assets/images/hinh-san-pham/180/apple-watch-s7-yellow-2-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (180, 'view/client/assets/images/hinh-san-pham/180/apple-watch-s7-yellow-3-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (180, 'view/client/assets/images/hinh-san-pham/180/apple-watch-s7-yellow-4-1-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (181, 'view/client/assets/images/hinh-san-pham/181/apple-watch-s7-lte-41mm-vien-thep-3-650x650.png');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (181, 'view/client/assets/images/hinh-san-pham/181/apple-watch-series-7-lte-41mm-2-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (181, 'view/client/assets/images/hinh-san-pham/181/apple-watch-series-7-lte-41mm-3-650x650.jpg');

INSERT INTO HINH_SANPHAM (id_san_pham,link_hinh_san_pham) VALUES (181, 'view/client/assets/images/hinh-san-pham/181/apple-watch-series-7-lte-41mm-4-650x650.jpg');



-------------------------------------------* INSERT HINH_MO_TA_SANPHAM------------------


INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (1, 'view/client/assets/images/hinh-mota-san-pham/1/Ảnh chụp màn hình 2022-01-02 102121.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (1, 'view/client/assets/images/hinh-mota-san-pham/1/Ảnh chụp màn hình 2022-01-02 102202.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (1, 'view/client/assets/images/hinh-mota-san-pham/1/Ảnh chụp màn hình 2022-01-02 102221.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (2, 'view/client/assets/images/hinh-mota-san-pham/2/Ảnh chụp màn hình 2022-01-02 102314.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (2, 'view/client/assets/images/hinh-mota-san-pham/2/Ảnh chụp màn hình 2022-01-02 102331.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (2, 'view/client/assets/images/hinh-mota-san-pham/2/Ảnh chụp màn hình 2022-01-02 102344.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (3, 'view/client/assets/images/hinh-mota-san-pham/3/iphone-12-2.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (3, 'view/client/assets/images/hinh-mota-san-pham/3/iphone-12-desktop-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (3, 'view/client/assets/images/hinh-mota-san-pham/3/iphone-12-desktop-2.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (3, 'view/client/assets/images/hinh-mota-san-pham/3/iphone-12-desktop-3.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (3, 'view/client/assets/images/hinh-mota-san-pham/3/iphone-12-desktop-6.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (4, 'view/client/assets/images/hinh-mota-san-pham/4/iphone-12-pro-071021-084959-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (4, 'view/client/assets/images/hinh-mota-san-pham/4/iphone-12-pro-071021-084959.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (4, 'view/client/assets/images/hinh-mota-san-pham/4/iphone-12-pro-071021-085000-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (4, 'view/client/assets/images/hinh-mota-san-pham/4/iphone-12-pro-071021-085000.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (5, 'view/client/assets/images/hinh-mota-san-pham/5/iphone-12-pro-max-121021-052250.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (5, 'view/client/assets/images/hinh-mota-san-pham/5/iphone-12-pro-max-121021-052251.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (5, 'view/client/assets/images/hinh-mota-san-pham/5/iphone-12-pro-max-121021-052252-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (5, 'view/client/assets/images/hinh-mota-san-pham/5/iphone-12-pro-max-121021-052252.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (6, 'view/client/assets/images/hinh-mota-san-pham/6/iphone-13-desktop-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (6, 'view/client/assets/images/hinh-mota-san-pham/6/iphone-13-desktop-2.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (6, 'view/client/assets/images/hinh-mota-san-pham/6/iphone-13-desktop-3.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (6, 'view/client/assets/images/hinh-mota-san-pham/6/iphone-13-desktop-5.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (7, 'view/client/assets/images/hinh-mota-san-pham/7/iphone-13-pro-1tb-071021-122102.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (7, 'view/client/assets/images/hinh-mota-san-pham/7/iphone-13-pro-1tb-071021-122103-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (7, 'view/client/assets/images/hinh-mota-san-pham/7/iphone-13-pro-1tb-071021-122105-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (7, 'view/client/assets/images/hinh-mota-san-pham/7/iphone-13-pro-1tb-071021-122106.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (8, 'view/client/assets/images/hinh-mota-san-pham/8/iphone-13-pro-max-256gb-071021-090411-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (8, 'view/client/assets/images/hinh-mota-san-pham/8/iphone-13-pro-max-256gb-071021-090412.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (8, 'view/client/assets/images/hinh-mota-san-pham/8/iphone-13-pro-max-256gb-071021-090413-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (8, 'view/client/assets/images/hinh-mota-san-pham/8/iphone-13-pro-max-256gb-071021-090413.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (9, 'view/client/assets/images/hinh-mota-san-pham/9/apple-macbook-air-m1-2020-z12a00050-121021-053846.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (9, 'view/client/assets/images/hinh-mota-san-pham/9/apple-macbook-air-m1-2020-z12a00050-121021-053847-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (9, 'view/client/assets/images/hinh-mota-san-pham/9/apple-macbook-air-m1-2020-z12a00050-121021-053847.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (9, 'view/client/assets/images/hinh-mota-san-pham/9/apple-macbook-air-m1-2020-z12a00050-121021-053848.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (10, 'view/client/assets/images/hinh-mota-san-pham/10/Ảnh chụp màn hình 2022-01-02 102742.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (10, 'view/client/assets/images/hinh-mota-san-pham/10/Ảnh chụp màn hình 2022-01-02 102824.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (11, 'view/client/assets/images/hinh-mota-san-pham/11/Ảnh chụp màn hình 2022-01-02 102742.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (11, 'view/client/assets/images/hinh-mota-san-pham/11/Ảnh chụp màn hình 2022-01-02 102824.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (12, 'view/client/assets/images/hinh-mota-san-pham/12/Ảnh chụp màn hình 2022-01-02 103031.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (12, 'view/client/assets/images/hinh-mota-san-pham/12/Ảnh chụp màn hình 2022-01-02 103103.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (13, 'view/client/assets/images/hinh-mota-san-pham/13/ipad-mini-6-cellular-256gb-141021-101421.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (13, 'view/client/assets/images/hinh-mota-san-pham/13/ipad-mini-6-cellular-256gb-141021-101422.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (13, 'view/client/assets/images/hinh-mota-san-pham/13/ipad-mini-6-cellular-256gb-141021-101423-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (13, 'view/client/assets/images/hinh-mota-san-pham/13/ipad-mini-6-cellular-256gb-141021-101425-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (14, 'view/client/assets/images/hinh-mota-san-pham/14/Ảnh chụp màn hình 2022-01-02 103226.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (14, 'view/client/assets/images/hinh-mota-san-pham/14/Ảnh chụp màn hình 2022-01-02 103253.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (14, 'view/client/assets/images/hinh-mota-san-pham/14/Ảnh chụp màn hình 2022-01-02 103310.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (15, 'view/client/assets/images/hinh-mota-san-pham/15/Ảnh chụp màn hình 2022-01-02 103406.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (15, 'view/client/assets/images/hinh-mota-san-pham/15/Ảnh chụp màn hình 2022-01-02 103423.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (15, 'view/client/assets/images/hinh-mota-san-pham/15/Ảnh chụp màn hình 2022-01-02 103437.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (16, 'view/client/assets/images/hinh-mota-san-pham/16/Ảnh chụp màn hình 2022-01-02 103527.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (16, 'view/client/assets/images/hinh-mota-san-pham/16/Ảnh chụp màn hình 2022-01-02 103549.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (16, 'view/client/assets/images/hinh-mota-san-pham/16/Ảnh chụp màn hình 2022-01-02 103602.png');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (17, 'view/client/assets/images/hinh-mota-san-pham/17/se-40mm-vien-nhom-day-cao-su-hong-111021-035446.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (17, 'view/client/assets/images/hinh-mota-san-pham/17/se-40mm-vien-nhom-day-cao-su-hong-111021-035447.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (17, 'view/client/assets/images/hinh-mota-san-pham/17/se-40mm-vien-nhom-day-cao-su-hong-111021-035449.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (17, 'view/client/assets/images/hinh-mota-san-pham/17/se-40mm-vien-nhom-day-cao-su-hong-111021-035450.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (18, 'view/client/assets/images/hinh-mota-san-pham/18/s6-lte-44mm-vien-thep-day-cao-su-121021-083102.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (18, 'view/client/assets/images/hinh-mota-san-pham/18/s6-lte-44mm-vien-thep-day-cao-su-121021-083103.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (18, 'view/client/assets/images/hinh-mota-san-pham/18/s6-lte-44mm-vien-thep-day-cao-su-121021-083104-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (18, 'view/client/assets/images/hinh-mota-san-pham/18/s6-lte-44mm-vien-thep-day-cao-su-121021-083104.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (18, 'view/client/assets/images/hinh-mota-san-pham/18/s6-lte-44mm-vien-thep-day-cao-su-121021-083105.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (19, 'view/client/assets/images/hinh-mota-san-pham/19/s6-lte-44mm-vien-thep-day-cao-su-121021-083102.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (19, 'view/client/assets/images/hinh-mota-san-pham/19/s6-lte-44mm-vien-thep-day-cao-su-121021-083103.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (19, 'view/client/assets/images/hinh-mota-san-pham/19/s6-lte-44mm-vien-thep-day-cao-su-121021-083104-1.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (19, 'view/client/assets/images/hinh-mota-san-pham/19/s6-lte-44mm-vien-thep-day-cao-su-121021-083104.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (19, 'view/client/assets/images/hinh-mota-san-pham/19/s6-lte-44mm-vien-thep-day-cao-su-121021-083105.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (20, 'view/client/assets/images/hinh-mota-san-pham/20/apple-nike-series-7-gps-41mm-2.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (20, 'view/client/assets/images/hinh-mota-san-pham/20/apple-nike-series-7-gps-41mm-3.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (20, 'view/client/assets/images/hinh-mota-san-pham/20/apple-nike-series-7-gps-41mm-4.jpg');

INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES (20, 'view/client/assets/images/hinh-mota-san-pham/20/apple-nike-series-7-gps-41mm-5.jpg');




-------------------------------------------* INSERT HO_TRO------------------
INSERT INTO HO_TRO
(ho_va_ten, email, sdt, noi_dung_ho_tro )
VALUES
    ('Nguyễn Văn Thanh', '19130205@st.hcmuaf.edu.vn', '0394643873', 'cho mình hỏi iphone 13 dùng chip gì' );
INSERT INTO HO_TRO
(ho_va_ten, email, sdt, noi_dung_ho_tro )
VALUES
    ('Nguyễn Thành Lộc', '19130125@st.hcmuaf.edu.vn', '0394643873', 'cho mình hỏi iphone 13 có bao nhiêu màu' );

-------------------------------------------* INSERT HOA_DON------------------
INSERT INTO HOA_DON
(ngay_lap_hoa_don,id_khach_hang, ten_nguoi_dung, tri_gia)
VALUES
    ('1/1/2021', 1, 'teoprovipno1', 14990000);
INSERT INTO HOA_DON
(ngay_lap_hoa_don,id_khach_hang, ten_nguoi_dung, tri_gia)
VALUES
    ('1/2/2021', 3, 'alabatrap57', 14990000);
INSERT INTO HOA_DON
(ngay_lap_hoa_don,id_khach_hang, ten_nguoi_dung, tri_gia)
VALUES
    ('1/2/2021' , 8, 'thichmuasam113', 44970000);
INSERT INTO HOA_DON
(ngay_lap_hoa_don,id_khach_hang, ten_nguoi_dung, tri_gia)
VALUES
    ( '1/1/2021', 10, 'adminVThanh', 29980000);
INSERT INTO HOA_DON
(ngay_lap_hoa_don,id_khach_hang, ten_nguoi_dung, tri_gia)
VALUES
    ( '1/2/2021', 13, 'adminJinn', 29980000);
INSERT INTO HOA_DON
(ngay_lap_hoa_don,id_khach_hang, ten_nguoi_dung, tri_gia)
VALUES
    ( '1/1/2022', 1, 'teoprovipno1', 49980000);
INSERT INTO HOA_DON
(ngay_lap_hoa_don,id_khach_hang, ten_nguoi_dung, tri_gia)
VALUES
    ( '4/1/2022', 8, 'thichmuasam113', 39980000);


-------------------------------------------* INSERT CHI_TIET_HOA_DON------------------
INSERT INTO CHI_TIET_HOA_DON
( id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(1, 1, 14990000, 1);
INSERT INTO CHI_TIET_HOA_DON
(id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(2, 2, 14990000, 1);
INSERT INTO CHI_TIET_HOA_DON
(id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(3, 3, 14990000, 3);
INSERT INTO CHI_TIET_HOA_DON
(id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(4, 4, 14990000, 2);
INSERT INTO CHI_TIET_HOA_DON
(id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(5, 5, 14990000, 2);
INSERT INTO CHI_TIET_HOA_DON
( id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(6, 2, 21490000, 1);
INSERT INTO CHI_TIET_HOA_DON
(id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(6, 17, 13990000, 1);
INSERT INTO CHI_TIET_HOA_DON
( id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(7, 2, 21490000, 1);
INSERT INTO CHI_TIET_HOA_DON
(id_hoa_don,id_san_pham, gia_san_pham,so_luong)
VALUES(7, 17, 13990000, 1);
--TrangThaiBH(MaTrangThai, tenTrangThaiBh) (Tạo yêu cầu bh, tiếp nhận sp bh, đang bh, đã bh xong) --Quy ước: -- + 1: Tạo yêu cầu bảo hành sản phẩm -- + 2: Tiếp nhận sản phẩm cần bảo hành -- + 3: Sản Phẩm đang bảo hành -- + 4: Đã bảo hành xong sản phẩm
-------------------------------------------* INSERT TRANG_THAI_BAO_HANH------------------
INSERT INTO TRANG_THAI_BAO_HANH
(ten_trang_thai_bao_hanh)
VALUES(N'Tạo yêu cầu bảo hành sản phẩm');
INSERT INTO TRANG_THAI_BAO_HANH
(ten_trang_thai_bao_hanh)
VALUES(N'Tiếp nhận sản phẩm cần bảo hành');
INSERT INTO TRANG_THAI_BAO_HANH
(ten_trang_thai_bao_hanh)
VALUES(N'Sản phẩm đang bảo hành');
INSERT INTO TRANG_THAI_BAO_HANH
(ten_trang_thai_bao_hanh)
VALUES(N'Đã bảo hành xong sản phẩm');
-------------------------------------------* INSERT BAO_HANH------------------
INSERT INTO BAO_HANH
(id_san_pham,id_don_hang,id_khach_hang,ten_nguoi_dung,ngay_nhan,ngay_tra, phi_bao_hanh,noi_dung_bao_hanh,id_trang_thai_bao_hanh)
VALUES
    (1, 1, 1, 'teoprovipno1', '1/30/2021', '2/7/2021', 2500000, N'Thay màn hình mới và cụm camera', 4);
INSERT INTO BAO_HANH
(id_san_pham,id_don_hang,id_khach_hang,ten_nguoi_dung,ngay_nhan,ngay_tra, phi_bao_hanh,noi_dung_bao_hanh,id_trang_thai_bao_hanh)
VALUES
    (2, 2, 3, 'alabatrap57', '1/25/2021', '1/30/2021', 200000, N'Lắp cường lực cho màn hình và camera', 1);
INSERT INTO BAO_HANH
(id_san_pham,id_don_hang,id_khach_hang,ten_nguoi_dung,ngay_nhan,ngay_tra, phi_bao_hanh,noi_dung_bao_hanh,id_trang_thai_bao_hanh)
VALUES
    (3, 3, 8, 'thichmuasam113', '4/3/2021', '4/10/2021', 1500000, N'Thay pin và chân sạc', 3);
INSERT INTO BAO_HANH
(id_san_pham,id_don_hang,id_khach_hang,ten_nguoi_dung,ngay_nhan,ngay_tra, phi_bao_hanh,noi_dung_bao_hanh,id_trang_thai_bao_hanh)
VALUES
    (4, 4, 10, 'adminVThanh', '1/20/2021', '1/22/2021', 1000000, N'Sửa chữa phần mềm', 4);
INSERT INTO BAO_HANH
(id_san_pham,id_don_hang,id_khach_hang,ten_nguoi_dung,ngay_nhan,ngay_tra, phi_bao_hanh,noi_dung_bao_hanh,id_trang_thai_bao_hanh)
VALUES
    (5, 8, 13, 'adminJinn', '1/30/2021', '2/10/2021', 1700000, N'Sữa chữa phần cứng', 2);
-------------------------------------------* INSERT GIAO_HANG------------------
INSERT INTO GIAO_HANG
(id_hoa_don,dia_chi_giao_hang,ngay_giao_hang)
VALUES
    (1, N'Linh Trung - Thủ Đức', '12/09/2021');
INSERT INTO GIAO_HANG
(id_hoa_don,dia_chi_giao_hang,ngay_giao_hang)
VALUES
    (2, N'Chân cầu Sài Gòn - Hồ Chí Minh ', '11/09/2021');
INSERT INTO GIAO_HANG
(id_hoa_don,dia_chi_giao_hang,ngay_giao_hang)
VALUES
    (3, N'Cầu Giấy- Hà Nội', '09/09/2021');
INSERT INTO GIAO_HANG
(id_hoa_don,dia_chi_giao_hang,ngay_giao_hang)
VALUES
    (4, N'An Lộc - Mỹ Tho', '12/09/2021');

--------------------------------------------INSERT UU_DAI_KHACH_HANG-----------------------------
insert into UU_DAI_KHACH_HANG ( tien_tich_luy ,
                                san_pham_may,
                                phu_kien ,
                                phu_kien_con_lai ,
                                thu_cu_len_doi,
                                qua_sinh_nhat ) values('0 - 15',null,2,1,5,50000);
insert into UU_DAI_KHACH_HANG ( tien_tich_luy ,
                                san_pham_may,
                                phu_kien ,
                                phu_kien_con_lai ,
                                thu_cu_len_doi,
                                qua_sinh_nhat )  values('15 - 50',1,3,2,5,200000);
insert into UU_DAI_KHACH_HANG ( tien_tich_luy ,
                                san_pham_may,
                                phu_kien ,
                                phu_kien_con_lai ,
                                thu_cu_len_doi,
                                qua_sinh_nhat )  values('50',2,5,10,8,500000);
-------------------------------------INSERT QUA_KHACH_HANG-------------------------

INSERT INTO QUA_KHACH_HANG
(id,id_khach_hang,ngay_nhan_qua, ten_phan_qua, tri_gia)
VALUES
    (  4310,1,'2022/1/1', N'Mũ Bảo Hiểm Yamaha', 980000);
INSERT INTO QUA_KHACH_HANG
(id,id_khach_hang,ngay_nhan_qua, ten_phan_qua, tri_gia)
VALUES
    ( 4210,8,'2022/1/1', N'Sim Viettel', 1980000);

------------------------------------INSERT CUA_HANG------------------------------------
INSERT INTO CUA_HANG
(ten_cua_hang,link_lo_go)
VALUES
    ( 'ASTORE','/view/client/assets/images/logo1.png');
-----------------------------------INSERT SLIDER------------------------------------
INSERT INTO SLIDER (link_anh,tieu_de,noi_dung) values(
                                                         '/view/client/assets/images/slider/slider-home/2880-800-1920x533-9.png',	'home'	,'Uu dãi'	);
INSERT INTO SLIDER (link_anh,tieu_de,noi_dung) values(
                                                         '/view/client/assets/images/slider/slider-home/top-mac-2880-800-1920x533-2.png',	'home'	,'Uu dãi'	);
INSERT INTO SLIDER (link_anh,tieu_de,noi_dung) values(
                                                         '/view/client/assets/images/slider/slider-home/2880-800-1920x533-9%20(1).png',	'home'	,'Uu dãi'	);
INSERT INTO SLIDER (link_anh,tieu_de,noi_dung) values(
                                                         '/view/client/assets/images/slider/slider-home/slider-mobile/720-720-720x720-11.png',	'homeMobile'	,'Uu dãi'	);
INSERT INTO SLIDER (link_anh,tieu_de,noi_dung) values(
                                                         '/view/client/assets/images/slider/slider-home/slider-mobile/720-720-720x720.png',	'homeMobile'	,'Uu dãi'	);
INSERT INTO SLIDER (link_anh,tieu_de,noi_dung) values(
                                                         '/view/client/assets/images/slider/slider-home/slider-mobile/top-mac-720-720-720x720-4.png',	'homeMobile'	,'Uu dãi'	);


-------------------------------INSERT CHAN_TRANG------------------------------------------
INSERT INTO CHAN_TRANG (tieu_de,noi_dung) values ('deliveryPolicy', N''+'<section>
    <div class="warranty">
        <ul class="tabs">
            <li class="tab-link">
                <a href="#">Giới thiệu AStore</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/storeRules">Nội quy cửa hàng</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/serviceQuality">Chất lượng phục vụ</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/warrantyAndExchange">Chính sách bảo hành & đổi trả</a>
            </li>
            <li class="tab-link current">
                <a href="<%=request.getContextPath()%>/deliveryPolicy">Chính sách giao hàng</a>
            </li>
        </ul>
        <div class="tab-content current" id="warranty1">
            <h2>CH&Iacute;NH S&Aacute;CH GIAO H&Agrave;NG ASTORE.VN</h2>
            <p dir="ltr">
                <strong
                ><span style="font-size: 14pt"
                >1. Phạm vi &aacute;p dụng</span
                ></strong
                >
            </p>
            <p dir="ltr">
                Những khu vực tỉnh th&agrave;nh c&oacute; hệ thống si&ecirc;u thị
                TopZone, TGDĐ, ĐMX.
            </p>
            <p dir="ltr">
                <strong
                ><span style="font-size: 14pt"
                >2. Thời gian nhận h&agrave;ng</span
                ></strong
                >
            </p>
            <p dir="ltr">
                TopZone nhận giao nhanh trong ng&agrave;y với khoảng c&aacute;ch từ
                c&aacute;c si&ecirc;u thị c&oacute; h&agrave;ng đến điểm giao
                l&agrave; 20 km. Khoảng c&aacute;ch lớn hơn nh&acirc;n vi&ecirc;n
                của ch&uacute;ng t&ocirc;i sẽ tư vấn c&aacute;ch thức giao
                h&agrave;ng thuận tiện nhất cho kh&aacute;ch h&agrave;ng. Cụ thể:
            </p>
            <div>
                <table border="1" cellspacing="0" cellpadding="10">
                    <tbody>
                    <tr>
                        <td>
                            <p>
                                <strong
                                >Khoảng c&aacute;ch đến nh&agrave; kh&aacute;ch từ
                                    si&ecirc;u thị gần nhất c&oacute; h&agrave;ng</strong
                                >
                            </p>
                        </td>
                        <td>
                            <p><strong>TP. HCM</strong></p>
                        </td>
                        <td>
                            <p><strong>Tỉnh kh&aacute;c</strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td><p>Dưới 5 km</p></td>
                        <td><p>Giao trong 30 ph&uacute;t</p></td>
                        <td><p>Giao trong 30 ph&uacute;t</p></td>
                    </tr>
                    <tr>
                        <td><p>5 - 10 km</p></td>
                        <td><p>Giao trong 1 tiếng</p></td>
                        <td><p>Giao trong 1 tiếng</p></td>
                    </tr>
                    <tr>
                        <td><p>10 - 20 km</p></td>
                        <td><p>Giao trong 2 tiếng</p></td>
                        <td><p>Giao trong 2 tiếng</p></td>
                    </tr>
                    <tr>
                        <td><p>Lưu &yacute;</p></td>
                        <td><p>Thời gian giao h&agrave;ng 9:00 đến 21:00</p></td>
                        <td><p>Thời gian giao h&agrave;ng 9:00 đến 20:00</p></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <p dir="ltr">
                Ri&ecirc;ng đối với đơn h&agrave;ng gi&aacute; rẻ online, sản phẩm
                sẽ được giao sớm nhất l&agrave; 1 ng&agrave;y sau khi đặt.
            </p>
            <p dir="ltr">
                <strong
                ><span style="font-size: 14pt"
                >3. Ph&iacute; giao h&agrave;ng</span
                ></strong
                >
            </p>
            <div>
                <table border="1" cellspacing="0" cellpadding="10">
                    <tbody>
                    <tr>
                        <td>
                            <p><strong>MỨC GI&Aacute;</strong></p>
                        </td>
                        <td>
                            <p><strong>PH&Iacute; GIAO</strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td><p>Gi&aacute; tr&ecirc;n 500.000đ</p></td>
                        <td>
                            <p>- Miễn ph&iacute; 10km đầu ti&ecirc;n</p>
                            <p>
                                -&nbsp;Mỗi km tiếp theo t&iacute;nh ph&iacute; 5.000đ/km
                            </p>
                            <p>
                                <em
                                >VD: Sạc dự ph&ograve;ng gi&aacute; 600.000đ, khoảng
                                    c&aacute;ch giao h&agrave;ng l&agrave; 13 km
                                    &gt;&gt;&gt; Ph&iacute; giao h&agrave;ng l&agrave;:
                                    15.000đ</em
                                >
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td><p>Gi&aacute; 500.000đ trở xuống</p></td>
                        <td>
                            <p>
                                - Ph&iacute; giao h&agrave;ng 20.000đ cho 10km đầu
                                ti&ecirc;n
                            </p>
                            <p>- Mỗi km tiếp theo t&iacute;nh ph&iacute; 5.000đ/km</p>
                            <p>
                                <em
                                >VD: Sạc dự ph&ograve;ng 500.000đ, khoảng c&aacute;ch
                                    giao h&agrave;ng l&agrave; 13 km &gt;&gt;&gt; Ph&iacute;
                                    giao h&agrave;ng l&agrave;: 20.000đ + 15.000đ =
                                    35.000đ</em
                                >
                            </p>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div>
                    <p dir="ltr"><strong>Lưu &yacute;:</strong></p>
                    <p dir="ltr">
                        - Khoảng c&aacute;ch giao h&agrave;ng l&agrave; khoảng
                        c&aacute;ch được t&iacute;nh từ nh&agrave; kh&aacute;ch
                        h&agrave;ng đến si&ecirc;u thị TopZone/TGDĐ/ĐMX gần nhất.
                    </p>
                    <p dir="ltr">
                        - H&agrave;ng online only c&oacute; chuyển h&agrave;ng qua đối
                        t&aacute;c th&igrave; tổng đ&agrave;i 1900.969642 (7:30 - 22:00)
                        sẽ tư vấn c&aacute;ch thức giao h&agrave;ng &amp; ph&iacute;
                        chuyển h&agrave;ng ph&ugrave; hợp.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>');

INSERT INTO CHAN_TRANG (tieu_de,noi_dung) values('systemStore',N'<section>
    <div class="center-sieuthi">
        <div class="tab-store">
          <span class="tab-id current" id="tab-id-province_3"
          >Hồ Chí Minh (2)</span
          >

            <span class="tab-id" id="tab-id-province_5">Hà Nội (2)</span>
        </div>

        <div class="tab-box current" id="tab-province_3">
            <ul>
                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Gò Vấp</strong>
                            <span
                            >232 Phan Huy Ích, Phường 12, Gò Vấp, Thành phố Hồ Chí
                    Minh</span
                            >
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>

                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Bình Tân</strong>
                            <span
                            >479 Kinh Dương Vương, An Lạc, Bình Tân, Thành phố Hồ Chí
                    Minh</span
                            >
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>
            </ul>
        </div>

        <div class="tab-box" id="tab-province_5">
            <ul>
                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Bạch Mai</strong>
                            <span
                            >25 P. Bùi Ngọc Dương, Bạch Mai, Hai Bà Trưng, Hà Nội</span
                            >
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>

                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Văn Điển</strong>
                            <span>379 Đ. Ngọc Hồi, Văn Điển, Thanh Trì, Hà Nội</span>
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="center-sieuthi">
        <div class="convenient">
            <strong>CÁC TIỆN ÍCH TẠI CỬA HÀNG</strong>
            <div>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/10Refresh-48x48.png"/>Hư
                    g&igrave; đổi nấy 12 th&aacute;ng (miễn ph&iacute; th&aacute;ng
                    đầu).
                </p>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/08BaoHanh-48x48.png"/>Bảo
                    h&agrave;nh ch&iacute;nh h&atilde;ng 1 năm c&oacute; cam kết.
                </p>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/06MayCaThe-48x48.png"/>Giao
                    h&agrave;ng tận nơi, mang m&aacute;y c&agrave; thẻ đến tận
                    nh&agrave;, kh&ocirc;ng mua kh&ocirc;ng sao.
                </p>
                <p>
                    <img
                            src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/02NhanVien-48x48.png"
                    />Nh&acirc;n vi&ecirc;n tư vấn sản phẩm nhiệt t&igrave;nh, nhiều
                    kinh nghiệm.
                </p>
                <p>
                    <img
                            src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/01BaiGiuXe-48x48.png"
                    />B&atilde;i giữ xe miễn ph&iacute; rộng r&atilde;i, tho&aacute;ng
                    m&aacute;t, nh&acirc;n vi&ecirc;n giữ xe chu đ&aacute;o dắt xe cho
                    kh&aacute;ch h&agrave;ng.
                </p>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/09Wifi-48x48.png"/>Miễn
                    ph&iacute; Wifi tại si&ecirc;u thị cho kh&aacute;ch h&agrave;ng
                    đến mua sắm.
                </p>
                <p>
                    <img
                            src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/04QuayTraiNghiem-48x48.png"
                    />Xem v&agrave; trải nghiệm thử sản phẩm miễn ph&iacute; trực tiếp
                    tại si&ecirc;u thị.
                </p>
            </div>
        </div>
    </div>
</section>');
INSERT INTO CHAN_TRANG (tieu_de,noi_dung) values('serviceQuality',N'<section>
    <div class="warranty">
        <ul class="tabs">
            <li class="tab-link">
                <a href="#">Giới thiệu AStore</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/storeRules">Nội quy cửa hàng</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/serviceQuality">Chất lượng phục vụ</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/warrantyAndExchange">Chính sách bảo hành & đổi trả</a>
            </li>
            <li class="tab-link current">
                <a href="<%=request.getContextPath()%>/deliveryPolicy">Chính sách giao hàng</a>
            </li>
        </ul>
        <div class="tab-content current" id="warranty1">
            <h2>
                CH&Iacute;NH S&Aacute;CH N&Acirc;NG CAO CHẤT LƯỢNG PHỤC VỤ
                KH&Aacute;CH H&Agrave;NG ONLINE
            </h2>
            <p>
                K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, với cam kết đặt
                kh&aacute;ch h&agrave;ng l&agrave;m trung t&acirc;m trong mọi suy
                nghĩ v&agrave; h&agrave;nh động của m&igrave;nh, TopZone đ&atilde;
                c&oacute; một số thay đổi dịch vụ Online để chất lượng phục vụ
                ng&agrave;y c&agrave;ng tốt hơn:
            </p>
            <p>
                <strong
                ><span style="font-size: 14pt"
                >1. Tổng đ&agrave;i hỗ trợ kh&aacute;ch h&agrave;ng</span
                ></strong
                >
            </p>
            <p>
                TỔNG Đ&Agrave;I 1900.986843 (phục vụ từ 7:30 - 22:00 mỗi
                ng&agrave;y) với gần 200 nh&acirc;n vi&ecirc;n phục vụ tr&ecirc;n
                10.000 cuộc gọi/ng&agrave;y từ kh&aacute;ch h&agrave;ng.
            </p>
            <p>
                <strong><span style="font-size: 14pt">2. Chất lượng</span></strong>
            </p>
            <p>
                Website Topzone.vn lu&ocirc;n cập nhật sản phẩm mới nhất,
                h&igrave;nh ảnh v&agrave; chức năng sản phẩm được kiểm tra thực tế.
                Cập nhật gi&aacute; cả v&agrave; khuyến m&atilde;i nhanh
                ch&oacute;ng kịp thời nhằm phục vụ Qu&yacute; kh&aacute;ch quan
                t&acirc;m lĩnh vực sản phẩm c&ocirc;ng nghệ.
            </p>
            <p>
                Ch&uacute;ng t&ocirc;i cũng duy tr&igrave; một đội ngũ quản trị
                vi&ecirc;n đ&ocirc;ng đ&uacute;c để cập nhật th&ocirc;ng tin
                v&agrave; giải đ&aacute;p phản hồi của Qu&yacute; kh&aacute;ch
                tr&ecirc;n website nhanh nhất hiện nay.
            </p>
            <p>
                <strong
                ><span style="font-size: 14pt"
                >3. Phục vụ chu đ&aacute;o</span
                ></strong
                >
            </p>
            <p>
                Với hệ thống si&ecirc;u thị rộng khắp tr&ecirc;n to&agrave;n quốc,
                ch&uacute;ng t&ocirc;i cảm kết khi qu&yacute; kh&aacute;ch đặt
                h&agrave;ng Online tr&ecirc;n website sẽ được giao h&agrave;ng tận
                nơi nhanh ch&oacute;ng.
            </p>
            <p>
                Ch&uacute;ng t&ocirc;i rất tr&acirc;n trọng sự tin y&ecirc;u của
                Qu&yacute; kh&aacute;ch đ&atilde; sử dụng dịch vụ Online trong thời
                gian qua, đ&oacute; cũng l&agrave; động lực để ch&uacute;ng
                t&ocirc;i kh&ocirc;ng ngừng nỗ lực v&agrave; ho&agrave;n thiện
                m&igrave;nh ng&agrave;y một tốt hơn.
            </p>
            <p>
                Với năng lực tiếp nhận vẫn c&ograve;n nhiều giới hạn n&ecirc;n trong
                thời gian gần đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; thể chưa
                phục vụ hết 100% kh&aacute;ch h&agrave;ng trọn vẹn với cam kết
                tr&ecirc;n. Do đ&oacute;, ch&uacute;ng t&ocirc;i xin ph&eacute;p
                được "ƯU TI&Ecirc;N PHỤC VỤ" những kh&aacute;ch h&agrave;ng thật sự
                c&oacute; nhu cầu thật sự cần tư vấn hoặc mua h&agrave;ng, đồng thời
                HẠN CHẾ PHỤC VỤ c&aacute;c kh&aacute;ch h&agrave;ng li&ecirc;n hệ
                tổng đ&agrave;i 1900.1216 nhiều lần nhưng chưa r&otilde; mục
                đ&iacute;ch, hoặc y&ecirc;u cầu đặt h&agrave;ng nhiều lần tr&ecirc;n
                website nhưng kh&ocirc;ng nhận h&agrave;ng.
            </p>
            <p>
                Điều n&agrave;y c&oacute; thể gi&uacute;p ch&uacute;ng t&ocirc;i
                phục vụ những kh&aacute;ch h&agrave;ng thật sự một c&aacute;ch tốt
                nhất v&agrave; nhanh nhất. Trong một v&agrave;i trường hợp, Quy
                tr&igrave;nh phục vụ l&agrave;m Qu&yacute; kh&aacute;ch phiền
                l&ograve;ng, mong qu&yacute; kh&aacute;ch th&ocirc;ng cảm v&agrave;
                vui l&ograve;ng phản hồi cho ch&uacute;ng t&ocirc;i kiểm tra
                v&agrave; khắc phục. TopZone cam kết lu&ocirc;n nỗ lực để phục vụ
                kh&aacute;ch h&agrave;ng ng&agrave;y một tốt hơn!
            </p>
        </div>
    </div>
</section>');
SELECT *
FROM CUA_HANG;
SELECT *
FROM GIAO_HANG;
SELECT *
FROM DONG_SAN_PHAM;
SELECT *
FROM LOAI_SAN_PHAM;
SELECT *
FROM MAU_SAC;
SELECT *
FROM SAN_PHAM;
SELECT *
FROM TON_KHO;

SELECT *
FROM NHOM;
SELECT *
FROM PHAN_QUYEN;
SELECT *
FROM GIO_HANG;
SELECT *
FROM NGUOI_DUNG;
SELECT*
FROM CHI_TIET_HOA_DON;
SELECT *
FROM HOA_DON;
SELECT *
FROM GIAO_HANG;
SELECT*
FROM BAO_HANH;
SELECT*
FROM TRANG_THAI_BAO_HANH;

SELECT*
FROM HINH_MOTA_SANPHAM;
SELECT*
FROM HINH_SANPHAM;
SELECT*
FROM HO_TRO;
SELECT*
FROM SLIDER;

SELECT DONG_SAN_PHAM.id, SAN_PHAM.id , DONG_SAN_PHAM.ten_dong_san_pham, MAU_SAC.ten_mau_sac
from
    DONG_SAN_PHAM JOIN SAN_PHAM ON DONG_SAN_PHAM.id = SAN_PHAM.id_dong_san_pham JOIN MAU_SAC ON MAU_SAC.id = SAN_PHAM.id_mau_sac;