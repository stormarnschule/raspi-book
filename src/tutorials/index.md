# Tutorials

Die Tutorials auf den nächsten Seiten werden wie erwähnt in C++ geschrieben.

Um euren Code ausführen zu können, muss er zuerst kompiliert werden, bevor die
Binärdatei gestartet werden kann. Auch die Bibliotheken `GPIO` und ggf. auch
`PCD8544` werden eingebunden.

Hierfür könnt ihr unser Script benutzen, dass ihr von GitHub herunterladen könnt.

```
wget https://raw.githubusercontent.com/stormarnschule/pi-setup/master/run
chmod +x ./run
```

Das Script führt ihr wie folgt aus:

```
./run <cppfile> [OPTIONS]

# cppfile: Pfad zur .cpp-Datei, die ausgeführt werden soll
#
# OPTIONS:
#   -f      Immer kompilieren, auch wenn Binärdatei vorhanden (im Normalfall nicht nötig)
```
