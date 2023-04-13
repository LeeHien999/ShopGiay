USE [master]
GO
/****** Object:  Database [WebBanGiay]    Script Date: 4/13/2023 2:41:24 PM ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/13/2023 2:41:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/13/2023 2:41:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/13/2023 2:41:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/13/2023 2:41:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/13/2023 2:41:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/13/2023 2:41:24 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/13/2023 2:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[IdChiTietDonHang] [int] IDENTITY(1,1) NOT NULL,
	[IdDonHang] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[IdChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/13/2023 2:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[IDKhachHang] [nvarchar](128) NULL,
	[TenNguoiNhan] [nvarchar](128) NULL,
	[Sdt] [nchar](15) NULL,
	[DiaChiNhan] [nvarchar](128) NULL,
	[EmailNguoiNhan] [nvarchar](50) NULL,
	[TongDonHang] [int] NULL,
	[HinhThucThanhToan] [nvarchar](128) NULL,
	[TinhTrang] [nvarchar](128) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 4/13/2023 2:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nchar](128) NULL,
	[MaSanPham] [int] NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/13/2023 2:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] NOT NULL,
	[TenLoaiSanPham] [nvarchar](128) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 4/13/2023 2:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] NOT NULL,
	[TenNhaSanXuat] [nvarchar](128) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/13/2023 2:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NOT NULL,
	[MaLoaiSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](max) NULL,
	[Hinh1] [nvarchar](max) NULL,
	[Hinh2] [nvarchar](max) NULL,
	[Hinh3] [nvarchar](max) NULL,
	[Hinh4] [nvarchar](max) NULL,
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
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'98d54314-9ff4-4414-a6ad-22a9fc7c8029', N'hienlemanh2002@gmail.com', 0, N'AJGwXD8HDH7+Q9J1qa4yio6MAD876ecKNkqvEmIptgqka/8oXG+Y2lnXJkunVPdSaQ==', N'f5f15068-fca8-42fa-ba8a-ab7dcf294c9e', NULL, 0, 0, NULL, 0, 0, N'hienlemanh2002@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c8045a02-841c-4c3c-a70c-91fae27faebc', N'admin@gmail.com', 0, N'ACW2I1vgYAXbxYLcWz7h0it4BEt6faCQwvUtHz/HgWSkB2pCBIMHwrtzQ1eskk9lug==', N'721c94ff-d032-4f5e-9c20-43d9332bb445', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dd9279b7-1fea-4206-9590-483e10b80437', N'Faker@gmail.com', 0, N'APi9YgmVCM96JeNK4g8OtDQp64eEoK6+/FpQwGc5iMLm8oTvkPL77LD3uXt/j1CeeA==', N'784366fc-0dba-4d4a-babf-fad59f2e92ca', NULL, 0, 0, NULL, 0, 0, N'Faker@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f2ee8da2-4f27-4f72-825c-13ff916ffd18', N'leduy@gmail.com', 0, N'AKQ/Izu20OFMt5hlmbPwkckv5kh3mEV5Eg15cDepRK5JJ0YriBS/faZkBSopWM0QiQ==', N'00610d93-5ef8-4f77-a800-05e8526c8a86', NULL, 0, 0, NULL, 0, 0, N'leduy@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([IdChiTietDonHang], [IdDonHang], [IdSanPham], [SoLuong], [Gia]) VALUES (1002, 1002, 19, 2, 1800000)
INSERT [dbo].[ChiTietDonHang] ([IdChiTietDonHang], [IdDonHang], [IdSanPham], [SoLuong], [Gia]) VALUES (1003, 1002, 3, 1, 1100000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([ID], [NgayTao], [IDKhachHang], [TenNguoiNhan], [Sdt], [DiaChiNhan], [EmailNguoiNhan], [TongDonHang], [HinhThucThanhToan], [TinhTrang]) VALUES (1002, CAST(N'2023-04-13T13:34:52.477' AS DateTime), N'c8045a02-841c-4c3c-a70c-91fae27faebc', N'le manh hien', N'0377191497     ', N'Quảng Ngãi', N'hienlemanh2002@gmail.com', 4700000, N'COD', N'Đang chờ duyệt')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
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
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (1, 2, 2, N'GIÀY THỂ THAO ADIDAS RUNNING ULTRABOOST CTY', N'<p><strong>MÔ TẢ SẢN PHẨM : Giày Thể Thao Nam MWC - 5417</strong></p><ul><li>Giày được thiết kế kiểu dáng buộc dây sneaker cực ngầu phối sọc thể thao năng động, phong cách hiện đại,màu sắc khỏe khoắn.</li><li>Với chất vải Flyknit chuyên dụng tạo cảm giác thoải mái cho bạn trong suốt quá trình vận động, mang lại một phong cách thật thời thượng mỗi khi xuống phố.&nbsp;</li><li>Sản phẩm có thiết kế tinh tế cùng đường may tỉ mỉ, chắc chắn, thích hợp trong các hoạt động thể thao, dạo chơi, picnic</li></ul><p><strong>CHI TIẾT SẢN PHẨM</strong></p><p>&nbsp;</p><ul><li>Chiều cao giày 3cm</li><li>Chất liệu vải Flyknit cao cấp</li><li>Chất liệu đế cao su đúc êm mềm, độ đàn hồi tốt, chống trơn trượt</li><li>Kiểu dáng giày thể thao nam cổ thấp</li><li>Màu sắc: Kem - Đen</li><li>Size: 39 - 40- 41 - 42 -43</li><li>Xuất xứ: Việt Nam&nbsp;</li></ul>', N'mwc (3).jpg', N'mwc (1).jpg', N'mwc.jpg', N'mwc (2).jpg', N'mwc (4).jpg', 1200000, 567, 271, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (2, 1, 2, N'GIÀY THỂ THAO ADIDAS NMD R2 BLACK RED', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'2.jpg', NULL, NULL, NULL, NULL, 1500000, 567, 232, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (3, 2, 2, N'DÉP QUAI NGANG ADIDAS ADILETTE LITE WHITE BIG LOGO ADIDAS', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'3.jpg', NULL, NULL, NULL, NULL, 1100000, 893, 345, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (4, 1, 2, N'GIÀY ADIDAS ORIGINALS STAN SMITH MEN''S SHOES M20324', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'4.jpg', NULL, NULL, NULL, NULL, 4000000, 726, 334, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (5, 2, 1, N'GIÀY THỂ THAO NIKE AIRFORCE 1 WORLD WIDE GOLD', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'5.jpg', NULL, NULL, NULL, NULL, 3800000, 803, 234, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (6, 1, 1, N'GIÀY THỂ THAO NIKE NEW BALANCE 997 GREY BLACK', N'<p>giày thế thao</p>', N'item-6.jpg', N'ON-Cloudsurfer_02-sideview-768x1024-landscape.jpg', N'fullsizeoutput_5cfb.jpg', N'2017_06_key.jpg', NULL, 2190000, 827, 827, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (7, 2, 5, N'Giày Thể Thao Nam Varsace Diameter Vassell Casual', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'item-8.jpg', N'BJpRPoAe310rVVFyybXRVCHqPPEZNzCUzbX0NLNv.jpg', N'mzzsMwXJ58GDFHwXji9Phd6cBfZmUAR0PipmnBUt.jpg', N'z0N6xKRBpGvSK5EMhKGcd86xcczGYP6QVHT6bxNq.jpg', NULL, 2865000, 873, 873, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (8, 1, 4, N'GIÀY THỂ THAO LACOSTE AIR MONARCH IV MÀU ĐEN TRẮNG', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'9b73619a7b20df6020a9dc0eaa8034aa.jpg', N'1582a4dbdbffc311a782629015416452.jpg', N'80e624326d8964a1b926fb3dd16ceaea.JPG', N'a4d4fe02a498e1655070ac2a78a34666.jpg', NULL, 3900000, 643, 123, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (9, 1, 5, N'Giày Versace Men''s Moab 2 Vent Hiking ', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'item-9.jpg', N'81h9wTQ3xLL.jpg', N'716bIltvvmL.jpg', N'81h9wTQ3xLL.jpg', NULL, 2165000, 999, 999, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (10, 2, 3, N'DÉP GUCCI LEATHER-TRIMMED LOGO-PRINT RUBBER SLIDES MÀU ĐEN', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'10.jpg', NULL, NULL, NULL, NULL, 6500000, 768, 234, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (11, 2, 3, N'GIÀY SNEAKER GUCCI BASKETS EN TOILE GG SUPREME ACE POUR HOMME MÀU XÁM', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'90_1639678022_Nike-Air-Jordan-1-Low-Bred-Toe.jpg', N'90_1639678026_Nike-Air-Jordan-1-Low-Bred-Toe-2-900x900.jpg', N'90_1639678029_Nike-Air-Jordan-1-Low-Bred-Toe-3-900x900.jpg', N'90_1639678030_Nike-Air-Jordan-1-Low-Bred-Toe-4-900x900.jpg', NULL, 14500000, 853, 727, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (12, 1, 2, N'Giày Thể Thao Adidas Alpha Bounce Instinct 9th Generation Ee4160', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'mwc (3).jpg', N'82ae81e7ab4fe70e58ad72c3a68a8c65.jpg', N'640a494d7139a338e04edd138a6e48d1.jpg', N'11e7c31bdd1c3a4a98211b9a596c2141.jpg', NULL, 2999999, 683, 683, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (14, 1, 1, N'GIÀY THỂ THAO NIKE AIRFORCE 1 WORLD WIDE GOLD', N'<p><i><strong>Giày Nike Flyknit Lunar 3 là sự lựa chọn tuyệt vời cho những bước chạy đường dài.&nbsp;</strong></i><a href="https://myshoes.vn/giay-nike"><i><strong>Nike</strong></i></a><i><strong>&nbsp;đã thiết kế lại phần upper giúp người sử dụng cảm thấy thoái mái hơn bao giờ hết, đặc biệt với việc chạy ở các cuộc đua marathon đường dài.</strong></i></p><p>Thiết kế upper Flynit mới tạo cảm giác nhẹ không thể tin được, cùng với độ ôm khít vào cổ chân vừa phải giúp việc chi chuyển vô cùng thoải mái dễ chịu. Bộ đệm&nbsp;Lunarlon tạo cảm giác như đi trên mây, rất nhẹ nhàng. Tất cả công nghệ trên biến giày Nike Flyknit Lunar 3&nbsp;trở thành sự lụa chọn tuyệt vời cho những ai yêu thích chạy bộ. Ngoài ra,&nbsp;Nike Flyknit Lunar 3 rất phù hợp với việc sử dụng hàng ngày như đi chơi, đi làm đều thoải mái.</p><p><strong>Giày Nike Flyknit Lunar 3 chính hãng tại&nbsp;</strong><a href="https://myshoes.vn/"><strong>Myshoes.vn</strong></a><strong>&nbsp;được nhập khẩu chính hãng qua đường hàng không. Full box, đầy đủ phụ kiện.</strong></p><p><img src="https://myshoes.vn/image/data/product10/11.8.17/giay-nike-flyknit-lunar-3-nam-cam-01.JPG" alt=""></p><p><img src="https://myshoes.vn/image/data/product10/11.8.17/giay-nike-flyknit-lunar-3-nam-cam-02.JPG" alt=""></p><p><img src="https://myshoes.vn/image/data/product10/11.8.17/giay-nike-flyknit-lunar-3-nam-cam-03.JPG" alt=""></p><p><img src="https://myshoes.vn/image/data/product10/11.8.17/giay-nike-flyknit-lunar-3-nam-cam-04.JPG" alt=""></p><p><img src="https://myshoes.vn/image/data/product10/11.8.17/giay-nike-flyknit-lunar-3-nam-cam-05.JPG" alt=""></p>', N'item-14.jpg', N'giay-nike-flyknit-lunar-3-nam-cam-04-800x800w.jpg', N'giay-nike-flyknit-lunar-3-nam-cam-02-800x800w.jpg', N'giay-nike-flyknit-lunar-3-nam-cam-05-800x800w.jpg', NULL, 4854000, 213, 213, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (15, 1, 2, N'DÉP NIKE BENASSI JDI SANDALS WHITE/WOLF GREY MÀU TRẮNG XÁM', N'<h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'item-15.jpg', N'-sneakers-trainers-for-man-women-in-uk-europe-eu-germany-de-03-700x450_1dcfa29b8f8a426cb46957f0428b8768.jpg', N'nike-air-more-uptempo-flax-aa4060-200-1_c3c0ed872a5842659b4780e55c47fac2.jpg', N'e-uptempo-_96-prm-_flax-flax---phantom---gum-light-brown_-aa4060-200_3_96635ab4cc044510ad9b445185cee03e.jpg', NULL, 4500000, 834, 834, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (16, 2, 1, N'Giày Nikethể thao nữ phối màu gót pha sơn', N'<h2>Giới thiệu Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm tại E3 Audio Miền Nam</h2><p>Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm</p><figure class="image"><img src="https://cf.shopee.vn/file/d8d624dd0bfd3dd9abd0ab3a9eb128a5" alt="Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm"></figure><p><br>- Chất liệu : Da pha lưới cực êm cực thoải mát<br>- Đế cao su<br>- Đế 6 phân<br>- Màu sắc :Hồng , Xanh lá, Xanh dương<br>- Size 35-39</p><figure class="image"><img src="https://cf.shopee.vn/file/069fbbe9f1694aa119e8027ed172d837" alt="Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm"></figure><p><br>- Lên chân cực chất và rất điệu đà<br>========================<br>️ SỬ DỤNG VÀ BẢO QUẢN<br>️ Sản phẩm phù hợp đi học, đi chơi, Đi biển, Dã ngoại ... rất trẻ trung và năng động...<br>️ Giặt khô, lau chùi thoải mái</p><figure class="image"><img src="https://cf.shopee.vn/file/0a71f025d43424d4512e952f8f628b0a" alt="Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm"></figure><p><br>========================<br>️ CHUẨN LỰA CHỌN SIZE PHÙ HỢP :<br>Chiều dài bàn chân Size số :<br>==&gt; 22 đến 22.5 cm 35<br>==&gt;22.5 đến 23 cm 36</p><figure class="image"><img src="https://cf.shopee.vn/file/b88ac19ad1b52415596d0d60c732c012" alt="Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm"></figure><p><br>==&gt;23 đến 23.5 cm 37<br>==&gt;23.5 đến 24 cm 38<br>==&gt; 24 đến 24.5 cm 39<br>Chúc bạn lựa chọn cho mìh 1 đôi giày ưng ý nhé !<br>========================</p><figure class="image"><img src="https://cf.shopee.vn/file/258f41136be75e004031247f759a043d" alt="Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm"></figure><p><br>LỢI ÍCH KHI MUA HÀN TẠI SHOP :<br>-Mua 1 sản phẩm cũng được giá sỉ<br>-Sỉ ri (đủ sz) ib shop tạo combo để giảm giá ship<br>-Nhận hàng thanh toán mua bán an toàn<br>-Đổi trả nếu sản phẩm nhận được lỗi hoặc nhầm mẫu</p><figure class="image"><img src="https://cf.shopee.vn/file/bb0be2310b393a645992f893e3dd8e6b" alt="Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm"></figure><p><br>-Được hoàn tiền nếu đơn hàng thiếu sản phẩm (áp dụng quay video khi bóc hàng với đơn trên 2 đôi)<br>LIÊN HỆ: ZALO/CALL/SMS: 0986.288.809<br>=======================<br>LƯU Ý:<br>- Quý khách hàng vui lòng chọn đúng size số, màu sắc theo phân loại rồi đặt hàng(Shop không nhận đặt hàng qua tin hay ghi chú)để tránh nhầm lẫn khi gửi hàng cho quý khách</p><figure class="image"><img src="https://cf.shopee.vn/file/d959d01d82a541cb07b98ae222f89a3c" alt="Giày sneakers thể thao nữ phối màu gót pha sơn siêu hót trend của năm"></figure><p><br>- Hàng đổi trả vui lòng chưa đi chưa bẩn có nguyên túi hộp nếu có</p>', N'giay.jpg', N'giay2.jpg', N'giay4.jpg', N'giay5.jpg', N'giay.jpg', 1217000, 527, 342, N'0         ', N'<p>New</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (18, 2, 3, N'Giày New Gucci 550 ''Au Lait'' BBW550WA', N'<p><strong>GIÀY UNISEX PUMA SLIPSTREAM CORD</strong></p><p>Trở lại năm 1987, OG PUMA Slipstream Lo xuất hiện với tư cách là một đôi giày thể thao bóng rổ. Slipstream Cord là một phiên bản làm lại của bản gốc mang lại nguồn năng lượng hoàn toàn mới cho trò chơi trong khi vẫn giữ nguyên nguồn gốc thể thao của OG. Đôi giày nổi bật với lớp phủ da lộn cùng hoa văn giống như vải nhung sang trọng.</p><p><strong>THÔNG SỐ&nbsp;</strong></p><ul><li>Phần trên (upper): tổng hợp</li><li>Kết hợp lớp phủ da lộn</li><li>Đế giày: cao su</li><li>Mã sản phẩm:&nbsp;39210901</li></ul>', N'8deeec17fd387aacf8cf17aaf458ad73_65c7288ca63c44968f504054b79698bd.jpg', N'370315859f0c6c91b54f69fdafe846fe_c2202d6c24ef4713957842ba6a77e680.jpg', N'a4e587ba9af79961ed4561f50d4f4191_1f790a8411eb4c82850ed8f4eecad05d.jpg', N'new-balance-550-au-lait-w-produc_7a7c837f6a4245b498433d0b37ffd143.jpg', NULL, 23423423, 642, 642, N'0         ', N'<p>new</p>')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (19, 2, 3, N'Giày Nữ Gucci x Disney Rhyton ''Donald Duck''', N'<p><img src="https://cdn.tgdd.vn/2022/04/Sports/Images/2/logo-adidass-216x78.png" alt="Adidas"></p><p>- Thương hiệu của Đức.</p><p>- Được thành lập vào năm 1924.</p><p>- Thành tựu: Thương hiệu giày thể thao đứng thứ 2 thế giới chỉ sau Nike, tính đến năm 2020.</p><p>- Các dòng sản phẩm chính: <a href="https://www.avasport.com/giay">giày thể thao</a>, <a href="https://www.avasport.com/quan-ao">quần&nbsp;áo thể thao</a> và <a href="https://www.avasport.com/phu-kien-the-thao">phụ kiện thể thao</a> phục vụ cho nhu cầu luyện tập các môn thể thao phổ biến, ở mọi độ tuổi và giới tính.</p><h2>Thông tin sản phẩm</h2><p>&nbsp;</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-duoc-dung-chat-tay.png"></p><p>Không dùng thuốc tẩy</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/Tranh-mat-troi.png"></p><p>Tránh phơi trực tiếp dưới ánh nắng mặt trời</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-tay.png"></p><p>Giặt tay</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/ui-o-nhiet-do-thap.png"></p><p>Ủi với nhiệt độ thấp</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/giat-bang-nuoc-khoang-40-do.png"></p><p>Giặt bằng nước có nhiệt độ khoảng 40 độ C</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-xa-phong.png"></p><p>Không ngâm trong xà phòng quá 1h trước khi giặt</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-say-kho.png"></p><p>Không sấy khô</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/chat-tay-rua-nhe.png"></p><p>Sử dụng chất tẩy rửa nhẹ</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ui-len-vet-in.png"></p><p>Không ủi lên hình in</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-giat-cung-san-pham-khac-mau.png"></p><p>Không giặt chung với sản phẩm khác màu</p><p><img src="https://cdn.tgdd.vn/ValueIcons/14/khong-ngam-quan-ao-trong-nuoc-qua-lau.png"></p><p>Không ngâm trong nước quá 1h trước khi giặt</p>', N'item-16.jpg', N'giay-gucci-disney-x-gucci-donald-duck-rhyton-6-548x400.jpg', N'giay-gucci-disney-x-gucci-donald-duck-rhyton-5-548x400.jpg', N'giay-gucci-disney-x-gucci-donald-duck-rhyton-2.jpg', NULL, 1800000, 847, 847, N'0         ', N'<p>Giày Nữ</p>')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/13/2023 2:41:24 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/13/2023 2:41:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/13/2023 2:41:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/13/2023 2:41:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/13/2023 2:41:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/13/2023 2:41:24 PM ******/
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
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([IdDonHang])
REFERENCES [dbo].[DonHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham1] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham1]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_AspNetUsers] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_AspNetUsers]
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
