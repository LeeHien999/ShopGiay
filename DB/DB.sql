USE [master]
GO
/****** Object:  Database [WebBanGiay]    Script Date: 3/4/2023 9:52:01 PM ******/
CREATE DATABASE [WebBanGiay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanGiay', FILENAME = N'C:\Users\hienl\WebBanGiay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanGiay_log', FILENAME = N'C:\Users\hienl\WebBanGiay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WebBanGiay] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanGiay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanGiay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanGiay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanGiay] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanGiay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanGiay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanGiay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanGiay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanGiay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanGiay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanGiay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebBanGiay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanGiay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanGiay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanGiay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanGiay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanGiay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBanGiay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanGiay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanGiay] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanGiay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanGiay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanGiay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanGiay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBanGiay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBanGiay] SET QUERY_STORE = OFF
GO
USE [WebBanGiay]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [WebBanGiay]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 3/4/2023 9:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 3/4/2023 9:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/4/2023 9:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NOT NULL,
	[MaLoaiSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[TenSanPham] [nvarchar](255) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (1, N'Trung bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (2, N'Cao cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (3, N'Sang chảnh')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (1, N'Nike')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (2, N'Adidas')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (3, N'Gucci')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (4, N'Lacoste')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (5, N'Versace')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (6, N'MLB')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (1, 2, 2, N'GIÀY THỂ THAO ADIDAS RUNNING ULTRABOOST CTY', N'Giày thể thao', N'1.jpg', NULL, NULL, NULL, NULL, 1200000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (2, 1, 2, N'GIÀY THỂ THAO ADIDAS NMD R2 BLACK RED', N'Giày thể thao', N'2.jpg', NULL, NULL, NULL, NULL, 1500000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (3, 2, 2, N'DÉP QUAI NGANG ADIDAS ADILETTE LITE WHITE BIG LOGO ADIDAS', N'Dép quai ngang', N'3.jpg', NULL, NULL, NULL, NULL, 1100000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (4, 3, 2, N'GIÀY ADIDAS ORIGINALS STAN SMITH MEN''S SHOES M20324', N'Giày thể thao', N'4.jpg', NULL, NULL, NULL, NULL, 4000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (5, 3, 1, N'GIÀY THỂ THAO NIKE AIRFORCE 1 WORLD WIDE GOLD', N'Giày thể thao', N'5.jpg', NULL, NULL, NULL, NULL, 3800000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (6, 2, 1, N'GIÀY THỂ THAO NIKE NEW BALANCE 997 GREY BLACK', N'Giày thể thao', N'6.jpg', NULL, NULL, NULL, NULL, 2190000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (7, 1, 1, N'DÉP NIKE BENASSI JDI SANDALS WHITE/WOLF GREY MÀU TRẮNG XÁM', N'Dép quai ngang', N'7.jpg', NULL, NULL, NULL, NULL, 1300000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (8, 3, 1, N'GIÀY THỂ THAO NIKE AIR MONARCH IV MÀU ĐEN TRẮNG', N'Giày thể thao', N'8.jpg', NULL, NULL, NULL, NULL, 3900000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (9, 3, 3, N'GIÀY SNEAKER GUCCI WOMEN''S ACE EMBROIDERED SNEAKER MÀU ĐEN', N'Giày thể thao', N'9.jpg', NULL, NULL, NULL, NULL, 13600000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (10, 1, 3, N'DÉP GUCCI MEN''S LEATHER-TRIMMED LOGO-PRINT RUBBER SLIDES MÀU ĐEN', N'Dép quai ngang', N'10.jpg', NULL, NULL, NULL, NULL, 6500000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (11, 2, 3, N'GIÀY SNEAKER GUCCI BASKETS EN TOILE GG SUPREME ACE POUR HOMME MÀU XÁM', N'Giày thể thao', N'11.jpg', NULL, NULL, NULL, NULL, 14500000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (12, 3, 3, N'GIÀY CAO GÓT GUCCI TIGER WOMEN''S MID-HEEL SLINGBACK ‎687580-UUA10-8471 PHỐI MÀU', N'Giày cao gót', N'12.jpg', NULL, NULL, NULL, NULL, 30000000, 0, 0, N'0         ')
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
USE [master]
GO
ALTER DATABASE [WebBanGiay] SET  READ_WRITE 
GO
