>Ist eine Funktion, deren Graph die Form eines Dreiecks hat 

#### Formel
![](data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)![](data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)$$
\Lambda_a(t) = \begin{cases} 
1 - \frac{|t|}{a} & \text{für } |t| < a \\ 
0 & \text{für } |t| \ge a 
\end{cases}
$$
![[Pasted image 20261015130107.png|291]]
### Verwendung

**1. Datenfilterung:**
- Der Datenpunkt in der Mitte des Fensters bekommt das höchste Gewicht
- Je weiter entfernt von der Mitte desto mehr nimmt die Gewichtung (linear) ab
- mathematisch ist dieser Prozess eine Faltung 