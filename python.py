#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
import os
import MySQLdb
os.system("clear")
conexion_db=MySQLdb.connect(host="localhost",user="academia",passwd="academia",db="Exameness")
cursor=conexion_db.cursor()
def crear_ex():
	os.system("clear")
	print ("------------------------------")
	print ("Crear examen test")
	print ("------------------------------")
	# ~ Creamos la tabla
	tema = input("Asigna un nombre: (por ejemplo: videojuegos): ")
	crear1 = ("CREATE TABLE " + tema + "( id" + tema + " INT NOT NULL AUTO_INCREMENT, preguntas_" + tema + " VARCHAR(45) NULL, PRIMARY KEY (id" + tema + "));")
	cursor.execute(crear1)
	crear2 = ("CREATE TABLE resp_" + tema + "( id" + tema + "2 INT NOT NULL AUTO_INCREMENT, respuesta_" + tema + " VARCHAR(200) NULL, id" + tema + " INT(2) NULL, "+ tema +"_correcta INT(1) NULL, apartado VARCHAR(45) NULL, PRIMARY KEY (id" + tema + "2));")
	cursor.execute(crear2)
	print ("------------------------------")
	print("BD '"+tema+"' creada \n")
	# ~ añadir informacion al tema 
	print("¿Añadir preguntas y respuestas a al tema "+tema+"?")
	insertar = input("opciones: (si | no): ")
	print ("------------------------------")
	print(" ")
	if insertar == 'si':
		cpregunta = int(input("¿Número de preguntas?: \n "))
		cpregunta = cpregunta + 1
		crespuesta = int(input("¿Numero de posibles respuestas por pregunta?: \n"))
		crespuesta = crespuesta + 1
		os.system("clear")
		print ("EXAMEN DE "+tema)
		print ("------------------------------")
		for c in range(1,cpregunta):
			print(c," Pregunta",sep="º",end=":")
			pregunta = input("")
			print ("\n")
			insert=("INSERT INTO "+tema+" (preguntas_"+tema+") VALUES ('"+pregunta+"');")
			cursor.execute(insert)
			for r in range(1,crespuesta):
				respuesta = input("\t"+str(r)+"º Opcion: ")
				insert2=("INSERT INTO resp_"+tema+" (respuesta_"+tema+",id"+tema+") VALUES ('"+respuesta+"','"+str(c)+"');")
				cursor.execute(insert2)
				conexion_db.commit()
			correcta = input("\n Cual de las "+str(r)+" es correcta: ")
			update=("UPDATE resp_"+tema+" SET "+tema+"_correcta = '%s' WHERE id"+tema+"2 = '%s';")
			val = (1,c)
			cursor.execute(update,val)
			conexion_db.commit()
			print ("\n")
		input("Volver al menu: ")
	else:
		print("BD '"+tema+"' no ha sido creada \n")
		input("Volver al menu: ")
def añadir_ex():
		op=0
		os.system("clear")
		while op!=5:
			os.system("clear")
			print ("Añadir preguntas y respuestas a un tema")
			print ("")
			print ("1. Musica")
			print ("2. Natacion")
			print ("3. Informatica")
			print ("4. Turismo")	
			print ("5. Salir")
			op=int(input("\n Opcion: "))
			if op==1:
				os.system("clear")
				print ("Test de Musica")
				print ("------------------------------")
				cpregunta = int(input("¿Número de preguntas?: \n "))
				cpregunta = cpregunta + 1
				crespuesta = int(input("¿Numero de posibles respuestas por pregunta?: \n"))
				crespuesta = crespuesta + 1
				os.system("clear")
				print ("EXAMEN DE MUSICA")
				print ("------------------------------")
				for c in range(1,cpregunta):
					print(c," Pregunta",sep="º",end=":")
					pregunta = input("")
					print ("\n")
					insert=("INSERT INTO musica (preguntas) VALUES ('"+pregunta+"');")
					cursor.execute(insert)
					for r in range(1,crespuesta):
						respuesta = input("\t"+str(r)+"º Opcion: ")
						insert2=("INSERT INTO resp_musica (respuesta) VALUES ('"+respuesta+"');")
						cursor.execute(insert2)
					correcta = input("\n Cual de las "+str(r)+" es correcta: ")
					conexion_db.commit()
					print ("\n")
				input("Volver al menu: ")
			elif op==2:
				os.system("clear")
				print ("Test de Natacion")
				print ("------------------------------")
				cpregunta = int(input("¿Número de preguntas?: \n "))
				cpregunta = cpregunta + 1
				crespuesta = int(input("¿Numero de posibles respuestas por pregunta?: \n"))
				crespuesta = crespuesta + 1
				os.system("clear")
				print ("EXAMEN DE NATACION")
				print ("------------------------------")
				for c in range(1,cpregunta):
					print(c," Pregunta",sep="º",end=":")
					pregunta = input("")
					print ("\n")
					insert=("INSERT INTO natacion (preguntas) VALUES ('"+pregunta+"');")
					cursor.execute(insert)
					for r in range(1,crespuesta):
						respuesta = input("\t"+str(r)+"º Opcion: ")
						insert2=("INSERT INTO resp_natacion (respuestas) VALUES ('"+respuesta+"');")
						cursor.execute(insert2)
					correcta = input("\n Cual de las "+str(r)+" es correcta: ")
					conexion_db.commit()
					print ("\n")
				input("Volver al menu: ")
			elif op==3:
				os.system("clear")
				print ("Test de Informatica")
				print ("------------------------------")
				cpregunta = int(input("¿Número de preguntas?: \n "))
				cpregunta = cpregunta + 1
				crespuesta = int(input("¿Numero de posibles respuestas por pregunta?: \n"))
				crespuesta = crespuesta + 1
				os.system("clear")
				print ("EXAMEN DE INFORMATICA")
				print ("------------------------------")
				for c in range(1,cpregunta):
					print(c," Pregunta",sep="º",end=":")
					pregunta = input("")
					print ("\n")
					insert=("INSERT INTO informatica (preguntas) VALUES ('"+pregunta+"');")
					cursor.execute(insert)
					for r in range(1,crespuesta):
						respuesta = input("\t"+str(r)+"º Opcion: ")
						insert2=("INSERT INTO resp_informatica (respuesta) VALUES ('"+respuesta+"');")
						cursor.execute(insert2)
					correcta = input("\n Cual de las "+str(r)+" es correcta: ")
					conexion_db.commit()
					print ("\n")
				input("Volver al menu: ")
			elif op==4:
				os.system("clear")
				print ("Test de Turismo")
				print ("------------------------------")
				cpregunta = int(input("¿Número de preguntas?: \n "))
				cpregunta = cpregunta + 1
				crespuesta = int(input("¿Numero de posibles respuestas por pregunta?: \n"))
				crespuesta = crespuesta + 1
				os.system("clear")
				print ("EXAMEN DE TURISMO")
				print ("------------------------------")
				for c in range(1,cpregunta):
					print(c," Pregunta",sep="º",end=":")
					pregunta = input("")
					print ("\n")
					insert=("INSERT INTO turismo (preguntas) VALUES ('"+pregunta+"');")
					cursor.execute(insert)
					for r in range(1,crespuesta):
						respuesta = input("\t"+str(r)+"º Opcion: ")
						insert2=("INSERT INTO resp_turismo (respuestas) VALUES ('"+respuesta+"');")
						cursor.execute(insert2)
					correcta = input("\n Cual de las "+str(r)+" es correcta: ")
					conexion_db.commit()
					print ("\n")
				input("Volver al menu: ")
def emusica():
	os.system("clear")
	cont = 0
	print ("Test de Musica")
	print (" ")	
	for a in range(1,11):
		select_preg = "SELECT * FROM Exameness.musica WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
			
		print ("------------------------------")
		print ("\n")		
		select_resp = "SELECT * FROM Exameness.resp_musica WHERE idmusica = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[4],respuestas[1],sep=")")
			
		print (" ")	
		respuesta_musica = input("Solucion: ")
		print (" ")
		apartado = "SELECT * FROM Exameness.resp_musica WHERE idmusica = %(id)s and abcd = %(apartado)s"
		cursor.execute(apartado, { 'id': a, 'apartado': respuesta_musica })
		consulta = cursor.fetchone()
		
		if consulta[3] == 1:
			cont = cont + 1
	print ("------------------------")
	print ("Tu nota es",cont,sep=": ")
	print ("-----------------------")
	print ("\n Nota guardada en la base de datos \n")
	i_nota = ("INSERT INTO `Exameness`.`notas_musica` (`notas`) VALUES ('"+str(cont)+"');")
	cursor.execute(i_nota)
	conexion_db.commit()
	# ~ conexion_db.close()
	input("Volver al menu: ")
def enatacion():
	os.system("clear")
	cont = 0
	print ("Test de Natacion")
	print (" ")	
	for a in range(1,10):
		select_preg = "SELECT * FROM natacion WHERE idnatacion = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		print (" ")	
		select_resp = "SELECT * FROM resp_natacion WHERE id_respuestas = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[4],respuestas[1],sep=")")
		print (" ")	
		respuesta_natacion = input("Solucion: ")
		print (" ")		
		apartado = "SELECT * FROM resp_natacion WHERE id_respuestas = %(id)s and abcd = %(apartado)s"
		cursor.execute(apartado, { 'id': a, 'apartado': respuesta_natacion })
		consulta = cursor.fetchone()
		if consulta[3] == 1:
			cont = cont + 1
	print ("------------------------")
	print ("Tu nota es",cont,sep=": ")
	print ("-----------------------")
	print ("\n Nota guardada en la base de datos \n")
	i_nota = ("INSERT INTO `Exameness`.`notas_natacion` (`notas_natacion`) VALUES ('"+str(cont)+"');")
	cursor.execute(i_nota)
	conexion_db.commit()
	# ~ conexion_db.close()
	input("Volver al menu: ")
def einformatica():
	os.system("clear")
	cont = 0
	print ("Test de Programacion")
	print (" ")	
	for a in range(1,10):
		select_preg = "SELECT * FROM informatica WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		select_resp = "SELECT * FROM resp_informatica WHERE ip_resp = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[4],respuestas[1],sep=")")
		print (" ")	
		respuesta_programacion = input("Solucion: ")
		print (" ")	
		apartado = "SELECT * FROM resp_informatica WHERE ip_resp = %(id)s and apartado = %(abcd)s"
		cursor.execute(apartado, { 'id': a, 'abcd': respuesta_programacion })
		consulta = cursor.fetchone()
		if consulta[3] == 1:
			cont = cont + 1
	print ("------------------------")
	print ("Tu nota es",cont,sep=": ")
	print ("-----------------------")
	print ("\n Nota guardada en la base de datos \n")
	i_nota = ("INSERT INTO `Exameness`.`notas_informatica` (`notas_informatica`) VALUES ('"+str(cont)+"');")
	cursor.execute(i_nota)
	conexion_db.commit()
	# ~ conexion_db.close()
	input("Volver al menu: ")
def eturismo():
	os.system("clear")
	cont = 0
	print ("Test de Turismo")
	print (" ")	
	for a in range(1,10):
		select_preg = "SELECT * FROM turismo WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		select_resp = "SELECT * FROM resp_turismo WHERE id_respuestas = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[4],respuestas[1],sep=")")
		print (" ")	
		respuesta_turismo = input("Solucion: ")		
		print (" ")	
		apartado = "SELECT * FROM resp_turismo WHERE id_respuestas = %(id)s and apartado = %(abcd)s"
		cursor.execute(apartado, { 'id': a, 'abcd': respuesta_turismo })
		consulta = cursor.fetchone()
		if consulta[3] == 1:
			cont = cont + 1
	print ("-----------------------")
	print ("Tu nota es",cont,sep=": ")
	print ("-----------------------")
	print ("\n Nota guardada en la base de datos \n")
	i_nota = ("INSERT INTO `Exameness`.`notas_turismo` (`notas_turismo`) VALUES ('"+str(cont)+"');")
	cursor.execute(i_nota)
	conexion_db.commit()
	# ~ conexion_db.close()
	input("Volver al menu: ")
ap=0
while ap!=3:
	os.system("clear")
	op=0
	print ("-----------------")
	print ("|      MENU     |")
	print ("-----------------")
	print ("|1.Examenes     |")
	print ("|2.Nuevo Test   |")
	print ("|3.Salir        |")
	print ("-----------------")
	ap=int(input("Elige una opcion: "))
	print (ap)
	if ap==1: 
		while op!=5:
			os.system("clear")
			print ("Realizaremos un examen")
			print ("")
			print ("1. Musica")
			print ("2. Natacion")
			print ("3. Informactica")
			print ("4. Turismo")	
			print ("5. Salir")
			op=int(input("\n Opcion: "))
			if op==1:
				emusica()
			elif op==2:
				enatacion()
			elif op==3:
				einformatica()
			elif op==4:
				eturismo()
	if ap==2:
		while op!=3:
			os.system("clear")
			print ("Crear un examen")
			print ("")
			print ("1. Crear test")
			print ("2. Añadir preguntas y respuestas a un tema ya existente ")
			print ("3. Salir")
			op=int(input("\n Opcion: "))
			if op==1:
				crear_ex()
			elif op==2:
				añadir_ex()
		
