USE [master]
GO
/****** Object:  Database [FCFM]    Script Date: 9/7/2018 1:14:36 AM ******/
CREATE DATABASE [FCFM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FCFM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FCFM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FCFM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FCFM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FCFM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FCFM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FCFM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FCFM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FCFM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FCFM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FCFM] SET ARITHABORT OFF 
GO
ALTER DATABASE [FCFM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FCFM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FCFM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FCFM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FCFM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FCFM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FCFM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FCFM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FCFM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FCFM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FCFM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FCFM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FCFM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FCFM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FCFM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FCFM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FCFM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FCFM] SET RECOVERY FULL 
GO
ALTER DATABASE [FCFM] SET  MULTI_USER 
GO
ALTER DATABASE [FCFM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FCFM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FCFM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FCFM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FCFM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FCFM', N'ON'
GO
ALTER DATABASE [FCFM] SET QUERY_STORE = OFF
GO
USE [FCFM]
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
USE [FCFM]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 9/7/2018 1:14:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[iIdCliente] [int] NOT NULL,
	[VNombre_Cliente] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Cliente] UNIQUE NONCLUSTERED 
(
	[iIdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 9/7/2018 1:14:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[iIdEmpleado] [int] NOT NULL,
	[vNombre_Empleado] [varchar](8) NULL,
	[vApellidoM_Empleado] [varchar](15) NULL,
	[vApellidoP_Empleado] [varchar](15) NULL,
	[dFechaContratacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Empleado] UNIQUE NONCLUSTERED 
(
	[iIdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 9/7/2018 1:14:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[iIdFactura] [int] NOT NULL,
	[iIdCliente] [int] NOT NULL,
	[iIdEmpleado] [int] NOT NULL,
	[iIdProducto] [int] NULL,
	[vNombre_Producto] [varchar](20) NOT NULL,
	[dFechaExpedicion] [datetime] NOT NULL,
	[iCantidad_Producto] [int] NULL,
	[iPrecio_Producto] [int] NULL,
	[mPrecio_Total]  AS ([iCantidad_Producto]*[iPrecio_Producto]),
PRIMARY KEY CLUSTERED 
(
	[iIdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Factura] UNIQUE NONCLUSTERED 
(
	[iIdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 9/7/2018 1:14:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[iIdProducto] [int] NOT NULL,
	[vNombre_Producto] [varchar](20) NULL,
	[iImagen_Producto] [image] NULL,
	[iIdProveedor] [int] NULL,
	[dPeso_Producto] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Producto] UNIQUE NONCLUSTERED 
(
	[iIdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 9/7/2018 1:14:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[iIdProveedor] [int] NOT NULL,
	[vNombre_Proveedor] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Proveedor] UNIQUE NONCLUSTERED 
(
	[iIdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [in_Cliente]    Script Date: 9/7/2018 1:14:37 AM ******/
CREATE NONCLUSTERED INDEX [in_Cliente] ON [dbo].[Cliente]
(
	[VNombre_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Personal]    Script Date: 9/7/2018 1:14:37 AM ******/
CREATE NONCLUSTERED INDEX [index_Personal] ON [dbo].[Empleado]
(
	[iIdEmpleado] ASC,
	[vNombre_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [in_Factura]    Script Date: 9/7/2018 1:14:37 AM ******/
CREATE NONCLUSTERED INDEX [in_Factura] ON [dbo].[Factura]
(
	[iIdFactura] ASC,
	[iIdEmpleado] ASC,
	[dFechaExpedicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Producto]    Script Date: 9/7/2018 1:14:37 AM ******/
CREATE NONCLUSTERED INDEX [index_Producto] ON [dbo].[Producto]
(
	[iIdProducto] ASC,
	[vNombre_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [FCFM] SET  READ_WRITE 
GO
