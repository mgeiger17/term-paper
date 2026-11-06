> Die Eulersche Formel verbindet die Exponentialfunktion mit den trigonometrischen Funktionen über die komplexe Zahlenebene. Die Formel beruht auf der Tatsache, dass eine Multiplikation mit der [[Imaginäre Zahl]] $i$ eine Rotation um 90° gegen den Uhrzeigersinn in der komplexen Zahlenebene bedeutet. 

### Formel
$$e^{i \theta} = \cos(\theta) + i \cdot \sin(\theta)$$
$i = \text{imaginäre Zahl}$
$\theta = \text{Winkel im Bogenmaß}$

	
![[Pasted image 20261016123726.png|370]]

### Herleitung über die Taylor Reihe
- **Reihe für $e^x$:**
$$e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \frac{x^5}{5!} + \dots$$

- **Setze $x = i\theta$ ein:
$$e^{i\theta} = 1 + i\theta - \frac{\theta^2}{2!} - i\frac{\theta^3}{3!} + \frac{\theta^4}{4!} + i\frac{\theta^5}{5!} - \dots$$

- **Trenne alle Terme ohne $i$ (Realteil) von den Termen mit $i$ (Imaginärteil):**
$$e^{i\theta} = \left( 1 - \frac{\theta^2}{2!} + \frac{\theta^4}{4!} - \dots \right) + i \cdot \left( \theta - \frac{\theta^3}{3!} + \frac{\theta^5}{5!} - \dots \right)$$
