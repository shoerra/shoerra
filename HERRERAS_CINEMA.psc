Algoritmo HERRERAS_CINEMA
	
	Dimension SALA[7,7]

	SALA[0,0]<-0
	SALA[0,1]<-0
	SALA[0,2]<-5
	SALA[0,3]<-0
	SALA[0,4]<-0
	SALA[0,5]<-5
	SALA[0,6]<-0
	
	SALA[1,0]<-5
	SALA[1,1]<-0
	SALA[1,2]<-0
	SALA[1,3]<-5
	SALA[1,4]<-0
	SALA[1,5]<-0
	SALA[1,6]<-5
	
	SALA[2,0]<-0
	SALA[2,1]<-0
	SALA[2,2]<-5
	SALA[2,3]<-0
	SALA[2,4]<-0
	SALA[2,5]<-5
	SALA[2,6]<-0
	
	SALA[3,0]<-5
	SALA[3,1]<-0
	SALA[3,2]<-0
	SALA[3,3]<-5
	SALA[3,4]<-0
	SALA[3,5]<-0
	SALA[3,6]<-5
	
	SALA[4,0]<-0
	SALA[4,1]<-0
	SALA[4,2]<-5
	SALA[4,3]<-0
	SALA[4,4]<-0
	SALA[4,5]<-5
	SALA[4,6]<-0
	
	SALA[5,0]<-5 
	SALA[5,1]<-0
	SALA[5,2]<-0
	SALA[5,3]<-5
	SALA[5,4]<-0
	SALA[5,5]<-0
	SALA[5,6]<-5
	
	SALA[6,0]<-0
	SALA[6,1]<-0
	SALA[6,2]<-5
	SALA[6,3]<-0
	SALA[6,4]<-0
	SALA[6,5]<-5
	SALA[6,6]<-0
	
	para f=0 hasta 6 con paso 1 Hacer
		para c=0 hasta 6 con paso 1 Hacer
			si SALA[f,c]=0 Entonces
				conteo_vacias1=conteo_vacias1+1
			SiNo
				
			FinSi
		FinPara
	FinPara
	
	para f=0 hasta 6 con paso 1 Hacer
		para c=0 hasta 6 con paso 1 Hacer
			si SALA[f,c]=5 Entonces
				conteo_covid=conteo_covid+1
			SiNo
				
			FinSi
		FinPara
	FinPara

	tasa_dolar=4.5
	entrada_adul_usd=3
	entrada_adul_BsS=entrada_adul_usd*tasa_dolar
	entrada_NINO_usd=2
	entrada_NINO_BsS=entrada_NINO_usd*tasa_dolar

	Escribir "Por favor, presione 1 para iniciar la operación"
	leer cine
	Mientras cine=1
		Limpiar Pantalla
		Escribir "----------------------------------"
		Escribir "| Bienvenid@ a Herreras CINEMA C.A |"
		Escribir "----------------------------------"
		Escribir "¿Cómo podemos ayudarle?"
		Escribir " "
		Escribir "1.- Adquirir entradas"
		Escribir "3.- Cierre de sala (Solo administradores)"
		Escribir " "
		Leer menu1
		Segun menu1 Hacer
			1:
				Limpiar Pantalla
				Escribir "Le informamos que las entradas disponibles son "
				Escribir " "
				Escribir "1)   Adultos en " entrada_adul_BsS " BsS" " o " entrada_adul_usd " USD"
				Escribir "2)   Niños en " entrada_NINO_BsS " BsS" " o " entrada_NINO_usd " USD"
				Escribir "Por favor seleccione su tipo de entrada"
				Leer Tipoentrada
				Limpiar Pantalla
				si Tipoentrada=1 Entonces
					Escribir "Ingrese la cantidad de entradas de ADULTO que desea adquirir"
					leer seleccion_entrada_adulto
					//Si no le sumabas la misma variable cuando vinieras a coomprar otra solo se iba a contar la otra nueva que estabas comprando y no las de antes
					entradas_adulto_vendidas=entradas_adulto_vendidas+seleccion_entrada_adulto
					total_adulto_usd=entradas_adulto_vendidas*entrada_adul_usd
					total_adulto_BsS=total_adulto_usd*tasa_dolar
					Repetir
						Limpiar Pantalla
						Escribir "Los Asientos disponibles son "
						Escribir " "
						Escribir "Le informamos que los asientos con un número 5 designados no se encuentran disponibles en pro de mantener las medidad de bioseguridad dentro de las instalaciones"
						Escribir "De igual manera, aquellos con un número 1 o 2 asignados ya se encuentran ocupados por otros usuarios "
						Escribir " "
						
						para f<-0 hasta 7-1 con paso 1 Hacer
							Escribir "|" f " |" 
							para c<-0 hasta 7-1 con paso 1 Hacer
								Escribir Sin Saltar "    " SALA[f,c], " "
							FinPara
							
							Escribir " " 
						FinPara
						
						Escribir " "
						Escribir "__________________________________________"
						Escribir "]]]******PANTALLA PRINCIPAL************[[["
						Escribir "------------------------------------------"
						Escribir " "
						Escribir "Indroduzca la fila del asiento a reservar"
						leer fila
						Escribir "Indroduzca la columna del asiento a reservar"
						leer columna
						si SALA[fila,columna]=0 Entonces
							SALA[fila,columna]<-1
							seleccion_entrada_adulto=seleccion_entrada_adulto-1
						FinSi	
						si SALA[fila,columna]=1 Entonces
							Escribir "Este puesto se encuentra ocupado, por favor elegir otro"
						FinSi
						si SALA[fila,columna]=5 Entonces
							Escribir "Este asiento se encuentra inhabilitado para preserver las medidas de bioseguridad, por favor elija otro"
						FinSi
						si SALA[fila,columna]=2 Entonces
							Escribir "Este asiento se encuentra inhabilitado para preserver las medidas de bioseguridad, por favor elija otro"
						FinSi
						
					Hasta Que seleccion_entrada_adulto=0
				FinSi
				Limpiar Pantalla
				
				si Tipoentrada=2 Entonces
					Escribir "Ingrese la cantidad de entradas de NINO que desea adquirir"
					leer seleccion_entrada_NINO
					entradas_NINO_vendidas=seleccion_entrada_NINO
					total_NINO_money=entradas_NINO_vendidas*entrada_NINO_usd
					total_NINO_bsS=total_NINO_money*tasa_dolar
					
						Repetir
							Limpiar Pantalla
							Escribir "Los Asientos disponibles son "
							Escribir " "
							Escribir "Le informamos que los asientos con un número 5 designados no se encuentran disponibles en pro de mantener las medidad de bioseguridad dentro de las instalaciones"
							Escribir "De igual manera, aquellos con un número 1 o 2 asignados ya se encuentran ocupados por otros usuarios "
							Escribir " "
							
							para f<-0 hasta 7-1 con paso 1 Hacer
								Escribir "|" f " |" 
								para c<-0 hasta 7-1 con paso 1 Hacer
									Escribir Sin Saltar "    " SALA[f,c], " "
								FinPara
								
								Escribir " " 
							FinPara
							
							Escribir " "
							Escribir "__________________________________________"
							Escribir "]]]******PANTALLA PRINCIPAL************[[["
							Escribir "------------------------------------------"
							Escribir " "
							Escribir "Indroduzca la fila del asiento a reservar"
							leer fila
							Escribir "Indroduzca la columna del asiento a reservar"
							leer columna
							si SALA[fila,columna]=0 Entonces
								SALA[fila,columna]<-2
								seleccion_entrada_NINO=seleccion_entrada_NINO-1
							FinSi
						Hasta Que 	seleccion_entrada_NINO=0
						
						//simplemente son mis conidicionales de sí que no funcionan
						
				FinSi
				Limpiar Pantalla
				Escribir "Si desea comprar otra entrada ingrese 1"
				Escribir "Si desea comprar chucherías ingrese 2"
				Escribir "Si desea cerrar su compra ingrese 3"
				leer segunda_etapa
				
				si segunda_etapa=1 Entonces
					cine=1
				FinSi
				si segunda_etapa=2 Entonces
					comboparados_usd=6.8
					comboparados_BsS=comboparados_usd*tasa_dolar
					combomediano_usd=4
					combomediano_BsS=combomediano_usd*tasa_dolar
					combopequeno_usd=3.5
					combopequeno_BsS=combopequeno_usd*tasa_dolar
					MEGAcombo_usd=11
					MEGAcombo_BsS=MEGAcombo_usd*tasa_dolar
					snacks=1
					Limpiar Pantalla
					si snacks=1 Entonces
						Repetir
							Limpiar Pantalla
							Escribir "Los snacks que tenemos disponibles son:"
							Escribir " "
							
							Escribir"1)" " Combo para 2 por " comboparados_BsS " BsS o " comboparados_usd " USD"
							Escribir "      1 Cotufa extra grande (8oz) + 2 bebidas grandes (945ml C/U)"
							Escribir"2)" " Combo mediano por " combomediano_BsS " BsS o " combomediano_usd " USD"
							Escribir "      1 Cotufa mediana (4oz) + 1 bebida mediana (650ml)"
							Escribir"3)" " Combo pequeño por " combopequeno_BsS "BsS o " combopequeno_usd " USD"
							Escribir"      1 Cotufa pequeña (2oz) + 1 bebida pequeña (350ml)"
							Escribir"4)" " MEGA combo por " MEGAcombo_BsS " BsS o " MEGAcombo_usd " USD"
							Escribir "      1 Cotufa EXTRA GRANDE (8oz) + 2 bebidas grandes (945ml C/U) + 1 ración de tequeños (6Und)"
							Escribir " "
							Escribir "Digite el combo que desea adquirir"
							Escribir " "
							Leer compra_snacks
							Limpiar Pantalla
							Segun compra_snacks Hacer
								1:
									Limpiar Pantalla
									Escribir "Usted ha seleccionado el Combo para 2"
									Escribir "¿Cuántas unidades del combo desea adquirir?"
									Leer cantcombo1
									total_snacks_USD=total_snacks_USD+comboparados_usd*cantcombo1
									Escribir " "
									Escribir "Si desea comprar otro combo ingrese 1"
									Escribir "Si desea cerrar su factura ingrese 9"
									leer otrocombo
									si otrocombo=0 Entonces
										snacks=1
									FinSi
									si otrocombo=9 Entonces
										snacks=0
										segunda_etapa=3
									FinSi
									
									
								2:
									Escribir "Usted ha seleccionado el Combo mediano"
									Escribir "¿Cuántas unidades del combo desea adquirir?"
									Leer cantcombo2
									total_snacks_USD=total_snacks_USD+combomediano_usd*cantcombo2
									Escribir " "
									Escribir "Si desea comprar otro combo ingrese 1"
									Escribir "Si desea cerrar su factura ingrese 9"
									leer otrocombo
									si otrocombo=9 Entonces
										snacks=0
										segunda_etapa=3
									FinSi
								3:
									Escribir "Usted ha seleccionado el Combo pequeño"
									Escribir "¿Cuántas unidades del combo desea adquirir?"
									Leer cantcombo3
									total_snacks_USD=total_snacks_USD+combopequeno_usd*cantcombo3
									Escribir " "
									Escribir "Si desea comprar otro combo ingrese 1"
									Escribir "Si desea cerrar su factura ingrese 9"
									leer otrocombo
									si otrocombo=9 Entonces
										snacks=0
										segunda_etapa=3
									FinSi
								4:
									Escribir "Usted ha seleccionado el MEGACombo"
									Escribir "¿Cuántas unidades del combo desea adquirir?"
									Leer cantcombo4
									total_snacks_USD=total_snacks_USD+MEGAcombo_usd*cantcombo4
									Escribir " "
									Escribir "Si desea comprar otro combo ingrese 1"
									Escribir "Si desea cerrar su factura ingrese 9"
									leer otrocombo
									si otrocombo=9 Entonces
										snacks=0
										segunda_etapa=3
									FinSi
								De Otro Modo:
									Escribir "Por favor ingrese un combo válido"
							Fin Segun
						Hasta Que snacks=0
						
					FinSi
				FinSi
				
				si segunda_etapa=3 Entonces
					Limpiar Pantalla
					Escribir "Bienvenid@ a la facturación"
					
					totalUSD=total_adulto_usd+total_NINO_money+total_snacks_USD
					totalBSS=totalUSD*tasa_dolar
					total_snacks_BsS=total_snacks_USD*tasa_dolar
					Escribir " "
					Escribir " El total por concepto de entradas de niños es " total_NINO_money " USD o " total_NINO_bsS " BsS"
					Escribir " El total por concepto de entradas de adultos es " total_adulto_usd " USD o " total_adulto_BsS " BsS"
					Escribir " El total por concepto de snacks en tienda es " total_snacks_USD " USD o " total_snacks_BsS " BsS "
					Escribir " El total a cancelar es " totalUSD " USD  o " totalBSS " BsS"
					Escribir " "
					Escribir " Ingrese una tecla cualquiera para continuar "
					Esperar Tecla
				FinSi
				
			3:
				Limpiar Pantalla
				ingreso_entradas_adulto=entradas_adulto_vendidas*entrada_adul_usd
				ingreso_entradas_NINO=entradas_NINO_vendidas*entrada_NINO_usd
				puestos_ocupados=entradas_NINO_vendidas+entradas_adulto_vendidas
				conteo_real_vacias=conteo_vacias1-puestos_ocupados

				si SALA[0,0]=2 Entonces
					conteo_NINOS_4esq=conteo_NINOS_4esq+1
				FinSi
				
				si SALA[6,0]=2 Entonces
					conteo_NINOS_4esq=conteo_NINOS_4esq+1
				FinSi
				
				si SALA[6,6]=2 Entonces
					conteo_NINOS_4esq=conteo_NINOS_4esq+1
				FinSi
			
				si SALA[0,6]=2 Entonces
					conteo_NINOS_4esq=conteo_NINOS_4esq+1
				FinSi
				
				para f=0 hasta 6 con paso 1 Hacer
					para c=0 hasta 6 con paso 1 Hacer
						si f=c Entonces
							si SALA[f,c]=1 Entonces
								Adulto_DP=Adulto_DP+1
							FinSi
						FinSi
					FinPara
				FinPara
				
				si SALA[6,0]=2 Entonces
					NINO_DI=NINO_DI+1
				FinSi
				
				si SALA[5,1]=1 Entonces
					NINO_DI=NINO_DI+1
				FinSi
				
				si SALA[4,2]=1 Entonces
					NINO_DI=NINO_DI+1
				FinSi
				
				si SALA[3,3]=1 Entonces
					NINO_DI=NINO_DI+1
				FinSi
				
				si SALA[2,4]=1 Entonces
					NINO_DI=NINO_DI+1
				FinSi
				
				si SALA[1,5]=1 Entonces
					NINO_DI=NINO_DI+1
				FinSi
				
				si SALA[0,6]=1 Entonces
					NINO_DI=NINO_DI+1
				FinSi
				
				Escribir "****Bienvenido al administrador **** "
				Escribir " "
				Escribir "   La cantidad de entradas vendidas de adulto en el día son " entradas_adulto_vendidas
				Escribir "   La cantidad de entradas vendidas de niños en el día son " entradas_NINO_vendidas
				Escribir "   El ingreso en caja por entradas vendidas de adulto del día es " ingreso_entradas_adulto " USD "
				Escribir "   El ingreso en caja por entradas vendidas de niños del día es " ingreso_entradas_NINO " USD "
				Escribir "   La cantidad de sillas inhabilitadas por distanciamiento social son " conteo_covid
				Escribir "   La cantidad de sillas vacías son " conteo_real_vacias
				Escribir " "
				Escribir "   La cantidad de entradas de niños vendidas en las cuatro esquinas es " conteo_NINOS_4esq
				Escribir "   La cantidad de butacas de adultos vendidas en la Diagonal Principal son " Adulto_DP
				Escribir "   La cantidad de entradas de niños vendidas en la Diagonal invertida son " NINO_DI
				
				Escribir "Si desea salir al menú principal ingrese 1"
				leer cine
		Fin Segun
	FinMientras
	
	
	
	Limpiar Pantalla
	
	
FinAlgoritmo
