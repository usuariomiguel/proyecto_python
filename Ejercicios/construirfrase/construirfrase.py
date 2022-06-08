#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
import os
import random
a = open("sustantivos.txt", "r")
b = open("articulos.txt", "r")
c = open("verbos.txt", "r")
d = open("adjetivos.txt", "r")
sustantivos = (a.read())
articulos = (b.read())
verbos = (c.read())
adjetivos = (d.read())

lsus = []
lart = []
lverb = []
ladj = []

lart.append(articulos)
for p in lart:
	print (p[0:2])
lsus.append(sustantivos)
for s in lsus:
	print (s[0:5])
lverb.append(verbos)
for v in lverb:
	print (v[0:4])
ladj.append(adjetivos)
for a in ladj:
	print (a[0:5])
