USE [master]
GO
/****** Object:  Database [BanOTo]    Script Date: 19/09/2018 2:22:06 CH ******/
CREATE DATABASE [BanOTo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanOTo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BanOTo.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanOTo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BanOTo_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanOTo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanOTo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanOTo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanOTo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanOTo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanOTo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanOTo] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanOTo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanOTo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanOTo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanOTo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanOTo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanOTo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanOTo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanOTo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanOTo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanOTo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanOTo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanOTo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanOTo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanOTo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanOTo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanOTo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanOTo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanOTo] SET RECOVERY FULL 
GO
ALTER DATABASE [BanOTo] SET  MULTI_USER 
GO
ALTER DATABASE [BanOTo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanOTo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanOTo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanOTo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BanOTo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BanOTo]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 19/09/2018 2:22:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID_DonHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[TenCongTy] [text] NULL,
	[QuocGia] [text] NOT NULL,
	[DiaChi] [text] NOT NULL,
	[MaBuuDien] [text] NULL,
	[Tinh_ThanhPho] [text] NOT NULL,
	[SDT] [char](12) NOT NULL,
	[Email] [char](50) NOT NULL,
	[Note] [text] NULL,
	[NgayDatHang] [datetime] NOT NULL,
	[TongCong] [float] NOT NULL,
	[TongPhu] [text] NOT NULL,
	[HinhThucThanhToan] [text] NOT NULL,
	[ID_TK] [int] NOT NULL,
	[ID_Xe] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangXe]    Script Date: 19/09/2018 2:22:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangXe](
	[ID_Hang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NOT NULL,
	[Logo] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 19/09/2018 2:22:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID_TK] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[Email] [char](50) NOT NULL,
	[Password] [char](30) NOT NULL,
	[SDT] [char](12) NOT NULL,
	[Tinh_ThanhPho] [nvarchar](50) NOT NULL,
	[Quan_Huyen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[LoaiTK] [nvarchar](10) NOT NULL,
	[TrangThaiTK] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 19/09/2018 2:22:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Xe](
	[ID_Xe] [int] IDENTITY(1,1) NOT NULL,
	[TenXe] [nvarchar](50) NOT NULL,
	[NgayDang] [datetime] NOT NULL,
	[KhuVuc] [nvarchar](100) NOT NULL,
	[Anh] [text] NOT NULL,
	[Gia] [float] NOT NULL,
	[TenChuXe] [nvarchar](30) NOT NULL,
	[SDT] [char](12) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[KieuDang] [nvarchar](50) NOT NULL,
	[MauSac] [nvarchar](10) NOT NULL,
	[XuatXu] [nvarchar](20) NOT NULL,
	[SoCua] [int] NOT NULL,
	[NhienLieu] [nvarchar](10) NOT NULL,
	[SoCho] [int] NOT NULL,
	[LoaiHopSo] [nvarchar](20) NOT NULL,
	[SoKm] [int] NOT NULL,
	[GioiThieu] [text] NULL,
	[CongXuat] [char](50) NOT NULL,
	[MomemXoan] [char](50) NOT NULL,
	[TruyenDong] [nvarchar](30) NOT NULL,
	[DungTich] [int] NOT NULL,
	[KichThuoc_DxRxC_] [char](50) NOT NULL,
	[ChieuDaiCoSo] [float] NOT NULL,
	[BanKinhQuayDau] [float] NOT NULL,
	[KhoangSangGam] [float] NOT NULL,
	[HeThongTreoSau] [nvarchar](100) NOT NULL,
	[TrongLuongKhongTai] [float] NOT NULL,
	[Mam_Vanh] [nvarchar](50) NOT NULL,
	[KichThuocLopTruoc] [char](30) NOT NULL,
	[KichThuocLopSau] [char](30) NOT NULL,
	[PhanhTruoc] [nvarchar](10) NOT NULL,
	[PhanhSau] [nvarchar](10) NOT NULL,
	[TieuThuNhienLieu] [float] NOT NULL,
	[TangAp] [nvarchar](5) NOT NULL,
	[DieuHoa] [text] NULL,
	[CuaSoTroi] [text] NULL,
	[DVD_LCD] [text] NULL,
	[JackCamLoa] [text] NULL,
	[LopSo-Cua] [text] NULL,
	[TuiKhi] [text] NULL,
	[Cameralui] [text] NULL,
	[CamBienLui] [text] NULL,
	[ChongBoCungPhanh] [text] NULL,
	[PhanBoLucPhanhDienTu] [text] NULL,
	[TroLucPhanhKhanCap] [text] NULL,
	[HeThongHoTroKhoiDong] [text] NULL,
	[NoiDangKy] [text] NULL,
	[PhiTruocBa] [text] NULL,
	[PhiDangKiem] [text] NULL,
	[PhiDuongBo] [text] NULL,
	[BaoHiemDanSu] [text] NULL,
	[PhiSangTen] [text] NULL,
	[TongPhi] [text] NULL,
	[BanDo] [text] NULL,
	[ID_Hang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Xe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
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
SET IDENTITY_INSERT [dbo].[Xe] ON 

INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (1, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (2, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(1).jpg;image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(2).jpg;image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(3).jpg;image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(4).jpg;image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(5).jpg;image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(6).jpg;image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(7).jpg;image/Toyota-Fortuner-2-4G-2/Toyota-Fortuner-2-4G-2(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (3, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (4, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (5, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (6, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (7, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (8, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (9, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (10, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',1)

/*Hang 2*/
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (11, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (12, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (13, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (14, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (15, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (16, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (17, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (18, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (19, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)
INSERT [dbo].[Xe] ([ID_Xe], [TenXe], [NgayDang], [KhuVuc], [Anh], [Gia], [TenChuXe], [SDT], [DiaChi], [KieuDang], [MauSac], [XuatXu], [SoCua], [NhienLieu], [SoCho], [LoaiHopSo], [SoKm], [GioiThieu], [CongXuat], [MomemXoan], [TruyenDong], [DungTich], [KichThuoc_DxRxC_], [ChieuDaiCoSo], [BanKinhQuayDau], [KhoangSangGam], [HeThongTreoSau], [TrongLuongKhongTai], [Mam_Vanh], [KichThuocLopTruoc], [KichThuocLopSau], [PhanhTruoc], [PhanhSau], [TieuThuNhienLieu], [TangAp], [DieuHoa], [CuaSoTroi], [DVD_LCD], [JackCamLoa], [LopSo-Cua], [TuiKhi], [Cameralui], [CamBienLui], [ChongBoCungPhanh], [PhanBoLucPhanhDienTu], [TroLucPhanhKhanCap], [HeThongHoTroKhoiDong], [NoiDangKy], [PhiTruocBa], [PhiDangKiem], [PhiDuongBo], [BaoHiemDanSu], [PhiSangTen], [TongPhi], [BanDo], [ID_Hang]) VALUES (20, N'2017 TOYOTA FORTUNER 2.4G', CAST(N'2018-09-14 00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(1).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(2).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(3).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(4).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(5).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(6).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(7).jpg;image/Toyota-Fortuner-2-4G/Normal-2017-Toyota-Fortuner-2-4G(8).jpg;', 1035, N'PHÚ LÂM AUTO', N' 0906375765 ', N'464 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'SUV/Crossover', N'p', N'Nhập khẩu', 5, N'Dầu 2.4L ', 7, N'Sàn 6 cấp', 75000, N'', N'148 Hp @3,400 vòng/phút', N'400 Nm @1,600-2,000 vòng/phút', N'2WD(Cầu sau)', 80, N'4,795 x 1,855 x 1,835', 2745, 58, 219, N'Phụ thuộc, liên kết 4 điểm',1990, N'Hợp kim 17"', N'265/65R17', N'265/65R17', N'Đĩa', N'Tang trống', 6.2, N'Không', N'Có', N'Có', N'Có', N'Có', N'Có', N'2 túi khí', N'Có', N'Có', N'Có', N'Có', N'Có', N'Có', N'k', N'20700', N'340000', N'15600', N'837400', N'150000', N'23400', N'k',2)



SET IDENTITY_INSERT [dbo].[Xe] OFF
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([ID_TK])
REFERENCES [dbo].[TaiKhoan] ([ID_TK])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([ID_Xe])
REFERENCES [dbo].[Xe] ([ID_Xe])
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD FOREIGN KEY([ID_Hang])
REFERENCES [dbo].[HangXe] ([ID_Hang])
GO
USE [master]
GO
ALTER DATABASE [BanOTo] SET  READ_WRITE 
GO
