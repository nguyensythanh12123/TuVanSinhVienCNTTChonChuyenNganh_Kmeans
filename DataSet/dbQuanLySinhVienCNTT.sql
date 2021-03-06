use master
go
create database [dbQuanLySinhVienDH]
go
USE [dbQuanLySinhVienDH]
GO
/****** Object:  Table [dbo].[chuyenNganh]    Script Date: 12/31/2020 5:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chuyenNganh](
	[maChuyenNganh] [char](10) NOT NULL,
	[tenChuyenNganh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DS_SinhVien]    Script Date: 12/31/2020 5:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DS_SinhVien](
	[MSSV] [char](10) NULL,
	[HoTen] [nvarchar](max) NULL,
	[NMLT] [float] NULL,
	[LTHDT] [float] NULL,
	[CTDL] [float] NULL,
	[CSDL] [float] NULL,
	[TH_CSDL] [float] NULL,
	[HQT_CSDL] [float] NULL,
	[HDH] [float] NULL,
	[KTMT] [float] NULL,
	[MMT] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/31/2020 5:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMH] [char](10) NOT NULL,
	[tenMH] [nvarchar](100) NULL,
	[soTC] [int] NULL,
	[maChuyenNganh] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[chuyenNganh] ([maChuyenNganh], [tenChuyenNganh]) VALUES (N'CNPM      ', N'Công nghệ phần mềm')
INSERT [dbo].[chuyenNganh] ([maChuyenNganh], [tenChuyenNganh]) VALUES (N'HTTT      ', N'Hệ thống thông tin')
INSERT [dbo].[chuyenNganh] ([maChuyenNganh], [tenChuyenNganh]) VALUES (N'MMT       ', N'Mạng máy tính')
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170002', N'Phạm Hoàng Ánh', 3.1, 2.9, 2.9, 4.9, 7.9, 5.1, 4.9, 4.3, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170005', N'NGUYỄN HOÀNG QUỐC BẢO', 6, 7.1, 3.5, 5.4, 6.2, 4.9, 5.9, 5, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170006', N'PHẠM TRẦN GIA BẢO', 8.2, 7.8, 4.2, 8.8, 9.1, 7.3, 5.3, 6.5, 5.65)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170007', N'LÂM QUỐC BẢO', 4.3, 5.4, 3.5, 2.2, 4.5, 3.6, 5.5, 4.2, 4.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170008', N'TRẦN THANH BÌNH', 4.8, 7.3, 2.1, 6.3, 6, 6, 5.6, 6.8, 4.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170009', N'TRẦN THANH CẢNH', 8.3, 9, 4.5, 9.2, 7.7, 6.5, 7.2, 8.7, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170016', N'NGUYỄN THÀNH ĐẠT', 8, 8.9, 7.6, 9.9, 7.7, 7.4, 7.1, 7.7, 6.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170017', N'DIỆP CHẤN ĐẠT', 7.2, 8.6, 3, 7.6, 7.8, 4.9, 6.4, 5.6, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170018', N'HỨA TÔN ĐẠT', 9.1, 0, 3.8, 6.4, 5.7, 6.4, 6.7, 4.8, 5.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170019', N'TRẦN TẤN ĐẠT', 5.3, 3.7, 2, 5.8, 8.2, 5.6, 5.5, 6.2, 5.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170020', N'HỒ VĂN ĐẠT', 8, 6.2, 3.9, 5.7, 7.2, 5.5, 5.2, 5.4, 4.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170021', N'NGUYỄN TẤN ĐẠT', 7.2, 5.4, 4.4, 6.6, 5.5, 5.4, 5.5, 5.6, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170023', N'ĐỖ THỊ MỸ DIỄM', 7.2, 5.4, 4.4, 6.6, 5.5, 5.4, 5.5, 7.2, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170025', N'ĐÀO TRẦN THANH ĐÔNG', 7.6, 5.3, 3.2, 5.4, 7.3, 5.5, 4.4, 5.6, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170029', N'ĐẶNG XUÂN DƯƠNG', 8.6, 8.5, 6.3, 6.1, 8.2, 4.1, 5.7, 5.7, 3.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170031', N'VŨ DUY DƯƠNG', 9.2, 9.1, 9.4, 9, 8, 6.3, 6.9, 6.1, 7.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170037', N'LÊ MINH DUY', 4.5, 8.5, 3.3, 7.8, 8.8, 7.8, 7.2, 6.5, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170039', N'NGUYỄN THỊ HỒNG GẤM', 4.3, 7.3, 4.3, 6, 7.2, 5, 0, 6.9, 0)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170040', N'PHAN HOÀNG GIA', 4.4, 3, 2.9, 3.7, 6.5, 5.6, 5.7, 6.6, 6.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170043', N'NGUYỄN NGỌC KHÁNH HÒA', 7.5, 7.7, 2.7, 5.1, 5.8, 5.6, 6, 6.8, 5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170044', N'LÊ VĂN HẢI', 5.2, 0, 4.9, 3.7, 5, 7.2, 5.6, 5.6, 5.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170045', N'BÙI NGUYỄN QUANG HẢI', 8.1, 7.3, 4.2, 7.6, 8.8, 6.9, 6.5, 6.7, 6.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170046', N'ĐẶNG QUỐC HẢI', 7, 8.9, 4.2, 8.2, 7.2, 6.6, 6.3, 6.9, 5.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170047', N'NGUYỄN HỮU TỨ HẢI', 8.3, 8.6, 6.3, 6, 8.8, 6.5, 5.7, 6.5, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170049', N'VÕ ANH HÀO', 9.3, 8.4, 3.1, 6.6, 0, 6.9, 6.9, 5.6, 6.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170050', N'TRỊNH NHẬT HÀO', 6, 4.5, 3.7, 8.1, 7.8, 7.1, 5.4, 7.4, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170051', N'NGUYỄN NGỌC HIỀN', 5.4, 1.2, 4.9, 6.6, 6.8, 6.3, 4.8, 5.6, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170052', N'HỒ ĐỨC HIẾU', 5, 6.76, 2.8, 7.3, 8.8, 7, 5.4, 5.6, 3.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170053', N'NGUYỄN TRUNG HIẾU', 6.9, 5.1, 3.5, 5.3, 5.5, 5.2, 6, 4.4, 4.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170054', N'ĐINH HOÀNG HIẾU', 6.7, 8.3, 2.8, 5.9, 8.7, 6.1, 5.5, 5.6, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170058', N'NÔNG NGỌC HOÀNG', 7.9, 8.5, 6.1, 8.5, 8.4, 6.8, 6.8, 6.5, 5.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170061', N'NGUYỄN NHƯ HOÀNG', 4.9, 4, 2.4, 5.4, 6.9, 6.2, 5.2, 5.6, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170064', N'THÁI KIM HÙNG', 4.9, 8.8, 6.5, 7, 8.8, 7.4, 5.7, 6.5, 7.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170065', N'HUỲNH KỲ HÙNG', 4.3, 6.1, 4.5, 3.9, 6.5, 4.1, 3.7, 5.6, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170067', N'ĐÀO TUẤN HÙNG', 3.8, 5.8, 2.5, 4.1, 7.3, 5.5, 5.6, 5.9, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170069', N'LÊ NGỌC HƯNG', 2.4, 5.7, 4.4, 5, 7.5, 6, 6.3, 6.1, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170071', N'LÝ TÙNG QUANG HUY', 5.7, 7.2, 2.8, 5.1, 7.4, 6.2, 6.4, 6.5, 5.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170072', N'NGUYỄN QUANG HUY', 8.7, 7.6, 7.2, 8.6, 7.7, 4.5, 5.9, 5.3, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170074', N'HOÀNG VĨNH HUY', 5.2, 6.2, 4, 6, 5.2, 4, 4.4, 6.1, 5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170076', N'PHẠM QUANG HUY', 5, 5.2, 2.9, 7.2, 7.8, 6.7, 6.1, 4.5, 4.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170077', N'TRẦN QUỐC HUY', 2.9, 7.3, 5.6, 7.5, 5.4, 6.4, 5.5, 5.6, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170078', N'PHẠM QUANG KHA', 4, 5.5, 4.2, 6.3, 9.1, 4, 6.8, 5.8, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170081', N'LÊ QUỐC KHÁNH', 7.7, 7.3, 4.5, 5.5, 6.5, 5.5, 0, 6.2, 3.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170082', N'HUỲNH NGỌC KHÁNH', 5.5, 7, 5.2, 7.6, 7.7, 6.2, 6.8, 5.7, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170083', N'NGUYỄN ANH KHOA', 4.8, 6.3, 4.7, 0, 4.8, 5.9, 4.8, 5.2, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170086', N'HỒ ANH KIỆT', 6.49, 4.6, 0, 4.1, 0, 5.77, 5.5, 5.6, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170089', N'TRẦN HỮU NGỌC LÂM', 6.1, 7.6, 3.4, 5.7, 8, 5.1, 5.4, 7, 4.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170090', N'LONG THỊ LOAN', 3.6, 6.76, 4.9, 6.3, 2.5, 3.9, 4.5, 1.2, 4.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170091', N'TRẦN QUANG LỘC', 7.4, 9.3, 5.5, 7.8, 9.5, 6.7, 7.8, 6.9, 7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170093', N'NGUYỄN NGỌC LONG', 9.2, 8.3, 3.5, 8.5, 9.2, 6, 7.1, 6.3, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170094', N'TRẦN BẢO LONG', 5.3, 7.6, 4.6, 5.7, 7.8, 5.4, 5.8, 5.6, 5.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170095', N'PHẠM THÀNH LUÂN', 4.7, 7.7, 2.1, 5.3, 5, 6.2, 4.6, 5.6, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170097', N'TRẦN XUÂN LỰC', 4.1, 4.1, 5.1, 7.5, 9.2, 7, 6.4, 6.3, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170103', N'LÊ HỒNG MINH', 9.3, 10, 8.3, 9.3, 8.7, 6.9, 8.2, 7.9, 5.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170104', N'ĐÀO HỮU MINH', 6.5, 6.6, 1.5, 6.5, 4.2, 5, 6.2, 5.6, 4.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170105', N'VÕ TRUNG NAM', 7.6, 8.2, 7.2, 8, 7.5, 5.5, 7.7, 5.6, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170106', N'TRỊNH HOÀI NAM', 4.2, 4.1, 1.8, 4, 6, 5.3, 4.6, 5.6, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170107', N'NGUYỄN HẢI NAM', 5.6, 6.2, 2.3, 6.4, 7.2, 4.6, 5.2, 4.8, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170110', N'NGUYỄN THÀNH NGHIỆP', 1.9, 7.3, 4.7, 5.2, 3.5, 4.2, 5.4, 5.2, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170114', N'NGUYỄN TÚ NGUYÊN', 8.6, 9.7, 5.3, 8.6, 9.8, 6.7, 7, 5.6, 6.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170115', N'HOÀNG THÁI THANH NHÀN', 7.3, 8, 6, 8.6, 8, 6.1, 7.1, 5.6, 4.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170116', N'NGUYỄN PHAN TRÍ NHÂN', 2.3, 3.7, 2.2, 1.9, 6.6, 5, 5.5, 4, 3.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170118', N'MAI THÀNH NHÂN', 3.2, 6, 3.9, 4, 7.5, 6.1, 7.2, 6.5, 7.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170119', N'ĐẶNG HỮU NHÂN', 6.5, 7.8, 5.6, 7.2, 6.3, 5.4, 5.2, 5.6, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170120', N'THÁI HỮU NHÂN', 9.3, 8, 7.6, 8.6, 8.4, 6.6, 6.6, 6.6, 6.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170141', N'NGUYỄN HỒNG QUANG', 7.9, 7, 4.1, 5.5, 7.8, 5.3, 5.9, 6.2, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170144', N'NGUYỄN HỮU QUỐC', 7.1, 8.7, 3.7, 7.8, 5.8, 6.3, 0, 6.7, 0)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170146', N'NGUYỄN HOÀI SANG', 8.4, 6.6, 2.2, 8.4, 7.3, 5.9, 6.4, 6.5, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170148', N'NGUYỄN BẢO SANG', 8.4, 6.3, 2.6, 6.3, 6.7, 5.3, 6, 5.1, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170149', N'NGUYỄN CHÍ SANH', 7.4, 9.9, 5.1, 8.3, 9.3, 5.9, 5.8, 6.7, 4.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170150', N'NGÔ NGỌC SINH', 8.7, 7.3, 2.8, 8.7, 4.3, 5.2, 4.9, 6.8, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170155', N'PHAN ĐỨC TÀI', 8.6, 7.3, 2.4, 6.1, 6.5, 5.8, 3.4, 6.3, 2.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170157', N'VŨ HOÀNG TÂM', 6.6, 7.6, 3.7, 4.6, 5.6, 5.5, 0, 5.2, 4.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170159', N'NGUYỄN TẤN', 6.3, 6.76, 4.9, 5.6, 8, 5.2, 5.2, 5.6, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170160', N'NGUYỄN THANH TẤN', 8.1, 7.9, 4.5, 8.2, 4.7, 6.4, 0, 5.6, 4.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170162', N'NGÔ DUY THÁI', 6.8, 7.8, 5.2, 8.3, 6.7, 5, 4.5, 5.1, 4.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170164', N'TRƯƠNG QUỐC THÁI', 9.7, 9.9, 6.5, 8.2, 8.5, 6.7, 8.4, 7.5, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170165', N'ĐỖ THỊ HỒNG THẮM', 5.5, 9.5, 5.6, 7.5, 7.8, 6.6, 7.4, 6.1, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170167', N'PHAN TẠI THẮNG', 2.1, 4, 2.6, 4.7, 5.7, 5.2, 4.9, 5.1, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170170', N'NGUYỄN CHÍ THANH', 8, 6.6, 4.2, 6.7, 6.8, 6.8, 5.5, 5, 3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170171', N'PHẠM THỊ THANH THANH', 4.9, 8.7, 4.9, 5.6, 7.5, 6.9, 5.4, 6, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170172', N'NGUYỄN VÕ TUẤN THÀNH', 8.4, 9.2, 2.4, 7.8, 8.8, 5.7, 5.2, 5.6, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170173', N'HỒ VĂN THÀNH', 4.8, 4.4, 2.9, 2.7, 5.5, 4.6, 4.9, 5.6, 4.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170177', N'VÕ HOÀNG THIỆN', 4, 8.4, 5.1, 6.5, 4.5, 5.7, 5.5, 4.9, 0)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170180', N'NGUYỄN NGỌC HỒNG THƠ', 6, 7.4, 3.6, 8, 8.2, 6.1, 5.2, 5.7, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170181', N'PHẠM ĐỨC THÔNG', 5.1, 5.8, 3.2, 7.3, 5.5, 5.9, 6.2, 5, 5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170182', N'TRẦN THỊ MINH THƯ', 7.1, 8.4, 4.9, 7.5, 6.2, 5.77, 6.4, 6.2, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170183', N'VÕ ANH THƯ', 5.2, 4.5, 1.8, 4.1, 7, 6, 4.6, 6.6, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170184', N'LƯU VĂN THƯƠNG', 8.2, 6.6, 6.8, 8.4, 8, 4.8, 6.8, 7, 0)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170185', N'ĐẶNG THƯƠNG', 5, 7.8, 2.5, 5.3, 3.2, 3.4, 4.1, 4.6, 1.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170187', N'PHẠM THỊ BÍCH THÙY', 8.4, 8.4, 8.3, 9, 8.8, 6.8, 6.9, 7, 7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170189', N'LÊ KHỔNG TIÊN', 3.9, 5.4, 2, 2.8, 6.2, 5, 4.5, 5.6, 5.65)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170191', N'ĐINH THÀNH TÍN', 8.9, 6.9, 4.1, 5.7, 7.3, 7, 5.8, 6.3, 4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170192', N'NGUYỄN LÊ TÍN', 9.9, 8, 8, 9.7, 8.5, 6.7, 8.5, 6.7, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170193', N'ĐOÀN TRUNG TÍNH', 0, 0.6, 4.9, 0, 0, 4.5, 0, 5.6, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170196', N'NGUYỄN TRÃI', 3.9, 1.8, 1.7, 6, 6.7, 5.6, 0, 6.8, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170197', N'NGUYỄN THỊ NGỌC TRÂM', 5, 6.2, 4.5, 4.3, 6.2, 4.3, 5.2, 5.3, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170199', N'LÊ THỊ THU TRANG', 8.1, 9.5, 6.5, 8, 7.5, 6.5, 6.8, 7.5, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170200', N'HUỲNH NGỌC TRÍ', 8.4, 8, 3.1, 8.7, 9.3, 4.7, 7.3, 5.6, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170202', N'KHƯU MINH TRIẾT', 6.6, 8, 4.9, 6.8, 8, 7.6, 6.1, 6.7, 6.2)
GO
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170204', N'NGÔ KHÁNH TRÌNH', 7.4, 8.7, 9, 8.9, 8.8, 7, 6.9, 7.8, 8.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170216', N'NGUYỄN ĐỨC TUẤN', 7.2, 6, 1.6, 6.4, 4.8, 5.5, 6.1, 5.6, 6.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170217', N'VƯƠNG HUỲNH THANH TUẤN', 6.6, 7.6, 6.7, 7.5, 7.6, 4.9, 6.2, 6, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170218', N'THÂN ANH TUẤN', 7.3, 8.5, 6.6, 8.5, 8.7, 5.7, 7, 7.2, 7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170219', N'ĐÀO CÔNG TUẤN', 6.2, 7.2, 3.1, 7.3, 4, 4.6, 4.7, 5.6, 5.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170221', N'NGUYỄN TRỌNG TUẤN', 7.7, 7.7, 6, 4.1, 7.2, 7.2, 6.2, 6.2, 7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170222', N'NGUYỄN TRẦN GIA TUẤN', 9, 6.3, 0, 8.5, 7.8, 7.7, 7.1, 6.6, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170223', N'MAI MINH TUẤN', 3.3, 2.4, 4.3, 0.5, 6.8, 5.77, 3.2, 5.6, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170226', N'PHAN KHẮC TÙNG', 2.4, 6, 2.1, 3.5, 6.7, 5.6, 5.3, 5.6, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170230', N'NGUYỄN THỊ PHƯƠNG UYÊN', 7.1, 7.9, 7.2, 8.4, 7.7, 5.8, 6.3, 5.8, 4.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170232', N'TRẦN THỊ THANH VÂN', 3.2, 3.8, 5.2, 6.6, 7, 5.5, 5.4, 5.3, 7.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170233', N'CAO NGỌC THẢO VI', 7.1, 5.1, 4.5, 8, 6.3, 5.9, 6.2, 5.6, 5.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170234', N'NGUYỄN QUỐC VIỆT', 8.6, 8.4, 9.7, 9.4, 9.7, 7.5, 8.3, 6.1, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170236', N'NGUYỄN TUẤN VŨ', 5.7, 8.7, 1.1, 0, 0, 5.6, 5.5, 5.4, 4.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170179', N'NGUYỄN HOÀNG THIỆN', 5.1, 2.6, 1.8, 4.6, 7.8, 5.1, 6.3, 5.6, 3.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001170195', N'TRẦN TẤN TÍNH', 0, 7.1, 4.9, 5.6, 8.3, 6, 6.6, 5.6, 5.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181111', N'LÊ CHÍ TOÀN', 8.7, 8.3, 7.5, 7.9, 8, 6.7, 8.6, 5.6, 5.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181111', N'Lữ Hoàng Hiếu', 5.8, 6.1, 5.5, 6.8, 6.3, 6.1, 5.3, 5.6, 5.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181115', N'Nguyễn Hữu Hiếu', 4.2, 6.5, 2.5, 3.5, 7.3, 5.2, 3.8, 3, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181116', N'Nguyễn Văn Hiếu', 5.4, 7, 4.1, 6.3, 8.2, 5.77, 5.3, 5.6, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180248', N'Phạm Lê Minh Hưng', 5.2, 7.9, 5.8, 7, 8.3, 6.2, 5.1, 4.5, 4.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181186', N'Trần Hữu Lợi', 10, 9.3, 8.1, 6.4, 9.3, 7.7, 6.4, 4.5, 8.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180494', N'Nguyễn Hoàng Minh', 8.7, 7.9, 5.8, 5.8, 7.6, 7.3, 4.1, 7.3, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181217', N'Phan Hoàng Nam', 6.6, 5.6, 4.3, 7.9, 8.7, 6.5, 6.3, 5.6, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180228', N'Nguyễn Huy Khôi Nguyên', 9.3, 8.5, 7.2, 8.7, 9.3, 7.6, 6.9, 6.2, 6.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181235', N'Tô Đình Nhân', 9.4, 9.3, 8.7, 9.1, 9.7, 7.5, 7.5, 7, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180356', N'Võ Hồ Tấn Tài', 8, 8.3, 6.9, 6, 8.5, 5.3, 0, 6.1, 4.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181201', N'Nguyễn Thành Long', 8.3, 9, 6.3, 4.7, 8.2, 7.5, 5.2, 6.2, 4.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181195', N'Tô Ngọc Long', 6.9, 6.5, 4.8, 8.9, 9, 4.8, 6.7, 6.4, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181219', N'Võ Trung Nam', 9.7, 8.3, 8.5, 8.8, 9.2, 8.4, 7.1, 6.8, 6.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181271', N'Đỗ Thanh Phương', 4.7, 7.7, 5.6, 7.5, 6.8, 6.2, 4.9, 3.9, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181291', N'Ngô Phan Như Quỳnh', 8.3, 6.5, 6.8, 9.7, 8.8, 6.9, 5, 6.7, 6.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181293', N'Cao Quang Sơn', 8.6, 6.4, 6.8, 6.6, 9.2, 7.2, 5.6, 5.9, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181300', N'Kan Bích Sơn', 8.7, 7.8, 7, 8.9, 8.3, 7.3, 3.8, 6.5, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181311', N'Nguyễn Lê Quốc Tấn', 8, 8.6, 6.7, 7.9, 9.2, 6.8, 5.5, 4.9, 6.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181325', N'Trần Thị Ngọc Thảo', 6.9, 8.7, 5.9, 8.8, 7.2, 8.4, 6.9, 7, 7.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181386', N'Tạ Quang Trung', 6.7, 8.2, 3.9, 7.2, 6.7, 6, 5.7, 6, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181402', N'Tái Thanh Tuấn', 6.3, 7.4, 5.7, 8.2, 9.3, 8.1, 7.1, 7.7, 7.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181260', N'La Vĩ Phong', 8.2, 7.4, 5.4, 9.5, 9.3, 6.4, 6.2, 6.2, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181272', N'Huỳnh Thanh Phương', 6.1, 6.7, 6.6, 8.8, 8, 5.9, 6.2, 5.6, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180233', N'Võ Hoàng Bảo Sơn', 8.5, 9.2, 5, 6.6, 7.8, 6.8, 3.3, 5.6, 6.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181295', N'Vũ Văn Hồng Sơn', 8.2, 7.9, 5.2, 7.2, 6.7, 5.77, 4.3, 5.6, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180419', N'Nguyễn Văn Thảo', 6.2, 8.9, 6.6, 7.3, 5.6, 6.4, 6.2, 5.6, 6.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181338', N'Nguyễn Đình Thìn', 7.7, 9, 8.6, 9.3, 9, 8.9, 6.7, 5.6, 7.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181368', N'Cai Bảo Toàn', 4.8, 5.6, 4.4, 7, 8.5, 5.8, 6.1, 5.6, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181370', N'Trần Quốc Toản', 9.1, 6, 5.1, 6, 4.8, 7, 6.1, 5.7, 4.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181387', N'Đoàn Huỳnh Quốc Trung', 6.9, 7.7, 5.6, 8.5, 6.5, 6.9, 4.1, 5.6, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181393', N'Huỳnh Tăng Anh Tú', 8.5, 9, 6.6, 9.4, 9.3, 7.5, 6.9, 6.7, 7.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181400', N'Phan Mạnh Tuấn', 6, 8.9, 6.9, 6, 8.8, 5.8, 5, 6.1, 5.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180442', N'Trần Quốc Tuấn', 8.9, 4, 5, 7.5, 6.3, 5.4, 6, 4.8, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180221', N'Đỗ Thanh Tùng', 5, 7.4, 7.4, 8.9, 7, 5.9, 7.2, 6.4, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180274', N'Trần Đình Văn', 2.9, 6.1, 7.6, 7.5, 9.3, 7.3, 7.3, 5.6, 7.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181003', N'Lê Nguyễn Long Quốc An', 8.3, 8.3, 5.3, 6.3, 9, 7, 5.9, 5.6, 7.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180224', N'Phùng An Bình', 4.7, 5.7, 7.4, 6.8, 8.8, 5.7, 5.6, 5.5, 6.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181034', N'Bùi Khắc Chung', 6.8, 6.1, 3.5, 4.5, 7.3, 5.5, 5.9, 5.6, 6.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180477', N'Dương Thanh Công', 3.7, 2, 4.3, 6.2, 4.3, 6.3, 4.8, 5.6, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181041', N'Dương Văn Đại', 8.2, 6.9, 5.2, 4, 7.7, 6.2, 4.5, 5.4, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180446', N'Thái Minh Đạt', 7.5, 2.8, 8, 7.2, 6.7, 5.1, 6, 4.1, 4.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180066', N'Võ Tấn Đức', 5.6, 5.8, 3.6, 4, 7.3, 4.8, 5.8, 6.3, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181062', N'Phan Thị Ngọc Dung', 6.2, 8.9, 8, 9.7, 8.7, 6.7, 7.7, 5.8, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181080', N'Đặng Văn Duy', 6.1, 7.1, 4.2, 7.5, 7.8, 0, 5.7, 7, 4.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181113', N'Trần Văn Hiếu', 8.9, 8.5, 6.8, 8.4, 8, 0, 6.3, 6.3, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181148', N'Phạm Mỹ Kha', 6.8, 6, 6.1, 7, 7.2, 6.9, 6, 7.1, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181161', N'Vũ Hữu Khôi', 7.2, 7.3, 5.6, 7.6, 7.3, 5.2, 5, 5.4, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180237', N'Phạm Minh Luân', 6.4, 7.1, 3.9, 7.8, 8.3, 6.2, 5.3, 5.8, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181191', N'Ngô Thành Long', 8.2, 9.7, 7.7, 8.2, 6.5, 7, 6.2, 6.3, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180124', N'Ngô Tấn Lộc', 9.5, 10, 8.5, 9.7, 9.7, 7.1, 6.1, 5.9, 6.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181205', N'Võ Thiên Lượng', 8.9, 6.6, 7.6, 7.3, 7.2, 5.4, 5.1, 5, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180490', N'Lê Quốc Bảo', 8.2, 7.5, 6.8, 6.6, 8.3, 4.8, 6.4, 7.1, 6.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180020', N'Nguyễn Chánh Bảo', 8.9, 8.1, 6, 8.5, 9, 6.4, 6.5, 8, 7.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180139', N'Nguyễn Quốc Bảo', 5.5, 8.2, 5.5, 8, 8.2, 4.5, 6.4, 6, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180457', N'Trần Tiến Đạt', 4.3, 7, 6.4, 5.4, 6.7, 5, 0, 5.9, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180455', N'Nguyễn Thị Thảo Duy', 5.8, 7.6, 4.6, 4.8, 6.3, 5.3, 5.6, 5.9, 5.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181083', N'Trần Văn Duy', 7.1, 6.9, 4.1, 4.9, 9.7, 6.2, 5.7, 5.9, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181093', N'Dương Đình Hải', 5.8, 8.2, 6.1, 7, 5.5, 3.1, 6.4, 5.3, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180409', N'Phạm Gia Hân', 5.2, 0, 2.5, 1.9, 0, 1.7, 6, 0, 0)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181107', N'Hà Bùi Thu Hiền', 4.8, 8.7, 4.4, 5.8, 6.5, 7.2, 6.1, 4.8, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181109', N'Lưu Minh Hiếu', 6, 7.5, 6.6, 6.6, 6.3, 6.2, 5.8, 4.9, 5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181114', N'Nguyễn Trọng Hiếu', 9.1, 9.9, 6.6, 8.3, 9, 5.9, 6.3, 7.5, 7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180874', N'Ngô Thanh Hoàng', 7.9, 0, 0.4, 0, 0, 6.1, 1.8, 0, 4.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180461', N'Nguyễn Huy Hoàng', 5.8, 8.5, 2.8, 6.9, 8.2, 0, 4.2, 6.2, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181206', N'Đặng Thị Thanh Ly', 5.6, 5.9, 7.2, 8.2, 8.2, 6.2, 5.7, 6.1, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181168', N'Lâm Vĩnh Kiệt', 6.2, 8.4, 7.2, 8.5, 8.7, 0, 5.8, 4.7, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181170', N'Nguyễn Thị Khánh Kiều', 8, 6.7, 4.6, 8.5, 6.7, 5.1, 6.2, 5.6, 5.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181242', N'Hoàng Minh Nhật', 8.1, 5.1, 4.7, 8, 8.3, 5.9, 5.9, 6.1, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181256', N'Ngô Vũ Tú Phi', 7.3, 6.3, 4.5, 5.3, 8, 5.2, 3.2, 6.4, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181298', N'Nguyễn Thanh Minh Sơn', 4, 6.5, 4.5, 5, 7.2, 6, 4.5, 5.5, 6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181383', N'Vũ Minh Trung', 8.7, 8.1, 6.7, 9.4, 8.5, 4.9, 4.8, 8.5, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181299', N'Tôn Thất Sự', 6, 7.6, 7.5, 7.5, 7.5, 0, 5.4, 7.1, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180413', N'Trần Hữu Thanh', 4.8, 4.1, 5.2, 4.4, 7.3, 0, 6, 5, 7.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180235', N'Nguyễn Phước Thiện', 5.6, 6.7, 4.9, 4.4, 6, 6, 0, 7.3, 7.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180151', N'Trương Anh Thư', 3.5, 4.6, 5.4, 5.5, 8, 5.2, 5.9, 6, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180355', N'Nguyễn Hữu Thức', 5.5, 5, 5, 5.3, 6, 4.9, 6.3, 5.4, 5.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180019', N'Phương Thị Như Ý', 4.9, 4.9, 4, 6.8, 8.8, 5.6, 5.2, 5.4, 2.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180384', N'Nguyễn Thị Thu Bích', 5.3, 5.5, 5.4, 4.4, 6.5, 5.5, 6.4, 6, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181030', N'Nguyễn Vũ Cảnh', 5.9, 4.1, 4.6, 4, 6.5, 3.9, 4.1, 6.1, 6.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181067', N'Nguyễn Ngọc Dũng', 4.8, 4.7, 4.8, 5.8, 5, 5, 4.7, 5.3, 5.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181090', N'Nguyễn Ngọc Hải', 7, 8.1, 8.6, 7.9, 7.5, 6.7, 6.2, 5.6, 6.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180302', N'Lê Quang Thắng', 8.7, 8.2, 5.1, 6.7, 6.5, 6.6, 4.8, 5.8, 6.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180271', N'Võ Ngọc Thái', 5.5, 4.1, 5.8, 5.1, 7.5, 5.1, 6.7, 5.6, 6)
GO
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181326', N'Nguyễn Thị Thu Thảo', 6.1, 6.3, 4.7, 7.8, 5, 4.4, 6.2, 4.8, 6.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181341', N'Nguyễn Đức Thịnh', 4.6, 4.7, 5.4, 4.7, 6, 4.1, 5, 6.1, 6.8)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180434', N'Ngô Hoàng Long', 7.7, 4.5, 6.3, 7.1, 8.5, 6.1, 6.2, 5.6, 6.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180053', N'Lê Quang Đình', 5.7, 4.5, 5.2, 7.7, 8.5, 5.77, 6.5, 5.6, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181255', N'Nguyễn Hồng Phi', 4.3, 2.8, 3.5, 5.8, 6, 5.7, 5.4, 5.6, 5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181259', N'Lê Hoài Phong', 4.8, 6.9, 4.7, 6.3, 6.6, 5.5, 6.9, 4.5, 5.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181342', N'Lê Ngọc Song Thịnh', 5.6, 7.1, 4.5, 6.4, 7.3, 5.9, 4.8, 6.1, 7.1)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181352', N'Trần Thị Anh Thư', 3.9, 4.9, 5.1, 5, 6, 5.2, 6.2, 4.3, 6.4)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181369', N'Phạm Song Toàn', 7.6, 7.9, 3.5, 7.7, 8.8, 6.1, 5.4, 4.7, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181375', N'Huỳnh Vĩ Trí', 7.2, 7, 5.2, 8.7, 6.4, 6.1, 5.7, 5.6, 5.2)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181398', N'Nguyễn Anh Tuấn', 9.4, 7.2, 6.7, 9, 8.5, 7, 6.8, 6.9, 5.7)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181056', N'Thân trọng Độ', 8.2, 5.3, 4.7, 6.6, 8.7, 6.2, 5.9, 6.3, 6.5)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180196', N'Phạm Minh Mẫn', 5.9, 5.3, 4.5, 5.9, 8.3, 5.1, 0, 4.5, 5.3)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180073', N'Ngô Huy Thắng', 5.9, 7, 5.8, 5.3, 5.7, 5.6, 5, 5.1, 7.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181005', N'Nguyễn Hoàng An ', 6.5, 6.4, 5.5, 7, 8.2, 6.7, 6.2, 4.6, 6.9)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001181013', N'Phan Hoàng Tuấn Anh', 6.6, 8.1, 3.9, 6.2, 8.7, 7.6, 3.4, 4.1, 6.6)
INSERT [dbo].[DS_SinhVien] ([MSSV], [HoTen], [NMLT], [LTHDT], [CTDL], [CSDL], [TH_CSDL], [HQT_CSDL], [HDH], [KTMT], [MMT]) VALUES (N'2001180282', N'Bùi Thị Như Hảo', 5.6, 8.7, 4.3, 8.2, 8, 7.4, 6.4, 5.6, 7.2)
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'HDH       ', N'Hệ Điều Hành', 3, N'MMT       ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'HQT_CSDL  ', N'Hệ Quản trị csdl', 3, N'HTTT      ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'KTMT      ', N'Kiến trúc máy tính', 2, N'MMT       ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'LT_CSDL   ', N'Cơ Sở Dữ Liệu', 3, N'HTTT      ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'LT_CTDLGT ', N'Cấu trúc Dữ Liệu và Giải Thuật', 3, N'CNPM      ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'LT_LTHDT  ', N'Lập trình hướng đối tượng', 3, N'CNPM      ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'LT_MMT    ', N'Mạng Máy Tính', 3, N'MMT       ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'LT_NMLT   ', N'Nhập môn lập trình', 3, N'CNPM      ')
INSERT [dbo].[MonHoc] ([maMH], [tenMH], [soTC], [maChuyenNganh]) VALUES (N'TH_CSDL   ', N'Cơ sở Dữ liệu', 1, N'HTTT      ')
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [fk_MH_CN] FOREIGN KEY([maChuyenNganh])
REFERENCES [dbo].[chuyenNganh] ([maChuyenNganh])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [fk_MH_CN]
GO
