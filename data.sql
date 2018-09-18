USE [master]
GO
/****** Object:  Database [BanOTo2]    Script Date: 18/09/2018 4:46:30 CH ******/
CREATE DATABASE [BanOTo2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanOTo2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BanOTo2.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanOTo2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BanOTo2_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanOTo2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanOTo2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanOTo2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanOTo2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanOTo2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanOTo2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanOTo2] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanOTo2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanOTo2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanOTo2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanOTo2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanOTo2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanOTo2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanOTo2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanOTo2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanOTo2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanOTo2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanOTo2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanOTo2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanOTo2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanOTo2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanOTo2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanOTo2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanOTo2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanOTo2] SET RECOVERY FULL 
GO
ALTER DATABASE [BanOTo2] SET  MULTI_USER 
GO
ALTER DATABASE [BanOTo2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanOTo2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanOTo2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanOTo2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BanOTo2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BanOTo2]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 18/09/2018 4:46:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID_DonHang] [int] IDENTITY(1,1) NOT NULL,
	[HoDem] [nvarchar](30) NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
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
/****** Object:  Table [dbo].[HangXe]    Script Date: 18/09/2018 4:46:30 CH ******/
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
	[ID_Hang] ASC,
	[TenHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 18/09/2018 4:46:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID_TK] [int] IDENTITY(1,1) NOT NULL,
	[TenTK] [nvarchar](50) NOT NULL,
	[Email] [char](50) NOT NULL,
	[Password] [char](30) NOT NULL,
	[PasswordConfirm] [char](30) NOT NULL,
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
/****** Object:  Table [dbo].[Xe]    Script Date: 18/09/2018 4:46:30 CH ******/
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
	[TinhTrang] [nvarchar](10) NOT NULL,
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
	[LoaiHoSo] [nvarchar](20) NOT NULL,
	[SoKm] [int] NOT NULL,
	[GioiThieu] [text] NOT NULL,
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
	[TangAp] [float] NOT NULL,
	[DieuHoa] [text] NULL,
	[CuaSoTroi] [text] NULL,
	[DVD_LCD] [text] NULL,
	[JackCamLoa] [text] NULL,
	[LopSo-Cua] [text] NULL,
	[TuiKhi] [text] NOT NULL,
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
	[TenHang] [nvarchar](50) NOT NULL,
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

ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([ID_TK])
REFERENCES [dbo].[TaiKhoan] ([ID_TK])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([ID_Xe])
REFERENCES [dbo].[Xe] ([ID_Xe])
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD FOREIGN KEY([ID_Hang], [TenHang])
REFERENCES [dbo].[HangXe] ([ID_Hang], [TenHang])
GO
USE [master]
GO
ALTER DATABASE [BanOTo2] SET  READ_WRITE 
GO
