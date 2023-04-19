
go
use DBVENTAS_WEB
go
--REGISTROS EN TABLA ROL
INSERT INTO ROL(Descripcion) VALUES ('ADMINISTRADOR'),('EMPLEADO')

GO
--REGISTROS EN TABLA MENU
INSERT INTO MENU(Nombre,Icono) VALUES
('Mantenedor','fas fa-tools'),
('Clientes','fas fa-user-friends'),
('Compras','fas fa-cart-arrow-down'),
('Ventas','fas fa-cash-register'),
('Reportes','far fa-clipboard')

GO
--REGISTROS EN TABLA SUBMENU
INSERT INTO SUBMENU(IdMenu,Nombre,Controlador,Vista,Icono) VALUES
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Mantenedor'),'Rol','Rol','Crear','fas fa-user-tag'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Mantenedor'),'Asignar Permisos','Permisos','Crear','fas fa-user-lock'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Mantenedor'),'Usuarios','Usuario','Crear','fas fa-users-cog'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Mantenedor'),'Categorias','Categoria','Crear','fab fa-wpforms'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Mantenedor'),'Productos','Producto','Crear','fas fa-box-open'),

((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Clientes'),'Clientes','Cliente','Crear','fas fa-user-shield'),

((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Compras'),'Proveedores','Proveedor','Crear','fas fa-shipping-fast'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Compras'),'Asignar producto a Tienda','Producto','Asignar','fas fa-dolly'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Compras'),'Registrar Compra','Compra','Crear','fas fa-cart-arrow-down'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Compras'),'Consultar Compra','Compra','Consultar','far fa-list-alt'),

((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Ventas'),'Tiendas','Tienda','Crear','fas fa-store-alt'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Ventas'),'Registrar Venta','Venta','Crear','fas fa-cash-register'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Ventas'),'Consultar Venta','Venta','Consultar','far fa-clipboard'),

((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Reportes'),'Productos por tienda','Reporte','Producto','fas fa-boxes'),
((SELECT TOP 1 IdMenu FROM MENU WHERE Nombre = 'Reportes'),'Ventas','Reporte','Ventas','fas fa-shopping-basket')


GO
--REGISTROS EN TABLA TIENDA
INSERT INTO TIENDA(Nombre,RUC,Direccion,Telefono) VALUES ('Tienda 001','25689789654','AV.GRANDE 123','963852896')

GO
--REGISTROS USUARIO
insert into usuario(Nombres,Apellidos,Correo,Clave,IdTienda,IdRol)
values('Administrador','Thopsom','admin@gmail.com','7932b2e116b076a54f452848eaabd5857f61bd957fe8a218faf216f24c9885bb',(select TOP 1 IdTienda from TIENDA where Nombre = 'Tienda 001'),(select TOP 1 IdRol from ROL where Descripcion = 'ADMINISTRADOR'))
go
insert into usuario(Nombres,Apellidos,Correo,Clave,IdTienda,IdRol)
values('Tienda','azgun','tienda@gmail.com','29cfa0f8e37e40a1a7a723aa88eca2cc050f270417969bfbe753f6bc0919aefe',(select TOP 1 IdTienda from TIENDA where Nombre = 'Tienda 001'),(select TOP 1 IdRol from ROL where Descripcion = 'EMPLEADO'))


GO
--REGISTROS EN TABLA PERMISOS
INSERT INTO PERMISOS(IdRol,IdSubMenu)
SELECT (select TOP 1 IdRol from ROL where Descripcion = 'ADMINISTRADOR'), IdSubMenu FROM SUBMENU
go
INSERT INTO PERMISOS(IdRol,IdSubMenu,Activo)
SELECT (select TOP 1 IdRol from ROL where Descripcion = 'EMPLEADO'), IdSubMenu, 0 FROM SUBMENU 

go

update p set p.Activo = 1 from PERMISOS p
inner join SUBMENU sm on sm.IdSubMenu = p.IdSubMenu
where sm.Controlador in ('Venta') and p.IdRol = (select TOP 1 IdRol from ROL where Descripcion = 'EMPLEADO')


GO
--REGISTRO EN TABLA CATEGORIA
INSERT INTO CATEGORIA(Descripcion) VALUES
('Bebidas'),
('Frutas'),
('Embutidos'),
('Lacteos')

GO
--REGISTRO EN TABLA PRODUCTO
INSERT INTO PRODUCTO(Codigo,ValorCodigo,Nombre,Descripcion,IdCategoria)
values
(
RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO)),6),
(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO),
'Inca Koala',
'botela 3Lts',
(select top 1 IdCategoria from CATEGORIA where Descripcion = 'Bebidas')
)
GO
INSERT INTO PRODUCTO(Codigo,ValorCodigo,Nombre,Descripcion,IdCategoria)
values
(
RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO)),6),
(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO),
'Mantequilla toria',
'bote de 500 mg',
(select top 1 IdCategoria from CATEGORIA where Descripcion = 'Embutidos')
)
GO
INSERT INTO PRODUCTO(Codigo,ValorCodigo,Nombre,Descripcion,IdCategoria)
values
(
RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO)),6),
(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO),
'Coka pola',
'botella 1.5 Lts',
(select top 1 IdCategoria from CATEGORIA where Descripcion = 'Bebidas')
)
GO
INSERT INTO PRODUCTO(Codigo,ValorCodigo,Nombre,Descripcion,IdCategoria)
values
(
RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO)),6),
(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO),
'Mermelada Fans',
'Bote 310g',
(select top 1 IdCategoria from CATEGORIA where Descripcion = 'Embutidos')
)
GO
INSERT INTO PRODUCTO(Codigo,ValorCodigo,Nombre,Descripcion,IdCategoria)
values
(
RIGHT('000000' + convert(varchar(max),(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO)),6),
(select isnull(max(ValorCodigo),0) + 1 from PRODUCTO),
'Queso imperfecta',
'Empaque 350g',
(select top 1 IdCategoria from CATEGORIA where Descripcion = 'Lacteos')
)


go
Insert into cliente(tipodocumento,numerodocumento,nombre,direccion,telefono) values 
('DNI','34231223','Jose Perez','av. Test 123','12345342'),
('DNI','56567878','Maria Paz','av. Test 124','12345343'),
('DNI','78907878','Thalia Quiñon','av. Test 125','12345344'),
('DNI','56346767','Belem Madara','av. Test 126','12345345'),
('DNI','34234234','Teresa espinoza','av. Test 127','12345346'),
('DNI','67788978','Arturo Sanchez','av. Test 128','12345347'),
('DNI','34311232','Pere Calvo','av. Test 129','12345348'),
('DNI','23234545','Naima Prat','av. Test 130','12345349'),
('DNI','45234545','Nicole Barreiro','av. Test 131','12345350'),
('DNI','23231212','Iratxe Ahmed','av. Test 132','12345351'),
('DNI','67678990','Monserrat Ballester','av. Test 133','12345352'),
('DNI','45455666','Alfonsa Mendoza','av. Test 135','12345354'),
('DNI','65765888','Alex Ramon','av. Test 136','12345355'),
('DNI','89768677','Pablo Rosell','av. Test 137','12345356'),
('DNI','67676789','Sebastian Palomino','av. Test 138','12345357'),
('DNI','76867878','Hamza Grau','av. Test 139','12345358'),
('DNI','89934233','Faustino Romo','av. Test 140','12345359')

go

insert into PROVEEDOR(ruc,RazonSocial,Telefono,Correo,Direccion) values
('25689789654','PROVEEDOR MANZANA 001','345234234','manzana@ma.com','av . las manzanas'),
('45623412312','PROVEEDOR PERA 001','123123456','pera@pe.co','av. las peras')

