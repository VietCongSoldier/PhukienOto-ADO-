USE [phukienoto]
GO
/****** Object:  Table [dbo].[bill_imports]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_imports](
	[bill_imports_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_imports_distributor_id] [int] NULL,
	[bill_imports_staff_id] [int] NULL,
	[bill_imports_date] [date] NULL,
	[bill_imports_total_payment] [float] NULL,
	[bill_imports_payments] [nvarchar](100) NULL,
	[bill_imports_note] [nvarchar](200) NULL,
	[bill_imports_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_imports_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_imports_details]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_imports_details](
	[imports_details_id] [int] IDENTITY(1,1) NOT NULL,
	[imports_details_imports_id] [int] NULL,
	[imports_details_product_id] [int] NULL,
	[imports_details_product_quantity] [int] NULL,
	[imports_details_product_unit] [nvarchar](200) NULL,
	[imports_details_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[imports_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_sales]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_sales](
	[bill_sales_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_sales_customer_id] [int] NULL,
	[bill_sales_staff_id] [int] NULL,
	[bill_sales_date_order] [date] NULL,
	[bill_sales_total_payment] [float] NULL,
	[bill_sales_payments] [nvarchar](100) NULL,
	[bill_sales__note] [nvarchar](200) NULL,
	[bill_sales_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_sales_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_sales_details]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_sales_details](
	[sales_details_id] [int] IDENTITY(1,1) NOT NULL,
	[sales_details_sales_id] [int] NULL,
	[sales_details_product_id] [int] NULL,
	[sales_details_product_quantity] [int] NULL,
	[sales_details_product_sale] [float] NULL,
	[sales_details_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sales_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cate_id] [int] IDENTITY(1,1) NOT NULL,
	[cate_name] [nvarchar](500) NOT NULL,
	[cate_img] [ntext] NULL,
	[cate_note] [nvarchar](500) NULL,
	[cate_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [nvarchar](200) NOT NULL,
	[customer_address] [ntext] NOT NULL,
	[customer_phone] [varchar](10) NOT NULL,
	[customer_mail] [varchar](100) NULL,
	[customer_note] [ntext] NULL,
	[customer_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[distributor]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[distributor](
	[distributor_id] [int] IDENTITY(1,1) NOT NULL,
	[distributor_name] [nvarchar](500) NOT NULL,
	[distributor_address] [nvarchar](500) NULL,
	[distributor_phone] [varchar](10) NULL,
	[distributor_mail] [varchar](255) NULL,
	[distributor_note] [ntext] NULL,
	[distributor_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[distributor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_cate_id] [int] NULL,
	[product_distributor_id] [int] NULL,
	[product_name] [nvarchar](800) NOT NULL,
	[product_img] [ntext] NULL,
	[product_price] [float] NULL,
	[product_sale] [float] NULL,
	[product_quantity] [int] NULL,
	[product_unit] [nvarchar](200) NULL,
	[product_note] [nvarchar](max) NULL,
	[product_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slide]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slide](
	[slide_id] [int] IDENTITY(1,1) NOT NULL,
	[slide_staff_id] [int] NULL,
	[slide_img] [ntext] NULL,
	[slide_link] [ntext] NULL,
	[slide_note] [nvarchar](200) NULL,
	[slide_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[staff_name] [nvarchar](200) NOT NULL,
	[staff_dateofbirth] [date] NOT NULL,
	[staff_address] [nvarchar](400) NOT NULL,
	[staff_phone] [varchar](10) NOT NULL,
	[staff_mail] [varchar](100) NULL,
	[staff_sex] [nvarchar](10) NOT NULL,
	[staff_levels] [nvarchar](100) NOT NULL,
	[staff_note] [ntext] NULL,
	[staff_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/12/2023 12:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[users_id] [int] IDENTITY(1,1) NOT NULL,
	[users_full_name] [nvarchar](100) NULL,
	[users_name] [varchar](50) NOT NULL,
	[users_password] [varchar](100) NOT NULL,
	[users_mail] [varchar](100) NOT NULL,
	[users_phone] [varchar](10) NOT NULL,
	[users_token] [varchar](max) NULL,
	[users_role] [nvarchar](50) NULL,
	[users_status] [nvarchar](100) NULL,
	[users_note] [nvarchar](100) NULL,
	[users_date_created] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[users_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (1, N'Ghế da', N'img1.png', N'ảnh mẫu ', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (2, N'Bảng điện thoại', N'img2.png', N'hehe', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (3, N'Giá đỡ điện thoại', N'img3.png', N'hehe', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (4, N'Bao da chìa khóa thông minh', N'img4.png', N'hehe', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (5, N'Bạt che nắng mưa', N'img5.png', N'hehe', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (6, N'Gương phụ ', N'img5.png', N'hehe', CAST(N'2023-04-05T00:55:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (7, N'Bọc da vô lăng', N'img5.png', N'hehe', CAST(N'2023-04-05T00:56:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (8, N'Đệm ô tô ', N'img5.png', N'hehe', CAST(N'2023-04-05T00:56:00' AS SmallDateTime))
INSERT [dbo].[category] ([cate_id], [cate_name], [cate_img], [cate_note], [cate_date_created]) VALUES (9, N'Anten Vây cá mập', N'5.jpg', N'hehe', CAST(N'2023-04-05T00:57:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (1, N'Trần Ngọc Tú', N'Trung Hưng-Yên Mỹ-Hưng Yên', N'0372082758', N'trantu143444@gmail.com', N'Khách hàng 1', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (2, N'Phan Hải An', N'Trung Hoà-Yên Mỹ-Hưng Yên', N'0859721391', N'phanan1@gmail.com', N'Khách hàng 2', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (3, N'Nguyễn Thị Dung', N'Tân Lập-Yên Mỹ-Hưng Yên', N'0981736310', N'nguyendung2@gmail.com', N'Khách hàng 3', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (4, N'Nguyễn Thị Duyên', N'Trung Hoà-Yên Mỹ-Hưng Yên', N'0968863733', N'nguyenduyen3@gmail.com', N'Khách hàng 4', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (5, N'Lưu Hữu Hải', N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0386559874', N'luuhai4@gmail.com', N'Khách hàng 5', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (6, N'Vũ Như Tuấn Hùng', N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0399981904', N'vuhung5@gmail.com', N'Khách hàng 6', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (7, N'Vũ Hưu Huy', N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0328875121', N'vuhuy6@gmail.com', N'Khách hàng 7', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_address], [customer_phone], [customer_mail], [customer_note], [customer_date_created]) VALUES (8, N'Đỗ Trọng Nghĩa', N'TT.Yên Mỹ-Yên Mỹ-Hưng Yên', N'0865632914', N'trongnghia7@gmail.com', N'Khách hàng 8', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[distributor] ON 

INSERT [dbo].[distributor] ([distributor_id], [distributor_name], [distributor_address], [distributor_phone], [distributor_mail], [distributor_note], [distributor_date_created]) VALUES (1, N'Nhà cung cấp Hoàng Việc', N'Trung Hoà-Yên Mỹ-Hưng Yên', N'0368259165', N'duongvuhoangviec@gmail.com', N'Nhà cung cấp vjp 1', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[distributor] ([distributor_id], [distributor_name], [distributor_address], [distributor_phone], [distributor_mail], [distributor_note], [distributor_date_created]) VALUES (2, N'Nhà cung cấp Nguyễn Thắng', N'Thị Trấn Yên Mỹ-Yên Mỹ-Hưng Yên', N'0353927164', N'nguyentrananhthang@gmail.com', N'Nhà cung cấp vjp 2', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[distributor] ([distributor_id], [distributor_name], [distributor_address], [distributor_phone], [distributor_mail], [distributor_note], [distributor_date_created]) VALUES (3, N'Nhà cung cấp Đăng Thắng', N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0334821905', N'vudangthang@gmail.com', N'Nhà cung cấp vjp 3', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[distributor] ([distributor_id], [distributor_name], [distributor_address], [distributor_phone], [distributor_mail], [distributor_note], [distributor_date_created]) VALUES (4, N'Nhà cung cấp Đặng Đạt', N'Trung Hoà-Yên Mỹ-Hưng Yên', N'0375017492', N'dangtuandat@gmail.com', N'Nhà cung cấp vjp 4', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[distributor] ([distributor_id], [distributor_name], [distributor_address], [distributor_phone], [distributor_mail], [distributor_note], [distributor_date_created]) VALUES (5, N'Nhà cung cấp Thanh Toàn', N'Vĩnh Khúc-Văn Giang-Hưng Yên', N'0341074925', N'lethanhtoan@gmail.com', N'Nhà cung cấp vjp 5', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[distributor] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (1, 1, 4, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 549000, 500000, 23, N'Chiếc', N'ghi chú sản phẩm 1', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (2, 2, 2, N'Bảng điện thoại cực chất', N'2.jpg', 455000, 420000, 33, N'Quyển', N'ghi chú sản phẩm 2', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (3, 3, 3, N'Giá đỡ điện thoại cao cấp chính hãng', N'6.jpg', 399000, 355000, 45, N'Quyển', N'ghi chú sản phẩm 3', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (4, 5, 5, N'Bạt phủ oto che nắng che mưa siêu bền', N'15.jpg', 777000, 750000, 77, N'Quyển', N'ghi chú sản phẩm 4', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (5, 3, 3, N'Giá đỡ điện thoại cao cấp chính hãng', N'7.jpg', 654000, 599000, 36, N'Quyển', N'ghi chú sản phẩm 5', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (6, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 255000, 22, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (7, 8, 1, N'Nệm hơi ô tô vải nhung cao cấp ', N'25.jpg', 999000, 555000, 33, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (8, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 325, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (9, 8, 1, N'Nệm hơi ô tô vải nhung cao cấp ', N'24.jpg', 999000, 555000, 65, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (10, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 234, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (11, 2, 1, N'Bảng điện thoại cực chất', N'3.jpg', 999000, 555000, 86, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (12, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'8.jpg', 999000, 555000, 798, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (13, 2, 1, N'Bảng điện thoại cực chất', N'4.jpg', 999000, 555000, 345, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (14, 4, 1, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'10.jpg', 999000, 555000, 7653, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (15, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 32, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (16, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'9.jpg', 999000, 269000, 354, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (17, 2, 1, N'Bảng điện thoại cực chất', N'2.jpg', 999000, 555000, 341, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (18, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 234, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (19, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'6.jpg', 999000, 199000, 346, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (20, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 645, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (21, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'7.jpg', 999000, 555000, 34345, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (22, 2, 1, N'Bảng điện thoại cực chất', N'4.jpg', 999000, 555000, 34, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (23, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 345, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (24, 2, 1, N'Bảng điện thoại cực chất', N'5.jpg', 999000, 555000, 345, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (25, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 345, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (26, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'8.jpg', 999000, 555000, 345, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (27, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 652, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (28, 4, 1, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'11.jpg', 999000, 555000, 2656, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (29, 5, 1, N'Bạt phủ oto che nắng che mưa siêu bền', N'16.jpg', 999000, 555000, 645632343, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (30, 2, 1, N'Bảng điện thoại cực chất', N'2.jpg', 999000, 555000, 345, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (31, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 7, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (32, 2, 1, N'Bảng điện thoại cực chất', N'3.jpg', 999000, 555000, 8, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (33, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'9.jpg', 999000, 555000, 9, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (34, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 4, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (35, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'6.jpg', 999000, 555000, 6, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (36, 5, 1, N'Bạt phủ oto che nắng che mưa siêu bền', N'15.jpg', 999000, 555000, 5, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (37, 2, 1, N'Bảng điện thoại cực chất', N'4.jpg', 999000, 555000, 1, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (38, 2, 2, N'Bảng điện thoại cực chất', N'5.jpg', 999000, 555000, 8, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (39, 1, 2, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 5, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (40, 4, 2, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'12.jpg', 999000, 555000, 6, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (41, 5, 3, N'Bạt phủ oto che nắng che mưa siêu bền', N'16.jpg', 999000, 555000, 45, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (42, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'7.jpg', 999000, 555000, 3, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (43, 2, 1, N'Bảng điện thoại cực chất', N'2.jpg', 999000, 555000, 5, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (44, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 6, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (45, 3, 1, N'Giá đỡ điện thoại cao cấp chính hãng', N'8.jpg', 999000, 555000, 4, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (46, 2, 1, N'Bảng điện thoại cực chất', N'3.jpg', 999000, 555000, 5, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (47, 1, 3, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 6, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (48, 4, 2, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'13.jpg', 999000, 555000, 2, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (49, 5, 3, N'Bạt phủ oto che nắng che mưa siêu bền', N'16.jpg', 999000, 555000, 6, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (50, 3, 2, N'Giá đỡ điện thoại cao cấp chính hãng', N'9.jpg', 999000, 555000, 1, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (51, 2, 1, N'Bảng điện thoại cực chất', N'4.jpg', 999000, 555000, 3, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (52, 1, 1, N'Ghế bọc da chính hãng cao cấp ', N'1.jpg', 999000, 555000, 45, N'Quyển', NULL, CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (53, 6, 1, N'Gương cầu lồi, gương phụ oto rõ nét', N'28.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T00:58:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (55, 6, 1, N'Gương cầu lồi, gương phụ oto rõ nét', N'28.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T00:59:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (56, 6, 1, N'Gương cầu lồi, gương phụ oto rõ nét', N'28.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T00:59:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (58, 6, 1, N'Gương cầu lồi, gương phụ oto rõ nét', N'28.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T00:59:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (59, 6, 1, N'Gương cầu lồi, gương phụ oto rõ nét', N'28.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T00:59:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (60, 6, 1, N'Gương cầu lồi, gương phụ oto rõ nét', N'28.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:00:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (61, 6, 1, N'Gương cầu lồi, gương phụ oto rõ nét', N'28.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:00:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (62, 4, 1, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'11.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:00:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (63, 4, 1, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'12.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:00:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (64, 4, 1, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'13.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:00:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (65, 4, 1, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', N'14.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:00:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (66, 7, 2, N'Bọc da vô lăng cao cấp sunny', N'19.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:02:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (67, 7, 1, N'Bọc da vô lăng cao cấp sunny', N'20.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (68, 7, 1, N'Bọc da vô lăng cao cấp sunny', N'21.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (69, 7, 1, N'Bọc da vô lăng cao cấp sunny', N'22.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (70, 7, 1, N'Bọc da vô lăng cao cấp sunny', N'23.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (71, 7, 1, N'Bọc da vô lăng cao cấp sunny', N'19.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (72, 7, 2, N'Bọc da vô lăng cao cấp sunny', N'20.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (73, 8, 2, N'Đệm ô tô vải nhung cao cấp ', N'24.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (74, 8, 1, N'Đệm ô tô vải nhung cao cấp', N'25.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (75, 8, 1, N'Đệm ô tô vải nhung cao cấp', N'26.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (76, 8, 1, N'Đệm ô tô vải nhung cao cấp', N'25.jpg', 21999000, 20999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:03:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (79, 8, 1, N'Đệm ô tô vải nhung cao cấp', N'24.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:06:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (80, 8, 1, N'Đệm ô tô vải nhung cao cấp', N'25.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:07:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (81, 9, 1, N'Anten Vây cá mập', N'27.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:07:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (82, 9, 1, N'Anten Vây cá mập', N'27.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:07:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (83, 9, 1, N'Anten Vây cá mập', N'27.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:07:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (84, 9, 1, N'Anten Vây cá mập', N'27.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:07:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (85, 9, 1, N'Anten Vây cá mập', N'27.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:07:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (86, 9, 1, N'Anten Vây cá mập', N'27.jpg', 6999000, 5999000, 500, N'Chiếc', NULL, CAST(N'2023-04-05T01:07:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (87, 8, 1, N'Đệm ô tô vải nhung cao cấp', N'26.jpg', 6999000, 5999000, 500, NULL, NULL, CAST(N'2023-04-12T00:48:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (88, 8, 1, N'Đệm ô tô vải nhung cao cấp', N'24.jpg', 6999000, 5999000, 500, NULL, NULL, CAST(N'2023-04-12T00:48:00' AS SmallDateTime))
INSERT [dbo].[product] ([product_id], [product_cate_id], [product_distributor_id], [product_name], [product_img], [product_price], [product_sale], [product_quantity], [product_unit], [product_note], [product_date_created]) VALUES (89, 7, 1, N'Bọc da vô lăng cao cấp sunny', N'23.jpg', 6999000, 5999000, 500, NULL, NULL, CAST(N'2023-04-12T00:49:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[slide] ON 

INSERT [dbo].[slide] ([slide_id], [slide_staff_id], [slide_img], [slide_link], [slide_note], [slide_date_created]) VALUES (1, 6, N'slide1.jpg', NULL, N'ảnh slide 1', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[slide] ([slide_id], [slide_staff_id], [slide_img], [slide_link], [slide_note], [slide_date_created]) VALUES (2, 7, N'slide2.jpg', NULL, N'ảnh slide 2', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[slide] ([slide_id], [slide_staff_id], [slide_img], [slide_link], [slide_note], [slide_date_created]) VALUES (3, 8, N'slide3.jpg', NULL, N'ảnh slide 3', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[slide] ([slide_id], [slide_staff_id], [slide_img], [slide_link], [slide_note], [slide_date_created]) VALUES (4, 8, N'slide4.jpg', NULL, NULL, CAST(N'2023-04-11T23:13:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[slide] OFF
GO
SET IDENTITY_INSERT [dbo].[staff] ON 

INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (1, N'Lưu Thị Bích', CAST(N'2001-08-06' AS Date), N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0369005706', N'luubich1@gmail.com', N'Nữ', N'Nhân Viên bán hàng', N'Nhân viên 1', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (2, N'Lưu Thị Hoa', CAST(N'2001-03-11' AS Date), N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0372726342', N'luuhoa2@gmail.com', N'Nữ', N'Nhân Viên bán hàng', N'Nhân viên 2', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (3, N'Đinh Tiến Hợp', CAST(N'2001-06-24' AS Date), N'Trung Hoà-Yên Mỹ-Hưng Yên', N'0353804452', N'dinhhop423@gmail.com', N'Nam', N'Nhân Viên bán hàng', N'Nhân viên 3', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (4, N'Luyện Ngọc Hùng', CAST(N'2001-07-19' AS Date), N'Ngọc Long-Yên Mỹ-Hưng Yên', N'0395946529', N'luyenhung439078@gmail.com', N'Nam', N'Nhân Viên bán hàng', N'Nhân viên 4', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (5, N'Trần Thị Thanh Lan', CAST(N'2001-11-26' AS Date), N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0962253610', N'tranlan4567@gmail.com', N'Nữ', N'Nhân Viên bán hàng', N'Nhân viên 5', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (6, N'Đặng Tuyết Mai', CAST(N'2001-05-15' AS Date), N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0979674621', N'dangmai453@gmail.com', N'Nữ', N'Nhân Viên bán hàng', N'Nhân viên 6', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (7, N'Nguyễn Thị Kim Oanh', CAST(N'2001-09-06' AS Date), N'TT.Yên Mỹ-Yên Mỹ-Hưng Yên', N'0823865515', N'nguyenoanh84@gmail.com', N'Nữ', N'Kế toán', N'Nhân viên 7', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (8, N'Lê Thị Oánh', CAST(N'2001-12-18' AS Date), N'Trung Hoà-Yên Mỹ-Hưng Yên', N'0964893127', N'leoanh66@gmail.com', N'Nữ', N'Nhân Viên bán hàng', N'Nhân viên 8', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[staff] ([staff_id], [staff_name], [staff_dateofbirth], [staff_address], [staff_phone], [staff_mail], [staff_sex], [staff_levels], [staff_note], [staff_date_created]) VALUES (9, N'Lưu Thị Thùy', CAST(N'2001-07-22' AS Date), N'Liêu Xá-Yên Mỹ-Hưng Yên', N'0336962603', N'luuthuy@gmail.com', N'Nữ', N'Nhân Viên bán hàng', N'Nhân viên 9', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[staff] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (1, N'Hoàng Việt', N'hoangviet', N'123', N'hv143444@gmail.com', N'0372082758', N'', N'admin', N'Hoạt Động', N'Tài khoản 1', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (2, N'Nguyễn Thị Ngọc', N'nguyenngoc1', N'nguyenngoc1', N'nguyenngoc1@gmail.com', N'0397395635', N'', N'user', N'Hoạt Động', N'Tài khoản 2', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (3, N'Phạm Minh Châu', N'phamchau2', N'phamchau2', N'phamchau2@gmail.com', N'0922382086', N'', N'user', N'Hoạt Động', N'Tài khoản 3', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (4, N'Nguyễn Thu Yến', N'nguyenyen3', N'nguyenyen3', N'nguyenyen3@gmail.com', N'0968467705', N'', N'user', N'Hoạt Động', N'Tài khoản 4', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (5, N'Trần Văn Trưởng', N'trantruong4', N'trantruong4', N'trantruong4@gmail.com', N'0965656750', N'', N'user', N'Hoạt Động', N'Tài khoản 5', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (6, N'Nguyễn Khánh Thư', N'nguyenthu5', N'nguyenthu5', N'nguyenthu5@gmail.com', N'0987243926', N'', N'user', N'Hoạt Động', N'Tài khoản 6', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (7, N'Trần Đức Lương', N'tranluong6', N'tranluong6', N'tranluong6@gmail.com', N'0974135250', N'', N'user', N'Hoạt Động', N'Tài khoản 7', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (8, N'Lê Thị Phương Lan', N'lelan7', N'lelan7', N'lelan7@gmail.com', N'0965370610', N'', N'user', N'Hoạt Động', N'Tài khoản 8', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (9, N'Đặng Ngọc Huyền', N'danghuyen8', N'danghuyen8', N'danghuyen8@gmail.com', N'0988590558', N'', N'user', N'Hoạt Động', N'Tài khoản 9', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (10, N'Nguyễn Thị Hiền', N'nguyenhien9', N'nguyenhien9', N'nguyenhien9@gmail.com', N'0865529391', N'', N'user', N'Hoạt Động', N'Tài khoản 10', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
INSERT [dbo].[users] ([users_id], [users_full_name], [users_name], [users_password], [users_mail], [users_phone], [users_token], [users_role], [users_status], [users_note], [users_date_created]) VALUES (11, N'Lê Thành Đạt', N'ledat9', N'ledat9', N'ledat9@gmail.com', N'0362968338', N'', N'user', N'Hoạt Động', N'Tài khoản 11', CAST(N'2023-04-02T19:54:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[bill_imports] ADD  DEFAULT (getdate()) FOR [bill_imports_date_created]
GO
ALTER TABLE [dbo].[bill_imports_details] ADD  DEFAULT (getdate()) FOR [imports_details_date_created]
GO
ALTER TABLE [dbo].[bill_sales] ADD  DEFAULT (getdate()) FOR [bill_sales_date_created]
GO
ALTER TABLE [dbo].[bill_sales_details] ADD  DEFAULT (getdate()) FOR [sales_details_date_created]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT (getdate()) FOR [cate_date_created]
GO
ALTER TABLE [dbo].[customer] ADD  DEFAULT (getdate()) FOR [customer_date_created]
GO
ALTER TABLE [dbo].[distributor] ADD  DEFAULT (getdate()) FOR [distributor_date_created]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (getdate()) FOR [product_date_created]
GO
ALTER TABLE [dbo].[slide] ADD  DEFAULT (getdate()) FOR [slide_date_created]
GO
ALTER TABLE [dbo].[staff] ADD  DEFAULT (getdate()) FOR [staff_date_created]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('user') FOR [users_role]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'Hoạt Động') FOR [users_status]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [users_date_created]
GO
ALTER TABLE [dbo].[bill_imports]  WITH CHECK ADD FOREIGN KEY([bill_imports_distributor_id])
REFERENCES [dbo].[distributor] ([distributor_id])
GO
ALTER TABLE [dbo].[bill_imports]  WITH CHECK ADD FOREIGN KEY([bill_imports_staff_id])
REFERENCES [dbo].[staff] ([staff_id])
GO
ALTER TABLE [dbo].[bill_imports_details]  WITH CHECK ADD FOREIGN KEY([imports_details_imports_id])
REFERENCES [dbo].[bill_imports] ([bill_imports_id])
GO
ALTER TABLE [dbo].[bill_imports_details]  WITH CHECK ADD FOREIGN KEY([imports_details_product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[bill_sales]  WITH CHECK ADD FOREIGN KEY([bill_sales_customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[bill_sales]  WITH CHECK ADD FOREIGN KEY([bill_sales_staff_id])
REFERENCES [dbo].[staff] ([staff_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([product_cate_id])
REFERENCES [dbo].[category] ([cate_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([product_distributor_id])
REFERENCES [dbo].[distributor] ([distributor_id])
GO
ALTER TABLE [dbo].[slide]  WITH CHECK ADD FOREIGN KEY([slide_staff_id])
REFERENCES [dbo].[staff] ([staff_id])
GO
