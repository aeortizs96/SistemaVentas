USE [SistemasDeVentas]
GO
/****** Object:  Table [dbo].[tbl_Clientes]    Script Date: 05/29/2017 16:50:30 ******/
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
/****** Object:  Table [dbo].[tbl_Categorias]    Script Date: 05/29/2017 16:50:30 ******/
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
/****** Object:  Table [dbo].[tbl_Usuarios]    Script Date: 05/29/2017 16:50:30 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmCliente]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_abmCliente]
(
@Accion				nvarchar(10),
@clienteId			int,
@nit				varchar(10),
@nombres			varchar(40),
@apellidos			varchar(40),
@telefono			varchar(8),
@direccion			varchar(80),
@email				varchar(40),
@sexo				varchar(9)
)
AS
if @Accion = 'AGREGAR'
BEGIN 
INSERT INTO tbl_Clientes(nit,nombres,apellidos,telefono,direccion,email,sexo)values (@nit,@nombres,@apellidos,@telefono,@direccion,@email,@sexo)
end
if @Accion = 'BORRAR'
BEGIN 
DELETE FROM tbl_Clientes where clienteId = @clienteId
end
if @Accion = 'MODIFICAR'
BEGIN 
UPDATE tbl_Clientes SET
nit=@nit, nombres=@nombres,apellidos=@apellidos,telefono=@telefono,direccion=@direccion,email=@email,sexo=@sexo 
WHERE clienteId = @clienteId
end

RETURN;
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmCategoria]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_Ventas_abmCategoria]
(
@Accion					nvarchar(10),
@categoriaId			int,
@descripcion			varchar(80)
)
AS
if @Accion = 'AGREGAR'
BEGIN 
INSERT INTO tbl_Categorias(descripcion)values (@descripcion)
end
if @Accion = 'BORRAR'
BEGIN 
DELETE FROM tbl_Categorias where categoriaId = @categoriaId
end
if @Accion = 'MODIFICAR'
BEGIN 
UPDATE tbl_Categorias SET
descripcion=@descripcion
WHERE categoriaId = @categoriaId
end

RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_Seguridad_InsRegistro]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Seguridad_InsRegistro]
@cI					varchar(10),
@nombres			varchar (50) ,
@apellidos			varchar (50) ,
@telefono			varchar(8),
@direccion			varchar(80),
@email				varchar(40) ,
@sexo				varchar(9),
@nombreUsuario		varchar(20),
@contrasena			varchar(100),
@tipo				varchar(15)
as
begin
INSERT INTO tbl_Usuarios (cI,nombres,apellidos,telefono,direccion,email,sexo,nombreUsuario,contrasena,tipo)
values(@cI,@nombres,@apellidos,@telefono,@direccion,@email,@sexo,@nombreUsuario,@contrasena,@tipo)
end;
GO
/****** Object:  Table [dbo].[tbl_Ventas]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Ventas](
	[ventaId] [int] IDENTITY(1,1) NOT NULL,
	[clienteId] [int] NOT NULL,
	[fechaVenta] [varchar](15) NOT NULL,
	[numeroDocumento] [varchar](50) NULL,
	[tipoDocumento] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ventaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_seleccionaCliente]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_seleccionaCliente]
(
@clienteId int 
)
As 
Select * from tbl_Clientes where clienteId = @clienteId
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_seleccionaCategoria]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_seleccionaCategoria]
(
@categoriaId int 
)
As 
Select * from tbl_Categorias where categoriaId = @categoriaId
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoCliente]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_listadoCliente]
As 
Select * from tbl_Clientes order by nombres
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoCategoria]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_listadoCategoria]
As 
Select * from tbl_Categorias order by descripcion
return
GO
/****** Object:  Table [dbo].[tbl_Productos]    Script Date: 05/29/2017 16:50:33 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_seleccionaVenta]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_seleccionaVenta]
(
@ventaId int 
)
As 
Select * from tbl_Ventas  where ventaId = @ventaId
return
GO
/****** Object:  Table [dbo].[tbl_DetalleVentas]    Script Date: 05/29/2017 16:50:33 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmVentas]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_abmVentas]
(
@Accion				nvarchar(10),
@ventaId			int,
@clienteId			int,
@fechaVenta			varchar(15),
@numeroDocumento	varchar(50),
@tipoDocumento		varchar(15)
)
AS
if @Accion = 'AGREGAR'
BEGIN 
INSERT INTO tbl_Ventas(clienteId, fechaVenta, numeroDocumento, tipoDocumento)values (@clienteId, @fechaVenta, @numeroDocumento, @tipoDocumento)
end
if @Accion = 'BORRAR'
BEGIN 
DELETE FROM tbl_Ventas where ventaId = @ventaId
end
if @Accion = 'MODIFICAR'
BEGIN 
UPDATE tbl_Ventas SET
clienteId=@clienteId , fechaVenta=@fechaVenta, numeroDocumento=@numeroDocumento, tipoDocumento=@tipoDocumento
WHERE ventaId = @ventaId
end

RETURN;
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmProducto]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_Ventas_abmProducto]
(
@Accion					nvarchar(10),
@productoId				int,
@categoriaId			int,									
@nombre					varchar (30),
@descripcionP			varchar (80),
@stock					int,
@precioCompra			decimal(18, 2),
@precioVenta			decimal(18, 2),
@fechaVencimiento		varchar(15),
@imagen					varchar(10)
)
AS
if @Accion = 'AGREGAR'
BEGIN 
INSERT INTO tbl_Productos(categoriaId,nombre,descripcionP,stock,precioCompra,precioVenta,fechaVencimiento,fechaCreado,imagen)
values (@categoriaId,@nombre,@descripcionP,@stock,@precioCompra,@precioVenta,@fechaVencimiento,GETDATE(),@imagen)
end
if @Accion = 'BORRAR'
BEGIN 
DELETE FROM tbl_Productos where productoId = @productoId
end
if @Accion = 'MODIFICAR'
BEGIN 
UPDATE tbl_Productos SET
categoriaId = @categoriaId, nombre = @nombre, descripcionP = @descripcionP, stock = @stock, precioCompra = @precioCompra, 
precioVenta =  @precioVenta, fechaVencimiento = @fechaVencimiento, imagen=@imagen
WHERE  productoId = @productoId
end

RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_productoSeleccionado]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_productoSeleccionado]
(
@productoId int 
)
As 
Select * from tbl_Productos where productoId = @productoId
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoVenta]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Ventas_listadoVenta]

AS
BEGIN
SELECT     dbo.tbl_Ventas.ventaId, dbo.tbl_Ventas.clienteId, dbo.tbl_Ventas.fechaVenta, dbo.tbl_Ventas.numeroDocumento, dbo.tbl_Ventas.tipoDocumento, dbo.tbl_Clientes.nombres, 
                      dbo.tbl_Clientes.apellidos
FROM         dbo.tbl_Clientes INNER JOIN
                      dbo.tbl_Ventas ON dbo.tbl_Clientes.clienteId = dbo.tbl_Ventas.clienteId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoProducto]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_listadoProducto]
As 
Select * from tbl_Productos order by nombre
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoDetalleVenta]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_listadoDetalleVenta]
As 
SELECT     dbo.tbl_DetalleVentas.detalleId, dbo.tbl_DetalleVentas.ventaId, dbo.tbl_DetalleVentas.productoId, dbo.tbl_Productos.nombre, dbo.tbl_Ventas.fechaVenta, dbo.tbl_Ventas.numeroDocumento, 
                      dbo.tbl_Ventas.tipoDocumento
FROM         dbo.tbl_DetalleVentas INNER JOIN
                      dbo.tbl_Productos ON dbo.tbl_DetalleVentas.productoId = dbo.tbl_Productos.productoId INNER JOIN
                      dbo.tbl_Ventas ON dbo.tbl_DetalleVentas.ventaId = dbo.tbl_Ventas.ventaId
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmDetalleVentas]    Script Date: 05/29/2017 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_abmDetalleVentas]
(
@Accion				nvarchar(10),
@detalleId			int,
@ventaId			int,
@productoId			int,
@cantidad			decimal(18,2),
@precioUnitario		decimal(18,2)
)
AS
if @Accion = 'AGREGAR'
BEGIN 
INSERT INTO tbl_DetalleVentas(ventaId, productoId, cantidad, precioUnitario)values (@ventaId, @productoId, @cantidad, @precioUnitario)
end
if @Accion = 'BORRAR'
BEGIN 
DELETE FROM tbl_DetalleVentas where detalleId = @detalleId
end
if @Accion = 'MODIFICAR'
BEGIN 
UPDATE tbl_DetalleVentas SET
ventaId=@ventaId, productoId=@productoId, cantidad=@cantidad, precioUnitario=@precioUnitario
WHERE detalleId = @detalleId
end

RETURN;
GO
/****** Object:  ForeignKey [FK__tbl_Venta__clien__20C1E124]    Script Date: 05/29/2017 16:50:33 ******/
ALTER TABLE [dbo].[tbl_Ventas]  WITH CHECK ADD FOREIGN KEY([clienteId])
REFERENCES [dbo].[tbl_Clientes] ([clienteId])
GO
/****** Object:  ForeignKey [FK__tbl_Produ__categ__1FCDBCEB]    Script Date: 05/29/2017 16:50:33 ******/
ALTER TABLE [dbo].[tbl_Productos]  WITH CHECK ADD FOREIGN KEY([categoriaId])
REFERENCES [dbo].[tbl_Categorias] ([categoriaId])
GO
/****** Object:  ForeignKey [FK__tbl_Detal__produ__1DE57479]    Script Date: 05/29/2017 16:50:33 ******/
ALTER TABLE [dbo].[tbl_DetalleVentas]  WITH CHECK ADD FOREIGN KEY([productoId])
REFERENCES [dbo].[tbl_Productos] ([productoId])
GO
/****** Object:  ForeignKey [FK__tbl_Detal__venta__1ED998B2]    Script Date: 05/29/2017 16:50:33 ******/
ALTER TABLE [dbo].[tbl_DetalleVentas]  WITH CHECK ADD FOREIGN KEY([ventaId])
REFERENCES [dbo].[tbl_Ventas] ([ventaId])
GO
