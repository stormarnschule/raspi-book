# Meta

Hier möchte ich kurz erläutern, wie diese Dokumentation erstellt wird, damit
nachfolgende Schüler oder Lehrer sie erweitern können, bei Bedarf.

## Aufbau

Diese Webseite besteht aus HTML, CSS und JavaScript Dateien, die alle auf einem
Server für alle zugäglich liegen.

Anstatt diese Dokumentation direkt in HTML zu schreiben, verwenden wir einen
Werkzeug, was häufig zum Schreiben von statischen Webseiten oder Blogs benutzt
wird: [**Markdown**](http://commonmark.org/help/). Markdown ist eine, einfachem
Text sehr ähnliche Sprache, in der man formatierten Text schnell und gut lesbar
scheiben kann. 

## Kompilieren

Da allerdings der Webbrowser Markdown - anders als HTML - nicht rendern kann,
wird es vorher von einem Programm in HTML übersetzt, "kompiliert".

Wir benutzen hierfür [**mdBook**](http://azerupi.github.io/mdBook/). Es ist
sehr einfach in der Verwendung und, im Vergleich zu Ähnlichem, *sehr schnell*.

## Hosting

Der Markdown-Code für dieses Buch findet ihr in unserem
[**GitHub-Repo**](http://github.com/stormarnschule/raspi-book).

Bei jedem Commit, also immer dann, wenn wir etwas geändert haben, wird der Code
automatisch nach HTML kompiliert. Die erstellte Webseite befindet sich
im [**gh-pages**](https://github.com/stormarnschule/raspi-book/tree/gh-pages)
Zweig vom selben Repo.  
Hierfür gebrauchen wir die WebApp [wercker.com](http://wercker.com).

Wenn man nun im Browser auf die Webseite
[**stormarnschule.github.io/raspi-book**](http://stormarnschule.github.io/raspi-book)
geht, sendet GitHub eben jenen HTML-Code, der im gh-pages Zweig liegt an den 
WebBrowser.
