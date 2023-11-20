#uni #Physik 

# Reflexion und Brechung

> [!definition] Reflexionsgesetz
> 
> **Einfallswinkel $\alpha$** = **Reflexionswinkel $\alpha'$**.

> [!definition] Snellius'sches Brechungsgesetz
> 
> **$$\frac{\sin \alpha}{\sin \beta} = \frac{n_{2}}{n_{1}} = \frac{c_{1}}{c_{2}},$$**
> 
> wobei **$c_{i} = \frac{c_{0}}{n_{i}}$** die **Ausbreitungsgeschwindigkeit** des Lichtes im Medium bedeutet.
> 
> **$n_{i}$** ist der **Brechungsindex** des **Mediums $i$**.

### Fragen

1. Wann wird der Strahl vom Lot weg, wann zum Lot hin gebrochen?
	- Wenn $n_{1} > n_{2}$, dann wird der Strahl vom Lot weg gebrochen, wenn $n_{1} < n_{2}$, dann wird der Strahl zum Lot hin gebrochen.

## Totalreflexion

> [!definition] Totalreflexion
> 
> **Grenzfall** des Brechungsgesetzes, der bei **$n_{2} < n_{1}$** auftreten kann, wenn **$\beta = 90°$** ist. Es gilt dann nach dem Brechungsgesetz **$\sin \alpha = \frac{n_{2}}{n_{1}}$**.
> 
> ![[Physik_Brechung_und_Totalreflexion.png]]

# Dispersion

> [!definition] Dispersion
> 
> Breitet sich Licht in einem **homogenen Medium** aus, so hängt der **Brechungsindex** und somit auch die Ausbreitungsgeschwindigkeit von der **Wellenlänge** ab. Dieser Effekt ist mit Mitteln der geometrischen Optik nicht zu verstehen, aber er ist der Beschreibung von Linsen von großer Bedeutung.
> 
> ![[Physik_Dispersion_01.png]]![[Physik_Dispersion_02.png]]

# Ideale Linsen

> [!definition] Linse
> 
> Als Linsen bezeichnet man in der Optik transparente Körper mit gekrümmten (meisten sphärischen) Grenzflächen. Sie werden charakterisiert durch ihre **Brennweite $f$**, die bei **Sammellinsen** (**konvexe Linsen**) durch die **Entfernung des Punkts** gegeben ist, in dem **einfallendes paralleles Licht** nach der Linse **gesammelt** wird.
> 
> Lichtbrechung wird im Modell durch das Einführen einer Hauptebene vereinfacht. Der Strahl wird an dieser Ebene abgelenkt und nicht an den Grenzoberflächen.
> 
> **1**. Strahlen, die parallel zur optischen Achse einfallen, gehen nach der Linse durch deren Brennpunkt
> **2**. Strahlen, die durch den Linsenmittelpunkt gehen, werden nicht gebrochen
> **3**. Strahlen, die durch den vorderen Brennpunkt der Linse einfallen, verlaufen nach der Linse parallel zur optische Achse.
>    
> ![[Physik_Linsen_01.png]]

## Primitive Linsenformel

> [!definition] Linsenformel
> 
> Mit Hilfe des Strahlensatzes ergibt sich die "primitive Linsenformel", mit der sich aus der **bekannten Brennweite** der Linse (**$f$**) und der Position des Gegenstandes (**Gegenstandsweite $g$**) die Position des Bildes (**Bildweite $b$**) vorhersagen lässt:
> 
> **$$\frac{1}{f} = \frac{1}{g} + \frac{1}{b}.$$**

## Gegenstands- und Bildgröße

Mit Hilfe des **Strahlensatzes** kann auch eine einfache Beziehung zwischen der Größe von Bild (**Bildgröße $B$**) und Gegenstand (**Gegenstandsgröße $G$**) gefunden werden:

**$$\frac{B}{G} = \frac{b}{g}.$$**

## Virtuelles Bild

Ist die **Gegenstandsweite kleiner** als die **Brennweite**, so kann nach der Linse **kein reelles Bild** entstehen, da nach der obigen Abbildungs-Konstruktion die Strahlen, die von einem Punkt des Gegenstandes ausgehen sich in einem Bildpunkt treffen, sondern divergieren. Dies entspricht der Situation, die auch bei einer Zerstreuungslinse (Konkavlinse) vorliegt.

![[Physik_Konkavlinse.png]]

#TODO

### Fragen

1. Unter welchen Bedingungen entsteht ein reelles Bild und wann ein virtuelles Bild ?
	- Solange sich die Strahlen nach der Linse kreuzen, also konvergieren, entsteht ein reelles Bild. Divergieren die Strahlen, so entsteht ein virtuelles Bild.

## Linsenkombinationen

Die **Linsenkombinationen** lassen sich wie eine Linse behandeln, wenn deren **Abstand klein** im Vergleich zur ihren Brennweiten ist. Es **addieren** sich die **reziproken Brennweiten** der beiden Linsen

**$$\frac{1}{f_{\mathrm{ges}}} = \frac{1}{f_{1}} + \frac{1}{f_{2}}.$$**

Werden zum Beispiel zwei Sammellinsen kombiniert, so ist die Brennweite $f_{\mathrm{ges}}$ kleiner als die Brennweiten $f_{1}, f_{2}$ jeder der beiden Linsen.

Ist der **Abstand** der beiden Linsen **nicht vernachlässigbar klein**, so tritt zu der obigen Formel ein **Korrekturterm**, der den **Linsenabstand $d$** enthält, hinzu:

**$$\frac{1}{f_{\mathrm{ges}}} = \frac{1}{f_{1}} + \frac{1}{f_{2}} - \frac{d}{f_{1} \cdot f_{2}}.$$**

### Fragen

1. Ist die Gesamtbrennweite eines Systems aus Sammellinse und Zerstreuungslinse größer oder kleiner als die Brennweite der Sammellinse allein?
	- Die Gesamtbrennweite des Systems ist größer als Brennweite der Sammellinse alleine.
2. Wo werden in der Praxis Linsenkombinationen eingesetzt?
	- Mikroskop

# Linsenfehler

**Reale Linsen** zeigen **Abweichungen** von der **Abbildungsgleichung**. Man spricht dann von **Linsenfehlern**.

## Sphärische Aberration

Nicht alle achsenparallel einfallenden Strahlen werden in einem Punkt vereinigt, da die **kugelförmige Grenzfläche** nur für **achsennahe Strahlen** die **Abbildungsgleichung erfüllt**.

![[Physik_Sphärische_Aberration.png]]

## Chromatische Aberration

Dies ist eine Folge der [[#Dispersion]]. Aufgrund des **unterschiedlichen Brechungsindex** des Linsenmaterials für **verschiedene Farben** (Wellenlängen), erhält man für jede Farbe einen anderen Brennpunkt. Das Bild trägt daher einen farbigen Saum.

## Astigmatismus

Dieser Fehler tritt bei **nicht rotationssysmmetrisch gekrümmten Linsen** auf, oder wenn ein Lichtbündel schief durch eine sphärische Linse geht. Dies führt dazu, dass die Linse zwei Brennlinien hat, welche zu den beiden Hauptkrümmungsrichtungen der Linse gehören, und keinen einzelnen Brennpunkt.

![[Physik_Astigmatismus.png]]

# Optische Instrumente

Unter dem **Sehwinkel $\alpha$** versteht man den Winkel, unter dem ein **Gegenstand vom optischen Mittelpunkt des Auges** aus gesehen wird. Da die **Bildgröße** auf der Netzhaut **mit** dem **Sehwinkel ansteigt**, versucht man kleine Gegenstände möglichst nahe ans Auge zu führen. Dies ist aber unter Beibehaltung einer scharfen Abbildung nicht unbegrenzt möglich. Daher werden optische Instrumente zur künstlichen Vergrößerung eingesetzt. Die **Vergrößerung $v$** eines optischen Instrumentes ist gegeben durch:

**$$\begin{aligned} v &= \frac{\tan \beta}{\tan \alpha}\\ \alpha &= \text{ Sehwinkel ohne Instrument}\\ \beta &= \text{ Sehwinkel mit Instrument} \end{aligned}$$**

![[Physik_Sehwinkel.png]]

## Lupe

Die **Vergrößerung** für die **Lupe** lautet somit: **$v_{\mathrm{L}} = \frac{s_{0}}{f}$**.

![[Physik_Lupe.png]]

## Mikroskop

Die **Vergrößerung** des **Mikroskops $v_{\mathrm{M}}$** lässt sich aus der **Vergrößerung** des **Okulars $v_{\mathrm{Ok}} = v_{\mathrm{L}}$** und aus der **Lateralvergrößerung** des **Objektivs $v_{\mathrm{Obj}} = \frac{B}{G}$** berechnen. Es gilt:

**$$v_{\mathrm{M}} = v_{\mathrm{Ok}} \cdot v_{\mathrm{Obj}} = \frac{s_{0}}{f_{\mathrm{Ok}}} \cdot \frac{b_{1}}{g_{1}} = \frac{s_{0}}{f_{\mathrm{Ok}}} \cdot \frac{t}{f_{\mathrm{Obj}}},$$**

wobei **$t$** als **Tubuslänge** des Mikroskops bezeichnet wird.

![[Physik_Mikroskop.png]]

### Auflösungsvermögen eines Mikroskops

Das **Auflösungsvermögen** ist durch den Abstand zweier Punkte bestimmt, die gerade noch getrennt gesehen werden können. Beim Mikroskop ist die **Auflösungsgrenze** durch die **Wellenlänge des Lichts** und die **numerische Apertur** (**$n \cdot \sin a$**) des **Objektivs** gegeben (**$\alpha =$ halber Öffnungswinkel des Objektivs**):

**$$d = 0,61 \cdot \frac{\lambda}{n \cdot \sin \alpha}$$**