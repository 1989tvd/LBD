use OXXO

CREATE PROCEDURE PesoProducto(@valor int)
as begin
	select * from Producto
	where dPeso_Producto > @valor
end
GO

exec PesoProducto 400

CREATE PROCEDURE ProductoProvee(@numpro int)
as begin
	select vNombre_Producto, iId_Producto from Producto
	where iId_Proveedor = @numpro
end
GO

exec ProductoProvee 7


CREATE PROCEDURE ReporteProductos(@numpro int)
as begin
	select * from ReporteProducto
	where CantidadActual = @numpro
end
GO

exec ReporteProductos 2


CREATE PROCEDURE ClienteMetodoPago(@numpro int)
as begin
	select * from ClienteRepeticion
	where iId_MetodoPago = @numpro
end
GO

exec ClienteMetodoPago 2

CREATE PROCEDURE ClienteMetodoPagoRight(@numpro int)
as begin
	select * from ClienteRepeticionRight
	where iId_MetodoPago = @numpro
end
GO

exec ClienteMetodoPago 2

CREATE PROCEDURE PesoEspecialEle (@numpro int)
as begin
	select * from PesoEspecial
	where dPeso_Producto = @numpro
end
GO

exec PesoEspecialEle 480

select * from PesoEspecial