USE [项目-书店管理系统]
GO
/****** Object:  Table [dbo].[Saleman]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Saleman](
	[SalesmanID] [int] IDENTITY(1,1) NOT NULL,
	[SalesmanName] [nvarchar](10) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Pwd] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](2) NOT NULL,
	[BaseSalary] [decimal](18, 2) NOT NULL,
	[CommissionRate] [decimal](6, 2) NOT NULL,
	[Work] [nvarchar](50) NULL,
 CONSTRAINT [PK_Saleman] PRIMARY KEY CLUSTERED 
(
	[SalesmanID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Saleman] UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Saleman] ON
INSERT [dbo].[Saleman] ([SalesmanID], [SalesmanName], [Mobile], [Pwd], [Gender], [BaseSalary], [CommissionRate], [Work]) VALUES (44, N'123', N'123', N'12345', N'男', CAST(2000.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(6, 2)), N'店长')
INSERT [dbo].[Saleman] ([SalesmanID], [SalesmanName], [Mobile], [Pwd], [Gender], [BaseSalary], [CommissionRate], [Work]) VALUES (45, N'张可可', N'1', N'2', N'女', CAST(3000.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(6, 2)), N'收银员')
INSERT [dbo].[Saleman] ([SalesmanID], [SalesmanName], [Mobile], [Pwd], [Gender], [BaseSalary], [CommissionRate], [Work]) VALUES (46, N'宁', N'18857594722', N'123', N'男', CAST(12333.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(6, 2)), N'收银员')
SET IDENTITY_INSERT [dbo].[Saleman] OFF
/****** Object:  Table [dbo].[Vip]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vip](
	[VipID] [int] IDENTITY(1,1) NOT NULL,
	[VipName] [nvarchar](50) NOT NULL,
	[Mobile] [char](11) NOT NULL,
	[Gender] [nvarchar](2) NOT NULL,
	[jifen] [int] NOT NULL,
 CONSTRAINT [PK_Vip] PRIMARY KEY CLUSTERED 
(
	[VipID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Vip] ON
INSERT [dbo].[Vip] ([VipID], [VipName], [Mobile], [Gender], [jifen]) VALUES (1013, N'胡宇', N'18857594723', N'男', 16)
SET IDENTITY_INSERT [dbo].[Vip] OFF
/****** Object:  Table [dbo].[Type]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [int] IDENTITY(2,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Type] ON
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (10, N'小说')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (11, N'儿童读物')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (12, N'专业书')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (13, N'工具书')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (17, N'手册')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (18, N'剧本')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (19, N'报告')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (20, N'摄影绘画集')
SET IDENTITY_INSERT [dbo].[Type] OFF
/****** Object:  Table [dbo].[SalesDetail]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDetail](
	[SDID] [int] IDENTITY(1,1) NOT NULL,
	[SalesID] [int] NOT NULL,
	[BooksID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[AloneAmount] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_SalesDetail] PRIMARY KEY CLUSTERED 
(
	[SDID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SalesDetail] ON
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (31, 178, 9, 2, CAST(10.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (32, 178, 10, 2, CAST(4.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (33, 179, 11, 2, CAST(11.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (34, 179, 12, 2, CAST(13.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (35, 180, 9, 1, CAST(10.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (36, 181, 11, 1, CAST(11.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (37, 181, 12, 1, CAST(13.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (38, 182, 12, 1, CAST(13.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (39, 182, 11, 1, CAST(11.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (40, 183, 18, 1, CAST(3.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (41, 183, 9, 1, CAST(10.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (42, 184, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (43, 185, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (44, 186, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (45, 187, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (46, 188, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (47, 189, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (48, 190, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (49, 191, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (50, 192, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (51, 193, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (52, 194, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (53, 195, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (54, 196, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (55, 197, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (56, 198, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (57, 199, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (58, 200, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (59, 201, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (60, 202, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (61, 203, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (62, 204, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (63, 205, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (64, 206, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (65, 207, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (66, 208, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (67, 209, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (68, 210, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (69, 211, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (70, 212, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (71, 213, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (72, 213, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (73, 214, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (74, 214, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (75, 215, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (76, 215, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (77, 216, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (78, 216, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (79, 217, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (80, 218, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (81, 218, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (82, 219, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (83, 219, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (84, 220, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (85, 220, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (86, 221, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (87, 221, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (88, 222, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (89, 222, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (90, 223, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (91, 223, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (92, 224, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (93, 224, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (94, 225, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (95, 226, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (96, 227, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (97, 228, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (98, 229, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (99, 230, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (100, 231, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (101, 231, 9, 1, CAST(40.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (102, 232, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (103, 233, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (104, 234, 10, 1, CAST(122.00 AS Decimal(8, 2)))
INSERT [dbo].[SalesDetail] ([SDID], [SalesID], [BooksID], [Quantity], [AloneAmount]) VALUES (105, 234, 9, 1, CAST(40.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[SalesDetail] OFF
/****** Object:  Table [dbo].[Sales]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptsCode] [nvarchar](50) NOT NULL,
	[SalesDate] [date] NOT NULL,
	[Amount] [decimal](8, 4) NOT NULL,
	[SalesmanID] [int] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sales] ON
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (186, N'20190522222700', CAST(0xB03F0B00 AS Date), CAST(40.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (187, N'20190522233424', CAST(0xB03F0B00 AS Date), CAST(40.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (188, N'20190610214908', CAST(0xC33F0B00 AS Date), CAST(40.0000 AS Decimal(8, 4)), 45)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (189, N'20190611113459', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 45)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (190, N'20190611143128', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (191, N'20190611143424', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (192, N'20190611145049', CAST(0xC43F0B00 AS Date), CAST(81.6000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (193, N'20190611145815', CAST(0xC43F0B00 AS Date), CAST(81.6000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (194, N'20190611150124', CAST(0xC43F0B00 AS Date), CAST(81.6000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (195, N'20190611150233', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (196, N'20190611150316', CAST(0xC43F0B00 AS Date), CAST(81.6000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (197, N'20190611150426', CAST(0xC43F0B00 AS Date), CAST(81.6000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (198, N'20190611150531', CAST(0xC43F0B00 AS Date), CAST(109.8000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (199, N'20190611150654', CAST(0xC43F0B00 AS Date), CAST(109.8000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (200, N'20190611195940', CAST(0xC43F0B00 AS Date), CAST(109.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (201, N'20190611200059', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (202, N'20190611200213', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (203, N'20190611200324', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (204, N'20190611200447', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (205, N'20190611200526', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (206, N'20190611200644', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (207, N'20190611200811', CAST(0xC43F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (208, N'20190611200945', CAST(0xC43F0B00 AS Date), CAST(119.6000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (209, N'20190611224410', CAST(0xC43F0B00 AS Date), CAST(120.9000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (210, N'20190611225321', CAST(0xC43F0B00 AS Date), CAST(0.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (211, N'20190611225516', CAST(0xC43F0B00 AS Date), CAST(0.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (212, N'20190611225714', CAST(0xC43F0B00 AS Date), CAST(0.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (213, N'20190612230333', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (214, N'20190612230638', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (215, N'20190612230942', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (216, N'20190612231329', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (217, N'20190612231553', CAST(0xC53F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (218, N'20190612231650', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (219, N'20190612231752', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (220, N'20190612232005', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (221, N'20190612232123', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (222, N'20190612232359', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (223, N'20190612232629', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (224, N'20190612233044', CAST(0xC53F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (225, N'20190612233111', CAST(0xC53F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (226, N'20190612233125', CAST(0xC53F0B00 AS Date), CAST(40.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (227, N'20190613135755', CAST(0xC63F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 45)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (228, N'20190613135950', CAST(0xC63F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (229, N'20190613140153', CAST(0xC63F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (230, N'20190613140340', CAST(0xC63F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (231, N'20190613140516', CAST(0xC63F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (232, N'20190613141312', CAST(0xC63F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (233, N'20190613141911', CAST(0xC63F0B00 AS Date), CAST(122.0000 AS Decimal(8, 4)), 44)
INSERT [dbo].[Sales] ([SalesID], [ReceiptsCode], [SalesDate], [Amount], [SalesmanID]) VALUES (234, N'20190613142203', CAST(0xC63F0B00 AS Date), CAST(162.0000 AS Decimal(8, 4)), 44)
SET IDENTITY_INSERT [dbo].[Sales] OFF
/****** Object:  StoredProcedure [dbo].[LoginSales]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LoginSales]
     @phone varchar(18),
	 @password varchar(20),
	 @num int out,
	 @work varchar(10)
as
if not exists(select * from Saleman where Mobile=@phone and Work=@work)
begin
select @num=0   --账号不存在
end
else if not exists(select * from Saleman where Mobile=@phone and @password=@password and Work=@work)
begin
select @num=1   --密码错误
end
else 
select @num=2  --登录成功
GO
/****** Object:  Table [dbo].[Books]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BooksID] [int] IDENTITY(1,1) NOT NULL,
	[BooksName] [nvarchar](max) NOT NULL,
	[TypeID] [int] NOT NULL,
	[BarCode] [nvarchar](max) NOT NULL,
	[StorePrice] [decimal](8, 2) NOT NULL,
	[SalePrice] [decimal](8, 2) NOT NULL,
	[Discount] [decimal](2, 1) NOT NULL,
	[StockNum] [int] NOT NULL,
	[StockDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BooksID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON
INSERT [dbo].[Books] ([BooksID], [BooksName], [TypeID], [BarCode], [StorePrice], [SalePrice], [Discount], [StockNum], [StockDate]) VALUES (9, N'人间失格', 10, N'100', CAST(22.50 AS Decimal(8, 2)), CAST(40.00 AS Decimal(8, 2)), CAST(1.0 AS Decimal(2, 1)), 40, CAST(0x0000AA5500000000 AS DateTime))
INSERT [dbo].[Books] ([BooksID], [BooksName], [TypeID], [BarCode], [StorePrice], [SalePrice], [Discount], [StockNum], [StockDate]) VALUES (10, N'111的书', 18, N'111', CAST(111.00 AS Decimal(8, 2)), CAST(122.00 AS Decimal(8, 2)), CAST(1.0 AS Decimal(2, 1)), 76, CAST(0x0000AA6800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Books] OFF
/****** Object:  Table [dbo].[Warehouse]    Script Date: 06/13/2019 14:27:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WarehouseID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[InboundNum] [int] NOT NULL,
	[SalesmenID] [int] NOT NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[WarehouseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Books_StockDate]    Script Date: 06/13/2019 14:27:32 ******/
ALTER TABLE [dbo].[Books] ADD  CONSTRAINT [DF_Books_StockDate]  DEFAULT (getdate()) FOR [StockDate]
GO
/****** Object:  Default [DF_Sales_SalesDate]    Script Date: 06/13/2019 14:27:32 ******/
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_SalesDate]  DEFAULT (getdate()) FOR [SalesDate]
GO
/****** Object:  ForeignKey [FK_Books_Books]    Script Date: 06/13/2019 14:27:32 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Books] FOREIGN KEY([BooksID])
REFERENCES [dbo].[Books] ([BooksID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Books]
GO
/****** Object:  ForeignKey [FK_Books_Type]    Script Date: 06/13/2019 14:27:32 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([TypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Type]
GO
/****** Object:  ForeignKey [FK_Sales_Saleman]    Script Date: 06/13/2019 14:27:32 ******/
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Saleman] FOREIGN KEY([SalesmanID])
REFERENCES [dbo].[Saleman] ([SalesmanID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Saleman]
GO
/****** Object:  ForeignKey [FK_Warehouse_Books]    Script Date: 06/13/2019 14:27:32 ******/
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BooksID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [FK_Warehouse_Books]
GO
