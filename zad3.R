#Przygotowanie
source('E:/Users/Michal/Git/ED/eksplo.R')
dane <- read.table("zestaw_22.dat")

#Sprawdzam czy dane trzeba znormalizowac
minima = najmniejsze(dane, opis=c(1,2,3,4,5,6,7,8,9))
zmiennosc = sd(minima)/mean(minima)

#Zmiennosc wyniosla -0.47 wiêc powinniœmy znormalizowaæ
dane=normalizuj(dane)

#Podzia³ danych na ucz¹ce i testowe
podzial = podziel(dane, p=0.5)

#Weryfikacja: Przypadek 1 - atrybuty silnie wp³ywaj¹ce
weryfikuj('np', dane, podzial, c(7,8))

#Weryfikacja: Przypadek 2 - atrybuty s³abo wp³ywaj¹ce
weryfikuj('np', dane, podzial, c(2,6))

#Weryfikacja: Przypadek 3 - du¿a iloœc atrybutów
weryfikuj('np', dane, podzial, c(1,3,5,7,9))

#Weryfikacja: Przypadek 4 - trzy atrybuty
weryfikuj('np', dane, podzial, c(3,6,2))


#Wybrane atrybuty opisuj¹ce
atr=c(7,8)

#Weryfikacja: klasyfikator k-najbli¿szych s¹siadów - k=1
weryfikuj('knn', dane, podzial, atr, k=1)
granice

#Weryfikacja: klasyfikator k-najbli¿szych s¹siadów - k=3
weryfikuj('knn', dane, podzial, atr, k=3)

#Weryfikacja: klasyfikator k-najbli¿szych s¹siadów - k=9
weryfikuj('knn', dane, podzial, atr, k=9)

#Weryfikacja: drzewo decyzyjne - k=50
weryfikuj('drzewo', dane, podzial, atr, k=75)

#Weryfikacja: drzewo decyzyjne - k=10
weryfikuj('drzewo', dane, podzial, atr, k=50)

#Weryfikacja: drzewo decyzyjne - k=1
weryfikuj('drzewo', dane, podzial, atr, k=1)

#Weryfikacja: klasyfikator najbli¿szego prototypu
weryfikuj('np', dane, podzial, atr, k=1)

#Weryfikacja: naiwny klasyfikator Bayesa
weryfikuj('bayes', dane, podzial, atr, k=1)
