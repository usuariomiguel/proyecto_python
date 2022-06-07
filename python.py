#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
import os
import MySQLdb
os.system("clear")
conexion_db=MySQLdb.connect(host="localhost",user="academia",passwd="academia",db="Exameness")
cursor=conexion_db.cursor()
def crear_ex():
	os.system("clear")
	print ("Crear examen test")
	tema = input("tema a tratar(ejemplo: videojuegos): ")
	crear1 = ("CREATE TABLE Exameness." + tema + "( id" + tema + " INT NOT NULL AUTO_INCREMENT, preguntas_" + tema + " VARCHAR(45) NULL, PRIMARY KEY (id" + tema + "));")
	cursor.execute(crear1)
	crear2 = ("CREATE TABLE Exameness.resp_" + tema + "( id" + tema + "2 INT NOT NULL AUTO_INCREMENT, respuesta_" + tema + " VARCHAR(200) NULL, id" + tema + " VARCHAR(1) NULL, "+ tema +"_correcta INT(1) NULL, apartado VARCHAR(45) NULL, PRIMARY KEY (id" + tema + "2));")
	cursor.execute(crear2)
	print("Base de datos "+tema+" creada")
	insertar = input("¿Quieres añadir preguntas y respuestas a "+tema+"?(opciones: si / no): ")
	if insertar == 'si':
		cpregunta = int(input("¿Cuantas preguntas va a tener?: "))
		cpregunta = cpregunta + 1
		crespuesta = int(input("¿Cuantas posibles respuestas por pregunta?: "))
		crespuesta = crespuesta + 1
		os.system("clear")
		print ("EXAMEN DE "+tema)
		print ("------------------------------")
		for c in range(1,cpregunta):
			print(c," Pregunta",sep="º",end=":")
			pregunta = raw_input("")
			print (" ")
			query=("INSERT INTO Exameness."+tema+" (preguntas_"+tema+") VALUES ('"+pregunta+"');")
			cursor.execute(query)
			# ~ for preguntas in cursor.fetchall():
				# ~ print (preguntas[0])
			for r in range(1,crespuesta):
				print(r," Respuesta",sep="º",end=":")
				respuesta = raw_input(" ")
				query2=("INSERT INTO Exameness."+tema+" (respuesta) VALUES ('"+tema+"');")
				cursor.execute(query)
				# ~ for preguntas in cursor.fetchall():
					# ~ print (preguntas[0])
			print (" ")
	else:
		print ("adios")
	# ~ print "NUEVO REGISTRO"
	# ~ dni = raw_input("DNI: ")
	# ~ nom = raw_input("NOMBRE: ")
	# ~ ape = raw_input("APELLIDOS: ")
	# ~ tlf = raw_input("TELEFONO: ")
	# ~ email = raw_input("EMAIL: ")

	# ~ query="INSERT INTO" + tema + "(preguntas_"+tema+") values (%s)" % (pregunta)
	# ~ cursor.execute(query)
	
def emusica():
	os.system("clear")
	cont = 0
	print ("Test de Musica")
	print (" ")	
	for a in range(1,11):
		select_preg = "SELECT * FROM musica WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		print (" ")		
		select_resp = "SELECT * FROM resp_musica WHERE idmusica = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[4],respuestas[1],sep=")")
		print (" ")	
		respuesta_musica = input("Solucion: ")
		print (" ")
		apartado = "SELECT * FROM resp_musica WHERE idmusica = %(id)s and abcd = %(apartado)s"
		cursor.execute(apartado, { 'id': a, 'apartado': respuesta_musica })
		consulta = cursor.fetchone()
		if consulta[3] == 1:
			cont = cont + 1
	print ("------------------------")
	print ("Tu nota es",cont,sep=": ")
	print (" ")
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
	# ~ conexion_db.close()
	input("Volver al menu: ")
def eprogramacion():
	os.system("clear")
	cont = 0
	print ("Test de Programacion")
	print (" ")	
	for a in range(1,10):
		select_preg = "SELECT * FROM programacion WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		select_resp = "SELECT * FROM resp_programacion WHERE ip_resp = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[4],respuestas[1],sep=")")
		print (" ")	
		respuesta_programacion = input("Solucion: ")
		print (" ")	
		apartado = "SELECT * FROM resp_programacion WHERE ip_resp = %(id)s and apartado = %(abcd)s"
		cursor.execute(apartado, { 'id': a, 'abcd': respuesta_programacion })
		consulta = cursor.fetchone()
		if consulta[3] == 1:
			cont = cont + 1
	print ("------------------------")
	print ("Tu nota es",cont,sep=": ")
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
		select_resp = "SELECT * FROM resp_turismo WHERE idresp_turismo = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[4],respuestas[1],sep=")")
		print (" ")	
		respuesta_turismo = input("Solucion: ")		
		print (" ")	
		apartado = "SELECT * FROM resp_turismo WHERE idresp_turismo = %(id)s and apartado = %(abcd)s"
		cursor.execute(apartado, { 'id': a, 'abcd': respuesta_turismo })
		consulta = cursor.fetchone()
		if consulta[3] == 1:
			cont = cont + 1
	print ("-----------------------")
	print ("Tu nota es",cont,sep=": ")
	print ("-----------------------")
	# ~ conexion_db.close()
	input("Volver al menu: ")
ap=0
while ap!=3:
	op=0
	print ("-----------------")
	print ("|      MENU     |")
	print ("-----------------")
	print ("|1.Examanes     |")
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
			print ("3. Programacion")
			print ("4. Turismo")	
			print ("5. Salir")
			op=int(input("opcion: "))
			if op==1:
				emusica()
			elif op==2:
				enatacion()
			elif op==3:
				eprogramacion()
			elif op==4:
				eturismo()
	if ap==2:
		crear_ex()
		
