go
use DBVENTAS_WEB
go
--************************ VALIDAMOS SI EXISTE EL PROCEDIMIENTO ************************--

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_LoginUsuario')
DROP PROCEDURE usp_LoginUsuario
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerDetalleUsuario')
DROP PROCEDURE usp_ObtenerDetalleUsuario
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerPermisos')
DROP PROCEDURE usp_ObtenerPermisos

GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ActualizarPermisos')
DROP PROCEDURE usp_ActualizarPermisos

GO


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerUsuario')
DROP PROCEDURE usp_ObtenerUsuario

go
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarUsuario')
DROP PROCEDURE usp_RegistrarUsuario

go
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarUsuario')
DROP PROCEDURE usp_ModificarUsuario

go
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarUsuario')
DROP PROCEDURE usp_EliminarUsuario

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerTienda')
DROP PROCEDURE usp_ObtenerTienda

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarTienda')
DROP PROCEDURE usp_RegistrarTienda

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarTienda')
DROP PROCEDURE usp_ModificarTienda

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarTienda')
DROP PROCEDURE usp_EliminarTienda

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerRoles')
DROP PROCEDURE usp_ObtenerRoles

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarRol')
DROP PROCEDURE usp_RegistrarRol

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarRol')
DROP PROCEDURE usp_ModificarRol

go
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarRol')
DROP PROCEDURE usp_EliminarRol

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerProveedores')
DROP PROCEDURE usp_ObtenerProveedores

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarProveedor')
DROP PROCEDURE usp_RegistrarProveedor

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarProveedor')
DROP PROCEDURE usp_ModificarProveedor

go
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarProveedor')
DROP PROCEDURE usp_EliminarProveedor

go

--**************   PROCEDMIENTOS DE CATEGORIAS *****************************

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerCategorias')
DROP PROCEDURE usp_ObtenerCategorias

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarCategoria')
DROP PROCEDURE usp_RegistrarCategoria

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarCategoria')
DROP PROCEDURE usp_ModificarCategoria

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarCategoria')
DROP PROCEDURE usp_EliminarCategoria

go
--**************   PROCEDMIENTOS DE PRODUCTOS *****************************

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerProductos')
DROP PROCEDURE usp_ObtenerProductos

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarProducto')
DROP PROCEDURE usp_RegistrarProducto

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarProducto')
DROP PROCEDURE usp_ModificarProducto

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarProducto')
DROP PROCEDURE usp_EliminarProducto


GO
--**************   PROCEDMIENTOS DE PRODUCTO_TIENDA *****************************
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerProductoTienda')
DROP PROCEDURE usp_ObtenerProductoTienda

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarProductoTienda')
DROP PROCEDURE usp_RegistrarProductoTienda

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarProductoTienda')
DROP PROCEDURE usp_ModificarProductoTienda

go


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarProductoTienda')
DROP PROCEDURE usp_EliminarProductoTienda

GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ControlarStock')
DROP PROCEDURE usp_ControlarStock

GO

--**************   PROCEDMIENTOS DE COMPRA *****************************
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarCompra')
DROP PROCEDURE usp_RegistrarCompra

GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerDetalleCompra')
DROP PROCEDURE usp_ObtenerDetalleCompra

GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerListaCompra')
DROP PROCEDURE usp_ObtenerListaCompra

GO


--**************   PROCEDMIENTOS DE VENTA *****************************
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarVenta')
DROP PROCEDURE usp_RegistrarVenta

GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerDetalleVenta')
DROP PROCEDURE usp_ObtenerDetalleVenta

GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerListaVenta')
DROP PROCEDURE usp_ObtenerListaVenta

GO

--**************   PROCEDMIENTOS PARA REPORTES *****************************
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_rptProductoTienda')
DROP PROCEDURE usp_rptProductoTienda

GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_rptVenta')
DROP PROCEDURE usp_rptVenta

GO
--**************   PROCEDMIENTOS PARA CLIENTE *****************************

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ObtenerCliente')
DROP PROCEDURE usp_ObtenerCliente

GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_RegistrarCliente')
DROP PROCEDURE usp_RegistrarCliente

GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_ModificarCliente')
DROP PROCEDURE usp_ModificarCliente

GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_EliminarCliente')
DROP PROCEDURE usp_EliminarCliente

GO

--PROCEDMIENTO PARA OBTENER USUARIO

create procedure usp_LoginUsuario(
@Correo varchar(60),
@Clave varchar(100),
@IdUsuario int output
)
as
begin
	set @IdUsuario = 0
	if exists(select * from USUARIO where Correo COLLATE Latin1_General_CS_AS = @Correo and Clave COLLATE Latin1_General_CS_AS = @Clave and Activo = 1)
		set @IdUsuario = (select top 1 IdUsuario from USUARIO where Correo  COLLATE Latin1_General_CS_AS = @Correo and Clave COLLATE Latin1_General_CS_AS = @Clave and Activo = 1)
end

go

--PROCEDMIENTO PARA OBTENER DETALLE USUARIO
create proc usp_ObtenerDetalleUsuario(
@IdUsuario int
)
as
begin

 select 
*,
(select * from TIENDA t
 where t.IdTienda = up.IdTienda
FOR XML PATH (''),TYPE) AS 'DetalleTienda'
,
(select * from ROL r
 where r.IdRol = up.IdRol
FOR XML PATH (''),TYPE) AS 'DetalleRol'
,
 (
 select t.NombreMenu,t.Icono,
 (select sm.Nombre[NombreSubMenu],sm.Controlador,sm.Vista,sm.Icono,p.Activo
	 from PERMISOS p
	 inner join ROL r on r.IdRol = p.IdRol
	 inner join SUBMENU sm on sm.IdSubMenu = p.IdSubMenu
	 inner join MENU m on m.IdMenu = sm.IdMenu
	 inner join USUARIO u on u.IdRol = r.IdRol and u.IdUsuario = up.IdUsuario
	where sm.IdMenu = t.IdMenu
  FOR XML PATH ('SubMenu'),TYPE) AS 'DetalleSubMenu' 

 from (
 select distinct m.Nombre[NombreMenu],m.IdMenu,m.Icono
 from PERMISOS p
 inner join ROL r on r.IdRol = p.IdRol
 inner join SUBMENU sm on sm.IdSubMenu = p.IdSubMenu
 inner join MENU m on m.IdMenu = sm.IdMenu
 inner join USUARIO u on u.IdRol = r.IdRol and u.IdUsuario = up.IdUsuario
 where p.Activo = 1) t
 FOR XML PATH ('Menu'),TYPE) AS 'DetalleMenu'  
 from USUARIO up
 where UP.IdUsuario = @IdUsuario
 FOR XML PATH(''), ROOT('Usuario')  

end

GO

--PROCEDMIENTO PARA OBTENER PERMISOS
create procedure usp_ObtenerPermisos(
@IdRol int)
as
begin
select p.IdPermisos,m.Nombre[Menu],sm.Nombre[SubMenu],p.Activo from PERMISOS p
inner join SUBMENU sm on sm.IdSubMenu = p.IdSubMenu
inner join MENU m on m.IdMenu = sm.IdMenu
where p.IdRol = @IdRol
end

go

--PROCEDIMIENTO PARA ACTUALIZAR PERMISOS
create procedure usp_ActualizarPermisos(
@Detalle xml,
@Resultado bit output
)
as
begin
begin try

	BEGIN TRANSACTION
	declare @permisos table(idpermisos int,activo bit)

	insert into @permisos(idpermisos,activo)
	select 
	idpermisos = Node.Data.value('(IdPermisos)[1]','int'),
	activo = Node.Data.value('(Activo)[1]','bit')
	FROM @Detalle.nodes('/DETALLE/PERMISO') Node(Data)

	select * from @permisos

	update p set p.Activo = pe.activo from PERMISOS p
	inner join @permisos pe on pe.idpermisos = p.IdPermisos

	COMMIT
	set @Resultado = 1

end try
begin catch
	ROLLBACK
	set @Resultado = 0
end catch
end

go

--PROCEDMIENTO PARA OBTENER USUARIOS
CREATE PROC usp_ObtenerUsuario
as
begin
 select u.IdUsuario,u.Nombres,u.Apellidos,u.Correo,u.Clave,u.IdTienda,u.IdRol,u.Activo,u.FechaRegistro,r.Descripcion[DescripcionRol],u.Activo from USUARIO u
 inner join ROL r on r.IdRol = u.IdRol
end

go
--PROCEDIMIENTO PARA REGISTRAR USUARIO
CREATE PROC usp_RegistrarUsuario(
@Nombres varchar(50),
@Apellidos varchar(50),
@Correo varchar(50),
@Clave varchar(100),
@IdTienda int,
@IdRol int,
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM USUARIO WHERE Correo = @Correo)

		insert into USUARIO(Nombres,Apellidos,Correo,Clave,IdTienda,IdRol) values (
		@Nombres,@Apellidos,@Correo,@Clave,@IdTienda,@IdRol
		)
	ELSE
		SET @Resultado = 0
	
end

go
--PROCEDIMIENTO PARA MODIFICAR USUARIO
CREATE procedure usp_ModificarUsuario(
@IdUsuario int,
@Nombres varchar(50),
@Apellidos varchar(50),
@Correo varchar(50),
@Clave varchar(50),
@IdTienda int,
@IdRol int,
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM USUARIO WHERE Correo = @Correo and IdUsuario != @IdUsuario)
		
		update USUARIO set 
		Nombres = @Nombres,
		Apellidos = @Apellidos,
		Correo = @Correo,
		IdTienda = @IdTienda,
		IdRol = @IdRol,
		Activo = @Activo
		where IdUsuario = @IdUsuario

	ELSE
		SET @Resultado = 0

end

go

--PROCEDIMIENTO PARA ELIMINAR USUARIO
create procedure usp_EliminarUsuario(
@IdUsuario int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun usuario se encuentre relacionado a una tienda
	IF (not EXISTS (select c.* from COMPRA c 
		inner join USUARIO u on u.IdUsuario = c.IdUsuario 
		where u.IdUsuario = @IdUsuario
		) and 
		not EXISTS (select v.* from VENTA v 
		inner join USUARIO u on u.IdUsuario = v.IdUsuario 
		where u.IdUsuario = @IdUsuario
		)
	)
		delete from USUARIO where IdUsuario = @IdUsuario
	ELSE
		SET @Resultado = 0

end

go
--PROCEDMIENTO PARA OBTENER TIENDAS
CREATE PROC usp_ObtenerTienda
as
begin
 select IdTienda,Nombre,RUC,Direccion,Telefono,Activo from TIENDA
end

go
--PROCEDIMIENTO PARA GUARDAR TIENDA
CREATE PROC usp_RegistrarTienda(
@Nombre varchar(50),
@Ruc varchar(50),
@Direccion varchar(50),
@Telefono varchar(50),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM TIENDA WHERE Nombre = @Nombre)

		insert into TIENDA(Nombre,RUC,Direccion,Telefono) values (
		@Nombre,@Ruc,@Direccion,@Telefono
		)
	ELSE
		SET @Resultado = 0
	
end

go
--PROCEDIMIENTO PARA MODIFICAR TIENDA
create procedure usp_ModificarTienda(
@IdTienda int,
@Nombre varchar(60),
@Ruc varchar(60),
@Direccion varchar(60),
@Telefono varchar(60),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM TIENDA WHERE Nombre =@Nombre and IdTienda != @IdTienda)
		
		update TIENDA set 
		Nombre = @Nombre,
		RUC = @Ruc,
		Direccion = @Direccion,
		Telefono = @Telefono,
		Activo = @Activo
		where IdTienda = @IdTienda

	ELSE
		SET @Resultado = 0

end

go
--PROCEDIMIENTO PARA ELIMINAR TIENDA
create procedure usp_EliminarTienda(
@IdTienda int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que la tienda no se encuentre asignada a un usuario y una venta
	IF not EXISTS (select * from USUARIO u
	inner join TIENDA t on t.IdTienda = u.IdTienda
	where t.IdTienda = @IdTienda)

		delete from TIENDA where IdTienda = @IdTienda

	ELSE
		SET @Resultado = 0

end

go

--PROCEDMIENTO PARA OBTENER ROLES
CREATE PROC usp_ObtenerRoles
as
begin
 select IdRol, Descripcion,Activo from ROL
end

go

--PROCEDIMIENTO PARA GUARDAR ROL
CREATE PROC usp_RegistrarRol(
@Descripcion varchar(50),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM ROL WHERE Descripcion = @Descripcion)
	begin
		declare @idrol int = 0
		insert into ROL(Descripcion) values (
		@Descripcion
		)
		set @idrol  = Scope_identity()

		insert into PERMISOS(IdRol,IdSubMenu,Activo)
		select @idrol, IdSubMenu,0 from SUBMENU
	end
	ELSE
		SET @Resultado = 0
	
end


go

--PROCEDIMIENTO PARA MODIFICAR ROLES
create procedure usp_ModificarRol(
@IdRol int,
@Descripcion varchar(60),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM ROL WHERE Descripcion =@Descripcion and IdRol != @IdRol)
		
		update ROL set 
		Descripcion = @Descripcion,
		Activo = @Activo
		where IdRol = @IdRol
	ELSE
		SET @Resultado = 0

end

go

--PROCEDIMIENTO PARA ELIMINAR ROL
create procedure usp_EliminarRol(
@IdRol int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que el rol no se encuentre asignado a algun usuario
	IF not EXISTS (select * from USUARIO u
	inner join ROL r on r.IdRol  = u.IdRol
	where r.IdRol = @IdRol)
	begin	
		delete from PERMISOS where IdRol = @IdRol
		delete from ROL where IdRol = @IdRol
	end
	ELSE
		SET @Resultado = 0

end

go
--PROCEDMIENTO PARA OBTENER PROVEEDORES
CREATE PROC usp_ObtenerProveedores
as
begin
 select IdProveedor,RUC,RazonSocial,Telefono,Correo,Direccion,Activo from PROVEEDOR
end

go


--PROCEDIMIENTO PARA GUARDAR PROVEEDOR
CREATE PROC usp_RegistrarProveedor(
@Ruc varchar(50),
@RazonSocial varchar(100),
@Telefono varchar(50),
@Correo varchar(50),
@Direccion varchar(50),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PROVEEDOR WHERE RUC = @Ruc)

		insert into PROVEEDOR(RUC,RazonSocial,Telefono,Correo,Direccion)
		values(@Ruc,@RazonSocial,@Telefono,@Correo,@Direccion)

	ELSE
		SET @Resultado = 0
	
end

go


--PROCEDIMIENTO PARA MODIFICAR PROVEEDOR
create procedure usp_ModificarProveedor(
@IdProveedor int,
@Ruc varchar(50),
@RazonSocial varchar(100),
@Telefono varchar(50),
@Correo varchar(50),
@Direccion varchar(50),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PROVEEDOR WHERE RUC = @Ruc and IdProveedor != @IdProveedor)
		
		update PROVEEDOR set 
		RUC = @Ruc,
		RazonSocial = @RazonSocial,
		Telefono = @Telefono,
		Correo = @Correo,
		Direccion = @Direccion,
		Activo = @Activo
		where IdProveedor = @IdProveedor
	ELSE
		SET @Resultado = 0

end

go

--PROCEDIMIENTO PARA ELIMINAR PROVEEDOR
create procedure usp_EliminarProveedor(
@IdProveedor int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	--validamos que ningun proveedor se encuentre asignado a una compra
	IF not EXISTS (select top 1 * from COMPRA c
inner join PROVEEDOR p on p.IdProveedor = c.IdProveedor
where p.IdProveedor = @IdProveedor)

		delete from PROVEEDOR where IdProveedor = @IdProveedor
	ELSE
		SET @Resultado = 0

end

go


--PROCEDMIENTO PARA OBTENER CATEGORIA
CREATE PROC usp_ObtenerCategorias
as
begin
 select IdCategoria,Descripcion,Activo from CATEGORIA
end

go

--PROCEDIMIENTO PARA GUARDAR CATEGORIA
CREATE PROC usp_RegistrarCategoria(
@Descripcion varchar(50),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM CATEGORIA WHERE Descripcion = @Descripcion)

		insert into CATEGORIA(Descripcion) values (
		@Descripcion
		)
	ELSE
		SET @Resultado = 0
	
end

go

--PROCEDIMIENTO PARA MODIFICAR CATEGORIA
create procedure usp_ModificarCategoria(
@IdCategoria int,
@Descripcion varchar(60),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM CATEGORIA WHERE Descripcion =@Descripcion and IdCategoria != @IdCategoria)
		
		update CATEGORIA set 
		Descripcion = @Descripcion,
		Activo = @Activo
		where IdCategoria = @IdCategoria
	ELSE
		SET @Resultado = 0

end

go

--PROCEDIMIENTO PARA ELIMINAR CATEGORIA
create procedure usp_EliminarCategoria(
@IdCategoria int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ninguna categoria este relacionada a un producto
	IF not EXISTS (select * from CATEGORIA c
	inner join PRODUCTO p on c.IdCategoria  = p.IdCategoria
	where c.IdCategoria = @IdCategoria)

		delete from CATEGORIA where IdCategoria = @IdCategoria

	ELSE
		SET @Resultado = 0

end



go

--PROCEMIENTO PARA OBTENER PRODUCTO
CREATE PROC usp_ObtenerProductos
as
begin
 select IdProducto,Codigo,ValorCodigo,Nombre,p.Descripcion[DescripcionProducto],p.IdCategoria,p.Activo,c.Descripcion[DescripcionCategoria] from PRODUCTO p
 inner join CATEGORIA c on c.IdCategoria = p.IdCategoria

end

go

--PROCEDIMIENTO PARA GUARDAR PRODUCTO
CREATE PROC usp_RegistrarProducto(
@Nombre varchar(50),
@Descripcion varchar(50),
@IdCategoria int,
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PRODUCTO WHERE rtrim(ltrim(Nombre)) = rtrim(ltrim(@Nombre)))

		insert into PRODUCTO(Codigo,ValorCodigo,Nombre,Descripcion,IdCategoria) values (
		RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO)),6),(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO),@Nombre,@Descripcion,@IdCategoria
		)
	ELSE
		SET @Resultado = 0
	
end

go

--PROCEDIMIENTO PARA MODIFICAR PRODUCTO
create procedure usp_ModificarProducto(
@IdProducto int,
@Nombre varchar(50),
@Descripcion varchar(50),
@IdCategoria int,
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PRODUCTO WHERE rtrim(ltrim(Nombre)) = rtrim(ltrim(@Nombre)) and IdProducto != @IdProducto)
		
		update PRODUCTO set
		Nombre = @Nombre,
		Descripcion = @Descripcion,
		IdCategoria = @IdCategoria,
		Activo = @Activo
		where IdProducto = @IdProducto
	ELSE
		SET @Resultado = 0

end

go

--PROCEDIMIENTO PARA ELIMINAR PRODUCTO
create procedure usp_EliminarProducto(
@IdProducto int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	--validamos que ningun producto se encuentre relacionado a una tienda
	IF not EXISTS (select top 1 * from PRODUCTO_TIENDA PT
INNER JOIN PRODUCTO P ON P.IdProducto = PT.IdProducto
WHERE P.IdProducto = @IdProducto)
		delete from PRODUCTO where IdProducto = @IdProducto

	ELSE
		SET @Resultado = 0

end

GO
/********************* PRODUCTO_TIENDA **************************/


--PROCEDMIENTO PARA OBTENER PRODUCTO_TIENDA
CREATE PROC usp_ObtenerProductoTienda
as
begin
 select pt.IdProductoTienda,p.IdProducto,p.Codigo[CodigoProducto], p.Nombre[NombreProducto],p.Descripcion[DescripcionProducto],
 t.IdTienda,t.RUC,t.Nombre[NombreTienda] ,t.Direccion[DireccionTienda],pt.PrecioUnidadCompra,pt.PrecioUnidadVenta,pt.Stock,pt.Iniciado
 from PRODUCTO_TIENDA pt
 inner join PRODUCTO p on p.IdProducto = pt.IdProducto
 inner join TIENDA t on t.IdTienda = pt.IdTienda
end

go


--PROCEDIMIENTO PARA GUARDAR PRODUCTO_TIENDA
CREATE PROC usp_RegistrarProductoTienda(
@IdProducto int,
@IdTienda int,
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PRODUCTO_TIENDA WHERE IdProducto = @IdProducto and IdTienda = @IdTienda)

		insert into PRODUCTO_TIENDA(IdProducto,IdTienda) values (
		@IdProducto,@IdTienda
		)
	ELSE
		SET @Resultado = 0
	
end

go

--PROCEDIMIENTO PARA MODIFICAR PRODUCTO_TIENDA
create procedure usp_ModificarProductoTienda(
@IdProductoTienda int,
@IdProducto varchar(60),
@IdTienda varchar(60),
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PRODUCTO_TIENDA WHERE @IdProductoTienda = @IdProductoTienda and Iniciado = 1 )
		
		update PRODUCTO_TIENDA set 
		IdProducto = @IdProducto,
		IdTienda = @IdTienda
		where IdProductoTienda = @IdProductoTienda
	ELSE
		SET @Resultado = 0

end

go

--PROCEDIMIENTO PARA ELIMINAR PRODUCTO_TIENDA
create procedure usp_EliminarProductoTienda(
@IdProductoTienda int,
@Resultado bit output
)
as
begin
	SET @Resultado = 1

	IF NOT EXISTS (SELECT * FROM PRODUCTO_TIENDA WHERE IdProductoTienda = @IdProductoTienda and Iniciado = 1 )

		delete from PRODUCTO_TIENDA where IdProductoTienda = @IdProductoTienda

	ELSE
		SET @Resultado = 0

end

go

--PROCEDIMIENTO PARA STOCK PRODUCTO_TIENDA

CREATE PROCEDURE usp_ControlarStock(
@IdProducto int,
@IdTienda int,
@Cantidad int,
@Restar bit,
@Resultado bit output)
as
begin
	set @Resultado = 1
	begin try
		if(@Restar = 1)
			update PRODUCTO_TIENDA set Stock = Stock - @Cantidad where IdProducto = @IdProducto and IdTienda = @IdTienda and Iniciado = 1
		else
			update PRODUCTO_TIENDA set Stock = Stock + @Cantidad where IdProducto = @IdProducto and IdTienda = @IdTienda and Iniciado = 1
	end try
	begin catch
		set @Resultado = 0
	end catch
end


go

/********************* COMPRA **************************/

--PROCEDIMIENTO PARA REGITRAR COMPRA
create procedure usp_RegistrarCompra(
@Detalle xml,
@Resultado bit output
)
as
begin


begin try

	BEGIN TRANSACTION

	declare @compra table(idusuario int,idproveedor int,idtienda int,totalcosto decimal(18,2))
	declare @detallecompra table(idcompra int,idproducto int,cantidad int,preciounidadcompra decimal(18,2),preciounidadventa decimal(18,2),totalcosto decimal(18,2))
	declare @tiendaproducto table(idtienda int,idproducto int,cantidad int,preciounidadcompra decimal(18,2),preciounidadventa decimal(18,2),totalcosto decimal(18,2))

	 insert into @compra(idusuario,idproveedor,idtienda,totalcosto)
	 select 
	 IdUsuario = Node.Data.value('(IdUsuario)[1]','int'),
	 IdProveedor = Node.Data.value('(IdProveedor)[1]','int'),
	 IdTienda = Node.Data.value('(IdTienda)[1]','int'),
	 TotalCosto = Node.Data.value('(TotalCosto)[1]','decimal(18,2)')
	 FROM @Detalle.nodes('/DETALLE/COMPRA') Node(Data)
 
	 insert into @detallecompra(idcompra,idproducto,cantidad,preciounidadcompra,preciounidadventa,totalcosto)
	 select 
	 IdCompra = Node.Data.value('(IdCompra)[1]','int'),
	 IdProducto = Node.Data.value('(IdProducto)[1]','int'),
	 Cantidad = Node.Data.value('(Cantidad)[1]','int'),
	 PrecioUnidadCompra = Node.Data.value('(PrecioUnidadCompra)[1]','decimal(18,2)'),
	 PrecioUnidadVenta = Node.Data.value('(PrecioUnidadVenta)[1]','decimal(18,2)'),
	 TotalCosto = Node.Data.value('(TotalCosto)[1]','decimal(18,2)')
	 FROM @Detalle.nodes('/DETALLE/DETALLE_COMPRA/DETALLE') Node(Data)

	 insert into @tiendaproducto(idtienda,idproducto,cantidad,preciounidadcompra,preciounidadventa,totalcosto)
	 select
	 (select top 1 idtienda from @compra),
	 idproducto,cantidad,preciounidadcompra,preciounidadventa,totalcosto
	 from @detallecompra


	 --******************* AREA DE TRABAJO *************************
	 declare @IdCompra int = 0

	 insert into COMPRA(IdUsuario,IdProveedor,IdTienda,TotalCosto)
	 select idusuario,idproveedor,idtienda,totalcosto from @compra

	 set @IdCompra = Scope_identity()
	 update @detallecompra set idcompra = @IdCompra

	 insert into DETALLE_COMPRA(IdCompra,IdProducto,Cantidad,PrecioUnitarioCompra,PrecioUnitarioVenta,TotalCosto)
	 select idcompra,idproducto,cantidad,preciounidadcompra,preciounidadventa,totalcosto from @detallecompra

	 update pt set 
	 pt.PrecioUnidadCompra = tp.preciounidadcompra, 
	 pt.PrecioUnidadVenta = tp.preciounidadventa,
	 pt.Stock = pt.Stock + tp.cantidad,
	 pt.Iniciado = 1
	 from PRODUCTO_TIENDA pt
	 inner join @tiendaproducto tp on tp.idtienda = pt.IdTienda and tp.idproducto = pt.IdProducto

	 COMMIT
	 set @Resultado = 1

 end try
 begin catch
	ROLLBACK
	set @Resultado = 0
 end catch
end



GO

--PROCEDMIENTO PARA OBTENER DETALLE COMPRA
create proc usp_ObtenerDetalleCompra(
@IdCompra int
)
as
begin


select  RIGHT('000000' + convert(varchar(max),c.IdCompra),6)[Codigo],
CONVERT(char(10),c.FechaRegistro,103)[FechaCompra],
CONVERT(decimal(10,2), c.TotalCosto)[TotalCosto],

(select p.RUC,p.RazonSocial from PROVEEDOR P
 where p.IdProveedor = c.IdProveedor
FOR XML PATH (''),TYPE) AS 'DETALLE_PROVEEDOR',

(select T.RUC, T.Nombre, T.Direccion from TIENDA T
 where T.IdTienda = c.IdTienda
FOR XML PATH (''),TYPE) AS 'DETALLE_TIENDA',

(select convert(int, dc.Cantidad)[Cantidad],concat(p.Nombre,' - ',p.Descripcion)[NombreProducto],
CONVERT(decimal(10,2),dc.PrecioUnitarioCompra)PrecioUnitarioCompra,
CONVERT(decimal(10,2),dc.TotalCosto)[TotalCosto] 
from DETALLE_COMPRA dc
inner join PRODUCTO p on p.IdProducto = dc.IdProducto
where dc.IdCompra = c.IdCompra
FOR XML PATH ('PRODUCTO'),TYPE) AS 'DETALLE_PRODUCTO'

from COMPRA c
where c.IdCompra =@IdCompra
FOR XML PATH(''), ROOT('DETALLE_COMPRA') 
end

go


--PROCEDMIENTO PARA OBTENER LISTA COMPRA
create procedure usp_ObtenerListaCompra(
@FechaInicio date,
@FechaFin date,
@IdProveedor int = 0 ,
@IdTienda int = 0
)
as
begin
SET DATEFORMAT dmy;
select c.IdCompra,RIGHT('000000' + convert(varchar(max),c.IdCompra),6)[NumeroCompra], p.RazonSocial,t.Nombre,
convert(char(10),c.FechaRegistro,103)[FechaCompra],c.TotalCosto from COMPRA c
inner join PROVEEDOR p on p.IdProveedor = c.IdProveedor
inner join TIENDA t on t.IdTienda = c.IdTienda
where 
CONVERT(date,c.FechaRegistro) between @FechaInicio and @FechaFin and
p.IdProveedor = iif(@IdProveedor = 0,p.IdProveedor,@IdProveedor) and
t.IdTienda =iif(@IdTienda = 0,t.IdTienda,@IdTienda) 

end


GO

/********************* VENTA **************************/

--PROCEDIMIENTO PARA REGITRAR VENTA
create procedure usp_RegistrarVenta(
@Detalle xml,
@Resultado int output
)
as
begin


begin try

	BEGIN TRANSACTION
	
	declare @cliente table (tipodocumento varchar(50),numerodocumento varchar(50),nombre varchar(100),direccion varchar(100),telefono varchar(50))
	declare @venta table (idtienda int,idusuario int,idcliente int default 0,tipodocumento varchar(50),cantidadproducto int,cantidadtotal int,totalcosto decimal(18,2),importerecibido decimal(18,2),importecambio decimal(18,2))
	declare @detalleventa table (idventa int,idproducto int,cantidad int,preciounidad decimal(18,2),importetotal decimal(18,2))

	insert into @cliente(tipodocumento,numerodocumento,nombre,direccion,telefono)
		 select 
		 tipodocumento = Node.Data.value('(TipoDocumento)[1]','varchar(50)'),
		 numerodocumento = Node.Data.value('(NumeroDocumento)[1]','varchar(50)'),
		 nombre = Node.Data.value('(Nombre)[1]','varchar(100)'),
		 direccion = Node.Data.value('(Direccion)[1]','varchar(100)'),
		 telefono = Node.Data.value('(Telefono)[1]','varchar(50)')
		 FROM @Detalle.nodes('/DETALLE/DETALLE_CLIENTE/DATOS') Node(Data)

	insert into @venta(idtienda,idusuario,idcliente,tipodocumento,cantidadproducto,cantidadtotal,totalcosto,importerecibido,importecambio)
	select 
		 IdTienda = Node.Data.value('(IdTienda)[1]','varchar(50)'),
		 IdUsuario = Node.Data.value('(IdUsuario)[1]','varchar(50)'),
		 IdCliente = Node.Data.value('(IdCliente)[1]','varchar(100)'),
		 TipoDocumento = Node.Data.value('(TipoDocumento)[1]','varchar(100)'),
		 CantidadProducto = Node.Data.value('(CantidadProducto)[1]','varchar(50)'),
		 CantidadTotal = Node.Data.value('(CantidadTotal)[1]','varchar(50)'),
		 TotalCosto = Node.Data.value('(TotalCosto)[1]','decimal(18,2)'),
		 ImporteRecibido = Node.Data.value('(ImporteRecibido)[1]','decimal(18,2)'),
		 ImporteCambio = Node.Data.value('(ImporteCambio)[1]','decimal(18,2)')
		 FROM @Detalle.nodes('/DETALLE/VENTA') Node(Data)

	insert into @detalleventa(idventa,idproducto,cantidad,preciounidad,importetotal)
		 select 
		 IdVenta = Node.Data.value('(IdVenta)[1]','int'),
		 IdProducto = Node.Data.value('(IdProducto)[1]','int'),
		 Cantidad = Node.Data.value('(Cantidad)[1]','int'),
		 PrecioUnidad = Node.Data.value('(PrecioUnidad)[1]','decimal(18,2)'),
		 ImporteTotal = Node.Data.value('(ImporteTotal)[1]','decimal(18,2)')
		 FROM @Detalle.nodes('/DETALLE/DETALLE_VENTA/DATOS') Node(Data)

	--******************* AREA DE TRABAJO *************************
	declare @identity as table(ID int)

	if not exists(select * from CLIENTE where numeroDocumento = (select numerodocumento from @cliente))
	insert into CLIENTE(TipoDocumento,NumeroDocumento,Nombre,Direccion,Telefono)
	output inserted.IdCliente into @identity
	select tipodocumento,numerodocumento,nombre,direccion,telefono from @cliente
	else 
	 insert into @identity(ID)
	 select IdCliente from CLIENTE where numeroDocumento = (select numerodocumento from @cliente)

	update @venta set idcliente = (select ID from @identity)
	delete from @identity

	insert into VENTA(Codigo,ValorCodigo,IdTienda,IdUsuario,IdCliente,TipoDocumento,CantidadProducto,CantidadTotal,TotalCosto,ImporteRecibido,ImporteCambio)
	output inserted.IdVenta into @identity
	select 
	RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from VENTA) ),6),
	(select isnull(max(ValorCodigo),0) + 1 from VENTA),
	idtienda,idusuario,idcliente,tipodocumento,cantidadproducto,cantidadtotal,totalcosto,importerecibido,importecambio
	from @venta

	update @detalleventa set idventa = (select ID from @identity)

	insert into DETALLE_VENTA(IdVenta,IdProducto,Cantidad,PrecioUnidad,ImporteTotal)
	select idventa,idproducto,cantidad,preciounidad,importetotal from @detalleventa


	 COMMIT
	 set @Resultado = (select ID from @identity)

 end try
 begin catch
	ROLLBACK
	set @Resultado = 0
 end catch
end

GO

--PROCEDMIENTO PARA OBTENER DETALLE VENTA
create proc usp_ObtenerDetalleVenta(
@IdVenta int
)
as
begin


select V.TipoDocumento, V.Codigo,
CONVERT(decimal(10,2), V.TotalCosto)[TotalCosto],
CONVERT(decimal(10,2),V.ImporteRecibido)[ImporteRecibido],
CONVERT(decimal(10,2), V.ImporteCambio)[ImporteCambio],
convert(char(10),v.fechaRegistro,103)[FechaRegistro],
(select u.Nombres,u.Apellidos from USUARIO U
 where U.IdUsuario = v.IdUsuario
FOR XML PATH (''),TYPE) AS 'DETALLE_USUARIO',

(select T.RUC, T.Nombre, T.Direccion from TIENDA T
 where T.IdTienda = V.IdTienda
FOR XML PATH (''),TYPE) AS 'DETALLE_TIENDA',

(select C.Nombre,C.Direccion,C.NumeroDocumento,C.Telefono from CLIENTE c
 where c.IdCliente = V.IdCliente
FOR XML PATH (''),TYPE) AS 'DETALLE_CLIENTE',

(select dv.Cantidad,concat(p.Nombre,'-',p.Descripcion)[NombreProducto],
CONVERT(decimal(10,2),dv.PrecioUnidad)[PrecioUnidad],
CONVERT(decimal(10,2),dv.ImporteTotal)[ImporteTotal] 
from DETALLE_VENTA dv
inner join PRODUCTO p on p.IdProducto = dv.IdProducto
where dv.IdVenta = v.IdVenta
FOR XML PATH ('PRODUCTO'),TYPE) AS 'DETALLE_PRODUCTO'

from VENTA v
where v.IdVenta = @IdVenta
FOR XML PATH(''), ROOT('DETALLE_VENTA') 

end

GO

--PROCEDMIENTO PARA OBTENER LISTA VENTA

create procedure usp_ObtenerListaVenta(
@Codigo varchar(50) = '',
@FechaInicio date,
@FechaFin date,
@NumeroDocumento varchar(50) = '',
@Nombre varchar(100) = ''
)
as
begin
SET DATEFORMAT dmy;
select v.IdVenta, v.TipoDocumento,v.Codigo,v.FechaRegistro,c.NumeroDocumento,c.Nombre,v.TotalCosto from VENTA v 
inner join CLIENTE c on c.IdCliente = v.IdCliente
where 
v.Codigo = iif(@Codigo='',v.Codigo,@Codigo) and
CONVERT(date,v.FechaRegistro) between @FechaInicio and @FechaFin and
c.NumeroDocumento like CONCAT('%',@NumeroDocumento,'%') and
c.Nombre like CONCAT('%',@Nombre,'%')

end

go
--PROCEDMIENTO PARA REPORTE TIENDA PRODUCTO

 create procedure usp_rptProductoTienda(
 @IdTienda int = 0,
 @Codigo varchar(50)
 )
 as
 begin
 select 
 t.RUC[Ruc Tienda],t.Nombre[Nombre Tienda],t.Direccion[Direccion Tienda],
 p.Codigo[Codigo Producto],p.Nombre[Nombre Producto],p.Descripcion[Descripcion Producto],
 pt.Stock[Stock en tienda],convert(decimal(10,2),pt.PrecioUnidadCompra)[Precio Compra],convert(decimal(10,2),pt.PrecioUnidadVenta)[Precio Venta]
 from PRODUCTO_TIENDA pt
 inner join PRODUCTO p on p.IdProducto = pt.IdProducto
 inner join TIENDA t on t.IdTienda = pt.IdTienda
 where pt.IdTienda = iif(@IdTienda = 0,pt.IdTienda,@IdTienda) and
 p.Codigo like '%' + @Codigo + '%'
 end

 go

 --PROCEDMIENTO PARA REPORTE VENTA

create procedure usp_rptVenta (
@FechaInicio date,
@FechaFin date,
@IdTienda int = 0
)
as
begin

 select convert(char(10), v.FechaRegistro ,103)[Fecha Venta],v.Codigo[Numero Documento],v.TipoDocumento[Tipo Documento],
 t.Nombre[Nombre Tienda], t.RUC[Ruc Tienda],
 concat(u.Nombres,' ', u.apellidos)[Nombre Empleado],
 v.CantidadTotal[Cantidad Unidades Vendidas],v.CantidadProducto[Cantidad Productos],v.TotalCosto[Total Venta] 
 from VENTA v
 inner join TIENDA t on t.IdTienda = v.IdTienda
 inner join USUARIO u on u.IdUsuario = v.IdUsuario
 where 
 CONVERT(date,v.FechaRegistro) between @FechaInicio and @FechaFin 
 and v.IdTienda = iif(@IdTienda =0 ,v.IdTienda,@IdTienda)
end

go


--PROCEDMIENTO PARA OBTENER USUARIOS
CREATE PROC usp_ObtenerCliente
as
begin
  select IdCliente,TipoDocumento,NumeroDocumento,Nombre,Direccion,Telefono,Activo from CLIENTE
end


go

--PROCEDIMIENTO PARA GUARDAR CLIENTE
CREATE PROC usp_RegistrarCliente(
@TipoDocumento varchar(100),
@NumeroDocumento varchar(100),
@Nombre varchar(100),
@Direccion varchar(100),
@Telefono varchar(100),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM CLIENTE WHERE NumeroDocumento = @NumeroDocumento)
	begin
		insert into cliente(TipoDocumento,NumeroDocumento,Nombre,Direccion,Telefono) values
		(@TipoDocumento,@NumeroDocumento,@Nombre,@Direccion,@Telefono)
	end
	ELSE
		SET @Resultado = 0
	
end

go
--PROCEDIMIENTO PARA MODIFICAR CLIENTE
CREATE PROC usp_ModificarCliente(
@IdCliente int,
@TipoDocumento varchar(100),
@NumeroDocumento varchar(100),
@Nombre varchar(100),
@Direccion varchar(100),
@Telefono varchar(100),
@Activo bit,
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM CLIENTE WHERE NumeroDocumento = @NumeroDocumento and IdCliente != @IdCliente)
	begin
		update CLIENTE set 
		TipoDocumento = @TipoDocumento,
		NumeroDocumento = @NumeroDocumento,
		Nombre = @Nombre,
		Direccion = @Direccion,
		Telefono = @Telefono,
		Activo = @Activo
		where IdCliente = @IdCliente
	end
	ELSE
		SET @Resultado = 0
	
end

go

--PROCEDIMIENTO PARA ELIMINAR CLIENTE
create procedure usp_EliminarCliente(
@IdCliente int,
@Resultado bit output
)
as
begin
	set @Resultado = 1
	begin try
		delete from CLIENTE where IdCliente = @IdCliente

	end try
	begin catch
		set @Resultado = 0
	end catch
end
