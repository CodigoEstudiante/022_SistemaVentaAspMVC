go
use master
go
IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE NAME = 'DBVENTAS_WEB')
CREATE DATABASE DBVENTAS_WEB

GO 

USE DBVENTAS_WEB

GO

--(1) TABLA ROL
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'ROL')
create table ROL(
IdRol int primary key identity(1,1),
Descripcion varchar(60),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

GO

--(2) TABLA TIENDA
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'TIENDA')
create table TIENDA(
IdTienda int primary key identity(1,1),
Nombre varchar(60),
RUC varchar(60),
Direccion varchar(100),
Telefono varchar(50),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

GO

--(3) TABLA MENU
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'MENU')
create table MENU(
IdMenu int primary key identity(1,1),
Nombre varchar(60),
Icono varchar(60),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

GO

--(4) TABLA SUBMENU
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'SUBMENU')
create table SUBMENU(
IdSubMenu int primary key identity(1,1),
IdMenu int references MENU(IdMenu),
Nombre varchar(60),
Controlador varchar(60),
Vista varchar(50),
Icono varchar(50),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

GO

--(5) TABLA USUARIO
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'USUARIO')
create table USUARIO(
IdUsuario int primary key identity(1,1),
Nombres varchar(60),
Apellidos varchar(60),
Correo varchar(60),
Clave varchar(100),
IdTienda int references TIENDA(IdTienda),
IdRol int references ROL(IdRol),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

GO

--(6) TABLA PERMISOS
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'PERMISOS')
create table PERMISOS(
IdPermisos int primary key identity(1,1),
IdRol int references ROL(IdRol),
IdSubMenu int references SUBMENU(IdSubMenu),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go
--(7) TABLA PROVEEDOR
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'PROVEEDOR')
create table PROVEEDOR(
IdProveedor int primary key identity(1,1),
RUC varchar(50),
RazonSocial varchar(100),
Telefono varchar(50),
Correo varchar(50),
Direccion varchar(50),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go

--(8) TABLA CATEGORIA
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'CATEGORIA')
create table CATEGORIA(
IdCategoria int primary key identity(1,1),
Descripcion varchar(100),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go


--(8) TABLA PRODUCTO
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'PRODUCTO')
create table PRODUCTO(
IdProducto int primary key identity(1,1),
Codigo varchar(100),
ValorCodigo int,
Nombre varchar(100),
Descripcion varchar(100),
IdCategoria int references CATEGORIA(IdCategoria),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go


--(8) TABLA PRODUCTO_TIENDA
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'PRODUCTO_TIENDA')
create table PRODUCTO_TIENDA(
IdProductoTienda int primary key identity(1,1),
IdProducto int references PRODUCTO(IdProducto),
IdTienda int references TIENDA(IdTienda),
PrecioUnidadCompra decimal(18,2) default 0,
PrecioUnidadVenta decimal(18,2) default 0,
Stock bigint default 0,
Activo bit default 1,
Iniciado bit default 0,
FechaRegistro datetime default getdate()
)

go

--(9) TABLA COMPRA
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'COMPRA')
create table COMPRA(
IdCompra int primary key identity(1,1),
IdUsuario int references USUARIO(IdUsuario),
IdProveedor int references PROVEEDOR(IdProveedor),
IdTienda int references TIENDA(IdTienda),
TotalCosto decimal(18,2) default 0,
TipoComprobante varchar(50) default 'Boleta',
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go

--(10) TABLA DETALLE_COMPRA
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'DETALLE_COMPRA')
create table DETALLE_COMPRA(
IdDetalleCompra int primary key identity(1,1),
IdCompra int references COMPRA(IdCompra),
IdProducto int references Producto(IdProducto),
Cantidad int,
PrecioUnitarioCompra decimal(18,2),
PrecioUnitarioVenta decimal(18,2),
TotalCosto decimal(18,2),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go

-- (10) TABLA CLIENTE
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'CLIENTE')
create table CLIENTE(
IdCliente int primary key identity(1,1),
TipoDocumento varchar(50),
NumeroDocumento varchar(50),
Nombre varchar(50),
Direccion varchar(50),
Telefono varchar(40),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go 

-- (11) TABLA VENTA
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'VENTA')
create table VENTA(
IdVenta int primary key identity(1,1),
Codigo varchar(100),
ValorCodigo int,
IdTienda int references TIENDA(IdTienda),
IdUsuario int references USUARIO(IdUsuario),
IdCliente int references CLIENTE(IdCliente),
TipoDocumento varchar(50),
CantidadProducto int,
CantidadTotal int,
TotalCosto  decimal(18,2),
ImporteRecibido decimal(18,2),
ImporteCambio decimal(18,2),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go


-- (12) TABLA DETALLE_VENTA
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'DETALLE_VENTA')
create table DETALLE_VENTA(
IdDetalleVenta int primary key identity(1,1),
IdVenta int references VENTA(IdVenta),
IdProducto int references PRODUCTO(IdProducto),
Cantidad int,
PrecioUnidad decimal(18,2),
ImporteTotal decimal(18,2),
Activo bit default 1,
FechaRegistro datetime default getdate()
)

go
