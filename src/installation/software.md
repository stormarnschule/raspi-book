# Software

## C++ Bibliotheken

Nun wollen wir die benötigten C++ Bibliotheken installiern, die zum
Zugreifen auf die GPIO-Schnittstelle benötigt werden.

### BCM2835

Diese Bibliothek ist die Grundlage für alle weiteren GPIO Bibliotheken.
Um sie zu installieren, führt ihr folgendes in der Konsole aus.

```
# Ordner erstellen
mkdir -p ~/libs
cd ~/libs

# Download und Entpacken
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.46.tar.gz
tar -xzvf bcm2835-1.46.tar.gz
cd bcm2835-1.46

# Konfigurieren, Kompilieren, Installieren
./configure
make
sudo make check
sudo make install
```

### GPIO

Mit dieser Bibliothek wird das verwenden von Pins erheblich erleichtert,
deswegen sollte sie installiert werden:

```
cd ~/libs

# Download
git clone https://github.com/stormarnschule/gpio.git
cd gpio

# Kompiliern und Installieren
make
sudo make install
```
