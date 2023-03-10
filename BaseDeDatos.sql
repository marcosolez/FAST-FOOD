USE [FAST_FOOD_DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Celular] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[NombreCompleto] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_CategoriaPlatillo]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_CategoriaPlatillo](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[ESTADO] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_CategoriaPlatillo] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Compra]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Compra](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[NUMFACTURA] [varchar](50) NOT NULL,
	[FECHACOMPRA] [datetime] NULL,
	[FKPROVEEDOR] [int] NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[ESTADO] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_Compra] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_DetalleCompra]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DetalleCompra](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FKCOMPRA] [int] NOT NULL,
	[FKINGREDIENTE] [int] NOT NULL,
	[CANTIDADUNIDAD] [int] NOT NULL,
	[ESTADO] [bit] NOT NULL,
	[PRECIO] [money] NOT NULL,
 CONSTRAINT [PK_Tbl_DetalleCompra] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_DetallePedido]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DetallePedido](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FKPEDIDO] [int] NOT NULL,
	[FKPLATILLOBEBIDA] [int] NOT NULL,
	[CANTIDAD] [int] NOT NULL,
	[PRECIO] [money] NOT NULL,
	[SUBTOTAL] [money] NOT NULL,
 CONSTRAINT [PK_Tbl_DetallePedido] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Horarios]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Horarios](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FECHAMARCACION] [date] NULL,
	[HORAENTRADA] [time](7) NULL,
	[HORASALIDA] [time](7) NULL,
	[FINALIZADO] [bit] NULL,
	[USERNAME] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Horarios] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ingrediente]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ingrediente](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[ESTADO] [bit] NOT NULL,
	[FKUNIDADMEDIDA] [int] NOT NULL,
	[CANTIDADPORUNIDAD] [float] NOT NULL,
	[MINIMOSTOCK] [float] NOT NULL,
 CONSTRAINT [PK_Tbl_Ingrediente] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_IngredientePlatillo]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_IngredientePlatillo](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FKINGREDIENTE] [int] NOT NULL,
	[FKPLATILLO] [int] NOT NULL,
	[CANTIDADUNIDAD] [float] NOT NULL,
 CONSTRAINT [PK_Tbl_IngredientePlatillo] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Inventario]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Inventario](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FKINGREDIENTE] [int] NOT NULL,
	[CANTIDADSTOCK] [float] NOT NULL,
	[FECHAIULTIMOINGRESO] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Inventario] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Pedido]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Pedido](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[FECHAPEDIDO] [datetime] NOT NULL,
	[NOMBRECLIENTE] [varchar](50) NOT NULL,
	[ANULADO] [bit] NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[ESTADOORDEN] [varchar](50) NULL,
	[FECHASTRING] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Pedido] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PlatilloBebida]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PlatilloBebida](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[DESCRIPCION] [varchar](500) NOT NULL,
	[PRECIO] [money] NOT NULL,
	[IMAGEN] [varchar](50) NOT NULL,
	[FKCATEGORIAPLATILLO] [int] NULL,
	[ESTADO] [bit] NULL,
 CONSTRAINT [PK_Tbl_PlatilloBebida] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Proveedor]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Proveedor](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NULL,
	[TELEFONO] [int] NULL,
	[DIRECCION] [varchar](500) NULL,
	[ESTADO] [bit] NULL,
 CONSTRAINT [PK_Tbl_Proveedor] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_UnidadMedida]    Script Date: 18/01/2023 8:54:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_UnidadMedida](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[ESTADO] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_UnidadMedida] PRIMARY KEY CLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2855cb6e-d689-4ca6-ab39-c6685c4ff4c7', N'Cocinero', N'COCINERO', N'38af16bd-f666-4819-b37b-a1d7f5ebec63')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd089d38e-e96f-4019-8159-92119206256b', N'Administrador', N'ADMINISTRADOR', N'70d35685-41c9-4ebd-8229-2b1f0403fa20')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ec147134-6661-4e76-ae15-805cc64ff9b9', N'Cajero', N'CAJERO', N'bae6dd34-766d-440b-9a60-e33fcf800e88')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'128e0810-2bca-4489-8fe2-b256632298d5', N'd089d38e-e96f-4019-8159-92119206256b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fbca91c6-c063-4255-8371-e1af9dc92b98', N'ec147134-6661-4e76-ae15-805cc64ff9b9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Celular], [Direccion], [NombreCompleto]) VALUES (N'128e0810-2bca-4489-8fe2-b256632298d5', N'maru@admin.com', N'MARU@ADMIN.COM', N'maru@admin.com', N'MARU@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEHXNKwslmj411h4jd25Jlyr67ta7sYVY50yRWwMMdUWWYS0NkgbU/4jS9l/DCDmhNA==', N'5PRTPQZ4ZY7KK5WJE4EO2W2UR4ZDI3P3', N'123f4d01-796e-4428-8942-c374bd97c493', NULL, 0, 0, NULL, 1, 0, N'89657522', N'Jinotepe', N'Maru Hernandez')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Celular], [Direccion], [NombreCompleto]) VALUES (N'fbca91c6-c063-4255-8371-e1af9dc92b98', N'maru2@admin.com', N'MARU2@ADMIN.COM', N'maru2@admin.com', N'MARU2@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEGPcarCxofL+2C10ajHV2YSZbOyyLZTyEfyBcU43Ys80nCN0zee8W5uW2WJ0K+3h/w==', N'YAT74ZDT5AXAPTCZT42N2EBJXE3Y6CGT', N'94ab6201-ee8b-4e1f-be7f-7103dc3cc274', NULL, 0, 0, NULL, 1, 0, N'88896325', N'Diriamba', N'Maru2')
GO
SET IDENTITY_INSERT [dbo].[Tbl_CategoriaPlatillo] ON 

INSERT [dbo].[Tbl_CategoriaPlatillo] ([PK], [NOMBRE], [ESTADO]) VALUES (3003, N'Hamburquesas', 1)
INSERT [dbo].[Tbl_CategoriaPlatillo] ([PK], [NOMBRE], [ESTADO]) VALUES (3004, N'Pizzas', 1)
INSERT [dbo].[Tbl_CategoriaPlatillo] ([PK], [NOMBRE], [ESTADO]) VALUES (3005, N'Refrescos naturales', 1)
INSERT [dbo].[Tbl_CategoriaPlatillo] ([PK], [NOMBRE], [ESTADO]) VALUES (3006, N'Gaseosas', 1)
INSERT [dbo].[Tbl_CategoriaPlatillo] ([PK], [NOMBRE], [ESTADO]) VALUES (4003, N'Bebidas', 1)
INSERT [dbo].[Tbl_CategoriaPlatillo] ([PK], [NOMBRE], [ESTADO]) VALUES (5003, N'Nueva', 0)
SET IDENTITY_INSERT [dbo].[Tbl_CategoriaPlatillo] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Compra] ON 

INSERT [dbo].[Tbl_Compra] ([PK], [NUMFACTURA], [FECHACOMPRA], [FKPROVEEDOR], [USERNAME], [ESTADO]) VALUES (1006, N'123456', CAST(N'2022-11-18T14:16:43.267' AS DateTime), 1, N'Larix', 1)
INSERT [dbo].[Tbl_Compra] ([PK], [NUMFACTURA], [FECHACOMPRA], [FKPROVEEDOR], [USERNAME], [ESTADO]) VALUES (1007, N'18563', CAST(N'2022-11-18T14:18:08.643' AS DateTime), 1003, N'Larix', 1)
INSERT [dbo].[Tbl_Compra] ([PK], [NUMFACTURA], [FECHACOMPRA], [FKPROVEEDOR], [USERNAME], [ESTADO]) VALUES (1008, N'123456', CAST(N'2022-11-18T14:31:04.593' AS DateTime), 1002, N'Larix', 1)
INSERT [dbo].[Tbl_Compra] ([PK], [NUMFACTURA], [FECHACOMPRA], [FKPROVEEDOR], [USERNAME], [ESTADO]) VALUES (2002, N'454546', CAST(N'2023-01-18T08:24:33.017' AS DateTime), 1002, N'maru@admin.com', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Compra] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_DetalleCompra] ON 

INSERT [dbo].[Tbl_DetalleCompra] ([PK], [FKCOMPRA], [FKINGREDIENTE], [CANTIDADUNIDAD], [ESTADO], [PRECIO]) VALUES (9, 1006, 2, 5, 1, 5.0000)
INSERT [dbo].[Tbl_DetalleCompra] ([PK], [FKCOMPRA], [FKINGREDIENTE], [CANTIDADUNIDAD], [ESTADO], [PRECIO]) VALUES (10, 1006, 5, 5, 1, 5.0000)
INSERT [dbo].[Tbl_DetalleCompra] ([PK], [FKCOMPRA], [FKINGREDIENTE], [CANTIDADUNIDAD], [ESTADO], [PRECIO]) VALUES (11, 1007, 5, 5, 1, 5.0000)
INSERT [dbo].[Tbl_DetalleCompra] ([PK], [FKCOMPRA], [FKINGREDIENTE], [CANTIDADUNIDAD], [ESTADO], [PRECIO]) VALUES (12, 1007, 1003, 50, 1, 15.0000)
INSERT [dbo].[Tbl_DetalleCompra] ([PK], [FKCOMPRA], [FKINGREDIENTE], [CANTIDADUNIDAD], [ESTADO], [PRECIO]) VALUES (13, 1008, 5, 5, 1, 5.0000)
INSERT [dbo].[Tbl_DetalleCompra] ([PK], [FKCOMPRA], [FKINGREDIENTE], [CANTIDADUNIDAD], [ESTADO], [PRECIO]) VALUES (1002, 2002, 2, 10, 1, 20.0000)
INSERT [dbo].[Tbl_DetalleCompra] ([PK], [FKCOMPRA], [FKINGREDIENTE], [CANTIDADUNIDAD], [ESTADO], [PRECIO]) VALUES (1003, 2002, 1002, 5, 1, 10.0000)
SET IDENTITY_INSERT [dbo].[Tbl_DetalleCompra] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_DetallePedido] ON 

INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1009, 1004, 1011, 3, 150.0000, 450.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1010, 1004, 1014, 2, 15.0000, 30.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1011, 1005, 1011, 1, 150.0000, 150.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1012, 1005, 1013, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1013, 1005, 1015, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1014, 1006, 1014, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1015, 1006, 1012, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1016, 1007, 1014, 3, 15.0000, 45.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1017, 1007, 1011, 2, 150.0000, 300.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1018, 1007, 1015, 5, 15.0000, 75.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1019, 1008, 1011, 1, 150.0000, 150.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1020, 1008, 1014, 2, 15.0000, 30.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1021, 1008, 1015, 4, 15.0000, 60.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1022, 1009, 1011, 3, 150.0000, 450.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1023, 1009, 1014, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1024, 1009, 1015, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1025, 1010, 1013, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1026, 1010, 1015, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1027, 1010, 1012, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1028, 1011, 1015, 3, 15.0000, 45.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1029, 1011, 1013, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1030, 1011, 1011, 1, 150.0000, 150.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (1031, 1012, 1012, 3, 15.0000, 45.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (2002, 2004, 1012, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (2003, 2004, 1013, 4, 15.0000, 60.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (2004, 2005, 1012, 3, 15.0000, 45.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (2005, 2005, 1015, 3, 15.0000, 45.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (2006, 2005, 1013, 3, 15.0000, 45.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3002, 3004, 1012, 4, 15.0000, 60.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3003, 3004, 1011, 5, 150.0000, 750.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3004, 3005, 1011, 3, 150.0000, 450.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3005, 3005, 1013, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3006, 3005, 2002, 1, 20.0000, 20.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3007, 3006, 1011, 1, 150.0000, 150.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3008, 3006, 1013, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3009, 3006, 1015, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3010, 3007, 1011, 3, 150.0000, 450.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3011, 3008, 1011, 5, 150.0000, 750.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3012, 3008, 1014, 4, 15.0000, 60.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3013, 3008, 1015, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3014, 3008, 1012, 2, 15.0000, 30.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3015, 3009, 1012, 3, 15.0000, 45.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3016, 3010, 1013, 1, 15.0000, 15.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3017, 3010, 1015, 2, 15.0000, 30.0000)
INSERT [dbo].[Tbl_DetallePedido] ([PK], [FKPEDIDO], [FKPLATILLOBEBIDA], [CANTIDAD], [PRECIO], [SUBTOTAL]) VALUES (3018, 3011, 3002, 2, 350.0000, 700.0000)
SET IDENTITY_INSERT [dbo].[Tbl_DetallePedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Ingrediente] ON 

INSERT [dbo].[Tbl_Ingrediente] ([PK], [NOMBRE], [ESTADO], [FKUNIDADMEDIDA], [CANTIDADPORUNIDAD], [MINIMOSTOCK]) VALUES (1, N'Carne de Res', 1, 2, 1, 5)
INSERT [dbo].[Tbl_Ingrediente] ([PK], [NOMBRE], [ESTADO], [FKUNIDADMEDIDA], [CANTIDADPORUNIDAD], [MINIMOSTOCK]) VALUES (2, N'Tomates', 1, 5, 2, 20)
INSERT [dbo].[Tbl_Ingrediente] ([PK], [NOMBRE], [ESTADO], [FKUNIDADMEDIDA], [CANTIDADPORUNIDAD], [MINIMOSTOCK]) VALUES (5, N'Papas', 1, 2, 1, 20)
INSERT [dbo].[Tbl_Ingrediente] ([PK], [NOMBRE], [ESTADO], [FKUNIDADMEDIDA], [CANTIDADPORUNIDAD], [MINIMOSTOCK]) VALUES (1002, N'Lechuga', 1, 5, 1, 100)
INSERT [dbo].[Tbl_Ingrediente] ([PK], [NOMBRE], [ESTADO], [FKUNIDADMEDIDA], [CANTIDADPORUNIDAD], [MINIMOSTOCK]) VALUES (1003, N'Carne de Pollo', 1, 2, 2, 5)
SET IDENTITY_INSERT [dbo].[Tbl_Ingrediente] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_IngredientePlatillo] ON 

INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (2013, 5, 1011, 1)
INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (2014, 1, 1011, 1)
INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (2015, 2, 1011, 3)
INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (2016, 2, 1012, 15)
INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (2017, 5, 1013, 15)
INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (2018, 5, 1014, 5)
INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (3002, 2, 3002, 10)
INSERT [dbo].[Tbl_IngredientePlatillo] ([PK], [FKINGREDIENTE], [FKPLATILLO], [CANTIDADUNIDAD]) VALUES (3003, 1002, 3002, 1)
SET IDENTITY_INSERT [dbo].[Tbl_IngredientePlatillo] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Inventario] ON 

INSERT [dbo].[Tbl_Inventario] ([PK], [FKINGREDIENTE], [CANTIDADSTOCK], [FECHAIULTIMOINGRESO]) VALUES (3, 2, 15, CAST(N'2022-11-18T14:16:43.400' AS DateTime))
INSERT [dbo].[Tbl_Inventario] ([PK], [FKINGREDIENTE], [CANTIDADSTOCK], [FECHAIULTIMOINGRESO]) VALUES (4, 5, 15, CAST(N'2022-11-18T14:16:43.403' AS DateTime))
INSERT [dbo].[Tbl_Inventario] ([PK], [FKINGREDIENTE], [CANTIDADSTOCK], [FECHAIULTIMOINGRESO]) VALUES (5, 1003, 50, CAST(N'2022-11-18T14:18:08.663' AS DateTime))
INSERT [dbo].[Tbl_Inventario] ([PK], [FKINGREDIENTE], [CANTIDADSTOCK], [FECHAIULTIMOINGRESO]) VALUES (1002, 1002, 5, CAST(N'2023-01-18T08:24:33.043' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_Inventario] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Pedido] ON 

INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1004, CAST(N'2022-12-05T10:50:12.707' AS DateTime), N'SUSANA GONZALEZ', 0, N'maru@admin.com', N'Finalizada', N'4/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1005, CAST(N'2022-12-05T10:52:36.530' AS DateTime), N'KAROLINA PEREZ', 0, N'maru@admin.com', N'Creada', N'5/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1006, CAST(N'2022-12-05T10:52:52.130' AS DateTime), N'ALVARO MORELES', 0, N'maru@admin.com', N'Anulada', N'5/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1007, CAST(N'2022-12-05T10:53:19.943' AS DateTime), N'KARLA CALERO', 0, N'maru@admin.com', N'Creada', N'6/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1008, CAST(N'2022-12-05T10:57:19.130' AS DateTime), N'MARTIN CALERO', 0, N'maru@admin.com', N'Finalizada', N'5/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1009, CAST(N'2022-12-05T10:57:37.537' AS DateTime), N'EMILIO CARDENAS', 0, N'maru@admin.com', N'Anulada', N'5/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1010, CAST(N'2022-12-05T10:57:57.047' AS DateTime), N'ALVARO SEVILLA', 0, N'maru@admin.com', N'Finalizada', N'5/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1011, CAST(N'2022-12-05T10:58:16.893' AS DateTime), N'JORLENI TAPIA', 0, N'maru@admin.com', N'Creada', N'5/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (1012, CAST(N'2022-12-05T12:12:37.343' AS DateTime), N'PATRICIA LOPEZ', 0, N'maru@admin.com', N'Creada', N'5/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (2004, CAST(N'2022-12-07T11:10:45.813' AS DateTime), N'Alejandra Estaban', 0, N'maru@admin.com', N'Creada', N'7/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (2005, CAST(N'2022-12-07T11:11:22.100' AS DateTime), N'Camila Lopez', 0, N'maru@admin.com', N'Creada', N'7/12/2022')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3004, CAST(N'2023-01-17T16:58:44.127' AS DateTime), N'Maria', 0, N'maru@admin.com', N'Finalizada', N'17/1/2023')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3005, CAST(N'2023-01-17T16:59:05.170' AS DateTime), N'Camila', 0, N'maru@admin.com', N'Anulada', N'17/1/2023')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3006, CAST(N'2023-01-17T17:00:13.690' AS DateTime), N'Lesther', 0, N'maru@admin.com', N'Creada', N'17/1/2023')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3007, CAST(N'2023-01-18T08:11:22.070' AS DateTime), N'Carlos Hernandez', 0, N'maru@admin.com', N'Finalizada', N'18/1/2023')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3008, CAST(N'2023-01-18T08:28:07.583' AS DateTime), N'Maru', 0, N'maru@admin.com', N'Finalizada', N'18/1/2023')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3009, CAST(N'2023-01-18T08:28:32.740' AS DateTime), N'Juan', 0, N'maru@admin.com', N'Anulada', N'18/1/2023')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3010, CAST(N'2023-01-18T08:28:47.997' AS DateTime), N'Maria', 0, N'maru@admin.com', N'Finalizada', N'18/1/2023')
INSERT [dbo].[Tbl_Pedido] ([PK], [FECHAPEDIDO], [NOMBRECLIENTE], [ANULADO], [USERNAME], [ESTADOORDEN], [FECHASTRING]) VALUES (3011, CAST(N'2023-01-18T08:33:12.820' AS DateTime), N'Alvaro', 0, N'maru@admin.com', N'Creada', N'18/1/2023')
SET IDENTITY_INSERT [dbo].[Tbl_Pedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_PlatilloBebida] ON 

INSERT [dbo].[Tbl_PlatilloBebida] ([PK], [NOMBRE], [DESCRIPCION], [PRECIO], [IMAGEN], [FKCATEGORIAPLATILLO], [ESTADO]) VALUES (1011, N'Hamburguesa Big MAC', N'Descripcion de hamburguesa', 150.0000, N'df9aecd0-0c39-4de8-97b5-eb64a018a3e0.jpg', 3003, NULL)
INSERT [dbo].[Tbl_PlatilloBebida] ([PK], [NOMBRE], [DESCRIPCION], [PRECIO], [IMAGEN], [FKCATEGORIAPLATILLO], [ESTADO]) VALUES (1012, N'Hamburguesa Lava Burguer', N'Descripcion de hamburguesa', 15.0000, N'3e4c9768-133d-489f-9fcb-a168c13967c0.png', 3003, NULL)
INSERT [dbo].[Tbl_PlatilloBebida] ([PK], [NOMBRE], [DESCRIPCION], [PRECIO], [IMAGEN], [FKCATEGORIAPLATILLO], [ESTADO]) VALUES (1013, N'Pizza personal', N'Descripcion de pizza', 15.0000, N'659cc9ba-7058-47ca-b941-09a7883770f5.jpg', 3004, NULL)
INSERT [dbo].[Tbl_PlatilloBebida] ([PK], [NOMBRE], [DESCRIPCION], [PRECIO], [IMAGEN], [FKCATEGORIAPLATILLO], [ESTADO]) VALUES (1014, N'Papas fritas', N'Papas fritas', 15.0000, N'd609d859-b156-4911-ac59-0e142299e50d.jpg', 3004, NULL)
INSERT [dbo].[Tbl_PlatilloBebida] ([PK], [NOMBRE], [DESCRIPCION], [PRECIO], [IMAGEN], [FKCATEGORIAPLATILLO], [ESTADO]) VALUES (1015, N'Coca Cola 12 Oz', N'Caca cola personal', 15.0000, N'88be825b-f3aa-4e1e-aa62-0fd5111c20f5.jpeg', 3006, NULL)
INSERT [dbo].[Tbl_PlatilloBebida] ([PK], [NOMBRE], [DESCRIPCION], [PRECIO], [IMAGEN], [FKCATEGORIAPLATILLO], [ESTADO]) VALUES (2002, N'HiC', N'Bebida en caja', 20.0000, N'4e42d676-ea87-45f3-bc1d-f9c29f85b4a2.jpg', 4003, NULL)
INSERT [dbo].[Tbl_PlatilloBebida] ([PK], [NOMBRE], [DESCRIPCION], [PRECIO], [IMAGEN], [FKCATEGORIAPLATILLO], [ESTADO]) VALUES (3002, N'Pizza Hawaiana', N'Pizza', 350.0000, N'bf19bf1e-f92b-47d6-b8d9-5d8ecd0834ff.jpg', 3004, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_PlatilloBebida] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Proveedor] ON 

INSERT [dbo].[Tbl_Proveedor] ([PK], [NOMBRE], [TELEFONO], [DIRECCION], [ESTADO]) VALUES (1, N'Proveedor 1', 3423423, N'Managua Altamira', 1)
INSERT [dbo].[Tbl_Proveedor] ([PK], [NOMBRE], [TELEFONO], [DIRECCION], [ESTADO]) VALUES (1002, N'Proveedor  2', 58963244, N'Diriamba', 1)
INSERT [dbo].[Tbl_Proveedor] ([PK], [NOMBRE], [TELEFONO], [DIRECCION], [ESTADO]) VALUES (1003, N'Proveedor 3', 89652314, N'Dolores', 1)
INSERT [dbo].[Tbl_Proveedor] ([PK], [NOMBRE], [TELEFONO], [DIRECCION], [ESTADO]) VALUES (1004, N'Pollo TipTop', 8596321, N'Managua', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_UnidadMedida] ON 

INSERT [dbo].[Tbl_UnidadMedida] ([PK], [NOMBRE], [ESTADO]) VALUES (1, N'Gramos', 1)
INSERT [dbo].[Tbl_UnidadMedida] ([PK], [NOMBRE], [ESTADO]) VALUES (2, N'Libra', 1)
INSERT [dbo].[Tbl_UnidadMedida] ([PK], [NOMBRE], [ESTADO]) VALUES (3, N'Onza', 1)
INSERT [dbo].[Tbl_UnidadMedida] ([PK], [NOMBRE], [ESTADO]) VALUES (4, N'Litro', 1)
INSERT [dbo].[Tbl_UnidadMedida] ([PK], [NOMBRE], [ESTADO]) VALUES (5, N'Unidad', 1)
INSERT [dbo].[Tbl_UnidadMedida] ([PK], [NOMBRE], [ESTADO]) VALUES (1002, N'nuevo', 1)
SET IDENTITY_INSERT [dbo].[Tbl_UnidadMedida] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Tbl_Compra]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Compra_Tbl_Proveedor1] FOREIGN KEY([FKPROVEEDOR])
REFERENCES [dbo].[Tbl_Proveedor] ([PK])
GO
ALTER TABLE [dbo].[Tbl_Compra] CHECK CONSTRAINT [FK_Tbl_Compra_Tbl_Proveedor1]
GO
ALTER TABLE [dbo].[Tbl_DetalleCompra]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DetalleCompra_Tbl_Compra1] FOREIGN KEY([FKCOMPRA])
REFERENCES [dbo].[Tbl_Compra] ([PK])
GO
ALTER TABLE [dbo].[Tbl_DetalleCompra] CHECK CONSTRAINT [FK_Tbl_DetalleCompra_Tbl_Compra1]
GO
ALTER TABLE [dbo].[Tbl_DetalleCompra]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DetalleCompra_Tbl_Ingrediente] FOREIGN KEY([FKINGREDIENTE])
REFERENCES [dbo].[Tbl_Ingrediente] ([PK])
GO
ALTER TABLE [dbo].[Tbl_DetalleCompra] CHECK CONSTRAINT [FK_Tbl_DetalleCompra_Tbl_Ingrediente]
GO
ALTER TABLE [dbo].[Tbl_DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DetallePedido_Tbl_Pedido] FOREIGN KEY([FKPEDIDO])
REFERENCES [dbo].[Tbl_Pedido] ([PK])
GO
ALTER TABLE [dbo].[Tbl_DetallePedido] CHECK CONSTRAINT [FK_Tbl_DetallePedido_Tbl_Pedido]
GO
ALTER TABLE [dbo].[Tbl_DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DetallePedido_Tbl_PlatilloBebida] FOREIGN KEY([FKPLATILLOBEBIDA])
REFERENCES [dbo].[Tbl_PlatilloBebida] ([PK])
GO
ALTER TABLE [dbo].[Tbl_DetallePedido] CHECK CONSTRAINT [FK_Tbl_DetallePedido_Tbl_PlatilloBebida]
GO
ALTER TABLE [dbo].[Tbl_Ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Ingrediente_Tbl_UnidadMedida] FOREIGN KEY([FKUNIDADMEDIDA])
REFERENCES [dbo].[Tbl_UnidadMedida] ([PK])
GO
ALTER TABLE [dbo].[Tbl_Ingrediente] CHECK CONSTRAINT [FK_Tbl_Ingrediente_Tbl_UnidadMedida]
GO
ALTER TABLE [dbo].[Tbl_IngredientePlatillo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_IngredientePlatillo_Tbl_Ingrediente] FOREIGN KEY([FKINGREDIENTE])
REFERENCES [dbo].[Tbl_Ingrediente] ([PK])
GO
ALTER TABLE [dbo].[Tbl_IngredientePlatillo] CHECK CONSTRAINT [FK_Tbl_IngredientePlatillo_Tbl_Ingrediente]
GO
ALTER TABLE [dbo].[Tbl_IngredientePlatillo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_IngredientePlatillo_Tbl_PlatilloBebida] FOREIGN KEY([FKPLATILLO])
REFERENCES [dbo].[Tbl_PlatilloBebida] ([PK])
GO
ALTER TABLE [dbo].[Tbl_IngredientePlatillo] CHECK CONSTRAINT [FK_Tbl_IngredientePlatillo_Tbl_PlatilloBebida]
GO
ALTER TABLE [dbo].[Tbl_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Inventario_Tbl_Ingrediente] FOREIGN KEY([FKINGREDIENTE])
REFERENCES [dbo].[Tbl_Ingrediente] ([PK])
GO
ALTER TABLE [dbo].[Tbl_Inventario] CHECK CONSTRAINT [FK_Tbl_Inventario_Tbl_Ingrediente]
GO
ALTER TABLE [dbo].[Tbl_PlatilloBebida]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PlatilloBebida_Tbl_CategoriaPlatillo] FOREIGN KEY([FKCATEGORIAPLATILLO])
REFERENCES [dbo].[Tbl_CategoriaPlatillo] ([PK])
GO
ALTER TABLE [dbo].[Tbl_PlatilloBebida] CHECK CONSTRAINT [FK_Tbl_PlatilloBebida_Tbl_CategoriaPlatillo]
GO
