#uni #Physik 

> [!definition] Der gerichtete Prozess
> 
> Ein **irreversibler Prozess** lässt sich **nicht** durch **kleine Änderungen** in der **Umgebung rückgängig** machen. Die **Richtung**, in die ein **irreversibler Prozess** abläuft, ist durch die **Entropieänderung $\Delta S$** des Systems **gegeben**. Die **Entropie $S$** ist eine **Zustandsgröße**, d. h. sie hängt nur von dem **Zustand des Systems** ab und **nicht** davon, wie das System in diesen Zustand **gelangt** ist. Das **Entropiepostulat** besagt:
> 
> "**Wenn in einem abgeschlossenen System ein irreversibler Prozess stattfindet, nimmt die Entropie des Systems immer zu.**"

### Berechnung von Entropieänderungen

Die **Entropieänderung $\Delta S$** eines **irreversiblen Prozesses** von einem **Anfangszustand $\mathrm{i}$** zu einem **Endzustand $\mathrm{f}$** ist **gleich** der **Entropieänderung $\Delta S$** eines **beliebigen reversiblen Prozesses** zwischen **denselben beiden Zuständen**. Die **letztere** können wir nach der Formel

$$\Delta S = S_{\mathrm{f}} - S_{\mathrm{i}} = \int\limits_{\mathrm{i}}^{\mathrm{f}} \frac{\mathrm{d}\ Q}{T}$$

berechnen. **$Q$** ist hier die als [[Wärme]] zwischen dem **System** und seiner **Umgebung übertragene Energie** und **$T$** ist die [[Temperatur]] **des Systems** bei diesem Prozess (in [[Kelvin]]).

Für einen **reversiblen isothermen Prozess** wird aus vorheriger Gleichung

$$\Delta S = S_{\mathrm{f}} - S_{\mathrm{i}} = \frac{Q}{T}.$$

Ist die [[Temperatur]]**änderung $\Delta T$** eines Systems **klein** im **Vergleich** zur **absoluten** [[Temperatur]] (in [[Kelvin]]) vor und nach dem Prozess, kann man die **Entropieänderung** auch durch

$$\Delta S = S_{\mathrm{f}} - S_{\mathrm{i}} \approx \frac{Q}{T_{\mathrm{gem}}}$$

**annähern**, wobei **$T_{\mathrm{gem}}$** die **mittlere** [[Temperatur]] des Systems bei diesem Prozess ist.

Wenn ein [[Ideales Gas|ideales Gas]] **reversibel** von einem **Anfangszustand** mit der [[Temperatur]] **$T_{\mathrm{i}}$** und dem **Volumen $V_{\mathrm{i}}$** in einen **Endzustand** mit der [[Temperatur]] **$T_{\mathrm{f}}$** und dem **Volumen $V_{\mathrm{f}}$** übergeht, ist die **Entropieänderung** des **Gases** durch folgende Beziehung gegeben:

$$\Delta S = S_{\mathrm{f}} - S_{\mathrm{i}} = n R \ln \frac{V_{\mathrm{f}}}{V_{\mathrm{i}}} + n C_{V} \ln \frac{T_{\mathrm{f}}}{T_{\mathrm{i}}}.$$

### Statistische Interpretation der Entropie

Die **Entropie eines Systems** lässt sich auch über die **möglichen Verteilungen** der **Moleküle definieren**. Für **gleichartige Moleküle** entspricht jede **mögliche Verteilung** einem **Mikrozustand des Systems**. Alle **makroskopisch gleichwertigen Mikrozustände** werden zu einer **Konfiguration** **zusammengefasst** (**Makrozustand**). Die **Anzahl** der **Mikrozustände** zu einer **gegebenen Konfiguration** bezeichnet man als die **Multiplizität $W$** dieser Konfiguration.

Für ein **System** aus **$N$ Molekülen**, die sich auf die **beiden Hälften** eines **Kastens** verteilen können, ist die **Multiplizität** durch

$$W = \frac{N!}{n_{1}! n_{2}!}$$

gegeben, wobei **$n_{1}$** die **Anzahl der Moleküle** in der **einen Kastenhälfte** und **$n_{2}$** die **Anzahl** der **Moleküle** in der **anderen Kastenhälfte** sind. Nach einer **Grundannahme** der **statistischen Mechanik** sind alle **Mikrozustände gleich wahrscheinlich**. **Konfigurationen** mit einer **großen Anzahl** von **Mikrozuständen** treten daher **häufiger** auf. Ist **$N$ sehr groß**, liegen **praktisch immer** solche **Konfiguration** vor, bei denen **$n_{1} = n_{2}$**.

Die **Multiplizität $W$** einer **Systemkonfiguration** und die **Entropie des Systems** in dieser **Konfiguration** sind über die **Boltzmannsche Entropiegleichung** miteinander verknüpft.

$$S = k \ln W,$$

wobei **$k$** die [[Boltzmann-Konstante]] ist.

Ist **$N$ sehr groß**, können wir **$\ln N!$** mithilfe der **Stirling-Näherung** annähern:

$$\ln N! \approx N(\ln N) - N.$$