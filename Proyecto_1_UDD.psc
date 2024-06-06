Algoritmo Proyecto_1_UDD
	
	// DEFINICION DE VARIABLES
	Definir cantidad, ciudad, pesokg Como Entero
	Definir precio_original, iva, descuento, total_iva, descuento_por_par, total_por_par, porcentaje Como Real
	Dimensionar porcentaje_descuento[5]
	
	
	// DEFINICION DE IVA
	iva <- 1.12
	
	// LEER EL PRECIO ORIGINAL DEL PRODUCTO
	Escribir "Ingrese el valor de las zapatillas"
	Leer precio_original
	
	Escribir "-------------------------------------------------"
	
	// EJECUCION DEL DESCUENTO POR CUPON
	
	// LEER PORCENTAJE DE DESCUENTO A APLICAR
	
	// INICIALIZAR PORCENTAJES DE DESCUENTO
	porcentaje_descuento[0] = 0.10
	porcentaje_descuento[1] = 0.20
	porcentaje_descuento[2] = 0.30
	porcentaje_descuento[3] = 0.40
	porcentaje_descuento[4] = 0.50
	
	
	
	// Escribir "Ingrese el porcentaje de descuento obtenido (0 a 4)"
	// Escribir "1 = 10% / 2 = 20% / 3 = 30% / 4 = 40% / 5 = 50%"
	// Leer porcentaje
	
	Repetir
		Escribir "Desea añadir un cupon de descuento? (Y/N)"
		Leer confirmacion
		
		Si confirmacion = "Y" o confirmacion = "y" Entonces
			Escribir "Ingrese su porcentaje de descuento"
			Escribir "0 = 10% / 1 = 20% / 2 = 30% / 3 = 40% / 4 = 50%"
			leer porcentaje
			
			
			Si porcentaje < 0 o porcentaje > 4 Entonces
				Escribir "El porcentaje no debe ser mayor o menor a la matriz"
			SiNo
				Si porcentaje >= 0 o porcentaje <= 4 Entonces
					descuento = precio_original * porcentaje_descuento[porcentaje]
					total = precio_original - descuento
					Escribir "Felicidades tienes un " porcentaje_descuento[porcentaje] * 100 "% de descuento en esta compra"
				SiNo
				FinSi
			FinSi
		FinSi
	Hasta Que confirmacion <> "y" o confirmacion <> "Y"
	
	
	
	Escribir "-------------------------------------------------"
	
	
	// DESCUENTO POR CANTIDAD COMPRADA
	total = precio_original - descuento
	
	
	Escribir "¿Cuantos pares desea comprar?"
	Escribir "1) 1"
	Escribir "2) 2"
	Escribir "3) 3"
	Escribir "4) 4"
	Leer cantidad
	
	Segun cantidad Hacer
		1: 
			total_por_par = total
			Escribir "Lo sentimos por la compra de 1 par no poseemos descuentos."
			
		2:	descuento_por_par = total * 0.05
			total_por_par = total - descuento_por_par
			Escribir "Haz obtenido un 5% de descuento por 2 pares."
		3: descuento_por_par = total * 0.07
			total_por_par = total - descuento_por_par
			Escribir "Haz obtenido un 7% de descuento por 3 pares."
		4: descuento_por_par = total * 0.10
			total_por_par = total - descuento_por_par
			Escribir "Haz obtenido un 10% de descuento por 4 pares."
			Escribir "-------------------------------------------------"
		De Otro Modo:
			Escribir "-------------------------------------------------"
			Escribir "OPCION NO VALIDA. POR FAVOR EJECUTE NUEVAMENTE EL PROGRAMA."
			Escribir "-------------------------------------------------"
	FinSegun
	
	// CALCULO DEL ENVIO
	
	// Peso a variable y leer
	
	Repetir
	Escribir "Ingrese el peso estimado de los productos"
	leer pesokg
	
	Si pesokg <= 0 Entonces
		Escribir "Debe ingresar un peso valido para el calculo del envio"
	FinSi
	
	Hasta Que pesokg > 0
	
	Escribir "Ingrese la ciudad de despacho"
	Escribir "1) New York"
	Escribir "2) Los Angeles"
	Escribir "3) California"
	Escribir "4) Las Vegas"
	Leer ciudad
	
	Segun ciudad hacer 
		1: newyork <- 10
			costoEnvio = cantidad * pesokg + newyork
		2: losangeles <- 15
			costoEnvio = cantidad * pesokg + losangeles
		3: california <- 20
			costoEnvio = cantidad * pesokg + california
		4: lasvegas <- 34
			costoEnvio = cantidad * pesokg + lasvegas
		De Otro Modo:
			Escribir "Ciudad no válida. Por favor ejecute nuevamente el programa."
	FinSegun
	
	total_iva = iva * total_por_par
	
	
	
	
	Escribir "¡GRACIAS POR SU COMPRA!"
	Escribir "-------------------------------------------------"
	
	// DESGLOSE DE LA COMPRA
	Escribir "Cupon de descuento			: $", total - precio_original
	Escribir "Descuento aplicado por par 	: $-", total - total_por_par
	Escribir "-------------------------------------------------"
	Escribir "Valor sin iva				: $", total_por_par
	Escribir "El costo de envío es 		: $", costoEnvio
	Escribir "IVA 							: $", total_por_par * (iva - 1)
	Escribir "El valor total es de 		: $", total_iva + costoEnvio
	
	Escribir "-------------------------------------------------"
FinAlgoritmo


