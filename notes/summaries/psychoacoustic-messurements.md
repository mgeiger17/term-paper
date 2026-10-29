---
tags:
  - book
  - humanHearing
  - primarySource
---

# Psychoacoustics: Facts and Models
**Link:** [[Psychoacoustics.pdf]]

> Das Buch ist einen Einführung in die Wissenschaft des menschlichen Hörens. Es geht um darum, wie Töne dargestellt und der Mensch diese Verarbeitet. 


### Definition von "Klang" (Sound)
Klang wird primär über den zeitveränderlichen Schalldruck $p(t)$ in Pascal ($\text{Pa}$) beschrieben. (S.1)

- In der Psychoacoustic sind Werte von $10^{-5} Pa$ (Wahrnehmungsgrenze) bis $10^2 Pa$ (Schmerzlimit) relevant (S.1)
- Wird mit dem Sound Pressure Level $L$ gemessen wobei gilt 
$$ L = 20 log(\frac{p}{p_0})dB $$
mit $p_0= 20 \mu Pa$ (S.1)
- Alternativ dazu wird oft die Schallingtensität $I$ verwendet:
$$L = 20 \cdot \log\left(\frac{p}{p_0}\right) \text{ dB} = 10 \cdot \log\left(\frac{I}{I_0}\right) \text{ dB}$$
mit $I_0 = 10^{-12} \text{ W/m}^2$


- Bei Rauschsignalen wird der Schallintensitätsdichtepegel $l$ genutzt (S.2):
$$ L = [l + 10log(\frac{\Delta(f)}{Hz}]dB $$
-> Je breiter die Frequenzbandbreite ($\Delta f$) eines Rauschens ist, desto höher ist der Gesamtschalldruckpegel $L$


#### Besonderheiten bei Rauschsignalen

- Bei Rauschsignalen folgt die Amplitudenverteilung einer **Gaußschen Normalverteilung** (Gauß-Verteilung). _(S. 4)_
    
- Da Rauschen unregelmäßige Spitzenwerte aufweist, kann kein fester Maximalwert angegeben werden, sondern nur die **Wahrscheinlichkeit**, mit der ein Pegel überschritten wird. _(S. 5)_

### Kritische Bandbreite

- **Lautstärkekonstanz:** Bei konstantem Pegel ($L$) bleibt die empfundene Lautstärke gleich, solange die Bandbreite kleiner als die kritische Bandbreite ist (S. 156–157, Bezug auf Fig. 6.7 auf S. 157).

- **24 Bereiche:** Das menschliche Gehör analysiert ein breites Spektrum in Frequenzgruppen; reiht man diese lückenlos aneinander, lässt sich der gesamte hörbare Frequenzbereich ($0\text{ Hz}$ bis $16\text{ kHz}$) in **24 aneinandergrenzende Frequenzgruppen** unterteilen (S. 158, 159).

- **Größe der Frequenzgruppe:** Die kritische Bandbreite gibt an, wie groß dieser Frequenzbereich für die jeweilige Mittenfrequenz ist – bis $500\text{ Hz}$ bleibt sie nahezu konstant bei $100\text{ Hz}$, darüber beträgt sie ca. $20\,\%$ der Mittenfrequenz (S. 158, Table 6.1 auf S. 159).

- **Überschreitung der Bandbreite:** Wird die kritische Bandbreite überstiegen, so regt das Signal mehrere Abschnitte/Filter der Basilarmembran an, wodurch das Rauschen deutlich stärker/lauter wahrgenommen wird (S. 156–157, 159).
![[Bildschirmfoto 2026-10-19 um 16.19.17.png]]

##### Formel für die kritische Bandbreite ($\Delta f_G$ in Hz)
$$\Delta f_G/\text{Hz} = 25 + 75 \cdot \left[1 + 1{,}4 \cdot (f/\text{kHz})^2\right]^{0{,}69}$$

_(S. 164, Gl. 6.2)_

### Bark & Mel-Skala

- **1 Bark:** Entspricht dem Abstand von genau einer kritischen Bandbreite ($\Delta f_G$) auf der Frequenzgruppen-Skala (S. 158–160). Auf der Basilarmembran entspricht $1\text{ Bark}$ einer Strecke von **ca. 1,3 mm** (S. 161, Table 6.2 auf S. 162).

- **24 Frequenzgruppen (0 Hz – 16 kHz):** Das lückenlose Aneinanderreihen der kritischen Bandbreiten ergibt die _Critical-Band Rate Scale_ von **0 bis 24 Bark** (S. 158–160, Fig. 6.9 auf S. 160).

- **Verwandtschaft zur Mel-Skala:** Die Bark-Skala ist eng mit der Mel-Skala (_Ratio Pitch_) verwandt. Im tiefen Frequenzbereich ($< 500\text{ Hz}$) entspricht **1 Bark genau 100 mel** und verläuft proportional zur Frequenz in Hz (S. 162, 164, Table 6.2 auf S. 162, Fig. 6.11 auf S. 162).
![[Bildschirmfoto 2026-10-19 um 16.27.36.png]]
