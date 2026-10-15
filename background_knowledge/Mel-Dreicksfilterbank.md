>Die Mel-Dreiecksfilterbank dient dazu Audiosignale so aufzubereiten, wie sie das menschliche Gehör wahrnimmt (hinsichtlich Tonhöhen), damit man die **nicht-lineare** Wahrnehmung der Frequenzen in eine **perzeptuell linear (gleichabständige) Skala** überführt.

### Idee
- Tiefe Töne (niedrige Hz) kann der Mensch sehr gut unterscheiden, weshalb die [[Dreiecksfilter]] dort nahe beinander liegen 
- Hohe Töne kann das Gehör nicht so gut unterscheiden, weshalb die Filter dort breiter werden, um einen größeren Bereich abzudecken

![[Pasted image 20261015131921.png]]
- Die Dreiecke sind unterschiedlich hoch, damit sie hinsichtlich ihrer Fläche normalisiert sind 

### Ablauf
- Eine <abbr title="Fast Fourier Transformation">FFT</abbr> liefert viele exakte Hz-Werte, die nicht alle gleich Relevant sind
- Die [[Dreiecksfilter]] greifen bestimmte Frequenzbereiche heraus und summieren die Energie der Frequenzen innerhalb des Dreiecks (linear gewichtet) zu einer Zahl auf 
- Das Endergebnis der Summation pro [[Dreiecksfilter]] wird meinst logarithmisiert, um die Lautstärkewahrnehmung des Ohrs abzubilden (das menschliche Ohr nimmt Lautstärkeveränderungen nicht linear sondern logarithmisch wahr (Änderungen von 1 auf 2 Sprecher ist eine Verdopplung; von 100 auf 101 Sprecher fällt nicht auf))

