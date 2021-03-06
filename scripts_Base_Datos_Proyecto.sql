USE [Data_Client_Control]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 02/05/2020 12:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[Cod_ciudad] [int] NOT NULL,
	[Nombre_ciudad] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_ciudad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 02/05/2020 12:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Cod_pais] [int] NOT NULL,
	[Nombre_pais] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_pais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actividades]    Script Date: 02/05/2020 12:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividades](
	[Cod_actividad] [int] NOT NULL,
	[Tipo_actividad] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_actividad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 02/05/2020 12:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Cod_estado] [int] NOT NULL,
	[Tipo_estado] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_estado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa_detalle]    Script Date: 02/05/2020 12:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa_detalle](
	[Cod_empresa] [int] NOT NULL,
	[Nombre_empresa] [nvarchar](300) NOT NULL,
	[Direccion_empresa] [nvarchar](max) NOT NULL,
	[Telefono_empresa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_empresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 02/05/2020 12:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[Cod_empresa] [int] NOT NULL,
	[Cod_actividad] [int] NOT NULL,
	[Cod_estado] [int] NOT NULL,
	[Cod_pais] [int] NOT NULL,
	[Cod_ciudad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_empresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 02/05/2020 12:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[Cod_compra] [int] NOT NULL,
	[Cod_cli] [int] NOT NULL,
	[Cod_empresa] [int] NOT NULL,
	[Fecha_compra] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_compra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/05/2020 12:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cod_cli] [int] NOT NULL,
	[Nombres] [nvarchar](300) NOT NULL,
	[Apellidos] [nvarchar](300) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Cod_ciudad] [int] NOT NULL,
	[Cod_pais] [int] NOT NULL,
	[Cod_compra] [int] NOT NULL,
	[Cod_estado] [int] NOT NULL,
	[Id_cli] [nvarchar](50) NOT NULL,
	[Red_Social] [nvarchar](max) NOT NULL,
	[Edad] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_cli] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 02/05/2020 12:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promociones](
	[Cod_promocion] [int] NOT NULL,
	[fecha_ini_promo] [datetime] NOT NULL,
	[fecha_fin_promo] [datetime] NOT NULL,
	[Cod_ciudad] [int] NOT NULL,
	[Cod_pais] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_promocion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Empresas__Cod_ci__108B795B]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Empresas]  WITH CHECK ADD FOREIGN KEY([Cod_ciudad])
REFERENCES [dbo].[Ciudades] ([Cod_ciudad])
GO
/****** Object:  ForeignKey [FK__Empresas__Cod_pa__0F975522]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Empresas]  WITH CHECK ADD FOREIGN KEY([Cod_pais])
REFERENCES [dbo].[Paises] ([Cod_pais])
GO
/****** Object:  ForeignKey [FK__Compras__Cod_emp__15502E78]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD FOREIGN KEY([Cod_empresa])
REFERENCES [dbo].[Empresas] ([Cod_empresa])
GO
/****** Object:  ForeignKey [FK__Clientes__Cod_ci__182C9B23]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([Cod_ciudad])
REFERENCES [dbo].[Ciudades] ([Cod_ciudad])
GO
/****** Object:  ForeignKey [FK__Clientes__Cod_co__1A14E395]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([Cod_compra])
REFERENCES [dbo].[Compras] ([Cod_compra])
GO
/****** Object:  ForeignKey [FK__Clientes__Cod_pa__1920BF5C]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([Cod_pais])
REFERENCES [dbo].[Paises] ([Cod_pais])
GO
/****** Object:  ForeignKey [FK__Promocion__Cod_c__07F6335A]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Promociones]  WITH CHECK ADD FOREIGN KEY([Cod_ciudad])
REFERENCES [dbo].[Ciudades] ([Cod_ciudad])
GO
/****** Object:  ForeignKey [FK__Promocion__Cod_p__08EA5793]    Script Date: 02/05/2020 12:32:54 ******/
ALTER TABLE [dbo].[Promociones]  WITH CHECK ADD FOREIGN KEY([Cod_pais])
REFERENCES [dbo].[Paises] ([Cod_pais])
GO
