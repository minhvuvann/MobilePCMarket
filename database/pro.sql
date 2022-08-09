
use DBSTORE_2

/*hình mô tả sản phảm*/
go
create proc getImageProductDetailLimitAdmin_proc(@startfrom int, @endto int) 
as 
	SELECT a.* FROM ( 
	  SELECT  HINH_MOTA_SANPHAM.*, ROW_NUMBER() OVER (ORDER BY HINH_MOTA_SANPHAM.thoi_gian_tao desc) as row
					FROM HINH_MOTA_SANPHAM) as a
		WHERE a.row >= @startfrom and a.row <= @endto



/*hình sp*/
GO
create proc getImageProductLimitAdmin_proc(@startfrom int, @endto int) 
as 
	SELECT a.* FROM ( 
	  SELECT  HINH_SANPHAM.*, ROW_NUMBER() OVER (ORDER BY HINH_SANPHAM.thoi_gian_tao desc) as row
					FROM HINH_SANPHAM) as a
		WHERE a.row >= @startfrom and a.row <= @endto

go

--1 tạo procedure lấy sp
 create proc getProductLimitAdmin_proc(@startfrom int, @endto int) 
as		
SELECT a.* FROM ( 
  SELECT  SAN_PHAM.* ,MAU_SAC.ma_mau_sac_hex,MAU_SAC.ten_mau_sac, DONG_SAN_PHAM.ten_dong_san_pham, ROW_NUMBER() OVER (ORDER BY SAN_PHAM.thoi_gian_tao desc) as row
                FROM SAN_PHAM join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac 
                join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id ) as a 
WHERE a.row >= @startfrom and a.row <= @endto


-----
GO
create proc deleteProduct_proc(@id int)
as
	begin transaction;
	delete hinh_sanpham where id_san_pham = @id;
	delete san_pham where id =@id;
	if(@@error <> 0)
		rollback transaction;
	else
		commit transaction;
		GO
--1 tạo procedure lấy sản phẩm theo loại sản phẩm, từ 1 khoảng nào đó
 create proc getProductLimit_proc(@idCategory int, @startfrom int, @endto int) 
as		
SELECT a.* FROM ( 
  SELECT  SAN_PHAM.* ,  DONG_SAN_PHAM.ten_dong_san_pham, ROW_NUMBER() OVER (ORDER BY SAN_PHAM.id desc) as row
                FROM SAN_PHAM 
                join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id join LOAI_SAN_PHAM on LOAI_SAN_PHAM.id = DONG_SAN_PHAM.id_loai_san_pham 
                where LOAI_SAN_PHAM.id = @idCategory

 ) as a WHERE a.row >= @startfrom and a.row <= @endto

----

go
create procedure insertUser_proc (@ten_nguoi_dung NVARCHAR(50), @ho_va_ten nvarchar(50),@email nvarchar(50), @gioi_tinh nvarchar(50),@sdt varchar(15),
		 @ngay_sinh char(20), @dia_chi nvarchar(50), @avatar nvarchar(250) ,@mat_khau varchar(400))
as
	BEGIN TRANSACTION;
	declare @id int;
	INSERT INTO NGUOI_DUNG(ten_nguoi_dung, ho_va_ten,email, gioi_tinh, sdt, ngay_sinh,dia_chi,duong_dan_avatar,mat_khau) 
		values (N''+@ten_nguoi_dung, N''+@ho_va_ten, N''+@email, N''+@gioi_tinh, @sdt, @ngay_sinh, N''+@dia_chi, N''+@avatar,N''+@mat_khau );
	select @id = id from NGUOI_DUNG where ten_nguoi_dung = @ten_nguoi_dung;
	insert into PHAN_QUYEN(id_nguoi_dung, ten_nguoi_dung, id_nhom) values(@id,@ten_nguoi_dung,2);
	IF (@@error <> 0)
		ROLLBACK;
	else
	 COMMIT;


-----
go
create procedure insertAdmin_proc (@ten_nguoi_dung NVARCHAR(50), @ho_va_ten NVARCHAR(50),@mat_khau NVARCHAR(400))
as
	BEGIN TRANSACTION;
	declare @id int;
	insert into Nguoi_Dung(ten_nguoi_dung, ho_va_ten, mat_khau) 
		values (N''+@ten_nguoi_dung, N''+@ho_va_ten,N''+@mat_khau );
	select @id = id from NGUOI_DUNG where ten_nguoi_dung = @ten_nguoi_dung;
	insert into PHAN_QUYEN(id_nguoi_dung, ten_nguoi_dung, id_nhom) values(@id,@ten_nguoi_dung,1);
	IF (@@error <> 0)
		ROLLBACK;
	else
	 COMMIT;



------
go
create procedure deleteUser_proc(@id int)
as
	begin TRANSACTION;
	delete phan_quyen
	where id_nguoi_dung = @id;
	delete NGUOI_DUNG
	where id = @id;
	if(@@error <> 0)
		ROLLBACK;
	else
	 COMMIT;
	



-----
go
create procedure updateAdmin_proc(@id int, @ho_va_ten nvarchar(50), @password nvarchar(400))
as
	begin TRANSACTION;
	if @password is not null and len(@password) > 0
		update NGUOI_DUNG set mat_khau = @password  where id = @id;
	if @ho_va_ten is not null and len(@ho_va_ten) > 0
		update NGUOI_DUNG set ho_va_ten = @ho_va_ten  where id = @id;
	if(@@error <> 0)
		ROLLBACK;
	else
		COMMIT;





---
go
create procedure updateUser_proc(@id int, @ho_va_ten nvarchar(50),@email nvarchar(50), @gioi_tinh nvarchar(50),@sdt varchar(15),
		 @ngay_sinh char(20), @dia_chi nvarchar(50), @avatar nvarchar(250) ,@password nvarchar(400))
as
	begin TRANSACTION;
	if (@ho_va_ten is not null and len(@ho_va_ten) > 0)
		update NGUOI_DUNG set ho_va_ten = @ho_va_ten  where id = @id;

	if (@email is not null and len(@email) > 0)
		update NGUOI_DUNG set email = @email  where id = @id;
		
	if (@gioi_tinh is not null and len(@gioi_tinh) > 0)
		update NGUOI_DUNG set gioi_tinh = @gioi_tinh  where id = @id;

	if (@sdt is not null and len(@sdt) > 0)
		update NGUOI_DUNG set sdt = @sdt  where id = @id;

	if (@ngay_sinh is not null and len(@ngay_sinh) > 0)
		update NGUOI_DUNG set ngay_sinh = @ngay_sinh  where id = @id;
		
	if (@dia_chi is not null and len(@dia_chi) > 0)
		update NGUOI_DUNG set dia_chi = @dia_chi  where id = @id;

	if (@avatar is not null and len(@avatar) > 0)
		update NGUOI_DUNG set duong_dan_avatar = @avatar  where id = @id;

	if (@password is not null and len(@password) > 0)
		update NGUOI_DUNG set mat_khau = @password  where id = @id;

	if(@@error <> 0)
		ROLLBACK;
	else 
		begin
			print 'dff';
			COMMIT;
		end
		

go

-- LẤY RA THÔNG TIN NGƯỜI DÙNG
	CREATE PROCEDURE UPDATEFOGOTPWD @USERNAME VARCHAR(50),@PWD VARCHAR(40)
	AS
	BEGIN 
	UPDATE NGUOI_DUNG
	SET MAT_KHAU =@PWD
	WHERE EMAIL= @USERNAME OR SDT= @USERNAME OR TEN_NGUOI_DUNG =@USERNAME
	END;


-- SỐ LƯỢNG ĐƠN HÀNG 
GO
CREATE PROCEDURE SL_ORDER @IDKH INT AS
SELECT ID_KHACH_HANG, COUNT(ID_KHACH_HANG) AS COUNTORDER FROM HOA_DON WHERE ID_KHACH_HANG = @IDKH GROUP BY ID_KHACH_HANG

EXEC SL_ORDER 8;
GO
-- XẾP LOẠI KHÁCH HÀNG

CREATE FUNCTION F_XLKH(@ID_KH INT)
RETURNS  VARCHAR(20) 
AS
 BEGIN
    DECLARE @TONGTIEN real,@XEPLOAI VARCHAR(20)
    SET @TONGTIEN=(SELECT SUM(TRI_GIA)
    FROM HOA_DON
    WHERE ID_KHACH_HANG=@ID_KH)
    IF(@TONGTIEN>50000000)
 SET @XEPLOAI ='VIP'
 IF(@TONGTIEN>15000000 and @TONGTIEN<50000000)
 SET @XEPLOAI= 'MEMBER'
 if(@TONGTIEN<15000000)
 SET @XEPLOAI= 'NEW'
 if(@TONGTIEN = NULL)
 SET @XEPLOAI= 'NEW'
    RETURN @XEPLOAI;

END;


	  /*8. TẠO HÀM F_LIST_HD DANH SÁCH CÁC HÓA ĐƠN CỦA KHÁCH HÀNG CÓ MÃ @ID_KH
  -GỒM : ID ,TRI GIA,NGAY LAP HOA DON*/
  GO
CREATE FUNCTION LIST_HD(@ID_KH INT)
  RETURNS TABLE
  AS
	RETURN(SELECT H.ID, TRI_GIA, NGAY_LAP_HOA_DON,G.NGAY_GIAO_HANG
FROM HOA_DON H JOIN GIAO_HANG G ON G.ID_HOA_DON=H.ID
WHERE ID_KHACH_HANG=@ID_KH)	

