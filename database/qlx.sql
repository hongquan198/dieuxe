USE [master]
GO
/****** Object:  Database [quanlixe]    Script Date: 12/2/2024 2:20:42 PM ******/
CREATE DATABASE [quanlixe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanlixe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\quanlixe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'quanlixe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\quanlixe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [quanlixe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanlixe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanlixe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanlixe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanlixe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanlixe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanlixe] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanlixe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [quanlixe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanlixe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanlixe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanlixe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanlixe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanlixe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanlixe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanlixe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanlixe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [quanlixe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanlixe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanlixe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanlixe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanlixe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanlixe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanlixe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanlixe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [quanlixe] SET  MULTI_USER 
GO
ALTER DATABASE [quanlixe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanlixe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quanlixe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quanlixe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [quanlixe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [quanlixe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [quanlixe] SET QUERY_STORE = OFF
GO
USE [quanlixe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/2/2024 2:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[User] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Sdt] [int] NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/2/2024 2:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ChucVuID] [int] NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[ChucVuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaiXe]    Script Date: 12/2/2024 2:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaiXe](
	[LaiXeID] [int] IDENTITY(1,1) NOT NULL,
	[HoTenLaiXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_LaiXe] PRIMARY KEY CLUSTERED 
(
	[LaiXeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LenhDieuXe]    Script Date: 12/2/2024 2:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LenhDieuXe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LaiXeID] [int] NULL,
	[BienKiemSoatID] [nvarchar](50) NULL,
	[HoTenNguoiDungXeID] [int] NULL,
	[ChucVuID] [int] NULL,
	[DiaDiemCongTac] [nvarchar](300) NULL,
	[NoiDungCongViec] [nvarchar](500) NULL,
	[CanBoDiCung] [nvarchar](50) NULL,
	[NgayDi] [date] NULL,
	[NgayVe] [date] NULL,
	[TongSoKMDaDi] [float] NULL,
	[NhienLieuDaCap] [float] NULL,
	[LoaiNhienLieu] [nvarchar](50) NULL,
	[TongSoKMThucTe] [float] NULL,
	[NhienLieuSuDungThucTe] [float] NULL,
	[NhienLieuConLai] [float] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_LenhDieuXe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDungXe]    Script Date: 12/2/2024 2:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDungXe](
	[HoTenNguoiDungXeID] [int] NOT NULL,
	[HoTenNguoiDungXe] [nvarchar](50) NULL,
	[DonViCongTac] [nvarchar](300) NULL,
 CONSTRAINT [PK_NguoiDungXe] PRIMARY KEY CLUSTERED 
(
	[HoTenNguoiDungXeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 12/2/2024 2:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[BienKiemSoatID] [nvarchar](50) NOT NULL,
	[TenBienKiemSoat] [nvarchar](50) NULL,
	[Xe] [nvarchar](50) NOT NULL,
	[DinhMuc100km] [float] NULL,
	[LoaiNhienLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Xe_1] PRIMARY KEY CLUSTERED 
(
	[BienKiemSoatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([User], [Password], [Email], [Sdt], [Role]) VALUES (N'Admin', N'1', N'hongquan1982002@gmail.com', 38318934, N'1')
INSERT [dbo].[Account] ([User], [Password], [Email], [Sdt], [Role]) VALUES (N'vanphong-stt', N'123456', N'guest@gmail.com', 111111, N'2')
GO
INSERT [dbo].[ChucVu] ([ChucVuID], [TenChucVu]) VALUES (1, N'Giám đốc')
INSERT [dbo].[ChucVu] ([ChucVuID], [TenChucVu]) VALUES (2, N'Phó giám đốc')
GO
SET IDENTITY_INSERT [dbo].[LaiXe] ON 

INSERT [dbo].[LaiXe] ([LaiXeID], [HoTenLaiXe]) VALUES (9, N'Hoàng Xuân Trường')
INSERT [dbo].[LaiXe] ([LaiXeID], [HoTenLaiXe]) VALUES (10, N'Vũ Hoàng Lịch')
INSERT [dbo].[LaiXe] ([LaiXeID], [HoTenLaiXe]) VALUES (11, N'Vũ Văn Phúng')
SET IDENTITY_INSERT [dbo].[LaiXe] OFF
GO
SET IDENTITY_INSERT [dbo].[LenhDieuXe] ON 

INSERT [dbo].[LenhDieuXe] ([ID], [LaiXeID], [BienKiemSoatID], [HoTenNguoiDungXeID], [ChucVuID], [DiaDiemCongTac], [NoiDungCongViec], [CanBoDiCung], [NgayDi], [NgayVe], [TongSoKMDaDi], [NhienLieuDaCap], [LoaiNhienLieu], [TongSoKMThucTe], [NhienLieuSuDungThucTe], [NhienLieuConLai], [Status]) VALUES (139, 9, N'3', 1, 1, N'Địa điểm 1', N'Công việc 1', N'3', CAST(N'2024-12-02' AS Date), CAST(N'2024-12-02' AS Date), 12, 1.4, N'A95', NULL, NULL, NULL, 0)
INSERT [dbo].[LenhDieuXe] ([ID], [LaiXeID], [BienKiemSoatID], [HoTenNguoiDungXeID], [ChucVuID], [DiaDiemCongTac], [NoiDungCongViec], [CanBoDiCung], [NgayDi], [NgayVe], [TongSoKMDaDi], [NhienLieuDaCap], [LoaiNhienLieu], [TongSoKMThucTe], [NhienLieuSuDungThucTe], [NhienLieuConLai], [Status]) VALUES (140, 9, N'4', 4, 2, N'Địa điểm 2', N'Công việc 2', N'4', CAST(N'2024-12-02' AS Date), CAST(N'2024-12-03' AS Date), 30, 4.4, N'A95', NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[LenhDieuXe] OFF
GO
INSERT [dbo].[NguoiDungXe] ([HoTenNguoiDungXeID], [HoTenNguoiDungXe], [DonViCongTac]) VALUES (1, N'Lê Trí Hà', N'Sở Thông tin và Truyền thông tỉnh Yên Bái')
INSERT [dbo].[NguoiDungXe] ([HoTenNguoiDungXeID], [HoTenNguoiDungXe], [DonViCongTac]) VALUES (2, N'Nguyễn Đoạt', N'Sở Thông tin và Truyền thông tỉnh Yên Bái')
INSERT [dbo].[NguoiDungXe] ([HoTenNguoiDungXeID], [HoTenNguoiDungXe], [DonViCongTac]) VALUES (3, N'Nguyễn Duy Khiêm', N'Sở Thông tin và Truyền thông tỉnh Yên Bái')
INSERT [dbo].[NguoiDungXe] ([HoTenNguoiDungXeID], [HoTenNguoiDungXe], [DonViCongTac]) VALUES (4, N'Nguyễn Thúc Mạnh', N'Sở Thông tin và Truyền thông tỉnh Yên Bái')
GO
INSERT [dbo].[Xe] ([BienKiemSoatID], [TenBienKiemSoat], [Xe], [DinhMuc100km], [LoaiNhienLieu]) VALUES (N'3', N'21A-002-90', N'Honda Civic', 12, N'A95')
INSERT [dbo].[Xe] ([BienKiemSoatID], [TenBienKiemSoat], [Xe], [DinhMuc100km], [LoaiNhienLieu]) VALUES (N'4', N'21A-003-84', N'Toyota Fortuner', 14.5, N'A95')
GO
ALTER TABLE [dbo].[LenhDieuXe]  WITH CHECK ADD  CONSTRAINT [FK_LenhDieuXe_ChucVu] FOREIGN KEY([ChucVuID])
REFERENCES [dbo].[ChucVu] ([ChucVuID])
GO
ALTER TABLE [dbo].[LenhDieuXe] CHECK CONSTRAINT [FK_LenhDieuXe_ChucVu]
GO
ALTER TABLE [dbo].[LenhDieuXe]  WITH CHECK ADD  CONSTRAINT [FK_LenhDieuXe_LaiXe] FOREIGN KEY([LaiXeID])
REFERENCES [dbo].[LaiXe] ([LaiXeID])
GO
ALTER TABLE [dbo].[LenhDieuXe] CHECK CONSTRAINT [FK_LenhDieuXe_LaiXe]
GO
ALTER TABLE [dbo].[LenhDieuXe]  WITH CHECK ADD  CONSTRAINT [FK_LenhDieuXe_NguoiDungXe1] FOREIGN KEY([HoTenNguoiDungXeID])
REFERENCES [dbo].[NguoiDungXe] ([HoTenNguoiDungXeID])
GO
ALTER TABLE [dbo].[LenhDieuXe] CHECK CONSTRAINT [FK_LenhDieuXe_NguoiDungXe1]
GO
ALTER TABLE [dbo].[LenhDieuXe]  WITH CHECK ADD  CONSTRAINT [FK_LenhDieuXe_Xe] FOREIGN KEY([BienKiemSoatID])
REFERENCES [dbo].[Xe] ([BienKiemSoatID])
GO
ALTER TABLE [dbo].[LenhDieuXe] CHECK CONSTRAINT [FK_LenhDieuXe_Xe]
GO
USE [master]
GO
ALTER DATABASE [quanlixe] SET  READ_WRITE 
GO
