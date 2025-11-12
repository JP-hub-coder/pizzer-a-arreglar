Funcion CatalogoDeProductos (total Por Referencia, montotarjetacredito)
	Repetir
		Limpieza
		Escribir "1.    Aseo"
		Escribir "2.    Deporte"
		Escribir "3.    Mecato"
		Escribir "4.    Salir
		leer op1
		Mientras op1<1 o op1>4 Hacer
			Escribir "Error, Opcion no valida"
			leer op1
		FinMientras
		
		Segun op1 Hacer
			1:
				Productosaseo(total, montotarjetacredito)
			2:
				productosdeportivos(total, montotarjetacredito)
			3:
				productosmecato(total, montotarjetacredito)
		Fin Segun
	Hasta Que op1==4
	
FinFuncion

Funcion Productosaseo (total Por Referencia, montotarjetacredito)
	Repetir
		Limpieza
		Escribir "1.    Escoba  $12000   Tope Maximo Por compra=20"
		Escribir "2.    Jabon   $7000    Tope Maximo Por compra=15"   
		Escribir "3.    Trapero $6000    Tope Maximo Por compra=27"
		Escribir "4.    Salir
		leer op2
		Mientras op2<1 o op2>4 Hacer
			Escribir "Error, Opcion no valida"
			leer op2
		FinMientras
		si op2<>4
		Escribir "Ingrese la cantidad a llevar"
		Leer cantidad
	    FinSi
	
		Segun op2 Hacer
			1:
				validarstock (20,cantidad)
				total=total+(cantidad*12000)
			2:
				validarstock (15,cantidad)
				total=total+(cantidad*7000)
			3:
				validarstock (27,cantidad)
				total=total+(cantidad*6000)
		Fin Segun
	Hasta Que op2==4
	
FinFuncion

Funcion productosdeportivos (total Por Referencia, montotarjetacredito)
	Repetir
		Limpieza
		Escribir "1.    Balon    $200000   Tope Maximo Por compra=10"
		Escribir "2.    Tennis   $180000   Tope Maximo Por compra=25"   
		Escribir "3.    Termo    $50000    Tope Maximo Por compra=13"
		Escribir "4.    Salir
		leer op3
		Mientras op3<1 o op3>3 Hacer
			Escribir "Error, Opcion no valida"
			leer op3
		FinMientras
		si op3<>4 Entonces
			Escribir "Ingrese la cantidad a llevar"
			Leer cantidad
		FinSi
	
		
		Segun op3 Hacer
			1:
				validarstock (10,cantidad)
				total=total+(cantidad*200000)
			2:
				validarstock (25,cantidad)
				total=total+(cantidad*180000)
			3:
				validarstock (13,cantidad)
				total=total+(cantidad*50000)
		Fin Segun
	Hasta Que op3==4
	
FinFuncion

Funcion productosmecato (total Por Referencia, montotarjetacredito)
	Repetir
		Limpieza
		Escribir "1.    Jet        $2000   Tope Maximo Por compra=20"
		Escribir "2.    Quipitos   $1000   Tope Maximo Por compra=35"   
		Escribir "3.    Doritos    $2500   Tope Maximo Por compra=43"
		Escribir "4.    Salir
		leer op4
		Mientras op4<1 o op4>3 Hacer
			Escribir "Error, Opcion no valida"
			leer op4
		FinMientras
		si op4<>4 entonces 
		Escribir "Ingrese la cantidad a llevar"
		Leer cantidad
	FinSi
	
		Segun op4 Hacer
			1:
				validarstock (20,cantidad)
				total=total+(cantidad*2000)
			2:
				validarstock (35,cantidad)
				total=total+(cantidad*1000)
			3:
				validarstock (43,cantidad)
				total=total+(cantidad*2500)
		Fin Segun
	Hasta Que op4==4
	
FinFuncion

Funcion MenuPrincipal (total Por Referencia, montotarjetacredito)
	
	Repetir
		Limpieza
		Imprimir "=======Bienvenido a productcrew======"
		Imprimir "=======Disfrute su compra======"
		Escribir "1.   Mirar catalogo de productos"
		Escribir "2.   Finalizar Compra"
		Escribir "3.   Salir"
		Leer op
		
		Mientras op<1 o op>3 Hacer
			Escribir "Error, Opcion no valida"
			leer op
		FinMientras
		
		Segun op Hacer
			1:
				CatalogoDeProductos (total, montotarjetacredito)
			2:
				finalizarcompra(total, montotarjetacredito, op)
			3:
				Imprimir "Gracias por usar el sistema =)"
		Fin Segun
	Hasta Que op==4
FinFuncion
Algoritmo CarritoCompras
	Definir total,montotarjetacredito Como Real
	total=0
	montotarjetacredito=2500000
	menuprimcipal(total, montotarjetadebito, montotarjetacredito, efectivo)
	
FinAlgoritmo


Funcion limpieza 
	Imprimir "Presiones cualquier tecla para continuar..."
	Esperar Tecla
	Limpiar Pantalla
FinFuncion

funcion validarstock (stock, cantidad Por Referencia)
	Mientras cantidad<0 o cantidad>stock Hacer
		Escribir "Error, el tope maximo es ", stock, " y solo se aceptan valores positivos
		Leer cantidad
	FinMientras
	
FinFuncion

Funcion finalizarcompra  (total Por Referencia, montotarjetacredito, op Por Referencia)
		limpieza
		Imprimir "SISTEMA DE PAGO"
		Imprimir "Escoja el metodo de pago"
		Escribir "1.   Efectivo/Debito"
		Escribir "2.   Tarjeta Credito"
		leer metodopago
		
		Mientras metodopago<1 o metodopago>2 Hacer
			Escribir "Error, ingrese nuevamente"
			leer metodopago
		FinMientras
		
		si metodopago<>2 Entonces
			Escribir "Ingrese el monto con el pago"
			leer montopago
			Mientras montopago<total Hacer
				Escribir "Monto insuficiente, intente otra vez"
				leer montopago
			FinMientras
			Imprimir "Compra realizada con exito, Tenga un buen dia <3"
			op==3
		SiNo
			si total>montotarjetacredito Entonces
				Imprimir "Error, Supera el cupo limite, ingrese nuevamente"
			FinSi
		SiNo
			Imprimir "Compra realizada con exito, Tenga un buen dia <3"
			op==3
		FinSi
FinFuncion
	