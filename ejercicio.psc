Algoritmo Prestamo_Deportivo
	// Definir variables
	Definir usuario_id, sport_id, menu como Entero
	Definir inv_pelotaFutbol, inv_raqueta, inv_canchaFutbol, inv_guantes, inv_pelotaBasquet como Entero
	Definir inv_canchaBasquet, inv_pelotaPinpong como Entero
	Definir respuesta, cerrarSesion como Caracter
	
	// Inventario inicial
	inv_pelotaFutbol = 10
	inv_pelotaBasquet = 10
	inv_pelotaPinpong = 10
	inv_canchaFutbol = 10
	inv_canchaBasquet = 10
	inv_guantes = 10
	inv_raqueta = 10
	
	// Bucle principal
	Mientras Verdadero Hacer
		Escribir Sin Saltar "�Cu�l es tu c�digo? "
		Leer usuario_id
		
		Escribir "�Qu� deseas realizar?"
		Escribir "1. Pr�stamo"
		Escribir "2. Devoluci�n"
		Escribir "3. Terminar programa"
		Leer menu
		
		Segun menu Hacer
				// Opci�n 1: Pr�stamo
			1: 
				Escribir "PRESTAMO DEPORTIVO"
				Escribir "1. F�tbol"
				Escribir "2. B�squet"
				Escribir "3. Ping pong"
				Leer sport_id
				
				Segun sport_id Hacer
						// F�tbol
					1:
						Escribir "Secci�n de f�tbol"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Escribir "3. Guantes"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "Pelotas de f�tbol disponibles: ", inv_pelotaFutbol
								Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_pelotaFutbol = inv_pelotaFutbol - 1
									Escribir "El pr�stamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							2: Escribir "Canchas de f�tbol disponibles: ", inv_canchaFutbol
								Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_canchaFutbol = inv_canchaFutbol - 1
									Escribir "El pr�stamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							3: Escribir "Guantes disponibles: ", inv_guantes
								Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_guantes = inv_guantes - 1
									Escribir "El pr�stamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
						FinSegun
						
						// B�squet
					2:
						Escribir "Secci�n de b�squet"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "Pelotas de b�squet disponibles: ", inv_pelotaBasquet
								Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_pelotaBasquet = inv_pelotaBasquet - 1
									Escribir "El pr�stamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							2: Escribir "Canchas de b�squet disponibles: ", inv_canchaBasquet
								Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_canchaBasquet = inv_canchaBasquet - 1
									Escribir "El pr�stamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
						FinSegun
						
						// Ping pong
					3:
						Escribir "Secci�n de ping pong"
						Escribir "1. Raqueta"
						Escribir "2. Pelota"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "Raquetas disponibles: ", inv_raqueta
								Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_raqueta = inv_raqueta - 1
									Escribir "El pr�stamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							2: Escribir "Pelotas de ping pong disponibles: ", inv_pelotaPinpong
								Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_pelotaPinpong = inv_pelotaPinpong - 1
									Escribir "El pr�stamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
						FinSegun
				FinSegun
				
				// Opci�n 2: Devoluci�n
			2: 
				Escribir "DEVOLUCI�N DE MATERIAL DEPORTIVO"
				Escribir "1. F�tbol"
				Escribir "2. B�squet"
				Escribir "3. Ping pong"
				Leer sport_id
				
				Segun sport_id Hacer
						// F�tbol
					1:
						Escribir "Secci�n de f�tbol"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Escribir "3. Guantes"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "�Cu�ntas pelotas de f�tbol deseas devolver?"
								Leer cantidad
								inv_pelotaFutbol = inv_pelotaFutbol + cantidad
								Escribir "Devoluci�n exitosa. Pelotas de f�tbol disponibles: ", inv_pelotaFutbol
							2: Escribir "�Cu�ntas canchas de f�tbol deseas devolver?"
								Leer cantidad
								inv_canchaFutbol = inv_canchaFutbol + cantidad
								Escribir "Devoluci�n exitosa. Canchas de f�tbol disponibles: ", inv_canchaFutbol
							3: Escribir "�Cu�ntos guantes deseas devolver?"
								Leer cantidad
								inv_guantes = inv_guantes + cantidad
								Escribir "Devoluci�n exitosa. Guantes disponibles: ", inv_guantes
						FinSegun
						
						// B�squet
					2:
						Escribir "Secci�n de b�squet"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "�Cu�ntas pelotas de b�squet deseas devolver?"
								Leer cantidad
								inv_pelotaBasquet = inv_pelotaBasquet + cantidad
								Escribir "Devoluci�n exitosa. Pelotas de b�squet disponibles: ", inv_pelotaBasquet
							2: Escribir "�Cu�ntas canchas de b�squet deseas devolver?"
								Leer cantidad
								inv_canchaBasquet = inv_canchaBasquet + cantidad
								Escribir "Devoluci�n exitosa. Canchas de b�squet disponibles: ", inv_canchaBasquet
						FinSegun
						
						// Ping pong
					3:
						Escribir "Secci�n de ping pong"
						Escribir "1. Raqueta"
						Escribir "2. Pelota"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "�Cu�ntas raquetas deseas devolver?"
								Leer cantidad
								inv_raqueta = inv_raqueta + cantidad
								Escribir "Devoluci�n exitosa. Raquetas disponibles: ", inv_raqueta
							2: Escribir "�Cu�ntas pelotas de ping pong deseas devolver?"
								Leer cantidad
								inv_pelotaPinpong = inv_pelotaPinpong + cantidad
								Escribir "Devoluci�n exitosa. Pelotas de ping pong disponibles: ", inv_pelotaPinpong
			FinSegun
	FinSegun
				
				// Opci�n 3: Terminar programa
			3:
				Escribir "Programa finalizado."
		FinSegun
		
		// Opci�n de cerrar sesi�n
		Escribir "�Cerrar sesi�n? (s/n)"
		Leer cerrarSesion
		Si cerrarSesion == "s" o cerrarSesion == "S" Entonces
			Borrar Pantalla
		FinSi
	FinMientras
FinAlgoritmo
