USE [SisVentasDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteArea]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertArea]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetUsuarios]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetAreas]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteUsuario]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmCliente]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmCategoria]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Seguridad_InsRegistro]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_UpdateUsuario]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_UpdateArea]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertUsuario]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoCliente]    Script Date: 04/27/2017 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_listadoCliente]
As 
Select * from tbl_Clientes order by nombres
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoCategoria]    Script Date: 04/27/2017 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_listadoCategoria]
As 
Select * from tbl_Categorias order by descripcion
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_seleccionaCliente]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_seleccionaCategoria]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_productoSeleccionado]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Ventas_listadoProducto]    Script Date: 04/27/2017 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_Ventas_listadoProducto]
As 
Select * from tbl_Productos order by nombre
return
GO
/****** Object:  StoredProcedure [dbo].[usp_Ventas_abmProducto]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertModulo]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_UpdateModulo]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteModulo]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetModulos]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertAcceso]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetAccesos]    Script Date: 04/27/2017 12:47:03 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteAcceso]    Script Date: 04/27/2017 12:47:03 ******/
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
