USE [AgenciaViagem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/12/2021 19:21:21 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinos]    Script Date: 20/12/2021 19:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Cidade] [nvarchar](max) NULL,
	[Estado] [nvarchar](max) NULL,
	[Hotel] [nvarchar](max) NULL,
	[QuantidadeDias] [int] NOT NULL,
 CONSTRAINT [PK_Destinos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promocoes]    Script Date: 20/12/2021 19:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promocoes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [float] NOT NULL,
	[Desconto] [float] NOT NULL,
	[DestinoID] [int] NOT NULL,
 CONSTRAINT [PK_Promocoes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211219214403_AddBancoContext', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Destinos] ON 

INSERT [dbo].[Destinos] ([ID], [Nome], [Cidade], [Estado], [Hotel], [QuantidadeDias]) VALUES (1, N'Vamos para Aracaju!', N'Aracaju', N'Serjipe', N'Tres Stars', 10)
INSERT [dbo].[Destinos] ([ID], [Nome], [Cidade], [Estado], [Hotel], [QuantidadeDias]) VALUES (2, N'BH é bão demais sô!', N'Belo Horizonte', N'MG', N'Vila Maria', 15)
INSERT [dbo].[Destinos] ([ID], [Nome], [Cidade], [Estado], [Hotel], [QuantidadeDias]) VALUES (3, N'BH é bão demais sô!', N'Belo Horizonte', N'MG', N'Vila Cruzeiro', 7)
INSERT [dbo].[Destinos] ([ID], [Nome], [Cidade], [Estado], [Hotel], [QuantidadeDias]) VALUES (4, N'Águas quentes!', N'Caldas Novas', N'GO', N'Grande Hotel Quente', 20)
INSERT [dbo].[Destinos] ([ID], [Nome], [Cidade], [Estado], [Hotel], [QuantidadeDias]) VALUES (5, N'Pimentinha é bom!', N'Salvador', N'BA', N'Bera da Praia', 8)
SET IDENTITY_INSERT [dbo].[Destinos] OFF
GO
SET IDENTITY_INSERT [dbo].[Promocoes] ON 

INSERT [dbo].[Promocoes] ([ID], [Valor], [Desconto], [DestinoID]) VALUES (1, 600, 85, 1)
INSERT [dbo].[Promocoes] ([ID], [Valor], [Desconto], [DestinoID]) VALUES (2, 1200, 400, 4)
SET IDENTITY_INSERT [dbo].[Promocoes] OFF
GO
ALTER TABLE [dbo].[Promocoes]  WITH CHECK ADD  CONSTRAINT [FK_Promocoes_Destinos_DestinoID] FOREIGN KEY([DestinoID])
REFERENCES [dbo].[Destinos] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Promocoes] CHECK CONSTRAINT [FK_Promocoes_Destinos_DestinoID]
GO
