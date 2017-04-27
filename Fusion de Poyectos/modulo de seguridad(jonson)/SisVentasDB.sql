USE [master]
GO
/****** Object:  Database [SisVentasDB]    Script Date: 26/04/2017 9:14:22 ******/
CREATE DATABASE [SisVentasDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SeguridadDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\\SisVentasDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SeguridadDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\\SisVentasDB_0.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SisVentasDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SisVentasDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SisVentasDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SisVentasDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SisVentasDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SisVentasDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SisVentasDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SisVentasDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SisVentasDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SisVentasDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SisVentasDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SisVentasDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SisVentasDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SisVentasDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SisVentasDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SisVentasDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SisVentasDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SisVentasDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SisVentasDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SisVentasDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SisVentasDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SisVentasDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SisVentasDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SisVentasDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SisVentasDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SisVentasDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SisVentasDB] SET  MULTI_USER 
GO
ALTER DATABASE [SisVentasDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SisVentasDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SisVentasDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SisVentasDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SisVentasDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteAcceso]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_DeleteAcceso]
	-- Add the parameters for the stored procedure here
	@intModuloId	INT,
    @intUsuarioId		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [SisVentasDB].[dbo].[tbl_SEG_Acceso]
    WHERE [moduloId] = @intModuloId AND [usuarioId] = @intUsuarioId

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteArea]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_DeleteArea]
	@intAreaId			INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DELETE FROM [SisVentasDB].[dbo].[tbl_SEG_Area]
      WHERE [areaId] = @intAreaId

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteModulo]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_DeleteModulo]
	-- Add the parameters for the stored procedure here
	@intModuloId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [SisVentasDB].[dbo].[tbl_SEG_Modulo]
    WHERE [moduloId] = @intModuloId

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteUsuario]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_DeleteUsuario]
	-- Add the parameters for the stored procedure here
	@intUsuarioId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DELETE FROM [SisVentasDB].[dbo].[tbl_SEG_Usuario]
      WHERE [usuarioId] = @intUsuarioId
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetAccesos]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetAccesos]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [moduloId]
      ,[usuarioId]
	FROM [SisVentasDB].[dbo].[tbl_SEG_Acceso]

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetAreas]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetAreas]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT [areaId]
      ,[descripcion]
	FROM [SisVentasDB].[dbo].[tbl_SEG_Area]

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetModulos]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetModulos]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [moduloId]
      ,[areaId]
      ,[descripcion]
	FROM [SisVentasDB].[dbo].[tbl_SEG_Modulo]
  
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetUsuarios]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetUsuarios]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [usuarioId]
      ,[nombreUsuario]
      ,[contrasena]
	FROM [SisVentasDB].[dbo].[tbl_SEG_Usuario]

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertAcceso]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_InsertAcceso]
	-- Add the parameters for the stored procedure here
	@intModuloId	INT,
    @intUsuarioId		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [SisVentasDB].[dbo].[tbl_SEG_Acceso]
           ([moduloId]
           ,[usuarioId])
    VALUES
           (@intModuloId
           ,@intUsuarioId)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertArea]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_InsertArea]
	@varDescripcion		NVARCHAR(250),
	@intAreaId		INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [SisVentasDB].[dbo].[tbl_SEG_Area]
           ([descripcion])
     VALUES
           (@varDescripcion)
	
	SELECT @intAreaId = SCOPE_IDENTITY()

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertModulo]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_InsertModulo]
	-- Add the parameters for the stored procedure here
	@intAreaId		INT,
	@varDescripcion	NVARCHAR(250),
	@intModuloId	INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [SisVentasDB].[dbo].[tbl_SEG_Modulo]
           ([areaId]
           ,[descripcion])
    VALUES
           (@intAreaId
           ,@varDescripcion)

	SELECT @intModuloId = SCOPE_IDENTITY()
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertUsuario]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_InsertUsuario]
	-- Add the parameters for the stored procedure here
	@varNombreUsuario	NVARCHAR(250),
	@varContrasena		NVARCHAR(250),
	@intUsuarioId		INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [SisVentasDB].[dbo].[tbl_SEG_Usuario]
           ([nombreUsuario]
           ,[contrasena])
     VALUES
           (@varNombreUsuario
           ,@varContrasena)

	SELECT @intUsuarioId = SCOPE_IDENTITY()
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_UpdateArea]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_UpdateArea]
	@intAreaId			INT,
	@varDescripcion		NVARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE [SisVentasDB].[dbo].[tbl_SEG_Area]
	SET [descripcion] = @varDescripcion
	WHERE [areaId] = @intAreaId

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_UpdateModulo]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_UpdateModulo]
	-- Add the parameters for the stored procedure here
	@intModuloId	INT,
	@intAreaId		INT,
	@varDescripcion	NVARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [SisVentasDB].[dbo].[tbl_SEG_Modulo]
	SET [areaId] = @intAreaId
      ,[descripcion] = @varDescripcion
	WHERE [moduloId] = @intModuloId

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_UpdateUsuario]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jonathan Simons
-- Create date: 14/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_UpdateUsuario]
	-- Add the parameters for the stored procedure here
	@intUsuarioId		INT,
	@varNombreUsuario	NVARCHAR(250),
	@varContrasena		NVARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE [SisVentasDB].[dbo].[tbl_SEG_Usuario]
	SET [nombreUsuario] = @varNombreUsuario
      ,[contrasena] = @varContrasena
	WHERE [usuarioId] = @intUsuarioId

END

GO
/****** Object:  Table [dbo].[tbl_CLI_Cliente]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CLI_Cliente](
	[nitCliente] [nvarchar](50) NOT NULL,
	[razonSocial] [nvarchar](250) NOT NULL,
	[telefono] [nvarchar](50) NOT NULL,
	[tipoClienteId] [nvarchar](50) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_CLI_Cliente] PRIMARY KEY CLUSTERED 
(
	[nitCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_CLI_TipoCliente]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CLI_TipoCliente](
	[tipoClienteId] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_CLI_TipoCliente] PRIMARY KEY CLUSTERED 
(
	[tipoClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_DOS_Dosificacion]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DOS_Dosificacion](
	[dosificacionId] [int] IDENTITY(1,1) NOT NULL,
	[desde] [int] NOT NULL,
	[hasta] [int] NOT NULL,
	[numeroAutorizacion] [nvarchar](50) NOT NULL,
	[llaveDosificacion] [nvarchar](500) NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[facturaActual] [int] NOT NULL,
	[nit] [nvarchar](50) NOT NULL,
	[glosa] [nvarchar](500) NOT NULL,
	[cboEstado] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_DOS_Dosificacion] PRIMARY KEY CLUSTERED 
(
	[dosificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_INV_Caracteristica]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_INV_Caracteristica](
	[caracteristicaId] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_INV_Caracteristica] PRIMARY KEY CLUSTERED 
(
	[caracteristicaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_INV_CaracteristicaProducto]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_INV_CaracteristicaProducto](
	[caracteristicaId] [int] NOT NULL,
	[productoId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_INV_Familia]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_INV_Familia](
	[familiaId] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_INV_Familia] PRIMARY KEY CLUSTERED 
(
	[familiaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_INV_Marca]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_INV_Marca](
	[marcaId] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_INV_Marca] PRIMARY KEY CLUSTERED 
(
	[marcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_INV_Producto]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_INV_Producto](
	[productoId] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
	[descripcionDetalle] [nvarchar](max) NOT NULL,
	[marcaId] [nvarchar](50) NOT NULL,
	[familiaId] [nvarchar](50) NOT NULL,
	[modelo] [nvarchar](50) NOT NULL,
	[unidadMedidaId] [nvarchar](50) NOT NULL,
	[stock] [int] NOT NULL,
	[precioVenta] [float] NOT NULL,
 CONSTRAINT [PK_tbl_INV_Producto] PRIMARY KEY CLUSTERED 
(
	[productoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_INV_UnidadMedida]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_INV_UnidadMedida](
	[unidadMedidaId] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_INV_UnidadDeMedida] PRIMARY KEY CLUSTERED 
(
	[unidadMedidaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_LOG_Bitacora]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LOG_Bitacora](
	[bitacoraId] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[programa] [nvarchar](250) NOT NULL,
	[operacion] [nvarchar](50) NOT NULL,
	[valorAnterior] [nvarchar](max) NOT NULL,
	[valorNuevo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_Bitacora] PRIMARY KEY CLUSTERED 
(
	[bitacoraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SEG_Acceso]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_Acceso](
	[moduloId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SEG_Area]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_Area](
	[areaId] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_SEG_Areas] PRIMARY KEY CLUSTERED 
(
	[areaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SEG_Modulo]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_Modulo](
	[moduloId] [int] IDENTITY(1,1) NOT NULL,
	[areaId] [int] NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_SEG_Modulo] PRIMARY KEY CLUSTERED 
(
	[moduloId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SEG_Usuario]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_Usuario](
	[usuarioId] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [nvarchar](250) NOT NULL,
	[contrasena] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_SEG_Usuario] PRIMARY KEY CLUSTERED 
(
	[usuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_VEN_TipoCambioDolar]    Script Date: 26/04/2017 9:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_VEN_TipoCambioDolar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[valor] [float] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_VEN_TipoCambioDolar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tbl_SEG_Acceso] ([moduloId], [usuarioId]) VALUES (1, 2)
INSERT [dbo].[tbl_SEG_Acceso] ([moduloId], [usuarioId]) VALUES (2, 2)
INSERT [dbo].[tbl_SEG_Acceso] ([moduloId], [usuarioId]) VALUES (3, 2)
SET IDENTITY_INSERT [dbo].[tbl_SEG_Area] ON 

INSERT [dbo].[tbl_SEG_Area] ([areaId], [descripcion]) VALUES (1, N'Productos')
INSERT [dbo].[tbl_SEG_Area] ([areaId], [descripcion]) VALUES (2, N'Ventas')
SET IDENTITY_INSERT [dbo].[tbl_SEG_Area] OFF
SET IDENTITY_INSERT [dbo].[tbl_SEG_Modulo] ON 

INSERT [dbo].[tbl_SEG_Modulo] ([moduloId], [areaId], [descripcion]) VALUES (1, 1, N'Registrar producto')
INSERT [dbo].[tbl_SEG_Modulo] ([moduloId], [areaId], [descripcion]) VALUES (2, 1, N'Editar producto')
INSERT [dbo].[tbl_SEG_Modulo] ([moduloId], [areaId], [descripcion]) VALUES (3, 1, N'Eliminar producto')
SET IDENTITY_INSERT [dbo].[tbl_SEG_Modulo] OFF
SET IDENTITY_INSERT [dbo].[tbl_SEG_Usuario] ON 

INSERT [dbo].[tbl_SEG_Usuario] ([usuarioId], [nombreUsuario], [contrasena]) VALUES (2, N'admin', N'admin123')
SET IDENTITY_INSERT [dbo].[tbl_SEG_Usuario] OFF
ALTER TABLE [dbo].[tbl_CLI_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CLI_Cliente_tbl_CLI_TipoCliente] FOREIGN KEY([tipoClienteId])
REFERENCES [dbo].[tbl_CLI_TipoCliente] ([tipoClienteId])
GO
ALTER TABLE [dbo].[tbl_CLI_Cliente] CHECK CONSTRAINT [FK_tbl_CLI_Cliente_tbl_CLI_TipoCliente]
GO
ALTER TABLE [dbo].[tbl_CLI_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CLI_Cliente_tbl_SEG_Usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[tbl_SEG_Usuario] ([usuarioId])
GO
ALTER TABLE [dbo].[tbl_CLI_Cliente] CHECK CONSTRAINT [FK_tbl_CLI_Cliente_tbl_SEG_Usuario]
GO
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Caracteristica] FOREIGN KEY([caracteristicaId])
REFERENCES [dbo].[tbl_INV_Caracteristica] ([caracteristicaId])
GO
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto] CHECK CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Caracteristica]
GO
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Producto] FOREIGN KEY([productoId])
REFERENCES [dbo].[tbl_INV_Producto] ([productoId])
GO
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto] CHECK CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Producto]
GO
ALTER TABLE [dbo].[tbl_INV_Producto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Familia] FOREIGN KEY([familiaId])
REFERENCES [dbo].[tbl_INV_Familia] ([familiaId])
GO
ALTER TABLE [dbo].[tbl_INV_Producto] CHECK CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Familia]
GO
ALTER TABLE [dbo].[tbl_INV_Producto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Marca] FOREIGN KEY([marcaId])
REFERENCES [dbo].[tbl_INV_Marca] ([marcaId])
GO
ALTER TABLE [dbo].[tbl_INV_Producto] CHECK CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Marca]
GO
ALTER TABLE [dbo].[tbl_INV_Producto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_UnidadMedida] FOREIGN KEY([unidadMedidaId])
REFERENCES [dbo].[tbl_INV_UnidadMedida] ([unidadMedidaId])
GO
ALTER TABLE [dbo].[tbl_INV_Producto] CHECK CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_UnidadMedida]
GO
ALTER TABLE [dbo].[tbl_SEG_Acceso]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Modulo1] FOREIGN KEY([moduloId])
REFERENCES [dbo].[tbl_SEG_Modulo] ([moduloId])
GO
ALTER TABLE [dbo].[tbl_SEG_Acceso] CHECK CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Modulo1]
GO
ALTER TABLE [dbo].[tbl_SEG_Acceso]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[tbl_SEG_Usuario] ([usuarioId])
GO
ALTER TABLE [dbo].[tbl_SEG_Acceso] CHECK CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Usuario]
GO
ALTER TABLE [dbo].[tbl_SEG_Modulo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_Modulo_tbl_SEG_Area] FOREIGN KEY([areaId])
REFERENCES [dbo].[tbl_SEG_Area] ([areaId])
GO
ALTER TABLE [dbo].[tbl_SEG_Modulo] CHECK CONSTRAINT [FK_tbl_SEG_Modulo_tbl_SEG_Area]
GO
USE [master]
GO
ALTER DATABASE [SisVentasDB] SET  READ_WRITE 
GO
