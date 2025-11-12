Algoritmo AgenciadeViajes
	Definir Clase, hotel, Destino, Documento Como Entero
	Definir Precio, Total Como Real
	Definir Nombre Como Caracter
	
	Total = 0
	
	Imprimir "======= Bienvenido ======="
	Escribir "Ingrese su nombre"
	leer Nombre
	Escribir "Ingrese su documento"
	leer Documento
	Limpiar Pantalla
	
	Imprimir "======= Bienvenido ======="
	Escribir "Cual es su destino?"
	Escribir "1______Bucaramanga 50000"
	Escribir "2______Bogota 70000"
	Escribir "3______Medellin 100000"
	leer Destino
	si Destino<1 o Destino>3 Entonces
		Imprimir "Error, Valor no valido"
	SiNo
		Segun Destino Hacer
			1:
				Precio=50000
				Total= Total+precio
				Imprimir "Total actual: $", Total
			2:
				Precio=70000
				Total= Total+Precio
				Imprimir "Total actual: $", Total
			3:
				Precio=100000
				Total= total+Precio
				Imprimir "Total actual: $", Total
		Fin Segun
		
		Imprimir "en que clase desea ir?"
		Escribir "1_______primera clase"
		Escribir "2_______segunda clase"
		Escribir "3_______clase economica"
		leer Clase
	    si Clase<1 o Clase>2 Entonces
			Imprimir "Error, Valor no valido"
		SiNo
			Segun Clase Hacer
				1:
					Total=Total*1.4
					Imprimir "se le añadio un costo adicional del 40% del costo actual"
					Imprimir "Precio actual: $", Total
				2:
					Total=Total*1.2
					Imprimir "se le añadio un costo adicional del 20% del costo actual"
					Imprimir "Precio actual: $", Total
					
				3:
					Imprimir "no se le añadira ningun costo"
					Imprimir "Precio actual: $", Total
			Fin Segun
			
			Imprimir "Presione cualquier tecla para continuar..."
			Esperar Tecla
			Limpiar Pantalla
			
			Imprimir "La agencia ofrece ciertas ofertas de hotel"
			Escribir "1_______Hotel 5 estrellas 100000"
			Escribir "2_______Hotel Normal 50000"
			Escribir "3_______No estoy interesado en ninguna opcion"
			leer hotel
			si hotel<1 o hotel>3 Entonces
				Imprimir "Error, Valor no valido"
			SiNo
				Segun hotel Hacer
					1:
						Total=Total+100000
						Imprimir "Su precio actual es de: $", Total
					2:
						Total=Total+50000
						Imprimir "Su precio actual es de: $", Total
					3:
						Imprimir "Su precio actual es de: $", Total
				Fin Segun
				Imprimir "Presione cualquier tecla para continuar..."
				Esperar Tecla
				Limpiar Pantalla
				Imprimir "======= FACTURA ======="
				Imprimir "Nombre: ", Nombre
				Imprimir "Documento: ", Documento
				Imprimir "Precio total: ", Total
			FinSi
		FinSi
		
	FinSi
FinAlgoritmo
