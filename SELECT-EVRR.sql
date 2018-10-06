use OXXO

select iId_Producto as ID,VNombre_Producto as Nombre
from Producto

select VNombre_Empleado as Nombre, iId_Empleado as Empleado
from Empleado

select VNombre_Empleado as Nombre, iTelefono_Empleado as Telefono, vCorreo_Empleado as Correo
from Empleado

select iId_MetodoPago , (iId_MetodoPago*10) as MULTIPLICACION 
from Pago

select vCorreo_Empleado, (iTelefono_Empleado/100) as DIVISION
from Empleado


select * from Pago cross join Proveedor

select * from Producto as p left join Proveedor as pr on (p.iId_Proveedor = pr.iId_Proveedor)

select * from Producto as p right join Proveedor as pr on (p.iId_Proveedor = pr.iId_Proveedor)

select iId_Producto, vNombre_Producto from Producto as p inner join  Proveedor as pr on p.iId_Proveedor = pr.iId_Proveedor 


select p.iId_Producto, p.dPeso_Producto, pr.vNombre_Proveedor
from Producto as p, Proveedor as pr
where p.dPeso_Producto = 530 and p.iId_Proveedor = 6

select p.iId_Producto, p.dPeso_Producto
from Producto as p
where p.dPeso_Producto = 170 

select p.iId_Producto, p.dPeso_Producto, pr.vNombre_Proveedor
from Producto as p, Proveedor as pr
where p.iId_Proveedor = 3

select p.iId_Producto, p.dPeso_Producto, pr.vNombre_Proveedor
from Producto as p, Proveedor as pr
where p.iId_Proveedor = 3

select p.iId_MetodoPago, p.vNombre_Pago, pr.vNombre_Proveedor
from Pago as p, Proveedor as pr
where p.iId_MetodoPago = pr.iId_Proveedor

select min(p.iId_Producto) as M, p.vNombre_Producto from Producto as p
where p.iId_Proveedor = 9 group by p.vNombre_Producto

select max(Producto.vNombre_Producto) as Producto from Producto group by Producto.iId_Proveedor, Producto.vNombre_Producto
having Producto.iId_Proveedor = 6

select count(Producto.iId_Producto) as NumeroProducto from Producto

select count(pr.iId_Proveedor) as NumeroProveedores from Proveedor as pr


select * into #temp  from Producto

select * from #temp