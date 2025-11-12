Algoritmo CompraDeContenedores
	Definir cantidadcontenedores,cantidadproductos,preciocompraporunidad,precioventaporunidad,Totalproductos,valorcontenedor Como Real
	
	Imprimir "Precione Cualquier tecla para continuar"
	Esperar Tecla
	Limpiar Pantalla
	
	Imprimir "======Bienvenido======="
	Escribir ""
	
	Escribir "Cuantos Contenedores Deseas"
	Leer cantidadcontenedores
	Escribir ""
	
	Escribir "Valor Del Contenedor"
	Leer valorcontenedor
	Escribir ""
	
	Escribir "Cuantos Productos Vienen"
	Leer cantidadproductos
	Escribir ""
	
	Totalproductos<-cantidadcontenedores*cantidadproductos
	preciounidad<-Totalproductos*cantidadproductos
	subtotal<-Totalproductos*precioventaporunidad
	Escribir ""
	Escribir Totalproductos
	Escribir preciounidad
	Escribir subtotal
	
	Escribir "Ingrese el precio de venta de la unidad del producto"
	Leer precioventaporunidad
	Escribir ""
	
	utilidadbruta <- precioventaporunidad - preciocompraporunidad
	
	Escribir "¿Cuánto le costó flete"
	Leer costoflete
	Escribir ""
	
	totalvendido <- utilidadbruta
    utilidadneta <- totalvendido - costoflete
	
	Limpiar Pantalla
	
	Escribir "============================="
	Escribir "Precio de compra del producto: " , preciocompraporunidad
	Escribir "Precio de venta del producto: ", precioventaunidad
	Escribir "Utilidad Bruta por unidad: " ,utilidadbruta
    Escribir "TOTAL VENDIDO: " ,totalvendido
    Escribir "Utilidad Neta general: " , utilidadneta
    Escribir "============================="
	
	
	
FinAlgoritmo

//Una empresa suele solicitar x cantidad contenedores de productos, del mismo modo, desconoce cuantos productos vienen dentro del contenedor, por lo tanto, 
//cada que lo compra pregunta cuantas cantidades vienen, tu tarea como programador será calcular el precio por unidad y sus respectivas utilidades bruta y neta. 
//recuerda hacerlo optimo para el usuario final. 
//Ellos venden los productos por unidad a x precio determinado por el usuario.

//solicitar cantidad de contenedores
//solicitar cuantos productos vienen
//calcular precio por unidad
//calcular utilidades bruta y neta
//hacerlo atrativo
//calcular precio venta x unidad
//flete 