USE [FinalWork1101]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19.12.2024 20:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderComposition] [nvarchar](10) NOT NULL,
	[OrderCount] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPointId] [int] NOT NULL,
	[OrderClientSurname] [nvarchar](50) NULL,
	[OrderClientFirstName] [nvarchar](50) NULL,
	[OrderClientPatronymic] [nvarchar](50) NULL,
	[OrderCode] [int] NOT NULL,
	[OrderStatus] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 19.12.2024 20:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickUpPoint]    Script Date: 19.12.2024 20:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickUpPoint](
	[PickUpPointId] [int] IDENTITY(1,1) NOT NULL,
	[PickUpPointIndex] [int] NOT NULL,
	[PickUpPointCity] [nchar](100) NOT NULL,
	[PickUpPointStreet] [nchar](100) NOT NULL,
	[PickUpPointHouse] [int] NOT NULL,
 CONSTRAINT [PK_PickUpPoint] PRIMARY KEY CLUSTERED 
(
	[PickUpPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19.12.2024 20:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductPhoto] [image] NOT NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 2) NOT NULL,
	[ProductDiscountAmount] [int] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NOT NULL,
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Product__2EA7DCD5320552F0] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.12.2024 20:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.12.2024 20:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](50) NOT NULL,
	[UserFirstName] [nvarchar](50) NOT NULL,
	[UserPatronymic] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (1, N'А112Т4', 2, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 24, N'Новиков', N'Матвей', N'Маркович', 201, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (2, N'F893T5', 2, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 24, N'Новиков', N'Матвей', N'Маркович', 201, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (3, N'E530Y6', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 25, NULL, NULL, NULL, 202, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (4, N'F346G5', 2, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 25, NULL, NULL, NULL, 202, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (5, N'J432E4', 1, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 26, N'Соловьев', N'Пётр', N'Никитич', 203, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (6, N'D344Y7', 2, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 26, N'Соловьев', N'Пётр', N'Никитич', 203, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (7, N'E245R5', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 27, NULL, NULL, NULL, 204, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (8, N'D378D3', 2, CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 27, NULL, NULL, NULL, 204, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (9, N'H732R5', 3, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 28, N'Васильева', N'Софья', N'Глебовна', 205, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (10, N'R464G6', 2, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 28, N'Васильева', N'Софья', N'Глебовна', 205, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (11, N'K535G6', 3, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 29, NULL, NULL, NULL, 206, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (12, N'E573G6', 3, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 29, NULL, NULL, NULL, 206, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (13, N'G532R5', 5, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 30, NULL, NULL, NULL, 207, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (14, N'F344S4', 6, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 30, NULL, NULL, NULL, 207, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (15, N'D526R4', 5, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 31, NULL, NULL, NULL, 208, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (16, N'S753T5', 4, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 31, NULL, NULL, NULL, 208, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (17, N'V472S3', 3, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 32, N'Львов', N'Роман', N'Павлович', 209, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (18, N'A436H7', 3, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 32, N'Львов', N'Роман', N'Павлович', 209, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (19, N'O875F6', 4, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 33, NULL, NULL, NULL, 210, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (20, N'E479G6', 1, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 33, NULL, NULL, NULL, 210, N'Завершен')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[PickUpPoint] ON 

INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (1, 344288, N'Ангарск                                                                                             ', N'Чехова                                                                                              ', 1)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (2, 614164, N'Ангарск                                                                                             ', N'Степная                                                                                             ', 30)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (3, 394242, N'Ангарск                                                                                             ', N'Коммунистическая                                                                                    ', 43)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (4, 660540, N'Ангарск                                                                                             ', N'Солнечная                                                                                           ', 25)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (5, 125837, N'Ангарск                                                                                             ', N'Шоссейная                                                                                           ', 40)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (6, 125703, N'Ангарск                                                                                             ', N'Партизанская                                                                                        ', 49)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (7, 625283, N'Ангарск                                                                                             ', N'Победы                                                                                              ', 46)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (8, 614611, N'Ангарск                                                                                             ', N'Молодежная                                                                                          ', 50)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (9, 454311, N'Ангарск                                                                                             ', N'Новая                                                                                               ', 19)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (10, 660007, N'Ангарск                                                                                             ', N'Октябрьская                                                                                         ', 19)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (11, 603036, N'Ангарск                                                                                             ', N'Садовая                                                                                             ', 4)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (12, 450983, N'Ангарск                                                                                             ', N'Комсомольская                                                                                       ', 26)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (13, 394782, N'Ангарск                                                                                             ', N'Чехова                                                                                              ', 3)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (14, 603002, N'Ангарск                                                                                             ', N'Дзержинского                                                                                        ', 28)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (15, 450558, N'Ангарск                                                                                             ', N'Набережная                                                                                          ', 30)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (16, 394060, N'Ангарск                                                                                             ', N'Фрунзе                                                                                              ', 43)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (17, 410661, N'Ангарск                                                                                             ', N'Школьная                                                                                            ', 50)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (18, 625590, N'Ангарск                                                                                             ', N'Коммунистическая                                                                                    ', 20)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (19, 625683, N'Ангарск                                                                                             ', N'8 Марта                                                                                             ', 22)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (20, 400562, N'Ангарск                                                                                             ', N'Зеленая                                                                                             ', 32)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (21, 614510, N'Ангарск                                                                                             ', N'Маяковского                                                                                         ', 47)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (22, 410542, N'Ангарск                                                                                             ', N'Светлая                                                                                             ', 46)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (23, 620839, N'Ангарск                                                                                             ', N'Цветочная                                                                                           ', 8)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (24, 443890, N'Ангарск                                                                                             ', N'Коммунистическая                                                                                    ', 1)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (25, 603379, N'Ангарск                                                                                             ', N'Спортивная                                                                                          ', 46)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (26, 603721, N'Ангарск                                                                                             ', N'Гоголя                                                                                              ', 41)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (27, 410172, N'Ангарск                                                                                             ', N'Северная                                                                                            ', 13)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (28, 420151, N'Ангарск                                                                                             ', N'Вишневая                                                                                            ', 32)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (29, 125061, N'Ангарск                                                                                             ', N'Подгорная                                                                                           ', 8)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (30, 630370, N'Ангарск                                                                                             ', N'Шоссейная                                                                                           ', 24)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (31, 614753, N'Ангарск                                                                                             ', N'Полевая                                                                                             ', 35)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (32, 426030, N'Ангарск                                                                                             ', N'Маяковского                                                                                         ', 44)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (33, 450375, N'Ангарск                                                                                             ', N'Клубная                                                                                             ', 44)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (34, 625560, N'Ангарск                                                                                             ', N'Некрасова                                                                                           ', 12)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (35, 630201, N'Ангарск                                                                                             ', N'Комсомольская                                                                                       ', 17)
INSERT [dbo].[PickUpPoint] ([PickUpPointId], [PickUpPointIndex], [PickUpPointCity], [PickUpPointStreet], [PickUpPointHouse]) VALUES (36, 190949, N'Ангарск                                                                                             ', N'Мичурина                                                                                            ', 26)
SET IDENTITY_INSERT [dbo].[PickUpPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'A436H7', N'Маска для лица "Глина"', N'Детокс-маска для лица на основе натуральной глины.', N'Уход за кожей', 0x636C61795F666163655F6D61736B2E6A7067, N'DermCare', CAST(950.00 AS Decimal(19, 2)), 100, 40, N'В наличии', 18)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'D344Y7', N'Помада "Красный шелк"', N'Матовая помада ярко-красного цвета.', N'Декоративная косметика', 0x6C6970737469636B5F72656473696C6B2E6A7067, N'GlamStyle', CAST(650.00 AS Decimal(19, 2)), 50, 60, N'В наличии', 6)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'D378D3', N'Скраб для тела "Мята"', N'Освежающий скраб с частичками натурального сахара и экстрактом мяты.', N'Уход за телом', 0x6D696E745F626F64795F73637275622E6A7067, N'GreenLife', CAST(750.00 AS Decimal(19, 2)), 100, 50, N'В наличии', 8)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'D526R4', N'Духи "Летний бриз"', N'Свежий летний аромат с нотами моря и цитрусов.', N'Парфюмерия', 0x73756D6D65725F627265657A655F70657266756D652E6A7067, N'SweetAroma', CAST(3100.00 AS Decimal(19, 2)), 700, 12, N'В наличии', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'E245R5', N'Парфюм "Ванильное облако"', N'Легкий сладкий аромат с нотами ванили и карамели.', N'Парфюмерия', 0x76616E696C6C615F636C6F75645F70657266756D652E6A7067, N'SweetAroma', CAST(4200.00 AS Decimal(19, 2)), 800, 10, N'В наличии', 7)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'E479G6', N'Спрей для волос Shine', N'Легкий спрей для придания блеска волосам.', N'Уход за волосами', 0x686169725F73707261795F7368696E652E6A7067, N'HairPlus', CAST(750.00 AS Decimal(19, 2)), 100, 50, N'В наличии', 20)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'E530Y6', N'Шампунь "Глубокое очищение"', N'Шампунь для жирных волос с экстрактом лимона.', N'Уход за волосами', 0x646565705F636C65616E5F7368616D706F6F2E6A7067, N'HairPlus', CAST(650.00 AS Decimal(19, 2)), 100, 80, N'В наличии', 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'E573G6', N'Гель для умывания Clear', N'Очищающий гель для жирной и проблемной кожи.', N'Уход за кожей', 0x666163655F776173685F636C6561722E6A7067, N'NatureCare', CAST(600.00 AS Decimal(19, 2)), 80, 60, N'В наличии', 12)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'F344S4', N'Пудра "Матовый шелк"', N'Компактная пудра с матирующим эффектом.', N'Декоративная косметика', 0x706F776465725F6D617474655F73696C6B2E6A7067, N'GlamStyle', CAST(720.00 AS Decimal(19, 2)), 90, 50, N'В наличии', 14)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'F346G5', N'Тушь для ресниц BlackMax', N'Объемная тушь с насыщенным черным цветом.', N'Декоративная косметика', 0x6D6173636172615F626C61636B6D61782E6A7067, N'BeautyMax', CAST(890.00 AS Decimal(19, 2)), 100, 40, N'В наличии', 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'F893T5', N'Крем для рук "Лаванда"', N'Увлажняющий крем с экстрактом лаванды для сухой кожи.', N'Уход за кожей', 0x6C6176656E6465725F68616E64637265616D2E6A7067, N'NatureCare', CAST(450.00 AS Decimal(19, 2)), 50, 120, N'В наличии', 2)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'G532R5', N'Молочко для тела SoftTouch', N'Увлажняющее молочко с экстрактом алоэ вера.', N'Уход за телом', 0x626F64795F6D696C6B5F736F6674746F7563682E6A7067, N'GreenLife', CAST(850.00 AS Decimal(19, 2)), 150, 70, N'В наличии', 13)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'H732R5', N'Лосьон после бритья Fresh', N'Успокаивающий лосьон с эффектом охлаждения.', N'Уход за кожей', 0x616674657273686176655F66726573682E6A7067, N'ManCare', CAST(550.00 AS Decimal(19, 2)), 50, 35, N'В наличии', 9)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'J4324E4', N'Крем для лица Anti-Age', N'Антивозрастной крем с гиалуроновой кислотой.', N'Уход за кожей', 0x616E74696167655F66616365637265616D2E6A7067, N'DermCare', CAST(2200.00 AS Decimal(19, 2)), 300, 15, N'В наличии', 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'K535G6', N'Парфюм "Ночная роза"', N'Восточный аромат с нотами розы и мускуса.', N'Парфюмерия', 0x6E696768745F726F73655F70657266756D652E6A7067, N'SweetAroma', CAST(5200.00 AS Decimal(19, 2)), 1000, 8, N'В наличии', 11)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'O875F6', N'Духи "Зимняя сказка"', N'Теплый зимний аромат с нотами корицы и ванили.', N'Парфюмерия', 0x77696E7465725F74616C655F70657266756D652E6A7067, N'SweetAroma', CAST(4800.00 AS Decimal(19, 2)), 900, 7, N'В наличии', 19)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'R464G6', N'Сыворотка для лица Glow', N'Осветляющая сыворотка с витамином C.', N'Уход за кожей', 0x666163655F736572756D5F676C6F772E6A7067, N'DermCare', CAST(1800.00 AS Decimal(19, 2)), 200, 25, N'В наличии', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'S753T5', N'Тональный крем Velvet', N'Легкий тональный крем с эффектом увлажнения.', N'Декоративная косметика', 0x666F756E646174696F6E5F76656C7665742E6A7067, N'BeautyMax', CAST(1250.00 AS Decimal(19, 2)), 150, 35, N'В наличии', 16)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'V472S3', N'Лак для ногтей "Рубин"', N'Ярко-красный лак с глянцевым финишем.', N'Декоративная косметика', 0x6E61696C5F706F6C6973685F727562792E6A7067, N'GlamStyle', CAST(300.00 AS Decimal(19, 2)), 30, 100, N'В наличии', 17)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductId]) VALUES (N'А112Т4', N'Туалетная вода Fresh', N'Свежий аромат с нотами цитрусов и древесины.', N'Парфюмерия', 0x66726573685F70657266756D652E6A7067, N'FreshLine', CAST(3200.00 AS Decimal(19, 2)), 500, 25, N'В наличии', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'string')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Константинова ', N'Вероника', N'Агафоновна', N'loginDEsgg2018', N'qhgYnW', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Меркушев ', N'Мартын', N'Федотович', N'loginDEdcd2018', N'LxR6YI', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Казаков ', N'Федот', N'Кондратович', N'loginDEisg2018', N'Cp8ddU', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Карпов ', N'Улеб', N'Леонидович', N'loginDEcph2018', N'7YpE0p', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Королёв ', N'Матвей', N'Вадимович', N'loginDEgco2018', N'nMr|ss', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Юдин ', N'Герман', N'Кондратович', N'loginDEwjg2018', N'9UfqWQ', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Беляева ', N'Анна', N'Вячеславовна', N'loginDEjbz2018', N'xIAWNI', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Беляев ', N'Валентин', N'Артёмович', N'loginDEmgu2018', N'0gC3bk', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Семёнов ', N'Герман', N'Дмитрьевич', N'loginDErdg2018', N'ni0ue0', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Шестаков ', N'Илья', N'Антонинович', N'loginDEjtv2018', N'f2ZaN6', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Власов ', N'Вадим', N'Васильевич', N'loginDEtfj2018', N'{{ksPn', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Савельев ', N'Арсений', N'Авксентьевич', N'loginDEpnb2018', N'{ADBdc', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Ефимов ', N'Руслан', N'Якунович', N'loginDEzer2018', N'5&R+zs', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Бурова ', N'Марфа', N'Федотовна', N'loginDEiin2018', N'y9l*b}', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Селезнёв ', N'Александр', N'Никитевич', N'loginDEqda2018', N'|h+r}I', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Кулакова ', N'Виктория', N'Георгьевна', N'loginDEbnj2018', N'#ИМЯ?', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Дорофеева ', N'Кира', N'Демьяновна', N'loginDEqte2018', N'dC8bDI', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Сафонова ', N'Нинель', N'Якововна', N'loginDEfeo2018', N'8cI7vq', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Ситникова ', N'София', N'Лукьевна', N'loginDEvni2018', N'e4pVIv', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Медведев ', N'Ириней', N'Геннадьевич', N'loginDEjis2018', N'A9K++2', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Суханова ', N'Евгения', N'Улебовна', N'loginDExvv2018', N'R1zh}|', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Игнатьев ', N'Владлен', N'Дамирович', N'loginDEadl2018', N'F&IWf4', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Ефремов ', N'Христофор', N'Владиславович', N'loginDEyzn2018', N'P1v24R', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Кошелев ', N'Ростислав', N'Куприянович', N'loginDEphn2018', N'F}jGsJ', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Галкина ', N'Тамара', N'Авксентьевна', N'loginDEdvk2018', N'NKNkup', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Журавлёва ', N'Вера', N'Арсеньевна', N'loginDEtld2018', N'c+CECK', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Савина ', N'Таисия', N'Глебовна', N'loginDEima2018', N'XK3sOA', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Иванов ', N'Яков', N'Мэлорович', N'loginDEyfe2018', N'4Bbzpa', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Лыткин ', N'Ким', N'Алексеевич', N'loginDEwqc2018', N'vRtAP*', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Логинов ', N'Федот', N'Святославович', N'loginDEgtt2018', N'7YD|BR', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Русакова ', N'Марина', N'Юлиановна', N'loginDEiwl2018', N'LhlmIl', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Константинов ', N'Пётр', N'Кондратович', N'loginDEyvi2018', N'22beR}', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Поляков ', N'Анатолий', N'Игоревич', N'loginDEtfz2018', N'uQY0ZQ', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Панфилова ', N'Василиса', N'Григорьевна', N'loginDEikb2018', N'*QkUxc', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Воробьёв ', N'Герман', N'Романович', N'loginDEdmi2018', N'HOGFbU', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Андреев ', N'Ростислав', N'Федосеевич', N'loginDEtlo2018', N'58Jxrg', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Бобров ', N'Агафон', N'Владимирович', N'loginDEsnd2018', N'lLHqZf', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Лапин ', N'Алексей', N'Витальевич', N'loginDEgno2018', N'4fqLiO', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Шестаков ', N'Авдей', N'Иванович', N'loginDEgnl2018', N'wdio{u', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Гаврилова ', N'Алина', N'Эдуардовна', N'loginDEzna2018', N'yz1iMB', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Жуков ', N'Юлиан', N'Валерьянович', N'loginDEsyh2018', N'&4jYGs', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Пономарёв ', N'Максим', N'Альвианович', N'loginDExex2018', N'rnh36{', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Зиновьева ', N'Мария', N'Лаврентьевна', N'loginDEdjm2018', N'KjI1JR', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Осипов ', N'Артём', N'Мэлорович', N'loginDEgup2018', N'36|KhF', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Лапин ', N'Вячеслав', N'Геласьевич', N'loginDEdat2018', N'ussd8Q', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Зуев ', N'Ириней', N'Вадимович', N'loginDEffj2018', N'cJP+HC', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Коновалова ', N'Агафья', N'Митрофановна', N'loginDEisp2018', N'dfz5Ii', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Исаев ', N'Дмитрий', N'Аристархович', N'loginDEfrp2018', N'6dcR|9', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Белозёрова ', N'Алевтина', N'Лаврентьевна', N'loginDEaee2018', N'5&qONH', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Самсонов ', N'Агафон', N'Максимович', N'loginDEthu2018', N'|0xWzV', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (51, N'string', N'string', N'string', N'string', N'string', 4)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickUpPoint] FOREIGN KEY([OrderPickupPointId])
REFERENCES [dbo].[PickUpPoint] ([PickUpPointId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickUpPoint]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Produ__412EB0B6] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Produ__412EB0B6]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
