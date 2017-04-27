USE [SisVentasDB]
GO
/****** Object:  Table [dbo].[tbl_SEG_Area]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Categorias]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Categorias](
	[categoriaId] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoriaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_VEN_TipoCambioDolar]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Usuarios]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Usuarios](
	[usuarioId] [int] IDENTITY(1,1) NOT NULL,
	[cI] [varchar](10) NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[telefono] [varchar](8) NOT NULL,
	[direccion] [varchar](80) NOT NULL,
	[email] [varchar](40) NOT NULL,
	[sexo] [varchar](9) NULL,
	[nombreUsuario] [varchar](20) NOT NULL,
	[contrasena] [varchar](100) NOT NULL,
	[tipo] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usuarioId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SEG_Usuario]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_INV_Marca]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_INV_Familia]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LOG_Bitacora]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_INV_UnidadMedida]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_INV_Caracteristica]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DOS_Dosificacion]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Clientes]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Clientes](
	[clienteId] [int] IDENTITY(1,1) NOT NULL,
	[nit] [varchar](10) NOT NULL,
	[nombres] [varchar](40) NOT NULL,
	[apellidos] [varchar](40) NOT NULL,
	[telefono] [varchar](8) NOT NULL,
	[direccion] [varchar](80) NOT NULL,
	[email] [varchar](40) NOT NULL,
	[sexo] [varchar](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[clienteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CLI_TipoCliente]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CLI_Cliente]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_INV_Producto]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_Modulo]    Script Date: 04/27/2017 12:46:19 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Productos]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Productos](
	[productoId] [int] IDENTITY(1,1) NOT NULL,
	[categoriaId] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcionP] [varchar](80) NOT NULL,
	[stock] [int] NOT NULL,
	[precioCompra] [decimal](18, 2) NOT NULL,
	[precioVenta] [decimal](18, 2) NOT NULL,
	[fechaVencimiento] [varchar](15) NOT NULL,
	[fechaCreado] [datetime] NOT NULL,
	[imagen] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[productoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Ventas]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ventas](
	[ventaId] [int] IDENTITY(1,1) NOT NULL,
	[clienteId] [int] NOT NULL,
	[fechaVenta] [timestamp] NOT NULL,
	[numeroDocumento] [int] NULL,
	[tipoDocumento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ventaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_Acceso]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_Acceso](
	[moduloId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_INV_CaracteristicaProducto]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_INV_CaracteristicaProducto](
	[caracteristicaId] [int] NOT NULL,
	[productoId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DetalleVentas]    Script Date: 04/27/2017 12:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DetalleVentas](
	[detalleId] [int] IDENTITY(1,1) NOT NULL,
	[ventaId] [int] NOT NULL,
	[productoId] [int] NOT NULL,
	[cantidad] [decimal](18, 2) NOT NULL,
	[precioUnitario] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[detalleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tbl_CLI_Cliente_tbl_CLI_TipoCliente]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_CLI_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CLI_Cliente_tbl_CLI_TipoCliente] FOREIGN KEY([tipoClienteId])
REFERENCES [dbo].[tbl_CLI_TipoCliente] ([tipoClienteId])
GO
ALTER TABLE [dbo].[tbl_CLI_Cliente] CHECK CONSTRAINT [FK_tbl_CLI_Cliente_tbl_CLI_TipoCliente]
GO
/****** Object:  ForeignKey [FK_tbl_CLI_Cliente_tbl_SEG_Usuario]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_CLI_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CLI_Cliente_tbl_SEG_Usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[tbl_SEG_Usuario] ([usuarioId])
GO
ALTER TABLE [dbo].[tbl_CLI_Cliente] CHECK CONSTRAINT [FK_tbl_CLI_Cliente_tbl_SEG_Usuario]
GO
/****** Object:  ForeignKey [FK__tbl_Detal__produ__52593CB8]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_DetalleVentas]  WITH CHECK ADD FOREIGN KEY([productoId])
REFERENCES [dbo].[tbl_Productos] ([productoId])
GO
/****** Object:  ForeignKey [FK__tbl_Detal__venta__534D60F1]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_DetalleVentas]  WITH CHECK ADD FOREIGN KEY([ventaId])
REFERENCES [dbo].[tbl_Ventas] ([ventaId])
GO
/****** Object:  ForeignKey [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Caracteristica]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Caracteristica] FOREIGN KEY([caracteristicaId])
REFERENCES [dbo].[tbl_INV_Caracteristica] ([caracteristicaId])
GO
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto] CHECK CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Caracteristica]
GO
/****** Object:  ForeignKey [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Producto]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Producto] FOREIGN KEY([productoId])
REFERENCES [dbo].[tbl_INV_Producto] ([productoId])
GO
ALTER TABLE [dbo].[tbl_INV_CaracteristicaProducto] CHECK CONSTRAINT [FK_tbl_INV_CaracteristicaProducto_tbl_INV_Producto]
GO
/****** Object:  ForeignKey [FK_tbl_INV_Producto_tbl_INV_Familia]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_INV_Producto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Familia] FOREIGN KEY([familiaId])
REFERENCES [dbo].[tbl_INV_Familia] ([familiaId])
GO
ALTER TABLE [dbo].[tbl_INV_Producto] CHECK CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Familia]
GO
/****** Object:  ForeignKey [FK_tbl_INV_Producto_tbl_INV_Marca]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_INV_Producto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Marca] FOREIGN KEY([marcaId])
REFERENCES [dbo].[tbl_INV_Marca] ([marcaId])
GO
ALTER TABLE [dbo].[tbl_INV_Producto] CHECK CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_Marca]
GO
/****** Object:  ForeignKey [FK_tbl_INV_Producto_tbl_INV_UnidadMedida]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_INV_Producto]  WITH CHECK ADD  CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_UnidadMedida] FOREIGN KEY([unidadMedidaId])
REFERENCES [dbo].[tbl_INV_UnidadMedida] ([unidadMedidaId])
GO
ALTER TABLE [dbo].[tbl_INV_Producto] CHECK CONSTRAINT [FK_tbl_INV_Producto_tbl_INV_UnidadMedida]
GO
/****** Object:  ForeignKey [FK__tbl_Produ__categ__5070F446]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_Productos]  WITH CHECK ADD FOREIGN KEY([categoriaId])
REFERENCES [dbo].[tbl_Categorias] ([categoriaId])
GO
/****** Object:  ForeignKey [FK_tbl_SEG_Acceso_tbl_SEG_Modulo1]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_SEG_Acceso]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Modulo1] FOREIGN KEY([moduloId])
REFERENCES [dbo].[tbl_SEG_Modulo] ([moduloId])
GO
ALTER TABLE [dbo].[tbl_SEG_Acceso] CHECK CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Modulo1]
GO
/****** Object:  ForeignKey [FK_tbl_SEG_Acceso_tbl_SEG_Usuario]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_SEG_Acceso]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[tbl_SEG_Usuario] ([usuarioId])
GO
ALTER TABLE [dbo].[tbl_SEG_Acceso] CHECK CONSTRAINT [FK_tbl_SEG_Acceso_tbl_SEG_Usuario]
GO
/****** Object:  ForeignKey [FK_tbl_SEG_Modulo_tbl_SEG_Area]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_SEG_Modulo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_Modulo_tbl_SEG_Area] FOREIGN KEY([areaId])
REFERENCES [dbo].[tbl_SEG_Area] ([areaId])
GO
ALTER TABLE [dbo].[tbl_SEG_Modulo] CHECK CONSTRAINT [FK_tbl_SEG_Modulo_tbl_SEG_Area]
GO
/****** Object:  ForeignKey [FK__tbl_Venta__clien__5165187F]    Script Date: 04/27/2017 12:46:19 ******/
ALTER TABLE [dbo].[tbl_Ventas]  WITH CHECK ADD FOREIGN KEY([clienteId])
REFERENCES [dbo].[tbl_Clientes] ([clienteId])
GO
