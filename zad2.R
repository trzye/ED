#Przygotowanie
install.packages(c("rgl", "car"))
library("car")
source('E:/Users/Michal/Git/ED/eksplo.R')
dane <- read.table("zestaw_22.dat")

#1. Macierz wykres�w punkt�wych - pozorne odwzorowanie naturalnych skupisk
pokaz(dane)

#2. Wykres punktowy V4/V7 - brak odst�pstw od naturalnego skupienia
pokaz(dane, opis=c(4,7))

#3. Wykres punktowy V3/V2 - odst�psta od naturalnego skupienia danych
pokaz(dane, opis=c(3,2))

#4. Wykres punktowy V5/V7 - du�e odst�psta od naturalnego skupienia danych
pokaz(dane, opis=c(5,7))

#5. Wizualizacja 3D, V5/V7/V4 - brak odst�pstw od naturalnego skupienia
scatter3d(x = dane$V5, y = dane$V7, z = dane$V4, groups = dane$klasa, surface=FALSE, grid = FALSE, ellipsoid = TRUE)

#7. Wizualizacja 3D, V5/V7/V3 - nachodzenie si� grup
scatter3d(x = dane$V5, y = dane$V7, z = dane$V3, groups = dane$klasa, surface=FALSE, grid = FALSE, ellipsoid = TRUE)

#�r�d�o: http://www.sthda.com/english/wiki/amazing-interactive-3d-scatter-plots-r-software-and-data-visualization