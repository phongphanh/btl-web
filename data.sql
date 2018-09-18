/*
Created		30/08/2018
Modified		18/09/2018
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/
create database QLBanOTo
go 
use QLBanOTo


Create table [HangXe]
(
	[ID_Hang] Integer Identity NOT NULL,
	[TenHang] Nvarchar(50) NOT NULL,
	[Logo] Text NOT NULL,
Primary Key ([ID_Hang])
) 
go

Create table [Xe]
(
	[ID_Xe] Integer Identity NOT NULL,
	[TenXe] Nvarchar(50) NOT NULL,
	[NgayDang] Datetime NOT NULL,
	[KhuVuc] Nvarchar(100) NOT NULL,
	[Anh] Text NOT NULL,
	[Gia] Float NOT NULL,
	[TenChuXe] Nvarchar(30) NOT NULL,
	[SDT] Char(12) NOT NULL,
	[DiaChi] Nvarchar(100) NOT NULL,
	[KieuDang] Nvarchar(50) NOT NULL,
	[MauSac] Nvarchar(10) NOT NULL,
	[XuatXu] Nvarchar(20) NOT NULL,
	[SoCua] Integer NOT NULL,
	[NhienLieu] Nvarchar(10) NOT NULL,
	[SoCho] Integer NOT NULL,
	[LoaiHopSo] Nvarchar(20) NOT NULL,
	[SoKm] Integer NOT NULL,
	[GioiThieu] Text NULL,
	[CongXuat] Char(50) NOT NULL,
	[MomemXoan] Char(50) NOT NULL,
	[TruyenDong] Nvarchar(30) NOT NULL,
	[DungTich] Integer NOT NULL,
	[KichThuoc_DxRxC_] Char(50) NOT NULL,
	[ChieuDaiCoSo] Float NOT NULL,
	[BanKinhQuayDau] Float NOT NULL,
	[KhoangSangGam] Float NOT NULL,
	[HeThongTreoSau] Nvarchar(100) NOT NULL,
	[TrongLuongKhongTai] Float NOT NULL,
	[Mam_Vanh] Nvarchar(50) NOT NULL,
	[KichThuocLopTruoc] Char(30) NOT NULL,
	[KichThuocLopSau] Char(30) NOT NULL,
	[PhanhTruoc] Nvarchar(10) NOT NULL,
	[PhanhSau] Nvarchar(10) NOT NULL,
	[TieuThuNhienLieu] Float NOT NULL,
	[TangAp] Nvarchar(5) NOT NULL,
	[DieuHoa] Text NULL,
	[CuaSoTroi] Text NULL,
	[DVD_LCD] Text NULL,
	[JackCamLoa] Text NULL,
	[LopSo-Cua] Text NULL,
	[TuiKhi] Text NULL,
	[Cameralui] Text NULL,
	[CamBienLui] Text NULL,
	[ChongBoCungPhanh] Text NULL,
	[PhanBoLucPhanhDienTu] Text NULL,
	[TroLucPhanhKhanCap] Text NULL,
	[HeThongHoTroKhoiDong] Text NULL,
	[NoiDangKy] Text NULL,
	[PhiTruocBa] Text NULL,
	[PhiDangKiem] Text NULL,
	[PhiDuongBo] Text NULL,
	[BaoHiemDanSu] Text NULL,
	[PhiSangTen] Text NULL,
	[TongPhi] Text NULL,
	[BanDo] Text NULL,
	[ID_Hang] Integer NOT NULL,
Primary Key ([ID_Xe])
) 
go

Create table [DonHang]
(
	[ID_DonHang] Integer Identity NOT NULL,
	[HoTen] Nvarchar(30) NOT NULL,
	[TenCongTy] Text NULL,
	[QuocGia] Text NOT NULL,
	[DiaChi] Text NOT NULL,
	[MaBuuDien] Text NULL,
	[Tinh_ThanhPho] Text NOT NULL,
	[SDT] Char(12) NOT NULL,
	[Email] Char(50) NOT NULL,
	[Note] Text NULL,
	[NgayDatHang] Datetime NOT NULL,
	[TongCong] Float NOT NULL,
	[TongPhu] Text NOT NULL,
	[HinhThucThanhToan] Text NOT NULL,
	[ID_TK] Integer NOT NULL,
	[ID_Xe] Integer NOT NULL,
Primary Key ([ID_DonHang])
) 
go

Create table [TaiKhoan]
(
	[ID_TK] Integer Identity NOT NULL,
	[HoTen] Nvarchar(30) NOT NULL,
	[Email] Char(50) NOT NULL,
	[Password] Char(30) NOT NULL,
	[SDT] Char(12) NOT NULL,
	[Tinh_ThanhPho] Nvarchar(50) NOT NULL,
	[Quan_Huyen] Nvarchar(50) NOT NULL,
	[DiaChi] Nvarchar(100) NOT NULL,
	[LoaiTK] Nvarchar(10) NOT NULL,
	[TrangThaiTK] Integer NOT NULL,
Primary Key ([ID_TK])
) 

Alter table [Xe] add  foreign key([ID_Hang]) references [HangXe] ([ID_Hang])  on update no action on delete no action 
go
Alter table [DonHang] add  foreign key([ID_Xe]) references [Xe] ([ID_Xe])  on update no action on delete no action 
go
Alter table [DonHang] add  foreign key([ID_TK]) references [TaiKhoan] ([ID_TK])  on update no action on delete no action 
go

go
SET IDENTITY_INSERT [dbo].[HangXe] ON 
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (1, N'Toyota', N'image\Logo\toyota.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (2, N'Ford', N'image\Logo\ford.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (3, N'Hyundai', N'image\Logo\hyundai.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (4, N'Honda', N'image\Logo\honda.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (5, N'KIA', N'image\Logo\kia.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (6, N'Chevrolet', N'image\Logo\Chevrolet-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (7, N'Mazda', N'image\Logo\Mazda.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (8, N'Mitsubishi', N'image\Logo\Mitsubishi-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (9, N'Mercedes-Benz', N'image\Logo\MercedesBenz.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (10, N'BMW', N'image\Logo\bmw.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (11, N'Nissan', N'image\Logo\Nissan-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (12, N'Suzuki', N'image\Logo\suzuki.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (13, N'Acura', N'image\Logo\acura.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (14, N'Audi', N'image\Logo\audi.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (15, N'Bentley', N'image\Logo\Bentley-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (16, N'Cadillac', N'image\Logo\cadilac.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (17, N'Daewoo', N'image\Logo\daewoo.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (18, N'Daihatsu', N'image\Logo\daihatsu.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (19, N'Fiat', N'image\Logo\fiat.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (20, N'Fisker', N'image\Logo\fisker.png')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (21, N'Haima', N'image\Logo\haima.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (22, N'Infiniti', N'image\Logo\Infiniti-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (23, N'Isuzu', N'image\Logo\Isuzu-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (24, N'Jaguar', N'image\Logo\Jaguar-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (25, N'Land Rover', N'image\Logo\LandRover-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (26, N'Lexus', N'image\Logo\lexus.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (27, N'MG', N'image\Logo\mg.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (28, N'Mini', N'image\Logo\MINI-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (29, N'Peugeot', N'image\Logo\peugeot.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (30, N'Porsche', N'image\Logo\Porsche-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (31, N'Renault', N'image\Logo\Renault-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (32, N'SsangYong', N'image\Logo\SsangYong-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (33, N'Subaru', N'image\Logo\subaru.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (34, N'Tata', N'image\Logo\tata.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (35, N'UAZ', N'image\Logo\uaz.png')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (36, N'Volkswagen', N'image\Logo\Volkswagen-.jpg')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang], [Logo]) VALUES (37, N'Volvo', N'image\Logo\Volvo-.jpg')
SET IDENTITY_INSERT [dbo].[HangXe] OFF


Set quoted_identifier on
go


Set quoted_identifier off
go


