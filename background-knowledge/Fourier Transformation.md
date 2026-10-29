>Jeder Ton schwingt mit einer bestimmten Frequenz $f$, und ist eigentlich nur eine Sinus-Kurve.
>Überlagern sich mehrere Töne, so kombinieren sich die Sinusfunktionen und verstärken sich oder löschen sich gegenseitig aus. Man benutzt die Fourier Transformation, um die Frequenzen der einzelnen Sinuskurven herauszufinden

![[Pasted image 20261015152207.png]]

### Idee
- Man kann jede Funktion durch die [[Eulersche Formel]] in eine zweidimensionale Spirale "verwandeln" 
- Je nachdem wie schnell man die Funktion in Kreis rotieren lässt (in Kreisumdrehungen pro Sekunde) sieht die Funktion ganz anders aus
![[Pasted image 20261015154607.png]]

- Angenommen die Funktion ist eine Sinuskurve die mit einer Frequenz von 2Hz (2 Schwingungen/Sekunde) schwingt, bei 2 Kreisumdrehungen pro Sekunde, sind Umdrehung in Kreis und Amplitude der Sinuskurve synchron, das heißt die zweidimensionale Funktion schlägt immer am selben Punkt am stärksten (um die Amplitudenhöhe aus). 
![[Pasted image 20261015155139.png]]

- Anders als das Schulintegral, berechnet das Kurvenintegral keine Fläche sondern "addiert" alle $x$ und $y$ Koordination der komplexen Funktion, damit berechnet es quasi den Schwerpunkt der Funktion:
$$
\text{Schwerpunkt}(f) = \frac{1}{T} \int_{0}^{T} g(t) \cdot e^{-i 2\pi f t} \, dt
$$
$$
\hat{g}(f) = \int_{-\infty}^{\infty} g(t) \cdot e^{-i 2\pi f t} \, dt
$$
$g(t) = \text{Das Audiosignal (zeitabhängig)}$ 
$f = \text{Ziel-Frequenz}$

-> $e^t$ sorgt in diesem Fall dafür, dass entlang des Kreises gewandert wird,  

- Der Vorteil daran, nicht durch das Zeitintervall zu teilen liegt darin, dass der Ausschlag größer wird, je öfter sich die Funktion im Kreis bewegt (der Schwerpunkt wird bei jeder Umdrehung erneut addiert). Dadurch sieht man, welche Töne länger angehalten haben als andere 
