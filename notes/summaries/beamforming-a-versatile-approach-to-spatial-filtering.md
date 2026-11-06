---
tags:
  - paper
  - beamforming
  - spatialFiltering
---

# Beamforming: A Versatile Approach to Spatial Filtering
**Link:** [Beamforming](https://ieeexplore.ieee.org/abstract/document/665)

> Standardwerk zur mathematischen und physikalischen systematischen Einführung in das Beamforming (räumliche Filterung).

## Problem & Ziel
- Räumliche Filterung (Spatial Filtering) von Wellenfeldern über Sensor-Arrays.
- Empfang von Signalen aus einer gewünschten Raumrichtung unter gleichzeitiger Unterdrückung von Störungen aus anderen Richtungen.

## Kernkonzepte & Funktionsweise

### 1. Ausnutzung der Schallgeschwindigkeit (Räumliche Filterung)
- Aufgrund der begrenzten Schallgeschwindigkeit $c$ treffen Schallwellen aus einer Richtung $\phi \neq 0^\circ$ zu unterschiedlichen Zeitpunkten an den Mikrofonen ein (Laufzeitdifferenz / ITD).
- **Zielrichtung fokussieren (Delay-and-Sum):**
  1. **Delay (Verzögerung):** Die Sensorsignale werden um die theoretische Laufzeitdifferenz $\tau(\phi)$ zeitlich verschoben, sodass das Zielsignal an allen Kanälen exakt phasengleich vorliegt.
  2. **Sum (Summierung):** Beim Aufsummieren überlagert sich das Zielsignal *konstruktiv* (Verstärkung). Störsignale aus abweichenden Richtungen sind nicht phasengleich und überlagern sich *destruktiv* (Auslöschung/Dämpfung).

### 2. Schallquellenlokalisierung (Richtung bestimmen)
- Man scannt den Raum ab, indem man die Zeitverzögerung $\tau$ für verschiedene Raumwinkel $\phi$ variiert.
- An dem Winkel $\phi$, an dem die Ausgangsenergie $\sum |y(k)|^2$ ihr Maximum erreicht, liegt konstruktive Interferenz vor $\rightarrow$ dort befindet sich die Schallquelle.

### 3. Breitband- vs. Schmalband-Beamforming
- **Schmalband (Narrowband):** Eine einfache Phasenverschiebung pro Sensor genügt.
- **Breitband (Wideband, z. B. Sprache):** Reines Delay reicht für komplexe Signale nicht aus. Hinter jedem Sensor wird eine *Tapped Delay Line* (FIR-Filter mit $K$ Taps) benötigt, um Frequenzgang und Phase über das gesamte Sprachspektrum hinweg anzupassen.

### 4. Taxonomie der Verfahren
- **Data-Independent (z. B. Delay-and-Sum):** Geometrisch feste Gewichte, unabhängig vom Raumgeräusch.
- **Statistically Optimum (z. B. MVDR / LCMV):** Passt die Filtergewichte dynamisch an die Kovarianz des aktuellen Rauschens an, um die Störungsenergie zu minimieren (Bildung von Nullstellen im Richtdiagramm).