USE [master]
GO
/****** Object:  Database [QLBanOTo]    Script Date: 05/09/2018 9:48:53 CH ******/
CREATE DATABASE [QLBanOTo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanOTo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBanOTo.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBanOTo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBanOTo_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBanOTo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanOTo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanOTo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanOTo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanOTo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanOTo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanOTo] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanOTo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBanOTo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanOTo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanOTo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanOTo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanOTo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanOTo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanOTo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanOTo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanOTo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBanOTo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanOTo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanOTo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanOTo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanOTo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanOTo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanOTo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanOTo] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBanOTo] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanOTo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanOTo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanOTo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanOTo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBanOTo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLBanOTo]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 05/09/2018 9:48:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID_DonHang] [nvarchar](10) NOT NULL,
	[HoDem] [nvarchar](30) NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[ID_Xe] [nvarchar](10) NOT NULL,
	[DonGia] [float] NOT NULL,
	[DatCoc] [nvarchar](10) NOT NULL,
	[SoDT] [nvarchar](20) NOT NULL,
	[DiaChiGaoHang] [nvarchar](100) NOT NULL,
	[ID_TK] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangXe]    Script Date: 05/09/2018 9:48:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangXe](
	[ID_Hang] [nvarchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 05/09/2018 9:48:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID_TK] [nvarchar](10) NOT NULL,
	[TenTK] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[TrangThaiTK] [int] NULL,
	[SDT] [nvarchar](12) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[LoaiTK] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Xe]    Script Date: 05/09/2018 9:48:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[ID_Xe] [nvarchar](10) NOT NULL,
	[Anh] [nvarchar](255) NULL,
	[TenXe] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[KmDaDi] [nchar](10) NULL,
	[BaoHanh] [nvarchar](100) NULL,
	[Mau] [nvarchar](20) NULL,
	[HopSo] [nvarchar](30) NULL,
	[SoCho] [int] NULL,
	[DongCo] [nvarchar](10) NULL,
	[NhienLieu] [nvarchar](20) NULL,
	[XiLanh] [int] NULL,
	[MaLuc] [nvarchar](100) NULL,
	[Mo-menXoan] [nvarchar](100) NULL,
	[ID_Hang] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Xe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H001
', N'Acura
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H002
', N'Audi
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H003
', N'BMW
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H004
', N'Buick
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H006
', N'Cadillac
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H007
', N'Chevrolet
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H008
', N'Chrysler
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H009
', N'Dodge
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H010
', N'Fiat
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H011
', N'Ford
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H012
', N'Genesis
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H013
', N'GMC
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H014
', N'Honda
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H015
', N'Hummer
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H016
', N'Hyundai
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H017
', N'Infiniti
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H018
', N'Jaguar
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H020
', N'Jeep
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H021
', N'Kia
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H022
', N'Land Rover
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H023
', N'Lexus
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H024
', N'Lincoln
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H025
', N'Mazda
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H026', N'Mercedes-Benz
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H027', N'Mercury
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H028', N'Mini
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H029
', N'Mitsubishi
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H030', N'Nissan
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H031', N'Pontiac
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H032', N'Porsche
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H033', N'Saturn
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H034', N'Scion
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H035', N'Smart
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H036', N'Subaru
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H037', N'Tesla
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H038', N'Toyota
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H039', N'Volkswagen
')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H040', N'Volvo
')
USE [master]
GO
ALTER DATABASE [QLBanOTo] SET  READ_WRITE 
GO
