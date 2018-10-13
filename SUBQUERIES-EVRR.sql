use OXXO

SELECT * FROM (
	SELECT vNombre_Producto, COUNT(iId_Proveedor) AS 'Cantidad'
	FROM Producto
	GROUP BY vNombre_Producto
) as Proveedores

WHERE Proveedores.Cantidad > 1

SELECT vNombre_Producto, COUNT(vNombre_Producto) AS 'Cantidad'
FROM Producto
GROUP BY vNombre_Producto
HAVING COUNT(vNombre_Producto) > 1


WITH PesoEspecial (promValor) as (
	select AVG(dPeso_Producto)
	from Producto
)	Select vNombre_Producto, iId_Producto, dPeso_Producto
	from Producto as p, PesoEspecial as pe
	where p.dPeso_Producto > pe.promValor

declare @query nvarchar(MAX)
declare @otro nvarchar(MAX) = 'MetodoPago'
declare @select1 nvarchar(MAX) = 'iId_MetodoPago, vNombre_Pago'

set @query = 'select ' + @select1 + ' as ' + @otro + ' from Pago'

print(@query)  
exec(@query)  

CREATE VIEW ReporteProducto 
as
	select p.vNombre_Producto, a.iId_Producto, count(a.iCantidad_Almacenada) as CantidadActual
	from Producto as p, Almacen as a
	group by p.vNombre_Producto, a.iId_Producto


create view prueba
as
select vNombre_Producto
from Producto;

CREATE VIEW FacturaCliente
as
	with Factura (EmpleadoEstrella) as(
	select count(iId_Empleado)
	from Header_Factura
	)
	select pa.iId_Producto, hf.iId_Venta, hf.dFecha_Venta, hf.iTotal_Venta
	from Producto_Factura as pa, Header_Factura as hf, Factura
	where EmpleadoEstrella > 10

CREATE VIEW ClienteRepeticion
as
	select c.iId_Cliente, c.vNombre_Cliente, c.vApellidoM_Cliente, c.vApellidoP_Cliente,iId_MetodoPago
	from Cliente as c, Pago_Factura
	left join Header_Factura as hf
	on iId_Cliente = hf.iId_Cliente

CREATE VIEW PesoEspecial
as
WITH PesoEspecial (promValor) as (
	select AVG(dPeso_Producto)
	from Producto
)	Select vNombre_Producto, iId_Producto, dPeso_Producto
	from Producto as p, PesoEspecial as pe
	where p.dPeso_Producto > pe.promValor

CREATE VIEW ClienteRepeticionRight
as
	select c.iId_Cliente, c.vNombre_Cliente, c.vApellidoM_Cliente, c.vApellidoP_Cliente,iId_MetodoPago
	from Cliente as c, Pago_Factura
	left join Header_Factura as hf
	on iId_Cliente = hf.iId_Cliente