#uni #Physik 

> [!definition] Die harmonische Schwingung
> 
> Bei einer **harmonischen Schwingung** lässt sich die **Auslenkung $x(t)$** eines Teilchens **aus** seiner **[[Statisches Gleichgewicht|Gleichgewichts]]lage** durch die Gleichung
> 
> $$x(t) = x_{\mathrm{m}} \cos(\omega t + \varphi) \qquad \text{(Auslenkung)}$$
> 
> beschreiben. Hierbei ist **$x_{mathrm{m}}$** die **Amplitude der** [[Verschiebung]], die Größe **$(\omega t + \varphi)$** ist die **Phase der** [[Bewegung]] und **$\varphi$** ist die **Phasenkonstante**. Die **Kreis[[Frequenz|frequenz]] $\omega$** hängt mit [[Periode]] und [[Frequenz]] über die Beziehung
> 
> $$\omega = \frac{2 \pi}{T} = 2 \pi f \qquad \text{(Kreisfrequenz)}$$
> 
> zusammen. Die **erste** und **zweite Ableitung** der **$x(t)$-Gleichung** führen auf die [[Geschwindigkeit]] und die [[Beschleunigung]] des Teilchens bei einer **harmonischen Schwingung** als **Funktion** der [[Zeit]]:
> 
> $$v = -\omega x_{\mathrm{m}} \sin(\omega t + \varphi) \qquad \text{(Geschwindigkeit)}$$
> 
> und
> 
> $$a = -\omega^{2} x_{\mathrm{m}} \cos(\omega t + \varphi) \qquad \text{(Beschleunigung)}.$$
> 
> Die **positive Größe $\omega x_{\mathrm{m}}$** bezeichnet man als **[[Geschwindigkeit|Geschwindigkeits]]amplitude $v_{\mathrm{m}}$**, die **positive Größe $\omega^{2} x_{\mathrm{m}}$** nennt man die **[[Beschleunigung|Beschleunigungs]]amplitude $a_{\mathrm{m}}$** der Bewegung.

### Harmonischer Oszillator

 Ein Teilchen der [[Masse]] **$m$** führt unter dem **Einfluss** einer **Hookeschen rücktreibenden** [[Kraft]] **$F = -k x$** eine **harmonische Schwingung** mit

$$\omega = \sqrt{\frac{k}{m}}$$

und

$$T = 2 \pi \sqrt{\frac{m}{k}}$$

aus. Ein solches **System** bezeichnet man als **linearen harmonischen Oszillator**.

### Energie

Bei einer **harmonisches Schwingung** hat ein Teilchen zu **jedem Augenblick** die [[Kinetische Energie|kinetische Energie]] **$K = \frac{1}{2} m v^{2}$** und die [[Potenzielle Energie|potenzielle Energie]] **$U = \frac{1}{2} k x^{2}$**. Ohne [[Reibung]] ist die [[Mechanische Energie|mechanische Energie]] **$E = K + U$ konstant**, obwohl **$K$** und **$U$** sich **beständig ändern**.

### Harmonische Schwingung und gleichförmige Kreisbewegung

Die **harmonische Bewegung** entspricht der **Projektion** einer **gleichförmigen Kreisbewegung** auf den **Durchmesser des Kreises**, auf dem die Kreisbewegung stattfindet. Man kann erkennen, dass **alle Parameter** der **Kreisbewegung** ([[Ort]], [[Geschwindigkeit]] und [[Beschleunigung]]) auf die **entsprechenden Parameter** der **harmonischen Schwingung projiziert** werden.

### Gedämpfte harmonische Schwingung

Bei **realen schwingenden Systemen nimmt** die [[Mechanische Energie|mechanische Energie]] im **Verlauf** der Bewegung **ab**, weil **äußere Kräfte**, beispielsweise **Luftwiderstand** oder [[Kraft#Reibungskraft|Reibungskräfte]], die **Schwingung dämpfen** und [[Mechanische Energie|mechanische Energie]] in **thermische** umwandeln. Solche **Oszillatoren** und ihre Bewegungen bezeichnet man als **gedämpft**. Ist die **dämpfende** [[Kraft]] durch **$\vec{F}_{\mathrm{R}} = -b \vec{v}$** gegeben, wobei **$v$** die [[Geschwindigkeit]] des **Oszillators** und **$b$** der **Dämpfungskoeffizient** sind, dann wird die **Auslenkung** des Oszillators durch

$$x(t) = x_{\mathrm{m}} e^{-\frac{b t}{2m}} \cos(\omega' t + \varphi)$$

beschrieben, wobei die **Kreisfrequenz $\omega'$** des gedämpften Oszillators durch

$$\omega' = \sqrt{\frac{k}{m} - \frac{b^{2}}{4m^{2}}}$$

gegeben ist. Für **kleinere Dämpfungskoeffizienten** (**$b \ll \sqrt{k m}$**) ist **$\omega' \approx \omega$**, der **Kreisfrequenz** des ungedämpften Oszillators. Außerdem ist in diesem Fall die [[Mechanische Energie|mechanische Energie]] **$E$** des Oszillators gleich

$$E(t) \approx \frac{1}{2} k x_{\mathrm{m}}^{2} e^{-\frac{b t}{m}}.$$

### Erzwungene Schwingungen und Resonanz

Greift an einem **oszillierenden System** mit der **natürlichen Kreisfrequenz $\omega$** eine **äußere periodische** [[Kraft]] mit der **Erregerfrequenz $\omega_{\mathrm{e}}$** an, so **schwingt** dieses System mit der **Kreisfrequenz** **$\omega_{\mathrm{e}}$**. Die **Amplitude** des Systems ist am **größten**, wenn die **Resonanzbedingung**

$$\omega_{\mathrm{e}} = \omega$$

erfüllt ist. Dies gilt **näherungsweise** für kleine **Dämpfungen**.