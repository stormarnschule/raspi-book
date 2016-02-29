# Spiel: Snake

## Setup

Um ein Spiel über euren Raspberry Pi umzusetzen benötigt ihr nicht nur die Verbindung eines Displays zum Pi ([LCD Display](./index.html)), sondern auch eine Verbindung zu Eingabegeräten, in diesem Fall Buttons, die auf einem Schaltboard angebracht werden. Von den Buttons aus muss eine Verbindung zu jeweils einem  Gpio Pin geschlossen werden, über den dann der Status später abgefragt werden soll (viele Möglichkeiten des Anschlusses gilt es nicht, da die meisten Pins bereits durch das LCD Display belegt sind, in unserem Beispiel für das Programm wurden die Pins 24 und 25 benutzt). Um den Button auch tatsächlich in einen Stromkreislauf einzubauen, muss ein Kabel vom Grund zum Button und ein weiteres vom Button weg zu dem gewünschten Gpio-Pin laufen, sodass dieser mit einem Tastendruck den Kreislauf schließt und ein Potentialunterschied erfasst werden kann.
