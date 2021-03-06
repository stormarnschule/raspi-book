# Taster

## Setup

Da in diesem Turorial zum ersten Mal die Taster auf dem Gertboard eingebunden
werden sollen und diese eine Eingabe darstellen werden, muss die Verkabelung
der Pins erneut verändert werden.  
Auf die Output Pins B1-B3 müssen Jumper gesetzt werden. Dies ermöglicht eine
Ausgabe des Gertboardboard ausgelöst durch die Taster. Außerdem müssen die GPIO
Pins 25 mit B1, 24 mit B2 und 23 mit B1 verbunden werden.

Dies sieht dann ungefähr so aus:

![Gertboard Anschlüsse](img/gertboard_buttons.jpg)

## Das Programm

Euer Programm soll nun den Status der Buttons anzeigen. Hierbei sollt ihr alle
drei Buttons einbinden und eine Ausgabe formulieren, über die dem Nutzer
mitgeteilt wird, ob ein Button gedrückt ist oder nicht.

## Tipps

1. Es muss eine Liste der Pins angelegt werden, über die die Buttons
   angesteuert werden, bzw. über die deren Signal geleitet wird. Diese soll
   gleichzeitig die Pins als `button_pin` deklarieren. Ihr erstellt also eine
   Liste von den `button_pin`s. Mit dieser Liste könnt ihr dann im folgenden arbeiten.
2. Die Liste muss durchgegangen werden und von jedem Pin soll der Status
   ermittelt werden. Diesen könnt ihr in einer Variablen speichern und ausgeben lassen.
3. Um immer den aktuellen Status eines Buttons ermitteln, müssen sich eure
   Statusabfragen und Ausgaben in einer `while`-Schleife befinden.
4. Der Übersichtlichkeit halber solltet ihr die ausgegebene Zeile zu Beginn der
   Schleife wieder löschen. Nutzt dafür `std::cout << "\r";`.
