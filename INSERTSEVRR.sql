select * from Producto
select * from Proveedor
delete from Proveedor
delete from Producto

drop table Producto

use OXXO
Alter table Producto alter column iId_Producto decimal(38,0)

select * from Producto

insert into Producto 
values(00762230033743, 'Queso Singles', 1, 288, 'Quesos', 'Queso tipo americano kraft singles 16 rebanadas 288 g', 'A')
insert into Producto 
values(00750102051493, 'Queso Oaxaca Light', 2, 400, 'Quesos', 'Queso oaxaca lala light 400 g', 'A')
insert into Producto 
values(00750102053537, 'Queso Panela', 3, 400, 'Quesos', 'Queso panela los volcanes 400 g', 'A')
insert into Producto 
values(00750104540314, 'Atún', 4, 140, 'Enlatados y Reservas', 'Lomo de atún dolores aleta amarilla en agua 140 g', 'A')
insert into Producto 
values(00750101130826, 'Crema Flor de Calabaza', 5, 420, 'Enlatados y Reservas', 'Crema campbells flor de calabaza 420 g', 'A')
insert into Producto 
values(00750101136145, 'Sopa de Lentejas', 5, 430, 'Enlatados y Reservas', 'Sopa de lentejas campbells a la mexicana 430 g', 'A')
insert into Producto 
values(00750101136149, 'Crema de Elote', 5, 430, 'Enlatados y Reservas', 'Crema campbells elote 430 g', 'A')
insert into Producto 
values(00750101131592, 'Crema de Tomate', 5, 430, 'Enlatados y Reservas', 'Crema campbells tomate 430 g', 'A')
insert into Producto 
values(00750101131177, 'Crema de Cebolla', 5, 300, 'Enlatados y Reservas', 'Sopa campbells cebolla 300 g', 'A')
insert into Producto 
values(00750101136606, 'Crema Chile Poblano', 5, 420, 'Enlatados y Reservas', 'Crema campbells chile poblano 420 g', 'A')
insert into Producto 
values(00750101138392, 'Sopa de Tortilla', 5, 300, 'Enlatados y Reservas', 'Caldo campbells sopa de tortilla 300 g', 'A')
insert into Producto 
values(00750100801813, 'Choco Krispis', 6, 690, 'Cereales y Barras', 'Cereal kelloggs choco krispis 690 g', 'A')
insert into Producto 
values(00750100802028, 'Zucaritas', 6, 800, 'Cereales y Barras', 'Cereal kelloggs zucaritas 800 g', 'A')
insert into Producto 
values(00750100800148, 'Froot Loops', 6, 450, 'Cereales y Barras', 'Cereal kelloggs froot loops con sabores frutales 450 g', 'A')
insert into Producto 
values(00750100802042, 'Corn Flakes', 6, 530, 'Cereales y Barras', 'Cereal kelloggs corn flakes 530 g', 'A')
insert into Producto 
values(00750100804295, 'Zucaritas', 6, 490, 'Cereales y Barras', 'Cereal kelloggs zucaritas 490 g', 'A')
insert into Producto 
values(00750100801533, 'Froot Loops', 6, 180, 'Cereales y Barras', 'Cereal kelloggs froot loops 180 g', 'A')
insert into Producto 
values(00750100800146, 'Corn Pops', 6, 530, 'Cereales y Barras', 'Cereal kelloggs corn pops crujientes y deliciosos 530 g', 'A')
insert into Producto 
values(00750100800162, 'Extra Arándanos', 6, 420, 'Cereales y Barras', 'Cereal kelloggs extra arándanos 420 g', 'A')
insert into Producto 
values(00750105924387, 'Cheerios Miel', 7, 480, 'Cereales y Barras', 'Cereal nestlé cheerios miel 480 g', 'A')
insert into Producto 
values(00750105861747, 'Corn Flakes', 7, 560, 'Cereales y Barras', 'Cereal nestlé corn flakes sin gluten 560 g', 'A')
insert into Producto 
values(00001600043089, 'Cini Minis', 7, 345, 'Cereales y Barras', 'Cereal nestlé cini minis integral sabor canela explosiva 345 g', 'A')
insert into Producto 
values( 00750101113121, 'Ruffles sabor Queso', 8, 200, 'Botanas', 'Papas ruffles sabor queso 200 g', 'A')
insert into Producto 
values(00750101113388, 'Sabritas Original', 9, 170, 'Botanas', 'Papas sabritas original 170 g', 'A')
insert into Producto 
values(00750101114324, 'Sabritas receta crujiente', 9, 170, 'Botanas', 'Papas sabritas receta crujiente con sal 170 g', 'A')

update Producto set vNombre_Producto= 'Sabritas Clásicas' where vNombre_Producto= 'Sabritas receta crujiente';

insert into Producto 
values(00750101116765, 'Sabritas Original', 9, 110, 'Botanas', 'Papas sabritas con sal original 110 g', 'A')
insert into Producto 
values(00750101116767, 'Ruffles sabor Queso', 8, 130, 'Botanas', 'Ruffles sabor queso 130 g', 'A')
insert into Producto 
values(00750101116743, 'Sabritas Original', 9, 67, 'Botanas', 'sabritas original con sal tamaño max 67 g', 'A')
insert into Producto 
values(00750101116744, 'Sabritas Adobadas', 9, 67, 'Botanas', 'sabritas adobadas tamaño max 67 g', 'A')
insert into Producto 
values(00750101113125, 'Ruffles Original', 8, 200, 'Botanas', 'Papas ruffles original 200 g', 'A')
insert into Producto 
values(00750101114325, 'Sabritas sabor Jalapeño', 9, 170, 'Botanas', 'Papas sabritas receta crujiente sabor jalapeño 170 g', 'A')

update Producto set iId_Proveedor= 10  where vNombre_Producto= 'Chips Sal de Mar';

insert into Producto 
values(00750100026620, 'Chips Sal de Mar', 9, 170, 'Botanas', 'Papas chips sabor sal de mar 170 g', 'A')

update Producto set iId_Proveedor= 10  where vNombre_Producto= 'Chips Fuego';

insert into Producto 
values(00075752800188, 'Chips Fuego', 9, 170, 'Botanas', 'Papas chips sabor fuego 170 g', 'A')

update Producto set dPeso_Producto= 10  where iId_Producto=00750100026623;
update Producto set dPeso_Producto= 170  where iId_Producto=00750100026623;

insert into Producto 
values(00750100026623, 'Chips Jalapeño', 9, 180, 'Botanas', 'Papas chips sabor jalapeño 170 g', 'A')
insert into Producto 
values(00750100026623, 'Chips Jalapeño', 9, 180, 'Botanas', 'Papas chips sabor jalapeño 170 g', 'A')


insert into Proveedor
values(1, 'Kraft','A')
insert into Proveedor
values(2, 'Lala','A')
insert into Proveedor
values(3, 'Los Volcanes','A')
insert into Proveedor
values(4, 'Dolores','A')
insert into Proveedor
values(5, 'Campbells','A')
insert into Proveedor
values(6, 'Kelloggs','A')
insert into Proveedor
values(7, 'Nestlé','A')
insert into Proveedor
values(8, 'Ruffles','A')
insert into Proveedor
values(9, 'Sabritas','A')
insert into Proveedor
values(10, 'Chips','A')
insert into Proveedor
values(11, 'Barcel','A')
insert into Proveedor
values(12, 'Pringles','A')
insert into Proveedor
values(13, 'La Costeña','A')
insert into Proveedor
values(14, 'Bokados','A')
insert into Proveedor
values(15, 'Knorr','A')
insert into Proveedor
values(16, 'La Anita','A')
insert into Proveedor
values(17, 'Mccormick','A')
insert into Proveedor
values(18, 'Maggi','A')
insert into Proveedor
values(19, 'La Fina','A')
insert into Proveedor
values(20, 'Great Value','A')
insert into Proveedor
values(21, 'Rogelio Bueno','A')
insert into Proveedor
values(22, 'Doña Chonita','A')
insert into Proveedor
values(23, 'Doña María','A')
insert into Proveedor
values(24, 'Marinela','A')
insert into Proveedor
values(25, 'Gamesa','A')
insert into Proveedor
values(26, 'Sanissimo','A')

insert into Precio_Producto
values(NEWID(),00750100800148, 2018-09-29, 53, 'A')

insert into Precio_Producto
values(NEWID(),00750100802028, 2018-09-29, 62, 'A')

insert into Precio_Producto
values(NEWID(),00750100801813, 2018-09-29, 62, 'A')

select * from Precio_Producto

insert into Pago
values(1, 'Efectivo' , 'A')
insert into Pago
values(2, 'Tarjeta de Débito' , 'A')
insert into Pago
values(3, 'Tarjeta de Crédito' , 'A')
insert into Pago
values(4, 'Tarjeta de Puntos' , 'A')

delete from Pago where iId_MetodoPago = 1;
delete from Pago where iId_MetodoPago = 2;
delete from Pago where iId_MetodoPago = 3;
delete from Pago where iId_MetodoPago = 4;

Insert into Empleado
values(NEWID(),'María', 'Escobar', 'Cavazos', 'Cajero', 8115963245, 'elisaMa@hotmail.com', 'M', 'A')
Insert into Empleado
values(NEWID(),'Trinidad', 'Escobar', 'Dorantes', 'Cajero', 8148553691, 'xoxox@hotmail.com', 'M', 'A')
Insert into Empleado
values(NEWID(),'Luis', 'Guajardo', 'Dorantes', 'Cajero', 8152369452, 'gjdoLu@hotmail.com', 'M', 'A')