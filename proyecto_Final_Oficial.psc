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
	inv_raquetapinpong= 10
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
				Escribir Sin Saltar "�Cu�l es tu c�digo? "
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
					Escribir "�Qu� deseas realizar?"
					Escribir "1. Pr�stamo"
					Escribir "2. Devoluci�n"
					Escribir "3. Terminar programa"
					Leer menu
					
					Si menu < 1 o menu > 3 Entonces
						Escribir "Opci�n no v�lida, intente nuevamente"
					FinSi
				Hasta Que menu >= 1 y menu <= 3
				
				Segun menu Hacer
					1: // Opci�n 1: Pr�stamo
						Escribir "PRESTAMO DEPORTIVO"
						Repetir
							Escribir "1. F�tbol"
							Escribir "2. B�squet"
							Escribir "3. Ping pong"
							Leer sport_id
							
							Si sport_id < 1 o sport_id > 3 Entonces
								Escribir "Opci�n no v�lida, intente nuevamente"
							FinSi
						Hasta Que sport_id >= 1 y sport_id <= 3
						
						Segun sport_id Hacer
							1:// F�tbol
								Escribir "Secci�n de f�tbol"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Guantes"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opci�n no v�lida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Escribir "Pelotas de f�tbol disponibles: ", inv_pelotaFutbol
										Repetir
											Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opci�n no v�lida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_pelotaFutbol = inv_pelotaFutbol - 1
											inv_pelotaFutbolmax = inv_pelotaFutbolmax + 1
											Escribir "El pr�stamo ha sido exitoso."
										Sino
											Escribir 'vuelva pronto'
										FinSi
									2:  Escribir "Guantes disponibles: ", inv_guantes
										Repetir
											Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opci�n no v�lida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_guantes = inv_guantes - 1
											inv_guantesmax = inv_guantesmax + 1
											Escribir "El pr�stamo ha sido exitoso."
										Sino
											Escribir 'vuelva pronto'
										FinSi
								FinSegun
							2://basquet
								Escribir "Secci�n de b�squet"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Peto"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opci�n no v�lida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								Segun objeto_id Hacer
									1:Escribir "Pelotas de b�squet disponibles: ", inv_pelotaBasquet
										Repetir
											Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opci�n no v�lida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_pelotaBasquet = inv_pelotaBasquet - 1
											Escribir "El pr�stamo ha sido exitoso."
											inv_pelotaBasquetmax = inv_pelotaBasquetmax + 1
										Sino
											Escribir 'vuelva pronto'
										FinSi
									2:  Escribir "peto de b�squet disponibles: ", inv_petoBasquet
										Repetir
											Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
											Leer respuesta
											respuesta = Minusculas(respuesta)
											
											Si respuesta <> "s" y respuesta <> "n" Entonces
												Escribir "Opci�n no v�lida, ingrese s o n"
											FinSi
										Hasta Que respuesta = "s" o respuesta = "n"
										
										Si respuesta == "s" Entonces
											inv_petoBasquet = inv_petoBasquet - 1
											Escribir "El pr�stamo ha sido exitoso."
											inv_petoBasquetmax = inv_petoBasquetmax + 1
										Sino
											Escribir 'vuelva pronto'
										FinSi
								FinSegun
							3: // Ping pong
								Escribir "Secci�n de ping pong"
								Repetir
									Escribir "1. Raqueta"
									Escribir "2. Pelota"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opci�n no v�lida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								segun objeto_id Hacer
								
							1:Escribir "Raquetas disponibles: ", inv_raquetapinpong
								Repetir
									Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
									Leer respuesta
									respuesta = Minusculas(respuesta)
									
									Si respuesta <> "s" y respuesta <> "n" Entonces
										Escribir "Opci�n no v�lida, ingrese s o n"
									FinSi
								Hasta Que respuesta = "s" o respuesta = "n"
								
								Si respuesta == "s" Entonces
									inv_raquetapinpong = inv_raquetapinpong - 1
									Escribir "El pr�stamo ha sido exitoso."
									inv_raquetapinpongmax = inv_raquetapinpongmax + 1
								Sino
									Escribir 'vuelva pronto'
								FinSi
							2:  Escribir "Pelotas de ping pong disponibles: ", inv_pelotaPinpong
								Repetir
									Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
									Leer respuesta
									respuesta = Minusculas(respuesta)
									
									Si respuesta <> "s" y respuesta <> "n" Entonces
										Escribir "Opci�n no v�lida, ingrese s o n"
									FinSi
								Hasta Que respuesta = "s" o respuesta = "n"
								
								Si respuesta == "s" Entonces
									inv_pelotaPinpong = inv_pelotaPinpong - 1
									Escribir "El pr�stamo ha sido exitoso."
									inv_pelotaPinpongmax = inv_pelotaPinpongmax + 1
								Sino
									Escribir 'vuelva pronto'
								FinSi
						FinSegun
						FinSegun
					2: // Opci�n 2: Devoluci�n
						Escribir "DEVOLUCI�N DE MATERIAL DEPORTIVO"
						Repetir
							Escribir "1. F�tbol"
							Escribir "2. B�squet"
							Escribir "3. Ping pong"
							Leer sport_id
							
							Si sport_id < 1 o sport_id > 3 Entonces
								Escribir "Opci�n no v�lida, intente nuevamente"
							FinSi
						Hasta Que sport_id >= 1 y sport_id <= 3
						
						Segun sport_id Hacer
							1:// F�tbol
								Escribir "Secci�n de f�tbol"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Guantes"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opci�n no v�lida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Si inv_pelotaFutbolmax > 0 Entonces
											Escribir "Pelotas de f�tbol prestadas actualmente: ", inv_pelotaFutbolmax
											Repetir
												Escribir "�Cu�ntas pelotas de f�tbol deseas devolver? (m�ximo ", inv_pelotaFutbolmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_pelotaFutbolmax Entonces
													Escribir "Cantidad inv�lida. Debe ser entre 0 y ", inv_pelotaFutbolmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_pelotaFutbolmax
											
											inv_pelotaFutbol = inv_pelotaFutbol + cantidad
											inv_pelotaFutbolmax = inv_pelotaFutbolmax - cantidad
											Escribir "Devoluci�n exitosa. Pelotas de f�tbol disponibles: ", inv_pelotaFutbol
										Sino
											Escribir "No hay pelotas de f�tbol prestadas para devolver"
										FinSi
										
									2: Si inv_guantesmax > 0 Entonces
											Escribir "Guantes prestados actualmente: ", inv_guantesmax
											Repetir
												Escribir "�Cu�ntos guantes deseas devolver? (m�ximo ", inv_guantesmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_guantesmax Entonces
													Escribir "Cantidad inv�lida. Debe ser entre 0 y ", inv_guantesmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_guantesmax
											
											inv_guantes = inv_guantes + cantidad
											inv_guantesmax = inv_guantesmax - cantidad
											Escribir "Devoluci�n exitosa. Guantes disponibles: ", inv_guantes
										Sino
											Escribir "No hay guantes prestados para devolver"
										FinSi
								FinSegun
								
							2:// B�squet
								Escribir "Secci�n de b�squet"
								Repetir
									Escribir "1. Pelota"
									Escribir "2. Peto"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opci�n no v�lida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Si inv_pelotaBasquetmax > 0 Entonces
											Escribir "Pelotas de b�squet prestadas actualmente: ", inv_pelotaBasquetmax
											Repetir
												Escribir "�Cu�ntas pelotas de b�squet deseas devolver? (m�ximo ", inv_pelotaBasquetmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_pelotaBasquetmax Entonces
													Escribir "Cantidad inv�lida. Debe ser entre 0 y ", inv_pelotaBasquetmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_pelotaBasquetmax
											
											inv_pelotaBasquet = inv_pelotaBasquet + cantidad
											inv_pelotaBasquetmax = inv_pelotaBasquetmax - cantidad
											Escribir "Devoluci�n exitosa. Pelotas de b�squet disponibles: ", inv_pelotaBasquet
										Sino
											Escribir "No hay pelotas de b�squet prestadas para devolver"
										FinSi
										
									2: Si inv_petoBasquetmax > 0 Entonces
											Escribir "Petos prestados actualmente: ", inv_petoBasquetmax
											Repetir
												Escribir "�Cu�ntos petos deseas devolver? (m�ximo ", inv_petoBasquetmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_petoBasquetmax Entonces
													Escribir "Cantidad inv�lida. Debe ser entre 0 y ", inv_petoBasquetmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_petoBasquetmax
											
											inv_petoBasquet = inv_petoBasquet + cantidad
											inv_petoBasquetmax = inv_petoBasquetmax - cantidad
											Escribir "Devoluci�n exitosa. Petos disponibles: ", inv_petoBasquet
										Sino
											Escribir "No hay petos prestados para devolver"
										FinSi
								FinSegun
								
							3:// Ping pong
								Escribir "Secci�n de ping pong"
								Repetir
									Escribir "1. Raqueta"
									Escribir "2. Pelota"
									Leer objeto_id
									
									Si objeto_id < 1 o objeto_id > 2 Entonces
										Escribir "Opci�n no v�lida, intente nuevamente"
									FinSi
								Hasta Que objeto_id >= 1 y objeto_id <= 2
								
								Segun objeto_id Hacer
									1: Si inv_raquetapinpongmax > 0 Entonces
											Escribir "Raquetas prestadas actualmente: ", inv_raquetapinpongmax
											Repetir
												Escribir "�Cu�ntas raquetas deseas devolver? (m�ximo ", inv_raquetapinpongmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_raquetapinpongmax Entonces
													Escribir "Cantidad inv�lida. Debe ser entre 0 y ", inv_raquetapinpongmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_raquetapinpongmax
											
											inv_raquetapinpong = inv_raquetapinpong + cantidad
											inv_raquetapinpongmax = inv_raquetapinpongmax - cantidad
											Escribir "Devoluci�n exitosa. Raquetas disponibles: ", inv_raquetapinpong
										Sino
											Escribir "No hay raquetas prestadas para devolver"
										FinSi
										
									2: Si inv_pelotaPinpongmax > 0 Entonces
											Escribir "Pelotas de ping pong prestadas actualmente: ", inv_pelotaPinpongmax
											Repetir
												Escribir "�Cu�ntas pelotas deseas devolver? (m�ximo ", inv_pelotaPinpongmax, ")"
												Leer cantidad
												Si cantidad < 0 o cantidad > inv_pelotaPinpongmax Entonces
													Escribir "Cantidad inv�lida. Debe ser entre 0 y ", inv_pelotaPinpongmax
												FinSi
											Hasta Que cantidad >= 0 y cantidad <= inv_pelotaPinpongmax
											
											inv_pelotaPinpong = inv_pelotaPinpong + cantidad
											inv_pelotaPinpongmax = inv_pelotaPinpongmax - cantidad
											Escribir "Devoluci�n exitosa. Pelotas disponibles: ", inv_pelotaPinpong
										Sino
											Escribir "No hay pelotas de ping pong prestadas para devolver"
										FinSi
									FinSegun
								FinSegun
					3: 
						Escribir "Programa finalizado."
						
				FinSegun 
				Repetir
					Escribir "�Cerrar sesi�n? (s/n)"
					Leer cerrarSesion
					cerrarSesion = Minusculas(cerrarSesion)
					
					Si cerrarSesion <> "s" y cerrarSesion <> "n" Entonces
						Escribir "Opci�n no v�lida, ingrese s o n"
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
