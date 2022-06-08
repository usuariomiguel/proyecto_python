#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
import random
print ("JUEGO DEIEDRA, PAPEL O TIJERAS")
print ("==============================")

j1 = input("Indica tu jugada: ")

maquina=["piedra","papel","tijera"]
random.shuffle(maquina)
j2 = maquina[0]
print ("Jugada de la maquina: ",j2)


if j1 == "piedra" and j2 == "papel":
	print ("gana j2")
elif j1 == "papel" and j2 == "piedra":
	print ("gana j1")
elif j1 == "tijera" and j2 == "papel":
	print ("gana j1")
elif j2 == "piedra" and j1 == "papel":
	print ("gana j1")
elif j2 == "papel" and j1 == "piedra":
	print ("gana j2")
elif j2 == "tijera" and j1 == "papel":
	print ("gana j2")

if j1 == j2:
	print ("EMPATE")
