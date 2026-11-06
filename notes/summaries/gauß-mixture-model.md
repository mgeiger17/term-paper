---
tags:
  - summary
  - gmm
---

# Gauß Mixture Model (GMM)

> Ein Modell basierend auf mehreren Gauß-Verteilungen basiert und mit einem Algorithmus Wahrscheinlichkeiten berechnet, welcher Punkt zu welcher Verteilung gehört.

## Problem & Ziel
- Clustering von Datenpunkten und Zuordnung von neuen Punkten

## Wie
- 2 Phasen
	- Expectation
		- Annahme von geraten Parametern als wahr 
		- Berechnung von $\gamma_{ik}$ 
		- ![[Pasted image 20261020103113.png]]
		- $k$ ist eine Gauß-Verteilung, i ist ein Punkt, wird aber für alle Punkte einmal berechnet
		- Man misst für jeden Punkt $x_i$, wie wahrscheinlich er von der Glocke $k$ erzeugt wurde, im Verhältnis zu allen anderen Glocken.
	- Maximierung
		- Neuer Mittelwert ![[Pasted image 20261020103421.png]]
		- Neue Kovarianzmatrix 
			![[Pasted image 20261020103454.png]]
		- Neue Gewichtung
		- ![[Pasted image 20261020103521.png]]
	- Wiederholung dieser zwei Phasen bis zur konvergenz 