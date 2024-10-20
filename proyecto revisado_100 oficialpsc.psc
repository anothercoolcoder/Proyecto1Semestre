Algoritmo Prestamo_Deportivo
	// Definir variables
	Definir  sport_id, menu, objeto_id como Entero
	Definir inv_pelotaFutbol, inv_raquetapinpong, inv_canchaFutbol, inv_guantes, inv_pelotaBasquet como Entero
	Definir inv_canchaBasquet, inv_pelotaPinpong como Entero
	Definir usuario_id,respuesta, cerrarSesion,a,kl como Caracter
	definir esvalido,iniciar como logico
	definir inicio Como Caracter 
	dimension a[100]
	
	// Inventario inicial
	inv_pelotaFutbol = 10
	inv_pelotaBasquet = 10
	inv_pelotaPinpong = 10
	inv_petoBasquet = 10
	inv_guantes = 10
	inv_raquetapinpong= 0
	inv_pelotaFutbolmax = 0
	inv_pelotaBasquetmax = 0
	inv_pelotaPinpongmax = 0
	inv_petoBasquetmax = 0
	inv_guantesmax = 0
	inv_raquetapinpongmax = 0
	inicio='s'
	iniciar=Verdadero
	pedircodigo=Verdadero
	
	// Bucle principal
	Mientras inicio='s' Hacer
		Si pedirCodigo=Verdadero Entonces
			esvalido = Falso
			Mientras no esvalido Hacer
				Escribir Sin Saltar "¿Cuál es tu código? "
				Leer usuario_id
				z=Longitud(usuario_id)
				
				si z=9
					para i=0 hasta z-1 Hacer
						kl=subcadena(usuario_id,i, i)
						a[i]=kl
					FinPara
					
					esvalido = Verdadero
					para i=0 hasta z-1
						si no (a[i] >= '0' y a[i] <= '9')
							esvalido = Falso
							i = z-1
						FinSi
					FinPara
					
					si esvalido=Verdadero Entonces
						escribir 'continuando programa'
					sino 
						escribir 'no es un codigo institucional'
					FinSi
				sino
					escribir 'incorrecto: codigo fuera del limite establecido'
					escribir 'vuelve a ingresarlo'
				FinSi
			FinMientras
		FinSi
			si esvalido=Verdadero o esvalid=Verdadero entonces
				Repetir
					Escribir "¿Qué deseas realizar?"
					Escribir "1. Préstamo"
					Escribir "2. Devolución"
					Escribir "3. Terminar programa"
					Leer menu
					
					Si menu < 1 o menu > 3 Entonces
						Escribir "Opción no válida, intente nuevamente"
					FinSi
				Hasta Que menu >= 1 y menu <= 3
				
				Segun menu Hacer
					1: // Opción 1: Préstamo
						Escribir "PRESTAMO DEPORTIVO"
						Repetir
							Escribir "1. Fútbol"
							Escribir "2. Básquet"
							Escribir "3. Ping pong"
							Leer sport_id
							
							Si sport_id < 1 o sport_id > 3 Entonces
								Escribir "Opción no válida, intente nuevamente"
							FinSi
						Hasta Que sport_id >= 1 y sport_id <= 3
						
						Segun sport_id Hacer
							1:// Fútbol
								Escribir "Sección de fútbol"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Guantes"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opción no válida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Escribir "Pelotas de fútbol disponibles: ", inv_pelotaFutbol
										Repetir
											Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opción no válida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_pelotaFutbol = inv_pelotaFutbol - 1
											inv_pelotaFutbolmax = inv_pelotaFutbolmax + 1
											Escribir "El préstamo ha sido exitoso."
										Sino
											Escribir 'vuelva pronto'
										FinSi
									2:  Escribir "Guantes disponibles: ", inv_guantes
										Repetir
											Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opción no válida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_guantes = inv_guantes - 1
											inv_guantesmax = inv_guantesmax + 1
											Escribir "El préstamo ha sido exitoso."
										Sino
											Escribir 'vuelva pronto'
										FinSi
								FinSegun
							2://basquet
								Escribir "Sección de básquet"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Peto"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opción no válida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								Segun objeto_id Hacer
									1:Escribir "Pelotas de básquet disponibles: ", inv_pelotaBasquet
										Repetir
											Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opción no válida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_pelotaBasquet = inv_pelotaBasquet - 1
											Escribir "El préstamo ha sido exitoso."
											inv_pelotaBasquetmax = inv_pelotaBasquetmax + 1
										Sino
											Escribir 'vuelva pronto'
										FinSi
									2:  Escribir "peto de básquet disponibles: ", inv_petoBasquet
										Repetir
											Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opción no válida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_petoBasquet = inv_petoBasquet - 1
											Escribir "El préstamo ha sido exitoso."
											inv_petoBasquetmax = inv_petoBasquetmax + 1
										Sino
											Escribir 'vuelva pronto'
										FinSi
								FinSegun
							3: // Ping pong
								Escribir "Sección de ping pong"
								Repetir
									Escribir "1. Raqueta"
									Escribir "2. Pelota"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opción no válida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								segun objeto_id Hacer
								
							1:Escribir "Raquetas disponibles: ", inv_raquetapinpong
								Repetir
									Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
									Leer respuesta
									respuesta = Minusculas(respuesta)
									
									Si respuesta <> "s" y respuesta <> "n" Entonces
										Escribir "Opción no válida, ingrese s o n"
									FinSi
								Hasta Que respuesta = "s" o respuesta = "n"
								
								Si respuesta == "s" Entonces
									inv_raquetapinpong = inv_raquetapinpong - 1
									Escribir "El préstamo ha sido exitoso."
									inv_raquetapinpongmax = inv_raquetapinpongmax + 1
								Sino
									Escribir 'vuelva pronto'
								FinSi
							2:  Escribir "Pelotas de ping pong disponibles: ", inv_pelotaPinpong
								Repetir
									Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
									Leer respuesta
									respuesta = Minusculas(respuesta)
									
									Si respuesta <> "s" y respuesta <> "n" Entonces
										Escribir "Opción no válida, ingrese s o n"
									FinSi
								Hasta Que respuesta = "s" o respuesta = "n"
								
								Si respuesta == "s" Entonces
									inv_pelotaPinpong = inv_pelotaPinpong - 1
									Escribir "El préstamo ha sido exitoso."
									inv_pelotaPinpongmax = inv_pelotaPinpongmax + 1
								Sino
									Escribir 'vuelva pronto'
								FinSi
						FinSegun
						FinSegun
					2: // Opción 2: Devolución
						Escribir "DEVOLUCIÓN DE MATERIAL DEPORTIVO"
						Repetir
							Escribir "1. Fútbol"
							Escribir "2. Básquet"
							Escribir "3. Ping pong"
							Leer sport_id
							
							Si sport_id < 1 o sport_id > 3 Entonces
								Escribir "Opción no válida, intente nuevamente"
							FinSi
						Hasta Que sport_id >= 1 y sport_id <= 3
						
						Segun sport_id Hacer
							1:// Fútbol
								Escribir "Sección de fútbol"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Guantes"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opción no válida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Si inv_pelotaFutbolmax > 0 Entonces
											Escribir "Pelotas de fútbol prestadas actualmente: ", inv_pelotaFutbolmax
											Repetir
												Escribir "¿Cuántas pelotas de fútbol deseas devolver? (máximo ", inv_pelotaFutbolmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_pelotaFutbolmax Entonces
													Escribir "Cantidad inválida. Debe ser entre 0 y ", inv_pelotaFutbolmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_pelotaFutbolmax
											
											inv_pelotaFutbol = inv_pelotaFutbol + cantidad
											inv_pelotaFutbolmax = inv_pelotaFutbolmax - cantidad
											Escribir "Devolución exitosa. Pelotas de fútbol disponibles: ", inv_pelotaFutbol
										Sino
											Escribir "No hay pelotas de fútbol prestadas para devolver"
										FinSi
										
									2: Si inv_guantesmax > 0 Entonces
											Escribir "Guantes prestados actualmente: ", inv_guantesmax
											Repetir
												Escribir "¿Cuántos guantes deseas devolver? (máximo ", inv_guantesmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_guantesmax Entonces
													Escribir "Cantidad inválida. Debe ser entre 0 y ", inv_guantesmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_guantesmax
											
											inv_guantes = inv_guantes + cantidad
											inv_guantesmax = inv_guantesmax - cantidad
											Escribir "Devolución exitosa. Guantes disponibles: ", inv_guantes
										Sino
											Escribir "No hay guantes prestados para devolver"
										FinSi
								FinSegun
								
							2:// Básquet
								Escribir "Sección de básquet"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Peto"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opción no válida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Si inv_pelotaBasquetmax > 0 Entonces
											Escribir "Pelotas de básquet prestadas actualmente: ", inv_pelotaBasquetmax
											Repetir
												Escribir "¿Cuántas pelotas de básquet deseas devolver? (máximo ", inv_pelotaBasquetmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_pelotaBasquetmax Entonces
													Escribir "Cantidad inválida. Debe ser entre 0 y ", inv_pelotaBasquetmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_pelotaBasquetmax
											
											inv_pelotaBasquet = inv_pelotaBasquet + cantidad
											inv_pelotaBasquetmax = inv_pelotaBasquetmax - cantidad
											Escribir "Devolución exitosa. Pelotas de básquet disponibles: ", inv_pelotaBasquet
										Sino
											Escribir "No hay pelotas de básquet prestadas para devolver"
										FinSi
										
									2: Si inv_petoBasquetmax > 0 Entonces
											Escribir "Petos prestados actualmente: ", inv_petoBasquetmax
											Repetir
												Escribir "¿Cuántos petos deseas devolver? (máximo ", inv_petoBasquetmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_petoBasquetmax Entonces
													Escribir "Cantidad inválida. Debe ser entre 0 y ", inv_petoBasquetmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_petoBasquetmax
											
											inv_petoBasquet = inv_petoBasquet + cantidad
											inv_petoBasquetmax = inv_petoBasquetmax - cantidad
											Escribir "Devolución exitosa. Petos disponibles: ", inv_petoBasquet
										Sino
											Escribir "No hay petos prestados para devolver"
										FinSi
								FinSegun
								
							3:// Ping pong
								Escribir "Sección de ping pong"
								Repetir
									Escribir "1. Raqueta"
									Escribir "2. Pelota"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opción no válida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Si inv_raquetapinpongmax > 0 Entonces
											Escribir "Raquetas prestadas actualmente: ", inv_raquetapinpongmax
											Repetir
												Escribir "¿Cuántas raquetas deseas devolver? (máximo ", inv_raquetapinpongmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_raquetapinpongmax Entonces
													Escribir "Cantidad inválida. Debe ser entre 0 y ", inv_raquetapinpongmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_raquetapinpongmax
											
											inv_raquetapinpong = inv_raquetapinpong + cantidad
											inv_raquetapinpongmax = inv_raquetapinpongmax - cantidad
											Escribir "Devolución exitosa. Raquetas disponibles: ", inv_raquetapinpong
										Sino
											Escribir "No hay raquetas prestadas para devolver"
										FinSi
										
									2: Si inv_pelotaPinpongmax > 0 Entonces
											Escribir "Pelotas de ping pong prestadas actualmente: ", inv_pelotaPinpongmax
											Repetir
												Escribir "¿Cuántas pelotas deseas devolver? (máximo ", inv_pelotaPinpongmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_pelotaPinpongmax Entonces
													Escribir "Cantidad inválida. Debe ser entre 0 y ", inv_pelotaPinpongmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_pelotaPinpongmax
											
											inv_pelotaPinpong = inv_pelotaPinpong + cantidad
											inv_pelotaPinpongmax = inv_pelotaPinpongmax - cantidad
											Escribir "Devolución exitosa. Pelotas disponibles: ", inv_pelotaPinpong
										Sino
											Escribir "No hay pelotas de ping pong prestadas para devolver"
										FinSi
									FinSegun
								FinSegun
					3: 
						Escribir "Programa finalizado."
						
				FinSegun 
				Repetir
					Escribir "¿Cerrar sesión? (s/n)"
					Leer cerrarSesion
					cerrarSesion = Minusculas(cerrarSesion)
					
					Si cerrarSesion <> "s" y cerrarSesion <> "n" Entonces
						Escribir "Opción no válida, ingrese s o n"
					sino 	
						Si cerrarSesion == "s" o cerrarSesion == "S" Entonces
							pedirCodigo = Verdadero
							Escribir 'vuelva pronto'
							Borrar Pantalla
						sino 
							si cerrarSesion == "n" o cerrarSesion == "N" Entonces
								pedirCodigo = Falso
							sino 
								escribir 'opcion no valida'
							FinSi
						FinSi
					FinSi
					
				Hasta Que cerrarSesion = "s" o cerrarSesion = "n"
				
				Si cerrarSesion == "s" Entonces
					Escribir 'vuelva pronto'
					Borrar Pantalla
				Sino
					Escribir 'reiniciando programa'
					iniciar = falso
				FinSi
		sino
			si z<9 o z>9 entonces
				escribir 'incorrecto:codigo fuera de los parametros'
				escribir 'no es un codigo institucional'
				escribir'vuelve a ingresarlo'
				esvalido= Falso
			finsi
		FinSi
	fin mientras
FinAlgoritmo

	Mientras iniciar<>0 Hacer
		Escribir Sin Saltar "¿Cuál es tu código? "
		Leer usuario_id
		z=Longitud(usuario_id)
		
		si z=9
			para i=0 hasta z-1 Hacer
				kl=subcadena(usuario_id,i, i)
				a[i]=kl
				
			FinPara
			
			para i=0 hasta z-1
				si a[i] = '0' 
					esvalido=Verdadero
				sino si a[i] = '1'entonces 
						esvalido=Verdadero
					sino si a[i] = '2'
							esvalido=Verdadero
						sino si a[i] = '3' 
								esvalido=Verdadero
							sino si a[i] = '4' 
									esvalido=Verdadero
								sino si a[i] = '5' 
										esvalido=Verdadero
									sino si a[i] = '6' 
											esvalido=Verdadero
										sino si a[i] = '7' 
												esvalido=Verdadero
											sino si a[i] = '8' 
													esvalido=Verdadero
												sino si a[i] = '9' 
														esvalido=Verdadero
													sino esvalido=falso
														i=z-1
													finsi
												finsi
											FinSi
										finsi
									FinSi
								finsi
							fin si
						FinSi
					FinSi
				FinSi
			FinPara
			si esvalido=Verdadero
				escribir 'continuando programa'
			sino escribir 'no es un codigo institucional'
			FinSi
		si esvalido=Verdadero entonces
			Escribir "¿Qué deseas realizar?"
			Escribir "1. Préstamo"
			Escribir "2. Devolución"
			Escribir "3. Terminar programa"
			Leer menu
			Segun menu Hacer
					1: // Opción 1: Préstamo
						Escribir "PRESTAMO DEPORTIVO"
						Escribir "1. Fútbol"
						Escribir "2. Básquet"
						Escribir "3. Ping pong"
						Leer sport_id
						
						Segun sport_id Hacer
							1:// Fútbol
								Escribir "Sección de fútbol"
								Escribir "1. Pelota"
								Escribir "2. Guantes"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "Pelotas de fútbol disponibles: ", inv_pelotaFutbol
										Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_pelotaFutbol = inv_pelotaFutbol - 1
											Escribir "El préstamo ha sido exitoso."
											
										SiNo  
											si respuesta == "n" o respuesta == "N" Entonces
												Escribir 'vuelva pronto'
											sino 
												escribir 'opcion no valida'
											FinSi
										FinSi
									2:	Escribir "Guantes disponibles: ", inv_guantes
										Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_guantes = inv_guantes - 1
											Escribir "El préstamo ha sido exitoso."
										SiNo
											si respuesta == "n" o respuesta == "N" Entonces
												Escribir 'vuelva pronto'
											sino 
												escribir 'opcion no valida'
											FinSi
										FinSi
									De Otro Modo:
										Escribir "Opcion no valida"
								FinSegun
							2:// Básquet
								Escribir "Sección de básquet"
								Escribir "1. Pelota"
								Escribir "2. Peto"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "Pelotas de básquet disponibles: ", inv_pelotaBasquet
										Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_pelotaBasquet = inv_pelotaBasquet - 1
											Escribir "El préstamo ha sido exitoso."
										SiNo
											si respuesta == "n" o respuesta == "N" Entonces
											Escribir 'vuelva pronto'
										sino 
											escribir 'opcion no valida'
										FinSi
										FinSi
									2: Escribir "peto de básquet disponibles: ", inv_petoBasquet
										Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_petoBasquet = inv_petoBasquet - 1
											Escribir "El préstamo ha sido exitoso."
										SiNo
											si respuesta == "n" o respuesta == "N" Entonces
												Escribir 'vuelva pronto'
											sino 
												escribir 'opcion no valida'
											FinSi
										FinSi
									De Otro Modo:
										Escribir "Opcion no valida"
								FinSegun
							3:// Ping pong
								Escribir "Sección de ping pong"
								Escribir "1. Raqueta"
								Escribir "2. Pelota"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "Raquetas disponibles: ", inv_raquetapinpong
										Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_raquetapinpong = inv_raquetapinpong - 1
											Escribir "El préstamo ha sido exitoso."
										SiNo
											si respuesta == "n" o respuesta == "N" Entonces
												Escribir 'vuelva pronto'
											sino 
												escribir 'opcion no valida'
											FinSi
										FinSi
									2: Escribir "Pelotas de ping pong disponibles: ", inv_pelotaPinpong
										Escribir "¿Deseas realizar el préstamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_pelotaPinpong = inv_pelotaPinpong - 1
											Escribir "El préstamo ha sido exitoso."
										SiNo
											si respuesta == "n" o respuesta == "N" Entonces
												Escribir 'vuelva pronto'
											sino 
												escribir 'opcion no valida'
											FinSi
										FinSi
								FinSegun
						FinSegun
					De Otro Modo:
						Escribir "Opcion no valida"
					2: // Opción 2: Devolución
						Escribir "DEVOLUCIÓN DE MATERIAL DEPORTIVO"
						Escribir "1. Fútbol"
						Escribir "2. Básquet"
						Escribir "3. Ping pong"
						Leer sport_id
						
						Segun sport_id Hacer
							1:// Fútbol
								Escribir "Sección de fútbol"
								Escribir "1. Pelota"
								Escribir "2. Guantes"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "¿Cuántas pelotas de fútbol deseas devolver?"
										Leer cantidad
										inv_pelotaFutbol = inv_pelotaFutbol + cantidad
										Escribir "Devolución exitosa. Pelotas de fútbol disponibles: ", inv_pelotaFutbol
									2: Escribir "¿Cuántos guantes deseas devolver?"
										Leer cantidad
										inv_guantes = inv_guantes + cantidad
										Escribir "Devolución exitosa. Guantes disponibles: ", inv_guantes
								FinSegun
							De Otro Modo:
								Escribir "Opcion no valida"
							2:// Básquet
								Escribir "Sección de básquet"
								Escribir "1. Pelota"
								Escribir "2. Peto"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "¿Cuántas pelotas de básquet deseas devolver?"
										Leer cantidad
										inv_pelotaBasquet = inv_pelotaBasquet + cantidad
										Escribir "Devolución exitosa. Pelotas de básquet disponibles: ", inv_pelotaBasquet
									2: Escribir "¿Cuántos petos de básquet deseas devolver?"
										Leer cantidad
										inv_petoBasquet = inv_petoBasquet + cantidad
										Escribir "Devolución exitosa. Petos de básquet disponibles: ", inv_petoBasquet
								FinSegun
							De Otro Modo:
								Escribir "Opcion no valida"
							3:// Ping pong
								Escribir "Sección de ping pong"
								Escribir "1. Raqueta"
								Escribir "2. Pelota"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "¿Cuántas raquetas deseas devolver?"
										Leer cantidad
										inv_raquetapinpong = inv_raquetapinpong + cantidad
										Escribir "Devolución exitosa. Raquetas disponibles: ", inv_raquetapinpong
									2: Escribir "¿Cuántas pelotas de ping pong deseas devolver?"
										Leer cantidad
										inv_pelotaPinpong = inv_pelotaPinpong + cantidad
										Escribir "Devolución exitosa. Pelotas de ping pong disponibles: ", inv_pelotaPinpong
								FinSegun
							De Otro Modo:
								Escribir "Opcion no valida"
						FinSegun
						// Opción 3: Terminar programa
					3:
						Escribir "Programa finalizado."
					De Otro Modo:
						Escribir "Opcion no valida"
				FinSegun
				// Opción de cerrar sesión
				Escribir "¿Cerrar sesión? (s/n)"
				Leer cerrarSesion
				Si cerrarSesion == "s" o cerrarSesion == "S" Entonces
					Escribir 'vuelva pronto'
					Borrar Pantalla
				sino 
					si cerrarSesion == "n" o cerrarSesion == "N" Entonces
						Escribir 'reiniciando programa'
					sino 
						escribir 'opcion no valida'
					FinSi
				FinSi 
			fin si
		sino si z<9 o z>9 entonces
				escribir 'incorrecto:codigo fuera del limite establecido'
				escribir'vuelve a ingresarlo'
				esvalido= Falso
			finsi
			
		finsi
		
		fin mientras

FinAlgoritmo
