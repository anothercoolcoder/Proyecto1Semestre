Algoritmo Prestamo_Deportivo
	// Definir variables
	Definir  sport_id, menu,iniciar como Entero
	Definir inv_pelotaFutbol, inv_raquetapinpong, inv_canchaFutbol, inv_guantes, inv_pelotaBasquet como Entero
	Definir inv_canchaBasquet, inv_pelotaPinpong como Entero
	Definir usuario_id,respuesta, cerrarSesion,a,kl como Caracter
	definir esvalido como logico
	definir inicio Como Caracter 
	dimension a[10]
	iniciar=1
	// Inventario inicial
	inv_pelotaFutbol = 10
	inv_pelotaBasquet = 10
	inv_pelotaPinpong = 10
	inv_petoBasquet = 10
	inv_guantes = 10
	inv_raquetapinpong = 10
	
	// Bucle principal
	
	Mientras iniciar<>0 Hacer
		Escribir Sin Saltar "�Cu�l es tu c�digo? "
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
			Escribir "�Qu� deseas realizar?"
			Escribir "1. Pr�stamo"
			Escribir "2. Devoluci�n"
			Escribir "3. Terminar programa"
			Leer menu
			Segun menu Hacer
					1: // Opci�n 1: Pr�stamo
						Escribir "PRESTAMO DEPORTIVO"
						Escribir "1. F�tbol"
						Escribir "2. B�squet"
						Escribir "3. Ping pong"
						Leer sport_id
						
						Segun sport_id Hacer
							1:// F�tbol
								Escribir "Secci�n de f�tbol"
								Escribir "1. Pelota"
								Escribir "2. Guantes"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "Pelotas de f�tbol disponibles: ", inv_pelotaFutbol
										Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_pelotaFutbol = inv_pelotaFutbol - 1
											Escribir "El pr�stamo ha sido exitoso."
											
										SiNo  
											si respuesta == "n" o respuesta == "N" Entonces
												Escribir 'vuelva pronto'
											sino 
												escribir 'opcion no valida'
											FinSi
										FinSi
									2:	Escribir "Guantes disponibles: ", inv_guantes
										Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_guantes = inv_guantes - 1
											Escribir "El pr�stamo ha sido exitoso."
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
							2:// B�squet
								Escribir "Secci�n de b�squet"
								Escribir "1. Pelota"
								Escribir "2. Peto"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "Pelotas de b�squet disponibles: ", inv_pelotaBasquet
										Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_pelotaBasquet = inv_pelotaBasquet - 1
											Escribir "El pr�stamo ha sido exitoso."
										SiNo
											si respuesta == "n" o respuesta == "N" Entonces
											Escribir 'vuelva pronto'
										sino 
											escribir 'opcion no valida'
										FinSi
										FinSi
									2: Escribir "peto de b�squet disponibles: ", inv_petoBasquet
										Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_petoBasquet = inv_petoBasquet - 1
											Escribir "El pr�stamo ha sido exitoso."
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
								Escribir "Secci�n de ping pong"
								Escribir "1. Raqueta"
								Escribir "2. Pelota"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "Raquetas disponibles: ", inv_raquetapinpong
										Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_raquetapinpong = inv_raquetapinpong - 1
											Escribir "El pr�stamo ha sido exitoso."
										SiNo
											si respuesta == "n" o respuesta == "N" Entonces
												Escribir 'vuelva pronto'
											sino 
												escribir 'opcion no valida'
											FinSi
										FinSi
									2: Escribir "Pelotas de ping pong disponibles: ", inv_pelotaPinpong
										Escribir "�Deseas realizar el pr�stamo por 30 minutos? (s/n)"
										Leer respuesta
										Si respuesta == "s" o respuesta == "S" Entonces
											inv_pelotaPinpong = inv_pelotaPinpong - 1
											Escribir "El pr�stamo ha sido exitoso."
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
					2: // Opci�n 2: Devoluci�n
						Escribir "DEVOLUCI�N DE MATERIAL DEPORTIVO"
						Escribir "1. F�tbol"
						Escribir "2. B�squet"
						Escribir "3. Ping pong"
						Leer sport_id
						
						Segun sport_id Hacer
							1:// F�tbol
								Escribir "Secci�n de f�tbol"
								Escribir "1. Pelota"
								Escribir "2. Guantes"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "�Cu�ntas pelotas de f�tbol deseas devolver?"
										Leer cantidad
										inv_pelotaFutbol = inv_pelotaFutbol + cantidad
										Escribir "Devoluci�n exitosa. Pelotas de f�tbol disponibles: ", inv_pelotaFutbol
									2: Escribir "�Cu�ntos guantes deseas devolver?"
										Leer cantidad
										inv_guantes = inv_guantes + cantidad
										Escribir "Devoluci�n exitosa. Guantes disponibles: ", inv_guantes
								FinSegun
							De Otro Modo:
								Escribir "Opcion no valida"
							2:// B�squet
								Escribir "Secci�n de b�squet"
								Escribir "1. Pelota"
								Escribir "2. Peto"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "�Cu�ntas pelotas de b�squet deseas devolver?"
										Leer cantidad
										inv_pelotaBasquet = inv_pelotaBasquet + cantidad
										Escribir "Devoluci�n exitosa. Pelotas de b�squet disponibles: ", inv_pelotaBasquet
									2: Escribir "�Cu�ntos petos de b�squet deseas devolver?"
										Leer cantidad
										inv_petoBasquet = inv_petoBasquet + cantidad
										Escribir "Devoluci�n exitosa. Petos de b�squet disponibles: ", inv_petoBasquet
								FinSegun
							De Otro Modo:
								Escribir "Opcion no valida"
							3:// Ping pong
								Escribir "Secci�n de ping pong"
								Escribir "1. Raqueta"
								Escribir "2. Pelota"
								Leer objeto_id
								
								Segun objeto_id Hacer
									1: Escribir "�Cu�ntas raquetas deseas devolver?"
										Leer cantidad
										inv_raquetapinpong = inv_raquetapinpong + cantidad
										Escribir "Devoluci�n exitosa. Raquetas disponibles: ", inv_raquetapinpong
									2: Escribir "�Cu�ntas pelotas de ping pong deseas devolver?"
										Leer cantidad
										inv_pelotaPinpong = inv_pelotaPinpong + cantidad
										Escribir "Devoluci�n exitosa. Pelotas de ping pong disponibles: ", inv_pelotaPinpong
								FinSegun
							De Otro Modo:
								Escribir "Opcion no valida"
						FinSegun
						// Opci�n 3: Terminar programa
					3:
						Escribir "Programa finalizado."
					De Otro Modo:
						Escribir "Opcion no valida"
				FinSegun
				// Opci�n de cerrar sesi�n
				Escribir "�Cerrar sesi�n? (s/n)"
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
		sino si z<9 entonces
				escribir 'incorrecto:codigo fuera del limite establecido'
				escribir'vuelve a ingresarlo'
				esvalido= Falso
			finsi
			
		finsi
		
		fin mientras

FinAlgoritmo
