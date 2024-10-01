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
		Escribir Sin Saltar "¿Cuál es tu código? "
		Leer usuario_id
		
		Escribir "¿Qué deseas realizar?"
		Escribir "1. Préstamo"
		Escribir "2. Devolución"
		Escribir "3. Terminar programa"
		Leer menu
		
		Segun menu Hacer
				// Opción 1: Préstamo
			1: 
				Escribir "PRESTAMO DEPORTIVO"
				Escribir "1. Fútbol"
				Escribir "2. Básquet"
				Escribir "3. Ping pong"
				Leer sport_id
				
				Segun sport_id Hacer
						// Fútbol
					1:
						Escribir "Sección de fútbol"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Escribir "3. Guantes"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "Pelotas de fútbol disponibles: ", inv_pelotaFutbol
								Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_pelotaFutbol = inv_pelotaFutbol - 1
									Escribir "El préstamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							2: Escribir "Canchas de fútbol disponibles: ", inv_canchaFutbol
								Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_canchaFutbol = inv_canchaFutbol - 1
									Escribir "El préstamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							3: Escribir "Guantes disponibles: ", inv_guantes
								Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_guantes = inv_guantes - 1
									Escribir "El préstamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
						FinSegun
						
						// Básquet
					2:
						Escribir "Sección de básquet"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "Pelotas de básquet disponibles: ", inv_pelotaBasquet
								Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_pelotaBasquet = inv_pelotaBasquet - 1
									Escribir "El préstamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							2: Escribir "Canchas de básquet disponibles: ", inv_canchaBasquet
								Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_canchaBasquet = inv_canchaBasquet - 1
									Escribir "El préstamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
						FinSegun
						
						// Ping pong
					3:
						Escribir "Sección de ping pong"
						Escribir "1. Raqueta"
						Escribir "2. Pelota"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "Raquetas disponibles: ", inv_raqueta
								Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_raqueta = inv_raqueta - 1
									Escribir "El préstamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
							2: Escribir "Pelotas de ping pong disponibles: ", inv_pelotaPinpong
								Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
								Leer respuesta
								Si respuesta == "s" o respuesta == "S" Entonces
									inv_pelotaPinpong = inv_pelotaPinpong - 1
									Escribir "El préstamo ha sido exitoso."
								SiNo
									Escribir "Vuelva pronto."
								FinSi
						FinSegun
				FinSegun
				
				// Opción 2: Devolución
			2: 
				Escribir "DEVOLUCIÓN DE MATERIAL DEPORTIVO"
				Escribir "1. Fútbol"
				Escribir "2. Básquet"
				Escribir "3. Ping pong"
				Leer sport_id
				
				Segun sport_id Hacer
						// Fútbol
					1:
						Escribir "Sección de fútbol"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Escribir "3. Guantes"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "¿Cuántas pelotas de fútbol deseas devolver?"
								Leer cantidad
								inv_pelotaFutbol = inv_pelotaFutbol + cantidad
								Escribir "Devolución exitosa. Pelotas de fútbol disponibles: ", inv_pelotaFutbol
							2: Escribir "¿Cuántas canchas de fútbol deseas devolver?"
								Leer cantidad
								inv_canchaFutbol = inv_canchaFutbol + cantidad
								Escribir "Devolución exitosa. Canchas de fútbol disponibles: ", inv_canchaFutbol
							3: Escribir "¿Cuántos guantes deseas devolver?"
								Leer cantidad
								inv_guantes = inv_guantes + cantidad
								Escribir "Devolución exitosa. Guantes disponibles: ", inv_guantes
						FinSegun
						
						// Básquet
					2:
						Escribir "Sección de básquet"
						Escribir "1. Pelota"
						Escribir "2. Cancha"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "¿Cuántas pelotas de básquet deseas devolver?"
								Leer cantidad
								inv_pelotaBasquet = inv_pelotaBasquet + cantidad
								Escribir "Devolución exitosa. Pelotas de básquet disponibles: ", inv_pelotaBasquet
							2: Escribir "¿Cuántas canchas de básquet deseas devolver?"
								Leer cantidad
								inv_canchaBasquet = inv_canchaBasquet + cantidad
								Escribir "Devolución exitosa. Canchas de básquet disponibles: ", inv_canchaBasquet
						FinSegun
						
						// Ping pong
					3:
						Escribir "Sección de ping pong"
						Escribir "1. Raqueta"
						Escribir "2. Pelota"
						Leer objeto_id
						
						Segun objeto_id Hacer
							1: Escribir "¿Cuántas raquetas deseas devolver?"
								Leer cantidad
								inv_raqueta = inv_raqueta + cantidad
								Escribir "Devolución exitosa. Raquetas disponibles: ", inv_raqueta
							2: Escribir "¿Cuántas pelotas de ping pong deseas devolver?"
								Leer cantidad
								inv_pelotaPinpong = inv_pelotaPinpong + cantidad
								Escribir "Devolución exitosa. Pelotas de ping pong disponibles: ", inv_pelotaPinpong
			FinSegun
	FinSegun
				
				// Opción 3: Terminar programa
			3:
				Escribir "Programa finalizado."
		FinSegun
		
		// Opción de cerrar sesión
		Escribir "¿Cerrar sesión? (s/n)"
		Leer cerrarSesion
		Si cerrarSesion == "s" o cerrarSesion == "S" Entonces
			Borrar Pantalla
		FinSi
	FinMientras
FinAlgoritmo
