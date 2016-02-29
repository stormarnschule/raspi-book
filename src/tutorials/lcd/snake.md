# Spiel: Snake

## Setup

Um ein Spiel über euren Raspberry Pi umzusetzen benötigt ihr nicht nur die Verbindung eines Displays zum Pi ([LCD Display](./index.html)), sondern auch eine Verbindung zu Eingabegeräten, in diesem Fall Buttons, die auf einem Schaltboard angebracht werden. Von den Buttons aus muss eine Verbindung zu jeweils einem  Gpio Pin geschlossen werden, über den dann der Status später abgefragt werden soll (viele Möglichkeiten des Anschlusses gilt es nicht, da die meisten Pins bereits durch das LCD Display belegt sind, in unserem Beispiel für das Programm wurden die Pins 24 und 25 benutzt). Um den Button auch tatsächlich in einen Stromkreislauf einzubauen, muss ein Kabel vom Grund zum Button und ein weiteres vom Button weg zu dem gewünschten Gpio-Pin laufen, sodass dieser mit einem Tastendruck den Kreislauf schließt und ein Potentialunterschied erfasst werden kann.

![Snake Setup](/raspi-book/src/img/lcd_snakeGame_all.png)
![Snake Game Pins](/raspi-book/src/lcd_snakeGame_pins.png)
![Snake Game Buttons](/raspi-book/src/img/lcd_snakeGame_buttons.png)

## Das Programm

Es soll ein Standart Snake Spiel, wie es früher auf Mobiltelefonen lief, über den Pi realisiert werden.
Folgende Eigenschaften und Elemente sollen enthalten sein:

* Eine Schlange mit einer bestimmten Anfangsgröße, die mittels zweier Buttons vom Spieler gesteuert werden kann und sich mit konstanter Geschwindikeit vorwärts bewegt
* Richtungsänderungen geschehen immer im 90°-Winkel. Gleichmäßige Bewegungen sind nicht möglich
* Zufällig erscheinendes Futter, welches die Schlange vergrößert, wenn sie es frisst (über den Punkt läuft)
* Abbruch des Spiel, wenn die Schlange gegen sich selbst läuft
* Ein grafisch festgehaltenes Spielfeld mit einer Anzeige für den Score

![Snake Game Running](/raspi-book/src/img/lcd_snakeGame_run.png)

## Tipps

### 1.:
Geht in logischen Schritten an das Projekt heran. Überlegt, wie in der OOP, welche Eigenschaften die Snake eigentlich haben soll (obwohl ihr nicht zwangsweise eine eigene Klasse für diese anlegen müsst). Legt darauf basiert Methoden fest, die diese Eigenschaften definieren. Des weiteren könnt ihr das gesamte Programm in Methoden aufteilen, die den Spielablauf wiederspiegeln. Methoden könnten sein:
* init() oder gameStart() - deklariert die Startbedingungen
* move() - beschreibt das Bewegen der Snake
* input() - setzt die Eingaben um
* draw_header() - beschreibt das Spielfeld
* render() - aktualisiert das Spiel auf dem Display

### 2.:
Wenn ihr möglich frühzeitig eure Programmabschnitte testen wollt gibt es dafür 2 Möglichkeiten:
1. Ihr baut Consolenausgaben in die Bereich ein, über die ihr euch nicht sicher seit, ob und in welcher Reihenfolge die ausgeführt werden.
2. Beschreibt erstmal das grafische Spielfeld (geht dabei vor wie im LCD_Tutorial). Außerdem müsst ihr dann noch eine Render()-Methode definiert, die in regelmäßigen Abständen euren derzeitigen Spielstatus graphisch darstellt. Auf diese Weise könnt ihr nach jeder Programmerweiterung Fortschritte auch Bildlich erkennen. Gleichzeitig vermeidet diese Vorgehensweise ein umfangreichen, langes Debuggen zu späteren Entwicklungsstati.

### 3.:
Ignoriert zunächst, dass ihr etwas grafisches programmiert. Beschreibt das Verhalten der Schlange anhand von Koordinaten, die ihr als Punkt in einem X- und einem Y-Wert (Startpunkt + konstante Änderung der Koordinaten für eine gleichförmige Bewegung). Beschreibt erstmal eine gradlinige Bewegung und kümmert euch erst später um Inputs. Dies setzt voraus, dass die Schlange nach dem passieren des rechten Bildschirmrandes wieder links eintritt.
Das Einzige, was euch nun noch von einer graphischen Umsetzung trennt, ist die Eindung der Schlangenposition in die render() Methode.

### 4.:
In vielen Bereichen müssen Zwischenstände, sowie Zustände festgehalten werden. Überlegt euch hierfür sinnvolle Variablen.

## Erweiterungen

Wenn ihr das Snake Spiel erfolgreich umgesetzt habt, könnt ihr euch Erweiterungen für dieses Überlegen, welche das Spiel unter Umständen interessanter gestalten könnten. Als Beispiel-Code liegen 2 weitere Versionen des Spiels vor. Jeweils wurde das Setup um zwei Buttons ergänzt. Beim einen werden diese für eine abweichende Steuerung der Snake genutzt, die andere Variante ermöglicht durch diese die Steuerung einer weiteren Snake für ein Zweispielerduell.
