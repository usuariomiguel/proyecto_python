#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
op="/"
suma=0
mayor=0
menor=0
cont=0
lnum = []
lmoda = []
while op!='*':
	num = input("Introduce un numero (* para salir): ")
	if num=="*":
		op = num
	elif num!="*":
		num = int(num)
		lnum.append(num)
		cont = cont + 1
		suma = suma + num
		moda = lnum.count(num)
		lmoda.append(moda)

pm = suma / cont
dm = round(pm,1)
for i in range(1,cont):
	mod = max(lmoda)
	mayor = max(lnum)
	menor = min(lnum)
print("=================================================================")
print("\t\t\tRESULTADO\n")
print ("Números introducidos:",cont)
print ("Suma:",suma)
print ("Numero mayor:",mayor)
print ("Numero menor:",menor)
print ("Media",dm)
print (lnum)
print ("Max numero de repeticion de un numero (moda):",mod)

