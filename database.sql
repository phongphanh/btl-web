/*
Created		30/08/2018
Modified		15/09/2018
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/


Create table [HangXe]
(
	[ID_Hang] Integer Identity NOT NULL,
	[TenHang] Nvarchar(50) NOT NULL,
	[Logo] Text NOT NULL,
Primary Key ([ID_Hang],[TenHang])
) 
go

Create table [Xe]
(
	[ID_Xe] Integer Identity NOT NULL,
	[TenXe] Nvarchar(50) NOT NULL,
	[NgayDang] Datetime NOT NULL,
	[KhuVuc] Nvarchar(100) NOT NULL,
	[TinhTrang] Nvarchar(10) NOT NULL,
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
	[LoaiHoSo] Nvarchar(20) NOT NULL,
	[SoKm] Integer NOT NULL,
	[GioiThieu] Text NOT NULL,
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
	[TangAp] Float NOT NULL,
	[DieuHoa] Text NULL,
	[CuaSoTroi] Text NULL,
	[DVD_LCD] Text NULL,
	[JackCamLoa] Text NULL,
	[LopSo-Cua] Text NULL,
	[TuiKhi] Text NOT NULL,
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
	[TenHang] Nvarchar(50) NOT NULL,
Primary Key ([ID_Xe])
) 
go

Create table [DonHang]
(
	[ID_DonHang] Integer Identity NOT NULL,
	[HoDem] Nvarchar(30) NOT NULL,
	[Ten] Nvarchar(20) NOT NULL,
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
	[TenTK] Nvarchar(50) NOT NULL,
	[Email] Char(50) NOT NULL,
	[Password] Char(30) NOT NULL,
	[PasswordConfirm] Char(30) NOT NULL,
	[SDT] Char(12) NOT NULL,
	[Tinh_ThanhPho] Nvarchar(50) NOT NULL,
	[Quan_Huyen] Nvarchar(50) NOT NULL,
	[DiaChi] Nvarchar(100) NOT NULL,
	[LoaiTK] Nvarchar(10) NOT NULL,
	[TrangThaiTK] Integer NOT NULL,
Primary Key ([ID_TK])
) 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


