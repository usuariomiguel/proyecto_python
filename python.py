#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
import os
import MySQLdb
os.system("clear")
conexion_db=MySQLdb.connect(host="localhost",user="academia",passwd="academia",db="Exameness")
cursor=conexion_db.cursor()
def emusica():
	os.system("clear")
	print ("Test de Musica")
	for a in range(1,11):
		select_preg = "SELECT * FROM musica WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		select_resp = "SELECT * FROM resp_musica WHERE idmusica = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[1],sep=".")
		respuesta_musica = input("Solucion: ")
		
		print (" ")
	# ~ conexion_db.close()
	volver = input(" ")
def enatacion():
	os.system("clear")
	print ("Test de Natacion")
	for a in range(1,10):
		select_preg = "SELECT * FROM natacion WHERE idnatacion = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		select_resp = "SELECT * FROM resp_natacion WHERE id_respuestas = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[0],respuestas[1],sep=")")
		respuesta_natacion = input("Solucion: ")
		#if respuesta_natacion == 1:
		print (" ")
	# ~ conexion_db.close()
	volver = input(" ")
def eprogramacion():
	os.system("clear")
	print ("Test de Programacion")
	for a in range(1,10):
		select_preg = "SELECT * FROM programacion WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		select_resp = "SELECT * FROM resp_programacion WHERE ip_resp = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[1])
		respuesta_programacion = input("Solucion: ")
		print (" ")
	# ~ conexion_db.close()
	volver = input(" ")
def eturismo():
	os.system("clear")
	print ("Test de Turismo")
	for a in range(1,10):
		select_preg = "SELECT * FROM turismo WHERE idexamen1 = %(id)s"
		cursor.execute(select_preg, { 'id': a })
		for preguntas in cursor.fetchall():
			print (preguntas[1])
		print ("------------------------------")
		select_resp = "SELECT * FROM resp_turismo WHERE idresp_turismo = %(id)s"
		cursor.execute(select_resp, { 'id': a })
		for respuestas in cursor.fetchall():
			print (respuestas[1])
		respuesta_turismo = input("Solucion: ")
		print (" ")
	# ~ conexion_db.close()
	volver = input(" ")
op=0
while op!=5:
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