Algoritmo sin_titulo
	Definir usuario_id, sport_id,objeto_id, menu como entero
	Definir inv_pelotaFutbol, inv_raqueta, inv_canchaFutbol, inv_guantes, inv_pelotaBasquet como entero
	Definir inv_canchaBasquet, inv_pelotaPinpong Como Entero
	definir respuesta Como Caracter
    Definir cerrarsesion Como Caracter
	//inventario pelotas
	inv_pelotaBasquet = 10 
	inv_pelotaFutbol = 10
	inv_pelotaPinpong = 10
	//inventario canchas
	inv_canchaFutbol= 10
	inv_canchaBasquet = 10
	//inventario otros implementos
	inv_guantes = 10 
	inv_raqueta = 10
	
	Mientras (0 = 0) Hacer
		//codigo estudiante
		Escribir Sin Saltar "¿Cual es tu codigo? "
		Leer usuario_id 
		
		Escribir "¿Que deseas realizar?"
		Escribir "1. Prestamo"
		Escribir "2. Devolucion"
		Escribir "3. Añadir"
		Escribir "4. Terminar programa"
		leer menu
		
		Segun menu Hacer
			1: Escribir "PRESTAMO DEPORTIVO"
				Escribir "1. Futbol"
				Escribir "2. Basquet"
				Escribir "3. Ping pong"
				Leer sport_id
				Segun sport_id Hacer
					1: 	Escribir "Esta es la seccion de futbol"
						Escribir '1. Pelota ' ;
						Escribir "2. Cancha ";
						Escribir "3. Guantes ";
						leer sport_id
						Segun sport_id
							1: Escribir "disponible " inv_pelotaFutbol ' unidades.'
							   Escribir "Prestamo deportivo por 30 minutos si (s) / no (n)"
									leer respuesta
									si (respuesta == "S") o (respuesta == "s") Entonces
										Escribir "El prestamo ha sido exitoso"
										inv_pelotaFutbol = inv_pelotaFutbol - 1
									SiNo
										Escribir "Vuelva pronto"
									FinSi
							2: Escribir "disponible " inv_canchaFutbol ' unidades.'
							 Escribir "Prestamo deportivo por 30 minutos si (s) / no (n)"
								
								leer respuesta
								si (respuesta == "S") o (respuesta == "s") Entonces
									Escribir "El prestamo ha sido exitoso"
									inv_canchaFutbol = inv_canchaFutbol - 1
								SiNo
									Escribir "Vuelva pronto"
								FinSi
							3: Escribir "disponible " inv_guantes ' unidades.'
							    Escribir "Prestamo deportivo por 30 minutos si (s) / no (n)"
								leer respuesta
								si (respuesta == "S") o (respuesta == "s") Entonces
									Escribir "El prestamo ha sido exitoso"
									inv_guantes = inv_guantes - 1
								SiNo
									Escribir "Vuelva pronto"
								FinSi
						FinSegun
						
					2: 	Escribir "Esta es la seccion de basquet"
						Escribir 'Pelota '
						Escribir "Cancha "
						leer sport_id
						Segun sport_id
							1: Escribir "disponible " inv_pelotabasquet ' unidades.'
								Escribir "Prestamo deportivo por 30 minutos si (s) / no (n)"
								leer respuesta
								si (respuesta == "S") o (respuesta == "s") Entonces
									Escribir "El prestamo ha sido exitoso"
									inv_pelotaBasquet = inv_pelotaBasquet - 1
								SiNo
									Escribir "Vuelva pronto"
								FinSi
							2: Escribir "disponible " inv_chancaBasquet' unidades.'
								Escribir "Prestamo deportivo por 30 minutos si (s) / no (n)"
								leer respuesta
								si (respuesta == "S") o (respuesta == "s") Entonces
									Escribir "El prestamo ha sido exitoso"
									inv_canchaBasquet = inv_canchaBasquet - 1
								SiNo
									Escribir "Vuelva pronto"
								FinSi
						FinSegun
					3: Escribir "Esta es la seccion de ping pong"
						Escribir 'Raqueta '
						Escribir "pelota pinpong "
						leer sport_id
						Segun sport_id
							1: Escribir "disponible " inv_raqueta ' unidades.'
								Escribir "Prestamo deportivo por 30 minutos si (s) / no (n)"
								leer respuesta
								si (respuesta == "S") o (respuesta == "s") Entonces
									Escribir "El prestamo ha sido exitoso"
									inv_raqueta = inv_raqueta - 1
								SiNo
									Escribir "Vuelva pronto"
								FinSi
							2: Escribir "disponible " inv_pelotaPinpong ' unidades.'
								Escribir "Prestamo deportivo por 30 minutos si (s) / no (n)"
								leer respuesta
								si (respuesta == "S") o (respuesta == "s") Entonces
									Escribir "El prestamo ha sido exitoso"
									inv_pelotaPinpong = inv_pelotaPinpong - 1
								SiNo
									Escribir "Vuelva pronto"
								FinSi
						FinSegun
						
				FinSegun
			2:escribir 'DEVOLUCION'
				
		FinSegun
		Escribir 'cerrar sesion si (s) o No (n)'
		leer cerrarsesion
		si cerrarsesion= 's' o cerrarsesion = 'S' Entonces 
			Borrar Pantalla
		FinSi
	FinMientras
	Borrar Pantalla
	//variable para almacenar la totalidad, tipoentero
	// registro atravez de vectores
FinAlgoritmo
