USE [master]
GO
/****** Object:  Database [FXOOX]    Script Date: 10/27/2018 3:20:08 AM ******/
CREATE DATABASE [FXOOX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FXOOX', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FXOOX.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FXOOX_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FXOOX_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FXOOX] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FXOOX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FXOOX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FXOOX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FXOOX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FXOOX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FXOOX] SET ARITHABORT OFF 
GO
ALTER DATABASE [FXOOX] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FXOOX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FXOOX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FXOOX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FXOOX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FXOOX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FXOOX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FXOOX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FXOOX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FXOOX] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FXOOX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FXOOX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FXOOX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FXOOX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FXOOX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FXOOX] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FXOOX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FXOOX] SET RECOVERY FULL 
GO
ALTER DATABASE [FXOOX] SET  MULTI_USER 
GO
ALTER DATABASE [FXOOX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FXOOX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FXOOX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FXOOX] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FXOOX] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FXOOX', N'ON'
GO
ALTER DATABASE [FXOOX] SET QUERY_STORE = OFF
GO
USE [FXOOX]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [FXOOX]
GO
/****** Object:  Table [dbo].[Pago_Factura]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago_Factura](
	[iId_PagoFactura] [uniqueidentifier] NOT NULL,
	[iId_Venta] [uniqueidentifier] NOT NULL,
	[iId_MetodoPago] [tinyint] NOT NULL,
	[iCantidad_Pago] [decimal](18, 0) NOT NULL,
	[vCompañia_Pago] [varchar](25) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_PagoFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Header_Factura]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Header_Factura](
	[iId_Venta] [uniqueidentifier] NOT NULL,
	[iId_Cliente] [uniqueidentifier] NOT NULL,
	[iId_Empleado] [uniqueidentifier] NOT NULL,
	[dFecha_Venta] [datetime] NOT NULL,
	[iTotal_Venta] [decimal](18, 0) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[iId_Cliente] [uniqueidentifier] NOT NULL,
	[vNombre_Cliente] [varchar](40) NOT NULL,
	[vApellidoP_Cliente] [varchar](40) NOT NULL,
	[vApellidoM_Cliente] [varchar](40) NOT NULL,
	[iTelefono_Cliente] [bigint] NOT NULL,
	[vCorreo_Cliente] [varchar](50) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ClienteRepeticionRight]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ClienteRepeticionRight]
as
	select c.iId_Cliente, c.vNombre_Cliente, c.vApellidoM_Cliente, c.vApellidoP_Cliente,iId_MetodoPago
	from Cliente as c, Pago_Factura
	left join Header_Factura as hf
	on iId_Cliente = hf.iId_Cliente
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[iId_Producto] [bigint] NOT NULL,
	[vNombre_Producto] [varchar](25) NOT NULL,
	[iId_Proveedor] [int] NOT NULL,
	[dPeso_Producto] [decimal](18, 0) NOT NULL,
	[vArea_Producto] [varchar](30) NOT NULL,
	[vDescripcion_Producto] [varchar](250) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[PesoEspecial]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[PesoEspecial]
as
WITH PesoEspecial (promValor) as (
	select AVG(dPeso_Producto)
	from Producto
)	Select vNombre_Producto, iId_Producto, dPeso_Producto
	from Producto as p, PesoEspecial as pe
	where p.dPeso_Producto > pe.promValor
GO
/****** Object:  View [dbo].[ClienteRepeticion]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ClienteRepeticion]
as
	select c.iId_Cliente, c.vNombre_Cliente, c.vApellidoM_Cliente, c.vApellidoP_Cliente,iId_MetodoPago
	from Cliente as c, Pago_Factura
	left join Header_Factura as hf
	on iId_Cliente = hf.iId_Cliente
GO
/****** Object:  Table [dbo].[Producto_Factura]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_Factura](
	[iId_ProductoFactura] [uniqueidentifier] NOT NULL,
	[iId_Venta] [uniqueidentifier] NOT NULL,
	[iId_Producto] [bigint] NOT NULL,
	[iCantidad_Producto] [int] NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_ProductoFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[FacturaCliente]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FacturaCliente]
as
	with Factura (EmpleadoEstrella) as(
	select count(iId_Empleado)
	from Header_Factura
	)
	select pa.iId_Producto, hf.iId_Venta, hf.dFecha_Venta, hf.iTotal_Venta
	from Producto_Factura as pa, Header_Factura as hf, Factura
	where EmpleadoEstrella > 10
GO
/****** Object:  View [dbo].[prueba]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[prueba]
as
select vNombre_Producto
from Producto;
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[iId_Producto] [bigint] NOT NULL,
	[dPrecio_Compra] [decimal](18, 0) NOT NULL,
	[iCantidad_Almacenada] [bigint] NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ReporteProducto]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteProducto] 
as
	select p.vNombre_Producto, a.iId_Producto, count(a.iCantidad_Almacenada) as CantidadActual
	from Producto as p, Almacen as a
	group by p.vNombre_Producto, a.iId_Producto
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[iId_Empleado] [uniqueidentifier] NOT NULL,
	[vNombre_Empleado] [varchar](40) NOT NULL,
	[vApellidoP_Empleado] [varchar](40) NOT NULL,
	[vApellidoM_Empleado] [varchar](40) NOT NULL,
	[vPuesto_Empleado] [varchar](40) NOT NULL,
	[iTelefono_Empleado] [bigint] NOT NULL,
	[vCorreo_Empleado] [varchar](50) NOT NULL,
	[cTurno_Empleado] [char](1) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado_Cuenta]    Script Date: 10/27/2018 3:20:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado_Cuenta](
	[vCodigoAcceso] [varchar](69) NOT NULL,
	[iId_Empleado] [uniqueidentifier] NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vCodigoAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[iId_MetodoPago] [tinyint] NOT NULL,
	[vNombre_Pago] [varchar](25) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_MetodoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio_Producto]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio_Producto](
	[iId_PrecioProducto] [uniqueidentifier] NOT NULL,
	[iId_Producto] [bigint] NULL,
	[dFecha_Precio] [datetime] NOT NULL,
	[dPrecio_Venta] [decimal](18, 0) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_PrecioProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[iId_Proveedor] [int] NOT NULL,
	[vNombre_Proveedor] [varchar](40) NOT NULL,
	[cStatus] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ClienteMetodoPago]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClienteMetodoPago](@numpro int)
as begin
	select * from ClienteRepeticion
	where iId_MetodoPago = @numpro
end
GO
/****** Object:  StoredProcedure [dbo].[ClienteMetodoPagoRight]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ClienteMetodoPagoRight](@numpro int)
as begin
	select * from ClienteRepeticionRight
	where iId_MetodoPago = @numpro
end
GO
/****** Object:  StoredProcedure [dbo].[ElPesoProducto]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ElPesoProducto](@valor int)
as begin
	select * from Producto
	where dPeso_Producto > @valor
end
GO
/****** Object:  StoredProcedure [dbo].[PesoProducto]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PesoProducto](@valor int)
as begin
	select * from Producto
	where dPeso_Producto > @valor
end
GO
/****** Object:  StoredProcedure [dbo].[ProductoProvee]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ProductoProvee](@numpro int)
as begin
	select vNombre_Producto, iId_Producto from Producto
	where iId_Proveedor = @numpro
end
GO
/****** Object:  StoredProcedure [dbo].[ReporteProductos]    Script Date: 10/27/2018 3:20:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReporteProductos](@numpro int)
as begin
	select * from ReporteProducto
	where CantidadActual = @numpro
end
GO
USE [master]
GO
ALTER DATABASE [FXOOX] SET  READ_WRITE 
GO
