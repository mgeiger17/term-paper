#import "../variables-registry.typ": *


//  15%: 12 Seiten
= Stand der Technik

== Schallwahrnehmung des Menschen
Simon
- Menschliche Gehörwahrnehmung und Frequenzskalierung (Mel-Skala)
- Logarithmische Lautstärkewahrnehmung

== Grundlagen der Audiosignalverarbeitung
=== Fast-Fourier-Transformation (FFT) und Zeit-Frequenz-Darstellung (STFT, Spektrogramme)
Simon

=== Mehrkanalige Signalverarbeitung und Binaurales Hören
Simon

== Definition eines Audiosignals
In dieser Arbeit wird ein Audiosignal als die digitale Repräsentation eines kontinuierlichen Schallwellensignals definiert. Ein Schallwellensignal ist ein physikalisches Signal, das sich in Form von Schalldruckschwankungen durch ein elastisches Medium (wie z. B. Luft) ausbreitet. Es stellt ein kontinuierliches analoges Signal #physicalSignal dar, welches von elektroakustischen Wandlern (wie Mikrofonen) erfasst werden kann.

Es erfolgt eine Diskretisierung des analogen Signals #physicalSignal() durch regelmäßige Abtastung im festen Zeitintervall #timeInterval (Abtastperiode). Dadurch entsteht das zeit- und wertdiskrete digitale Audiosignal #digitalSignal():

$
  #physicalSignal() arrow.r^("Abtastung") digitalSignal() quad "mit" quad #digitalSignal() = x(n · timeInterval), quad n in ZZ
$

wobei $t in RR$ die kontinuierliche Zeit, $timeInterval = 1 / samplingRate$ das Abtastintervall (mit der Abtastfrequenz $samplingRate$) und $n$ den diskreten Zeitschritt bezeichnet. Diese Definition kann auch auf mehrere Audiosignale erweitert werden. Wenn mehrere Personen gleichzeitig sprechen oder Hintergrundgeräusche präsent sind, entstehen sogenannte _Mischsignale_, formal beschrieben als
$ #mixtureSignal(discrete: true) = sum_(i = 1)^(amountSignalsWithinMixture) #digitalSignal(i: "i") $

wobei #mixtureSignal(discrete: true) das Gesamtsignal repräsentiert und die einzelnen Audiosignale #digitalSignal(i: "i") aus #amountSignalsWithinMixture verschiedenen physikalischen Quellen #footnote[Die Unterteilung der Audiosignale #digitalSignal(i: "i") wird in dieser Arbeit anhand ihrer jeweiligen Quelle vorgenommen. Jedes Audiosignal besitzt eine unterschiedliche Herkunft (z. B. Zielsprecher vs. Störquelle), wenngleich sie mathematisch und physikalisch nahezu identisch aufgebaut sind. Diese quellenseitige Betrachtungsweise ist für die Zielsprecherextraktion fundamental] direkt in diskreter Form dargestellt werden.


== Problemklassen zur Quellentrennung und Sprachverbesserung

Mit dem Cocktailparty-Effekt werden mehrere Problemestellungen in der Forschung assoziiert. Diese drei Problemstellungen werden vorgestellt und dessen unterschiedliche Ziele erläutert.
+ @bss: Eines der früheren Probleme ist @bss, dort wird versucht, ein Mischsignal in alle #amountSignalsWithinMixture enthaltende Einzelquellen zu zerlegen. Dabei werden keinerlei Hinweise verwendet, nur das Mischsignal selbst sind die Eingangsdaten. Daher wird es als _blind_ (keine Hinweise) bezeichnet. Hier tritt jedoch ein Permutationsproblem auf, denn das digitale Signal wird mittels einer @fft in den Frequenzbereich übertragen darrauffolgend in die einzelnen Quellen zerlegt. Dabei geschieht die Zuteilung pro Zeitintervall (#timeInterval) zufällig, welche Quelle welchen Ausgabekanal erhält. Es wird also zwischen beispielsweise Sprecher 1 und Sprecher 2 unterschieden, aber es wird nicht garantiert das Sprecher 1 immer auf Ausgabekanal 1 ist.
+ @nr: Aus einem Mischsignal wird versucht ein vorhandes Störsignal zu eleminieren. Dies funktioniert sehr gut sofern, die Quellen wesentlich unterschiedliche Signalstrukturen wie unterschiedliche Frequenzbereiche aufweisen. Ohne unterschiedliche Signalstrukturen wird es dagegen schwer die Störsignale zu extrahieren. Damit wird hier wieder eine Form von @bss benötigt.
+ @tse: Eine Extraktion von gewünschten Sprechen, dabei können diese _gewünschten_ Sprecher vorher definiert werden oder aus dem Mischsignal abgeleitet werden, was ein Teilproblem aufzeigt, die Identifkation des _gewünschten_ Sprechers. _Geschwünscht_ heißt hier, der Sprecher, der aktiv am Gespräch beteiligt ist. Desweiteren gilt für diese Problemstellung, dass Hinweise sogenannte _clues_ mitgegeben werden. Die Art der clues kann sich unterscheiden von visuellen, audio oder räumlichen Hinweise und noch weiteren. Insofern bildet @tse auch @bss ab, gilt aber als eine vereinfachte Form, da die clues helfen sollen, das Problem zu lösen @targetSpeechExtraction2023.


== Verfahren für Zielsprecherextraktion

=== Beamforming
Beamforming ist ein Verfahren zur räumlichen Filterung unter Nutzung mehrerer Eingangssignale desselben Mischsignals aus verschiedenen Punkten im Raum. Durch die räumliche Verteilung der Eingangssignale, gemessen mit Mikrofonen, entstehen Differenzen in den Signalen der Quellen, bedingt durch die begrenzte Schallgeschwindigkeit. Es tritt sowohl eine zeitliche Verschiebung (Phasenverschiebung) derselben Audiosignale für die einzelnen Eingangssignale auf, als auch eine Variation der Amplitude. Unterschiede in der Phasenverschiebung und Amplitude hängen von der räumlichen Anordnung der Sensoren, den Positionen der Schallquellen sowie den akustischen Ausbreitungsbedingungen (z. B. Reflexionen, Hindernisse) ab. Die Verwendung von zwei Sensoren oder Mikrofonen wird als _binaural_ bezeichnet.

Durch die Verzögerung und eine genutzte Gewichtung der Eingangssignale und deren anschließende Kombination lässt sich die Empfindlichkeit des Systems gegenüber Schall aus bestimmten Richtungen beeinflussen. Signale aus bestimmten Richtungen werden dabei konstruktiv überlagert und somit relativ zu den anderen Richtungen, welche keine konstruktive Überlagerung erfahren, relativ betrachtet verstärkt.

Für ein Beamforming Verfahren müssen zunächst Koordinaten und Richtungen definiert werden, sodass man ein Koordinatensystem mit den Punkten der Sensoren erhält. Anschließend wird definiert, was der Winkel $phi = 0 degree$ bedeutet. Dafür gibt es allgemein zwei Möglichkeiten: Entweder wird dieser als parallel zu den Sensoren oder senkrecht zu den Sensoren definiert. In diesem Fall wird Letztere genutzt, sodass, sofern ein Signal direkt auf die Sensoren zukommt (senkrecht), es den Winkel $phi = 0 degree$ hat @Beamforming1988.

Allgemein wird ein Beamformer für breitbandige Signale definiert als:
$ mixtureSignal() = sum_(l = 1)^J sum_(p = 0)^(K-1) w_(l,p)^** x_l (n - p) $.

Wobei #mixtureSignal() das Ausgangssignal, $J$ die Anzahl der Sensoren, $K$ die Filterlänge (Anzahl der Filter-Taps) des @fir -Filters #footnote([Ein @fir:long (dt. Filter mit endlicher Impulsantwort) ist ein digitales Filter, das ein Audiosignal verarbeitet, indem es den aktuellen sowie eine feste Anzahl vergangener Abtastwerte ($K$ Taps) zeitlich gewichtet aufsummiert.]), $w^*_(l,p)$ das Gewicht für den $p$-ten Abtastwert des Sensors $l$ und $x_l(n-p)$ die Eingangssignale der Sensoren mit der Verzögerung für das @fir -Filter repräsentieren @Beamforming1988.


=== Historische Entwicklung der Sprechereinbettung (von i-Vectors zu x-Vectors)
Mattis


=== Modellierung im Zeit- und Frequenzbereich (NN, CNN, Conv-TasNet, TF-GridNet)
Mattis

=== Zusatzinformationen (Clues): Audio, Visuell (Lippenlesen) und Räumlich
Mattis

=== Diskriminative vs. Generative Modelle
Mattis

== Evaluationsmetriken

=== Objektive Sprachgüte- und Trennungsmetriken (SI-SDR, STOI, PESQ)
Simmon
