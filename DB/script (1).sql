USE [master]
GO
/****** Object:  Database [WebBanGiay]    Script Date: 3/26/2023 10:32:37 PM ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/26/2023 10:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nchar](128) NULL,
	[MaSanPham] [int] NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 3/26/2023 10:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/26/2023 10:32:38 PM ******/
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
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9bf5b2ae-ba5b-4f59-bedf-a503385533fb', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c8045a02-841c-4c3c-a70c-91fae27faebc', N'9bf5b2ae-ba5b-4f59-bedf-a503385533fb')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'98d54314-9ff4-4414-a6ad-22a9fc7c8029', N'hienlemanh2002@gmail.com', 0, N'AJGwXD8HDH7+Q9J1qa4yio6MAD876ecKNkqvEmIptgqka/8oXG+Y2lnXJkunVPdSaQ==', N'f5f15068-fca8-42fa-ba8a-ab7dcf294c9e', NULL, 0, 0, NULL, 1, 0, N'hienlemanh2002@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c8045a02-841c-4c3c-a70c-91fae27faebc', N'admin@gmail.com', 0, N'ACW2I1vgYAXbxYLcWz7h0it4BEt6faCQwvUtHz/HgWSkB2pCBIMHwrtzQ1eskk9lug==', N'721c94ff-d032-4f5e-9c20-43d9332bb445', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dd9279b7-1fea-4206-9590-483e10b80437', N'Faker@gmail.com', 0, N'APi9YgmVCM96JeNK4g8OtDQp64eEoK6+/FpQwGc5iMLm8oTvkPL77LD3uXt/j1CeeA==', N'784366fc-0dba-4d4a-babf-fad59f2e92ca', NULL, 0, 0, NULL, 1, 0, N'Faker@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f2ee8da2-4f27-4f72-825c-13ff916ffd18', N'leduy@gmail.com', 0, N'AKQ/Izu20OFMt5hlmbPwkckv5kh3mEV5Eg15cDepRK5JJ0YriBS/faZkBSopWM0QiQ==', N'00610d93-5ef8-4f77-a800-05e8526c8a86', NULL, 0, 0, NULL, 1, 0, N'leduy@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([IDGioHang], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (1036, N'c8045a02-841c-4c3c-a70c-91fae27faebc                                                                                            ', 2, N'GIÀY THỂ THAO ADIDAS NMD R2 BLACK RED', 1, 1500000, 1500000)
INSERT [dbo].[GioHang] ([IDGioHang], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (1044, N'c8045a02-841c-4c3c-a70c-91fae27faebc                                                                                            ', 1, N'GIÀY THỂ THAO ADIDAS RUNNING ULTRABOOST CTY', 1, 1200000, 1200000)
INSERT [dbo].[GioHang] ([IDGioHang], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (2002, N'c8045a02-841c-4c3c-a70c-91fae27faebc                                                                                            ', 14, NULL, 2, 50000000, 100000000)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (1, N'Men', N'0         ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (2, N'Women', N'0         ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (3, N'Children', N'1         ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (4, N'OldMan', N'1         ')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (1, N'Nike', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (2, N'Adidas', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (3, N'Gucci', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (4, N'Lacoste', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (5, N'Versace', N'0         ')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (1, 2, 2, N'GIÀY THỂ THAO ADIDAS RUNNING ULTRABOOST CTY', N'Giày thể thao', N'1.jpg', NULL, NULL, NULL, NULL, 1200000, 0, 324, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (2, 1, 2, N'GIÀY THỂ THAO ADIDAS NMD R2 BLACK RED', N'Giày thể thao', N'2.jpg', NULL, NULL, NULL, NULL, 1500000, 0, 232, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (3, 2, 2, N'DÉP QUAI NGANG ADIDAS ADILETTE LITE WHITE BIG LOGO ADIDAS', N'Dép quai ngang', N'3.jpg', NULL, NULL, NULL, NULL, 1100000, 0, 345, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (4, 1, 2, N'GIÀY ADIDAS ORIGINALS STAN SMITH MEN''S SHOES M20324', N'Giày thể thao', N'4.jpg', NULL, NULL, NULL, NULL, 4000000, 0, 334, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (5, 2, 1, N'GIÀY THỂ THAO NIKE AIRFORCE 1 WORLD WIDE GOLD', N'Giày thể thao', N'5.jpg', NULL, NULL, NULL, NULL, 3800000, 0, 234, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (6, 1, 1, N'GIÀY THỂ THAO NIKE NEW BALANCE 997 GREY BLACK', N'Giày thể thao', N'6.jpg', NULL, NULL, NULL, NULL, 2190000, 0, 323, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (7, 2, 1, N'DÉP NIKE BENASSI JDI SANDALS WHITE/WOLF GREY MÀU TRẮNG XÁM', N'Dép quai ngang', N'7.jpg', NULL, NULL, NULL, NULL, 1300000, 0, 343, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (8, 1, 1, N'GIÀY THỂ THAO NIKE AIR MONARCH IV MÀU ĐEN TRẮNG', N'Giày thể thao', N'8.jpg', NULL, NULL, NULL, NULL, 3900000, 0, 233, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (9, 2, 3, N'GIÀY SNEAKER GUCCI WOMEN''S ACE EMBROIDERED SNEAKER MÀU ĐEN', N'Giày thể thao', N'9.jpg', NULL, NULL, NULL, NULL, 13600000, 0, 453, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (10, 1, 3, N'DÉP GUCCI MEN''S LEATHER-TRIMMED LOGO-PRINT RUBBER SLIDES MÀU ĐEN', N'Dép quai ngang', N'10.jpg', NULL, NULL, NULL, NULL, 6500000, 0, 855, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (11, 2, 3, N'GIÀY SNEAKER GUCCI BASKETS EN TOILE GG SUPREME ACE POUR HOMME MÀU XÁM', N'Giày thể thao', N'11.jpg', NULL, NULL, NULL, NULL, 14500000, 0, 433, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (12, 1, 3, N'GIÀY CAO GÓT GUCCI TIGER WOMEN''S MID-HEEL SLINGBACK ‎687580-UUA10-8471 PHỐI MÀU', N'Giày cao gót', N'12.jpg', NULL, NULL, NULL, NULL, 30000000, 0, 642, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (13, 1, 1, N'GIÀY THỂ THAO ADIDAS RUNNING ULTRABOOST CTY', N'<p>Giày thể thao</p>', N'13.jpg', NULL, NULL, NULL, NULL, 2340000, 0, 0, N'1         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (14, 1, 1, N'GIÀY THỂ THAO NIKE AIRFORCE 1 WORLD WIDE GOLD', N'Giày thể thao', N'14.jpg', NULL, NULL, NULL, NULL, 50000000, 0, 234, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (15, 3, 2, N'DÉP NIKE BENASSI JDI SANDALS WHITE/WOLF GREY MÀU TRẮNG XÁM', N'<p>Dép Quai Ngang</p>', N'15.jpg', NULL, NULL, NULL, NULL, 4500000, 0, 232, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (16, NULL, NULL, N'No Mỏe', N'<p><strong>Giày Cao Gót Mũi Nhọn Đính Nơ Màu Nude </strong>sở hữu màu sắc trang nhã, tinh tế cùng với thiết kế tôn dáng sẽ giúp phái đẹp tôn lên sự nữ tính, quyến rũ và sự tự tin. Đôi giày cao gót này sẽ là một phụ kiện thời trang giúp set đồ của bạn trở nên thời trang và đẳng cấp hơn.</p><p><img src="https://admin.thegioigiay.com/upload/news/content/2023/03/giay-cao-got-mui-nhon-dinh-no-mau-nude3-jpg-1679391192-21032023163312.jpg"></p><h2><strong>Mô tả Giày Cao Gót Mũi Nhọn Đính Nơ Màu Nude</strong></h2><p><strong>Giày Cao Gót Mũi Nhọn Đính Nơ Màu Nude </strong>được làm từ chất liệu mềm mại, from giày chuẩn đẹp mang lại sự thoải mái khi sử dụng.</p><p><img src="https://admin.thegioigiay.com/upload/news/content/2023/03/giay-cao-got-mui-nhon-dinh-no-mau-nude4-jpg-1679391205-21032023163325.jpg"></p><p>Đế giày cao gót nhọn tôn dáng thiết kế đơn giản nhưng cực kì sang trọng với nơ đá vô cùng điệu đà và siêu chảnh. Gam màu sang trọng khi kết hợp đôi giày cao gót với trang phục sẽ đem lại sự tự tin đầy quyến rũ cho phái đẹp.</p><p><img src="https://admin.thegioigiay.com/upload/news/content/2023/03/giay-cao-got-mui-nhon-dinh-no-mau-nude5-jpg-1679391224-21032023163344.jpg"></p><p>Với đôi <strong>Giày Cao Gót Mũi Nhọn Đính Nơ Màu Nude&nbsp;</strong>bạn có thể dễ dàng kết hợp nó cùng với trang phục mà bạn có đem lại sự sang trọng, quý phái và thanh lịch.</p>', N'giay.jpg', N'giay2.jpg', N'giay4.jpg', N'giay5.jpg', N'giay.jpg', 1217000, 0, 0, N'1         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (18, 2, 3, N'Fuck', N'<p>sdfsdfsd</p>', N'3373c5ef28d5e8db637d1e4cb322d9e4.jpg', N'giay3.webp', NULL, NULL, NULL, 23423423, NULL, NULL, N'0         ', N'<p>new</p>')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/26/2023 10:32:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/26/2023 10:32:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/26/2023 10:32:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/26/2023 10:32:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/26/2023 10:32:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/26/2023 10:32:40 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_Tinh trang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'new') FOR [GhiChu]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [WebBanGiay] SET  READ_WRITE 
GO
