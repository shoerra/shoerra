Algoritmo Montaje
	numeroazar=azar(5555)
	Escribir "******** Bienvenido a La Emperatriz Bar&Restaurant *******"
	Escribir " Ingrese su nombre por favor "
	Leer Nombre
	
	Repetir
		Limpiar Pantalla
		Escribir " Estimad@ " nombre 
		Escribir "  " 
		Escribir " Marque 1 para conocer nuestras promos "
		EScribir " Marque 2 para armar su plato "
		Escribir " Marque 3 para agregar bebidas nacionales e internacionales "
		EScribir " Marque 4 para agregar postre "
		Escribir " Marque 5 para cerrar su orden"
		Escribir "  " 
		Escribir " El total de su pedido es hasta ahora " preciototal " USD " 
		Escribir " "
		Leer opcionprincipal
		Limpiar Pantalla
		
		si opcionprincipal=1 Entonces
			EScribir " 1- Arroz especial con Lumpia | $4 "
			EScribir " 2- Arroz especial con pollo agridulce | $7 "
			Escribir " 3- Arroz especial con Lumpia y pollo agridulce | $8 "
			Escribir " 4- Arroz especial con Lumpia y costillas de cerdo | $10"
			Escribir " 5- Arroz especial con Lumpia, pollo agridulce y chop suey | $12"
			Escribir " 6- Arroz especial con Lumpia y chop suey | $8 "
			Escribir " 7- Arroz especial con Lumpia, chop suey y costillas de cerdo | $16"
			Repetir
				Escribir " Estimado " nombre " Por favor ingrese el numero de la promocion que desea agregar, si desea parar ingrese el numero 0"
				leer numpromo
				
				si numpromo<1 y opcionbebida >7 entonces escribir " Ingrese un numero del 1 al 7"
				sino
					Segun numpromo hacer
						caso 1: preciototal=preciototal+4
						caso 2: preciototal=preciototal+7
						caso 3: preciototal=preciototal+8
						caso 4: preciototal=preciototal+10
						caso 5: preciototal=preciototal+12
						caso 6: preciototal=preciototal+8
						caso 7: preciototal=preciototal+16
					FinSegun
				FinSi
			hasta que numpromo=0 
		FinSi
		
		si opcionprincipal=2 Entonces
			Limpiar Pantalla
			Escribir "***** Contornos disponibles *****"
			Escribir " 1- Arroz especial Precio: $3"
			EScribir " 2- Lumpias por unidad Precio: $2"
			Escribir " 3- Chop suey Precio: $4"
			Escribir " 4- Pollo Agridulce Precio: $5"
			Escribir " 5- Costillas de cerdo Precio: $6 "
			Repetir
				Escribir " Estimado " nombre ", Ingrese una numero entre 1 y 5 para agregar a su orden, cuando haya escogido todos sus contornos, por favor ingrese el numero cero"
				Leer opcioncontorno
				
				si opcioncontorno<1 y opcioncontorno >5 entonces escribir " Ingrese un numero del 1 al 5"
				sino
					Segun opcioncontorno hacer
						caso 1: preciototal=preciototal+3
						caso 2: preciototal=preciototal+2
						caso 3: preciototal=preciototal+4
						caso 4: preciototal=preciototal+5
						caso 5: preciototal=preciototal+6
					FinSegun
				finsi
			hasta que opcioncontorno=0
		Finsi
		
		si opcionprincipal=3 Entonces
			Escribir " 1- Cerveza Polar light/ice $1 "
			Escribir " 2- Cerveza solera/ zulia $1 "
			Escribir " 3- Jugos naturales $2"
			Escribir " 4- Cerveza Heineken $3"
			EScribir " 5- Mojito $3"
			Escribir " 6- Piña colada $3"
			
			Repetir
				Escribir " Estimado " nombre ", Ingrese una numero entre 1 y 6 para agregar a su orden, cuando haya escogido sus bebidas, por favor ingrese el numero cero"
				Leer opcionbebida
				
				si opcionbebida<1 y opcionbebida >6 entonces escribir " Ingrese un numero del 1 al 6"
				sino
					Segun opcionbebida hacer
						caso 1: preciototal=preciototal+1
						caso 2: preciototal=preciototal+1
						caso 3: preciototal=preciototal+2
						caso 4: preciototal=preciototal+3
						caso 5: preciototal=preciototal+3
						caso 6: preciototal=preciototal+3
					FinSegun
				finsi
			hasta que opcionbebida=0 
		finsi
		
		si opcionprincipal=4 Entonces
			Escribir " 1- Torta de marquesa $3"
			Escribir " 2- Torta de tres leches $3 "
			Escribir " 3- Pie de Limon $3"
			Escribir " 4- Pie de manzana $3"
			EScribir " 5- Torta de doble chocolate $3"
			Escribir " 6- Arroz con leche $3"
			
			Repetir
				Escribir " Estimado " nombre ", Ingrese una numero entre 1 y 6 para agregar a su orden, cuando haya escogido sus postres, por favor ingrese el numero cero"
				Leer opcionpostre
				
				si opcionpostre<1 y opcionpostre >6 entonces escribir " Ingrese un numero del 1 al 6"
				sino
					Segun opcionpostre hacer
						caso 1: preciototal=preciototal+3
						caso 2: preciototal=preciototal+3
						caso 3: preciototal=preciototal+3
						caso 4: preciototal=preciototal+3
						caso 5: preciototal=preciototal+3
						caso 6: preciototal=preciototal+3
					FinSegun
				finsi
			hasta que opcionpostre=0
		finsi	
	Hasta Que opcionprincipal=5
	Limpiar Pantalla
	tasadolar=4.50
	IVA=(preciototal*3)/100
	preciototal=preciototal+IVA
	preciototal <- REDON(preciototal*100)/100
	Escribir "  " 
	Escribir " El total de su pedido es hasta ahora " preciototal " USD " 
	Escribir "  " 
	Escribir "Ingrese 1 si desea que su pedido sea enviado por delivery o 2 si desea hacer pick up"
	leer consumo
	
	si consumo=1 Entonces
		Limpiar Pantalla
		Escribir " "
		Escribir "Ingrese el municipio en el que se encuentra"
		Escribir "1-Libertador 2$"
		Escribir "2-chacao 2$"
		Escribir "3-Baruta 4$"
		Escribir "4-Sucre 4$"
		Escribir "5-El hatillo 5$"
		Escribir " "
		leer municipio
		Segun municipio hacer
			caso 1:preciototal=preciototal+2
			caso 2:preciototal=preciototal+2
			caso 3:preciototal=preciototal+4
			caso 4:preciototal=preciototal+4
			caso 5:preciototal=preciototal+5
		FinSegun
		Escribir " El total de su pedido es " preciototal " USD " 
		Escribir "¿Cómo desea cancelar su orden?"
		Escribir "1- Efectivo"
		Escribir "2- Pago movil"
		Escribir "3- Zelle"
		Leer tipopago
		si tipopago=1 Entonces
			Escribir "| Por favor, ingrese la denominación del billete con el que cancelará su pedido"
			Escribir "| "
			leer pago	
			
			si vueltoUSD=1 o vueltoUSD=2 o vueltoUSD>=5 o vueltoUSD=0 Entonces
				vueltoUSD=pago-preciototal
				Limpiar Pantalla
				Escribir "--------------------------------SENIAT-------------------------------------------- |"
				Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
				Escribir "| Factura N.º" numeroazar
				Escribir "| El precio total de su orden + IVA + delivery fue de $" preciototal
				Escribir "| El IVA de su orden fue de " IVA " USD "
				Escribir "| Canceló con un billete de " pago
				Escribir "| Quedó a su favor una diferencia de "  vueltoUSD " USD "
				Escribir "| --------------------------------------------------------------------------------|"
				Escribir " Le agradecemos por escogernos, a la brevedad su pedido será despachado"
				Esperar Tecla
			SiNo
				si vueltoUSD>=3 o vueltoUSD<=4 Entonces
					vueltoBsS=vueltoUSD*tasadolar
					Limpiar Pantalla
					Escribir "¿Le incomodaría recibir el vuelto de ", vueltoUSD " USD por un pago movil con monto de " vueltoBsS " BsS"
					Escribir "Ingrese 1 para sí, 2 para no"
					leer opcvuelto
					Limpiar Pantalla
					
					si opcvuelto=1 Entonces
						Limpiar Pantalla
						Escribir " Lamentamos desmejorar su experiencia de compra. Debido a la escaza circulación de billetes de baja denominación solo podemos ofrecerle cambio en esta modalidad por montos de entre 3$ o 4$"
						Escribir " Pulse cualquier tecla para continuar su compra"
						Esperar Tecla
						opcvuelto=2
					FinSi
					
					si opcvuelto=2 Entonces
						Limpiar Pantalla
						Escribir " Por favor ingrese su cédula de identidad "
						leer cedula
						Escribir " Por favor ingrese el código de su banco "
						leer banco
						Limpiar Pantalla
						Escribir "--------------------------------SENIAT-------------------------------------------- |"
						Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
						Escribir "| Factura N.º" numeroazar
						Escribir "| El precio total de su orden es + IVA + delivery $" preciototal 
						Escribir "| El IVA de su orden fue de  " IVA " USD "
						Escribir "| Canceló con un billete de " pago
						Escribir "| Quedó a su favor una diferencia de "  vueltoUSD " USD "
						Escribir "| --------------------------------------------------------------------------------|"
						Escribir " Se le ha realizado exitosamente un pago movil por " vueltoBsS " BsS "
						Escribir " Banco receptor: " banco
						Escribir " Cédula de identidad " cedula
						Escribir " Monto " vueltoBsS
						Escribir "| --------------------------------------------------------------------------------|"
						Escribir "**********************"
						Escribir " Le agradecemos por escogernos, a la brevedad su pedido será despachado"
						Esperar Tecla
					FinSi
				FinSi
			finsi 
		SiNo
			si tipopago=2 Entonces
				Limpiar Pantalla
				preciototalBsS=preciototal*tasadolar
				IVAsoberanos=(preciototalBsS*16)/100
				IVAsoberanos <- REDON(IVAsoberanos*100)/100
				preciototalBsS=preciototalBsS+IVAsoberanos
				preciototalBsS <- REDON(preciototalBsS*100)/100
				Escribir " Nuestra cuenta oficial es Banco Banesco y Banco provincial"
				Escribir " Código 0134 | 0424-2199438 | RIF: J405389397"
				Escribir " Código 0108 | 0424-2800354 | RIF: J405389397"
				Escribir " El monto a cancelar es de " preciototalBsS " BsS"
				Escribir " "
				Escribir " Ingrese los cuatro últimos dígitos del número de referencia "
				leer refpagomovil
				Esperar Tecla
				Limpiar Pantalla
				
				Escribir "--------------------------------SENIAT-------------------------------------------- |"
				Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
				Escribir "| Factura N.º" numeroazar
				Escribir "| El precio total de su orden + IVA + delivery " preciototalBsS " BsS"
				Escribir "| El IVA de su orden fue de " IVAsoberanos " BsS "
				Escribir "| --------------------------------------------------------------------------------|"
				Escribir "| Orden cancelada por pago móvil bajo el N.º de referencia " refpagomovil "|"
				Escribir "**********************"
				Escribir " Le agradecemos por escogernos, a la brevedad su pedido será despachado"
				Esperar Tecla
			SiNo
				si tipopago=3 Entonces
					Escribir " Nuestras cuentas oficiales de Zelle son :"
					Escribir " liset.mendoza@laemperatriz.com"
					Escribir " sharol.herrera@laemperatriz.com"
					Escribir " Se debe realizar un envio por " preciototal " USD "
					Escribir " "
					Escribir " Por favor ingrese el numero de referencia del envio "
					leer refzelle
					Limpiar Pantalla
					Escribir "--------------------------------SENIAT-------------------------------------------- |"
					Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
					Escribir "| Factura N.º" numeroazar
					Escribir "| El precio total de su orden + IVA + delivery es de $" preciototal 
					Escribir "| El IVA de su orden fue de " IVA " USD "
					Escribir "| Canceló con un zelle por " preciototal " bajo la referencia de " refzelle
					Escribir "| --------------------------------------------------------------------------------|"
					Escribir "**********************"
					Esperar Tecla
				FinSi
			FinSi
		FinSi
	SiNo
		si consumo=2 Entonces
			Escribir " El total de su pedido es " preciototal " USD " 
			Escribir "¿Cómo desea cancelar su orden?"
			Escribir "1- Efectivo"
			Escribir "2- Pago movil"
			Escribir "3- Zelle"
			Leer tipopago
			si tipopago=1 Entonces
				Escribir "| Por favor, ingrese la denominación del billete con el que cancelará su pedido"
				Escribir "| "
				leer pago	
				
				si vueltoUSD=1 o vueltoUSD=2 o vueltoUSD>=5 o vueltoUSD=0 Entonces
					vueltoUSD=pago-preciototal
					Limpiar Pantalla
					Escribir "--------------------------------SENIAT-------------------------------------------- |"
					Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
					Escribir "| Factura N.º" numeroazar
					Escribir "| El precio total de su orden + IVA fue de $" preciototal
					Escribir "| El IVA de su orden fue de " IVA " USD "
					Escribir "| Canceló con un billete de " pago
					Escribir "| Quedó a su favor una diferencia de "  vueltoUSD " USD "
					Escribir "| --------------------------------------------------------------------------------|"
					Escribir " Le agradecemos por escogernos, a la brevedad su pedido será despachado"
					Esperar Tecla
				SiNo
					si vueltoUSD>=3 o vueltoUSD<=4 Entonces
						vueltoBsS=vueltoUSD*tasadolar
						Limpiar Pantalla
						Escribir "¿Le incomodaría recibir el vuelto de ", vueltoUSD " USD por un pago movil con monto de " vueltoBsS " BsS"
						Escribir "Ingrese 1 para sí, 2 para no"
						leer opcvuelto
						Limpiar Pantalla
						
						si opcvuelto=1 Entonces
							Limpiar Pantalla
							Escribir " Lamentamos desmejorar su experiencia de compra. Debido a la escaza circulación de billetes de baja denominación solo podemos ofrecerle cambio en esta modalidad por montos de entre 3$ o 4$"
							Escribir " Pulse cualquier tecla para continuar su compra"
							Esperar Tecla
							opcvuelto=2
						FinSi
						
						si opcvuelto=2 Entonces
							Limpiar Pantalla
							Escribir " Por favor ingrese su cédula de identidad "
							leer cedula
							Escribir " Por favor ingrese el código de su banco "
							leer banco
							Limpiar Pantalla
							Escribir "--------------------------------SENIAT-------------------------------------------- |"
							Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
							Escribir "| Factura N.º" numeroazar
							Escribir "| El precio total de su orden + IVA es de $" preciototal 
							Escribir "| El IVA de su orden fue de  " IVA " USD "
							Escribir "| Canceló con un billete de " pago
							Escribir "| Quedó a su favor una diferencia de "  vueltoUSD " USD "
							Escribir "| --------------------------------------------------------------------------------|"
							Escribir " Se le ha realizado exitosamente un pago movil por " vueltoBsS " BsS "
							Escribir " Banco receptor: " banco
							Escribir " Cédula de identidad " cedula
							Escribir " Monto " vueltoBsS
							Escribir "| --------------------------------------------------------------------------------|"
							Escribir "**********************"
							Escribir " Le agradecemos por escogernos, a la brevedad su pedido será despachado"
							Esperar Tecla
						FinSi
					FinSi
				finsi 
			SiNo
				si tipopago=2 Entonces
					Limpiar Pantalla
					preciototalBsS=preciototal*tasadolar
					IVAsoberanos=(preciototalBsS*16)/100
					IVAsoberanos <- REDON(IVAsoberanos*100)/100
					preciototalBsS=preciototalBsS+IVAsoberanos
					preciototalBsS <- REDON(preciototalBsS*100)/100
					Escribir " Nuestra cuenta oficial es Banco Banesco y Banco provincial"
					Escribir " Código 0134 | 0424-2199438 | RIF: J405389397"
					Escribir " Código 0108 | 0424-2800354 | RIF: J405389397"
					Escribir " El monto a cancelar es de " preciototalBsS " BsS"
					Escribir " "
					Escribir " Ingrese los cuatro últimos dígitos del número de referencia "
					leer refpagomovil
					Esperar Tecla
					Limpiar Pantalla
					
					Escribir "--------------------------------SENIAT-------------------------------------------- |"
					Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
					Escribir "| Factura N.º" numeroazar
					Escribir "| El precio total de su orden + IVA es de " preciototalBsS " BsS"
					Escribir "| El IVA de su orden fue de " IVAsoberanos " BsS "
					Escribir "| --------------------------------------------------------------------------------|"
					Escribir "| Orden cancelada por pago móvil bajo el N.º de referencia " refpagomovil "|"
					Escribir "**********************"
					Escribir " Le agradecemos por escogernos, a la brevedad su pedido será despachado"
					Esperar Tecla
				SiNo
					si tipopago=3 Entonces
						Escribir " Nuestras cuentas oficiales de Zelle son :"
						Escribir " liset.mendoza@laemperatriz.com"
						Escribir " sharol.herrera@laemperatriz.com"
						Escribir " Se debe realizar un envio por " preciototal " USD "
						Escribir " "
						Escribir " Por favor ingrese el numero de referencia del envio "
						leer refzelle
						Limpiar Pantalla
						Escribir "--------------------------------SENIAT-------------------------------------------- |"
						Escribir "| La emperatriz Bar&Restaurant RIF: J405389397"
						Escribir "| Factura N.º" numeroazar
						Escribir "| El precio total de su orden + IVA es de $" preciototal 
						Escribir "| El IVA de su orden fue de  " IVA " USD "
						Escribir "| Canceló con un zelle por " preciototal " bajo la referencia de " refzelle
						Escribir "| --------------------------------------------------------------------------------|"
						Escribir "**********************"
						Esperar Tecla
					FinSi
				FinSi	
			FinSi
		FinSi
	FinSi


FinAlgoritmo
