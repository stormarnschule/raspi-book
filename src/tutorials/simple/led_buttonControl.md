# LED Flashing Control

## Setup

Für dieses Tutorial benötigt ihr, wie zuvor bereits beim Single-Led Tutorial und dem ersten Taster Tutorial, ein Schaltboard für die Verkabelung der einzelnen Schaltkreiselemente. Dieses mal soll auf diesem eine LED in einen Stromkreis mitsamt Widerstand eingebaut werden. Des weiteren müssen die Steuerungselemente (bei uns die Taster) auf dem Board installiert werden.  

![LED Button Control Board](img/lcd_snake_all.png)

Es sollen 3 Taster eingebaut werden. Jeder wird in einen seperaten Stromkreis eingebunden. Dieser bildet sich aus einen Anschluss zum Grund und einem weiteren zu einem GPIO-Pin (In der Lösung wurden die Pins 2, 3 und 14 für die Buttons sowie der Pin 15 für die LED genutzt). Die Verbindung mit dem Grund lässt sich über das Schaltboard so umsetzen, dass alle Elemete über einen Pin zum Grund geleitet werden.

![LED Button Control Pins](img/lcd_snake_pins.png)

Auch für dieses Tutorial gilt: Erst einmal die LED über den 3v3 Dauerstromanschluss verbinden um zu prüfen, dass die Komponente richtig installiert wurde. Um die Buttons auf ihre Funktionalität zu testen können diese zunächst in Reihe in den Stromkreis eingebaut werden.

## Das Programm

Euer Programm soll mit den 3 Tastern das Aufleuchten einer LED steuern. Zwei Buttons steuern hierbei die Blinkgeschwindigkeit. Der dritte Button soll genutzt werden können um das Blinken zu unterbrechen. Es muss bedacht werden, dass die Blinkgeschwindigkeit begrenzt sein muss. um zu verhindern, dass die LED dauerhaft leuchtet bzw. in so großen Abstanden den Leuchtzustand ändert, dass nicht erkannt werden kann ob das Programm läuft oder nicht.

## Tipps

### 1.

Über while-Schleifen können dauerhaft die Stati der Buttons geprüft werden. Zum Abfragen könnt ihr die Methode `state()` nutzen.

### 2.

Ihr benötigt zwei while-Schleifen um die Vorgänge des Blinkens, sowie der Unterbrechung mit Button3 zu beschreiben.

### 3.

Um das blinken zu ermöglichen prüft ihr am besten die vergangene Zeit nach dem letzen aufleuchten und legt über einen Zeitinvall fest, wie lange die LED leuchten und ruhen soll. Die aktuell Zeit kann mit `std::chrono::high_resolution_clock::now()` abgefragt werden. Dafür muss die Chrono-Klasse im Kopf eures Skriptes eingefügt werden (`#include <chrono>`).

### 4.

Es werden Variablen benötigt, die den aktuellen Status der Buttons festhalten. Wird der Status nicht über eine Boolean festgehalten, so sorgt die Struktur der Schleife dafür, dass das einmalige Drücken des Tasters nicht nur einmal, sondern immer wieder erfasst wird. Legt daher als weitere Bedingung für die Aktion, die auf einen Tastendruck folgt fest, dass der Button vorher nicht gedrückt gewesen sein darf.
