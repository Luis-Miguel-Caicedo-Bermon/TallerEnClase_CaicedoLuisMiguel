//Ejercicio : Gestión de una tienda de celulares
//Desarrollar un programa en PseInt para gestionar una tienda de celulares. Dicho programa debe permitir a los usuarios realizar las siguientes operaciones:
//Mostrar todos los modelos de celulares disponibles en la tienda, junto con su precio y cantidad en stock.Agregar un nuevo modelo de celular al inventario.
//Actualizar la cantidad de un modelo de celular en el inventario.Realizar una venta de un modelo de celular a un cliente, actualizando la cantidad en stock.
//Mostrar las ventas realizadas y el total de ingresos hasta el momento.Salir del programa
	//Cada modelo de celular debe tener los siguientes atributos:
	//	Marca
	//	Modelo
	//	Precio
	//	Cantidad en stock
	//	ID único
	//A continuación dejamos las indicaciones a tener en cuenta:
	//	1. El programa debe almacenar la información de los modelos de celulares en una estructura de datos como un diccionario o una lista de diccionarios.
	//	
	//	2. El programa debe tener una interfaz de usuario simple y fácil de entender que guíe al usuario a través de las diferentes opciones.
	//Ejemplo de Interfaz de Usuario:
	//	
	//	
	//	Bienvenido a la Tienda de Celulares 
	//	
	//	1. Mostrar modelos disponibles 
	//	2. Agregar un nuevo modelo 
	//	3. Actualizar cantidad de un modelo 
	// 4. Realizar una venta 
	//	5. Mostrar ventas realizadas 
	//	6. Salir
	//	
//Seleccione una opción:

Funcion menu
	Escribir "=======tienda de celulares======="
	Escribir "Escoje una de las opciones"
	Escribir "1 Mostrar modelos disponibles"
	Escribir "2 agregar un muevo modelo"
	Escribir "3 Actualizar cantidad de un modelo "
	Escribir "4 Realizar una venta" 
	Escribir "5 Mostrar ventas realizadas "
	Escribir "6 Salir"
	Escribir "escoje una opcion"
FinFuncion

Algoritmo Ejercicio1_caicedoLuisMiguel
	

	
	Dimension marca[100]
	Dimension modelo[100]
	Dimension precio[100]
	Dimension cantstok[100]
	Dimension id[100]
	marca[0]="motorola"
	modelo[0]="moto g9"
	precio[0]=500000
	cantstok[0]=15
	id[0]=123456789
	
	menu
	Leer n
	ver=Verdadero
	Mientras ver=Verdadero
	
		Segun n Hacer
			1:
				
				Limpiar Pantalla
				para i<-0 Hasta 99 Hacer
					si cantstok[i]>0 Entonces
						Escribir "marca= " marca[i] "       modelo= " modelo[i] "   precio= " precio[i]
						Escribir "cantidad disponible= " cantstok[i] "   ID= " id[i]
						Escribir "============================================================"
						c<-c+1
					FinSi
				FinPara
				
				Escribir "quieres volver al menú principal? si o no?"
				Leer siono
				si siono="si" Entonces
					Limpiar Pantalla
					menu
					Leer n
				SiNo
					si siono="no" Entonces
						ver=Falso
					FinSi
				FinSi
				
			2:	
				Limpiar Pantalla
				Escribir "que celular quieres agregar"
				para i<-c Hasta c+1 Hacer
					si cantstok[i]=0 Entonces
						Escribir "marca"
						Leer marca[i]
						Escribir "modelo"
						Leer modelo[i]
						Escribir "precio"
						Leer precio[i]
						Escribir "cantstok"
						Leer cantstok[i]
						Escribir "ID"
						Leer id[i]
					FinSi
					
					Escribir "quieres volver al menú principal? si o no?"
					Leer siono
					si siono="si" Entonces
						Limpiar Pantalla
						menu
						Leer n
					SiNo
						si siono="no" Entonces
							ver=Falso
						FinSi
					FinSi
					
				FinPara
				
			3:
				Limpiar Pantalla
				para i<-0 Hasta 99 Hacer
					si cantstok[i]>0 Entonces
						Escribir "marca= " marca[i] "      modelo= " modelo[i] "   precio= " precio[i]
						Escribir "cantidad disponible= " cantstok[i] "   ID= " id[i]
						Escribir "============================================================"
					FinSi
				FinPara
				
				Escribir "A que celular le quieres actualizar la cantidad disponible"
				Escribir "escribe el modelo del celular"
				Leer cant
				para i<-0 Hasta 99 Hacer
					si cant=modelo[i] Entonces
						Escribir "cual es la nueva cantidad disponible"
						Leer cantstok[i]
					FinSi
				FinPara
				Escribir "cantidad actualizada"
				Escribir "=================================================================="
				Escribir "quieres volver al menú principal? si o no?"
				Leer siono
				si siono="si" Entonces
					Limpiar Pantalla
					menu
					Leer n
				SiNo
					si siono="no" Entonces
						ver=Falso
					FinSi
				FinSi
				
			4:
				Limpiar Pantalla
				para i<-0 Hasta 99 Hacer
					si cantstok[i]>0 Entonces
						Escribir "marca= " marca[i] "       modelo= " modelo[i] "   precio= " precio[i]
						Escribir "cantidad disponible= " cantstok[i] "   ID= " id[i]
						Escribir "============================================================"
					FinSi
				FinPara
				
				
				Escribir "escribe el modelo del celular que deseas comprar
				Leer model
				
				Repetir
					
				Hasta Que 
				para i<-0 Hasta 99 Hacer
					si model=modelo[i] Entonces
						Escribir "que cantidad deseas comprar"
						leer cancom
						si cancom>cantstok[i] Entonces
							Escribir "no tenemos esta cantidad"
						FinSi
					FinSi
				finpara
		FinSegun
	FinMientras


	
FinAlgoritmo
