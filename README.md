# MTA-Kryptonimy

Prosty skrypt na kryptonimy dla frakcji. Dzięki niemu w łatwy sposób dodasz oznaczenia na swoje pojazdy frakcyjne.


# Instalacja

Aby wszystko ładnie działało trzeba wykonać następujące czynności:
1. W folderze IMG dodać swoje kryptonimy na przykład dla frakcji SAPD.
2. Dodać pliki do meta.xml.
3. W pliku c.lua dopisać do tabeli nasze kryptonimy. (Stosując się do wzoru.)
   
   ["nazwa txt"] = {"ścieżka do pliku", "textura która ma być podmieniona"}

4. Aby kryptonimy wczytywały się podczas wejścia na serwer wystarczy dodać trigger przy respie gracza.

przykład:

for i,v in ipairs(getElementsByType("vehicle")) do

setTimer(function()

   triggerClientEvent(plr,"oklejpojazd",plr,v)	

end,1000,1)

end


Zalecam również dodać do respu pojazdy jeśli miał być on wyciągany z "przecho".



przykład:

setTimer(function()

   triggerClientEvent(root,"oklejpojazd",root,veh)	

end,250,1)


