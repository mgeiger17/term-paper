---
tags:
  - arcticle, cocktailPartyEffect
---

# X-VECTORS: ROBUST DNN EMBEDDINGS FOR SPEAKER RECOGNITION
**Link:** [X-Vectors](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8461375)
**Paper:**[[X-Vectors_Robust_DNN_Embeddings_for_Speaker_Recognition.pdf]]

> Dieses Paper entwickelt ein embedding-basiertes Verfahren zur Stimmerkennung mithilfe eines Deep Neutal Networks. Die Spracheingabe wird in 25ms Abschnitte segmentiert und in einen 512-fachen Vektor transformiert. Dieses Verfahren legt damit einen Grundstein für die Spracherkennung durch Machine Learning


## Erkenntnisse
- Manipulation der Trainingsdaten mithilfe Hintergrundgeräusche und Nachhall erhöht die Performance von <abbr title="deep Neural Networks">DNN</abbr> deutlich
- Für I-Vectors Spracherkennung bietet die Vervielfältigung der Trainingsdaten durch Hintergrundgeräusche und Nachhall keinen signifikanten Unterschied, für x-Vektor basierte Systeme schon

## Wie
- Audio wird in 25ms Segmente unterteilt und via <abbr title="Fast Fourier Transformation">FFT</abbr> in Dirac Impulse zerlegt
- Menschen nehmen Frequenzunterschiede nicht linear wahr -> wird nach der [[Mel-Skala]] umgerechnet
- Man verwendet 24 überlappende [[Dreiecksfilter]] um einen 24-Dimensionalen Vektor zu erzeugen 
- Ein <abbr title="Time-Delay Neural Network">TDNN</abbr> verarbeitet in fünf Layern die Segmente und baut einen zeitlichen Kontext von bis zu 15 Frames auf (Betonung und Klangfarbe einer Stimme zeigen sich erst im zeitlichen Verlauf)
- Über die Schichten reichert das Modell den 24-fachen Vektor pro Dimension auf 1500 Dimensionen an (für jeden Wert wird $\bar{x}$ und $\sigma$ berechnet (1500+1500=3000))
- Alle Frames werden zu einem 3000 dimensionalen Vektor vereint, indem Mittelwert und Standardabweichung über alle Frames berechnet wird
- Der 3000-fache Vektor wird anschließend durch die nächsten 2 Layer auf 512-Dimensionen reduziert

![[Bildschirmfoto 2026-10-15 um 11.28.08.png]]