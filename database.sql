USE [master]
GO
/****** Object:  Database [QLBanOTo]    Script Date: 12/09/2018 9:13:05 CH ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/09/2018 9:13:05 CH ******/
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
/****** Object:  Table [dbo].[HangXe]    Script Date: 12/09/2018 9:13:05 CH ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/09/2018 9:13:05 CH ******/
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
/****** Object:  Table [dbo].[Xe]    Script Date: 12/09/2018 9:13:05 CH ******/
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
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H001', N'Acura')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H002', N'Audi')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H003', N'BMW')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H004', N'Buick')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H005', N'Cadillac')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H006', N'Chevrolet')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H007', N'Chrysler')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H008', N'Dodge')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H009', N'Fiat')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H010', N'Ford')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H011', N'Genesis')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H012', N'GMC')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H013', N'Honda')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H014', N'Hummer')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H015', N'Hyundai')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H016', N'Infiniti')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H017', N'Jaguar')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H018', N'Jeep')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H019', N'Kia')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H020', N'Land Rover')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H021', N'Lexus')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H022', N'Lincoln')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H023', N'Mazda')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H024', N'Mercedes-Benz')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H025', N'Mercury')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H026', N'Mini')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H027', N'Mitsubishi')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H028', N'Nissan')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H029', N'Pontiac')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H030', N'Porsche')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H031', N'Saturn')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H032', N'Scion')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H033', N'Smart')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H034', N'Subaru')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H035', N'Tesla')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H036', N'Toyota')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H037', N'Volkswagen')
INSERT [dbo].[HangXe] ([ID_Hang], [TenHang]) VALUES (N'H038', N'Volvo')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X001', NULL, N'2012 Acura MDX', 16.998, N'101K      ', NULL, N'White', N'Automatic', 7, N'3.7L', N'Gas', 6, N'300 horsepower@6300rpm', N'270 torque@4500rpm', N'H001')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X002', NULL, N'2016 Acura MDX', 27.998, N'60K       ', NULL, N'Gray', N'Automatic', 7, N'3.5L', N'Gas', 6, N'290 horsepower@6200rpm', N'267 torque@4500rpm', N'H001')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X003', NULL, N'2014 Acura MDX', 26.998, N'57K       ', NULL, N'Pearl', N'Automatic', 7, N'3.5L', N'Gas', 6, N'290 horsepower@6200rpm', N'267 torque@4500rpm', N'H001')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X004', NULL, N'2012 Acura TSX Special Edition', 12.998, N'98K       ', NULL, N'Silver', N'Automatic', 5, N'2.4L', N'Gas', 4, N'201 horsepower@7000rpm', N'170 torque@4300rpm', N'H001')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X005', NULL, N'2014 Audi A4 Premium', 20.599, N'27K       ', NULL, N'Blue', N'Automatic', 5, N'2.0L', N'Turbo Gas', 4, N'220 horsepower@4450rpm', N'258 torque@1500rpm', N'H002')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X006', NULL, N'2012 Audi A5 Premium', 17.998, N'55K       ', NULL, N'White', N'Automatic', 4, N'2.0L', N'Turbo Gas', 4, N'211 horsepower@4300rpm', N'258 torque@1500rpm', N'H002')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X007', NULL, N'2015 BMW 320 I', 19.998, N'26K       ', NULL, N'Gray', N'Automatic', 5, N'2.0L', N'Turbo Gas', 4, N'180 horsepower@5000rpm', N'200 torque@1250rpm', N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X008', NULL, N'2014 BMW 320 I', 18.599, N'35K       ', NULL, N'White', N'Automatic', 5, N'2.0L ', N'Turbo Gas', 4, N'180 horsepower@5000rpm', N'200 torque@1250rpm', N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X009', NULL, N'2010 BMW 328 I', 12.988, N'82K       ', NULL, N'Silver', N'Automatic', 4, N'3.0L', N'Gas', 6, N'230 horsepower@6500rpm', N'200 torque@2750rpm', N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X010', NULL, N'2015 BMW 328 I', 21.998, N'24K       ', NULL, N'Blue', N'Automatic', 5, N'2.0L', N'Turbo Gas', 4, N'240 horsepower@5000rpm', N'255 torque@1250rpm', N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X011', NULL, N'2015 BMW 328 I', 23.998, N'19K       ', NULL, N'Black', N'Automatic', 5, N'2.0L', N'Turbo Gas', 4, N'240 horsepower@5000rpm', N'255 torque@1250rpm', N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X012', NULL, N'2017 BMW 330 I', 31.998, N'6K        ', NULL, N'Black', N'Automatic', 5, N'2.00L', N'Turbo Gas', 4, N'248 horsepower@5200rpm', NULL, N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X013', NULL, N'2016 BMW 428 I', 20.998, N'58K       ', NULL, N'Blue', N'Automatic', 4, N'2.0L', N'Turbo Gas', 4, N'240 horsepower@5000rpm', N'255 torque@1250rpm', N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X014', NULL, N'2015 BMW 435 I Gran Coupe', 27.998, N'47K       ', NULL, N'Silver', N'Automatic', 5, N'3.0L', N'Turbo Gas', 6, N'300 horsepower@5800rpm', N'300 torque@1200rpm', N'H003')
INSERT [dbo].[Xe] ([ID_Xe], [Anh], [TenXe], [Gia], [KmDaDi], [BaoHanh], [Mau], [HopSo], [SoCho], [DongCo], [NhienLieu], [XiLanh], [MaLuc], [Mo-menXoan], [ID_Hang]) VALUES (N'X015', NULL, N'2015 BMW I3 Tera World', 19.998, N'23K       ', NULL, N'Black', N'Automatic', 4, NULL, N'Electric', NULL, NULL, N'170 horsepower@0rpm', N'H003')
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[TaiKhoan] ([ID_TK])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Xe] FOREIGN KEY([ID_Xe])
REFERENCES [dbo].[Xe] ([ID_Xe])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_Xe]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_HangXe] FOREIGN KEY([ID_Hang])
REFERENCES [dbo].[HangXe] ([ID_Hang])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_HangXe]
GO
USE [master]
GO
ALTER DATABASE [QLBanOTo] SET  READ_WRITE 
GO
