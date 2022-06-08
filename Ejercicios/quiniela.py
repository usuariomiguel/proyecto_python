#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
import random
n = int(input("Número de apuestas: "))
print ("\t\t\t La Primitiva")
print ("\t\t\t",n,"APUESTA(S)")
print ("================================================================")

n = n + 1
for i in range(1,n):
	n1 = (random.randrange(1,49))
	n2 = (random.randrange(1,49))
	n3 = (random.randrange(1,49))
	n4 = (random.randrange(1,49))
	n5 = (random.randrange(1,49))
	n6 = (random.randrange(1,49))
	print (i,"-",n1,n2,n3,n4,n5,n6,sep="\t")
	
r = (random.randrange(1,10))
print ("\n\t\tREINTEGRO: ", r)
