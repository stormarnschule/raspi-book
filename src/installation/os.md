# Betriebssystem

Zum Installieren werden ein paar Dinge benötigt, die vorher behandelt werden
sollten:

* SD-Karte, __4 GB oder mehr__
* Win32 Disk Imager
* Raspberry Pi
* Computer mit SD-Kartenleser

Das Betriebsystem des Raspberry Pis ist eine angepasste Linux-Distribution, die von dem
populärem [Debian](https://www.debian.org) abstammt, daher auch der Name "Raspbian".
Wir nutzen "Raspbian Lite", eine minimale Version ohne Desktopoberfläche, nur mit
Eingabeaufforderung.

## Download

Als erstes muss das Datenträgerabbild von der Raspberry Pi Webseite heruntergeladen werden.
Ihr findet es [auf der Downloadseite](https://www.raspberrypi.org/downloads/raspbian/).
Am Besten ladet ihr immer das Aktuellste herunter, wenn ihr einen Pi neu aufsetzt, dieses
seht ihr auf der linken Seite:
__[Direktlink](https://downloads.raspberrypi.org/raspbian_lite_latest)__

Nach dem ihr die ZIP-Datei heruntergeladen habt, müsst ihr diese entpacken: Ihr erhaltet
eine __.IMG__ Datei, das Datenträgerabbild.

## SD-Karte formatieren

Für das Kopieren des Images (Datenträgerabbildes) ist ein Programm wie
[Win32 Disk Imager](http://sourceforge.net/projects/win32diskimager/files/Archive/Win32DiskImager-0.9.5-binary.zip/download)
benötigt, welches den Inhalt auf die SD-Karte schreibt.

Startet das Programm nach Download & Entpacken mit __Administratorrechten__. Dies ist
wichtig, da das Schreiben sonst unter Umständen nicht funktioniert!

1. Rechtsklick auf "Win32DiskImager.exe"
2. Klick auf "Als Administrator ausführen"

Wenn Win32 Disk Imager läuft:

1. Klick auf den kleinen, blauen Ordner rechts
2. Image (.IMG Datei) auswählen und bestätigen
3. Rechts unter "Device" die SD-Karte auswählen,
   den Laufwerkbuchstaben findet unter Windows-Explorer heraus
4. Klick auf "Write"
5. Klick auf "Yes"

Wartet nun, bis der Schreibvorgang fertig abgeschlossen wurde.

## Einrichtung auf dem Pi

Steckt die SD-Karte, ein Netzwerkkabel und das Stromkabel in euren Pi und bootet.
Hat Alles funktioniert, könnt ihr nach ein paar Sekunden euch über SSH mit eurem
Raspberry Pi verbinden. Wie das geht, steht hier: [SSH-Verbindung](introduction/ssh.html).

```
Benutzer: pi
Passwort: raspberry
```

Zu Erst werden einige grundlegende Einstellungen vorgenommen und Programme installiert.  
All dies wird als Root-Benutzer ausgeführt:
```
sudo -i
```

Update der Software auf dem Pi (kann eine Weile dauern):
```
apt-get update -y && apt-get upgrade -y
apt-get install -y git
```

Konfigurieren mit "raspi-config":
```
raspi-config
```

Ihr navigiert mit den Pfeiltasten und bestätigt mit der Entertaste. Mit Escape
kommt ihr ein Menü zurück.

1. Wähle "1 Expand Filesystem"
2. Bestätige mit OK


1. Wähle "3 Boot Options"
2. Wähle "B2 Console Autologin"  
   _Der Pi startet dann in der Konsole und ihr seit bereits eingeloggt_


1. Wähle "8 Advanced Options"
2. Wähle "A6 SPI"
3. Wähle "Yes"  
   _SPI ist aktiviert, das ist eine Schnittstelle die z.B. für das LCD Tutorial
   benötigt wird_
4. Bestätige mit OK
5. Wähle "Yes"  
   _SPI ist nun auch beim nächsten Neustart aktiv_
6. Bestätige mit OK
7. Wähle "Finish" oder Drücke die Escape-Taste um zu Beenden

__Startet nun den Raspberry Pi neu!__
