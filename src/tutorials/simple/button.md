# Taster

## Setup

Bei diesem Tutorial soll eine LED über einen Button angeschaltet werden. Auf Knopfdruck, soll diese so zum Aufleuchten gebracht werden. Wird der Taster wieder losgelassen soll die LED erlöschen. Hierfür wird wie beim Simple-LED Tutorial ein Schaltboard benötigt. Auf diesem werden zwei Stromkreise installiert. Der eine soll die LED mitsamt Widerstand enthalten. Der andere Stromkreis enthält den Button. (Die Funktionsweise lässt sich auch mit einem Stromkreis ohne Programm umsetzen, erfüllt jedoch nicht die Vorraussetzungen, welche für die nächsten Tutorials benötigt werden.) Beide Stromkreise werden jeweils einem GPIO-Pin zugeordnet und mit dem Grund verbunden (In der Lösung wurden der Pin 14 für den Button und Pin 15 für die LED genutzt).

![Button Schaltboard](img/simple_button_board.png)
![Button Pins](img/simple_button_pins.png)

## Das Programm

Euer Programm soll über den Button Pin den Status des Knopfdruckes abfragen und je nach diesem die LED über den LED-Pin aufleuchten bzw. nicht aufleuchten lassen.

## Tipps

### 1.

Über while-Schleifen kann dauerhaft die Status des Buttons geprüft werden. Zum Abfragen könnt ihr die Methode `state()` nutzen.
