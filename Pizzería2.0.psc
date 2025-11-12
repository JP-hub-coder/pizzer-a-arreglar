 Funcion menuprincipal (TotalGeneral Por Referencia, TotalMesa Por Referencia)
	Imprimir "================================"
	Imprimir "Bienvenido a Pizzeria el Padrino"
	Imprimir "================================"
	
	Escribir "Cuantas mesas son?"
	leer nmesas
	
	Para i<-1 Hasta nmesas Con Paso 1 Hacer
		TotalGeneral=TotalGeneral+TotalMesa;
		TotalMesa=0
		Repetir
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
			Imprimir "======== MESA #", i, "========"
			Imprimir "================================"
			Imprimir "Bienvenido a Pizzeria el Padrino"
			Imprimir "================================"
			Imprimir "Nuestras opciones generales de pizzas son:"
			Escribir "1.          Pizza Hawaiana"
			Escribir "2.          Pizza Americana"
			Escribir "3.          Champizza"
			Escribir "4.          La Especial"
			Escribir "5.          SALIR"
			leer pizza
			
			Mientras pizza<1 o pizza>5 Hacer
				Imprimir "Error,Valor invalido, intente nuevamente"
				leer pizza
			FinMientras
			
			Segun pizza Hacer
				1:
					Tamañopizza(TotalMesa)
				2:
					Tamañopizza(TotalMesa)
				3:
					Tamañopizza(TotalMesa)  
				4:
					Tamañopizza(TotalMesa)
				5:
					Imprimir "Presione cualquier tecla para continuar..."
					Esperar Tecla
			FinSegun
		Hasta Que pizza==5
		
		adicionales(TotalMesa)
		
		Bebidas(TotalMesa)
		
		Imprimir "Presione cualquier tecla para ir al total"
		Esperar Tecla
		Limpiar Pantalla
		Imprimir "El total de la mesa es de: $" , TotalMesa
	FinPara
	TotalGeneral=TotalGeneral+TotalMesa
	Imprimir "====================="
	Imprimir "TOTAL DE LAS MESAS"
	Imprimir TotalGeneral
	Imprimir "Que vuelva pronto <3"
	Imprimir "PROCESO TERMINADO"
	Imprimir "====================="
FinFuncion

Funcion adicionales(TotalMesa Por Referencia)
	Imprimir "==========================="
	Imprimir "Que adicional desea añadir?"
	Imprimir "1.        Doble Queso 10000"
	Imprimir "2.        Doble Salsa 10000"
	Imprimir "3.        Ninguno"
	leer adicional
	
	Mientras adicional<1 o adicional>3 Hacer
		Escribir "Error, Valor Invalido, Intente nuevamente"
		leer adicional
	FinMientras
	
	Segun adicional Hacer
		1:
			TotalMesa=TotalMesa+10000
			Imprimir "Adicional ingresado correctamente"
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
		2:	
			TotalMesa=TotalMesa+10000
			Imprimir "Adicional ingresado correctamente"
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
		3:
			Imprimir "No se le agregara ningun adicional"
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
	FinSegun
FinFuncion

Funcion Bebidas ( TotalMesa Por Referencia)
	Limpiar Pantalla 
	Imprimir "==========================="
	Imprimir "Que Bebida desea tomar?"
	Escribir "1.        Pepsi"
	Escribir "2.        Coca Cola"
	Escribir "3.        Postobon"
	Escribir "4.        Ninguno"
	leer bebida
	
	Mientras bebida<1 o bebida>4 Hacer
		Escribir "Error, Valor Invalido, Intente nuevamente"
		leer bebida
	FinMientras
	
	Segun bebida Hacer
		1:
			TamañoBebida(TotalMesa)
		2:	
			TamañoBebida(TotalMesa)
		3:
			TamañoBebida(TotalMesa)
		4: 
			Imprimir "Bebida digitada"
			Imprimir "Total Actual: $", TotalMesa
	FinSegun
	
FinFuncion

Funcion TamañoBebida(TotalMesa Por Referencia)
	Imprimir "============================="
	Imprimir "En que tamaño desea su bebida?"
	Escribir "1.       Personal 3500"
	Escribir "2.       1.5 L    7000"
	Escribir "3.       Mega     9000"
	Escribir "4.       SALIR"
	leer Tbebida
	Mientras Tbebida<1 o Tbebida>3 Hacer
		Imprimir "Error,Valor invalido, intente nuevamente"
		leer Tbebida
	FinMientras
	Segun Tbebida Hacer
		1:
			TotalMesa=TotalMesa+3500
			Imprimir "Bebida ingresado correctamente"
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
		2:	
			TotalMesa=TotalMesa+7000
			Imprimir "Bebida ingresado correctamente"
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
		3:
			TotalMesa=TotalMesa+9000
			Imprimir "Bebida ingresado correctamente"
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
		4:
			Imprimir "Volviendo..."
	FinSegun   
FinFuncion




Funcion Tamañopizza (TotalMesa Por Referencia)
	Imprimir "============================="
	Imprimir "En que tamaño desea su pizza?"
	Escribir "1.       Personal 8000"
	Escribir "2.       Familiar 60000"
	Escribir "3.       Mega     80000"
	Escribir "4.       SALIR"
	leer Tpizza
	Mientras Tpizza<1 o Tpizza>4 Hacer
		Imprimir "Error,Valor invalido, intente nuevamente"
		leer Tpizza
	FinMientras
	Segun Tpizza Hacer
		1:
			TotalMesa=TotalMesa+8000
			Imprimir "Tamaño ingresado correctamente"
			Imprimir "Su pizza ha sido elegida correctamente"
			Imprimir "Valor actual: $", TotalMesa
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
		2:	
			TotalMesa=TotalMesa+60000
			Imprimir "Tamaño ingresado correctamente"
			Imprimir "Su pizza ha sido elegida correctamente"
			Imprimir "Valor actual: $", TotalMesa
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
		3:
			TotalMesa=TotalMesa+80000
			Imprimir "Tamaño ingresado correctamente"
			Imprimir "Su pizza ha sido elegida correctamente"
			Imprimir "Valor actual: $", TotalMesa
			Imprimir "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
		4:
			Imprimir "Volviendo al inicio..."
	FinSegun   
FinFuncion



Algoritmo Pizzería
	menuprincipal(TotalGeneral,TotalMesa)
FinAlgoritmo
