# R^m FAZO — OCHIQ VA YOPIQ TO'PLAMLAR

> $\mathbb{R}^m=\{(x_1,\dots,x_m): x_i\in\mathbb{R}\}$; masofa $\rho(x,y)=\sqrt{\sum_{k=1}^{m}(y_k-x_k)^2}$. Ochiq to'plam — har bir nuqtasi ichki; yopiq — barcha limit nuqtalari o'zida.

## R^m FAZO

$$\mathbb{R}^m=\underbrace{\mathbb{R}\times\mathbb{R}\times\cdots\times\mathbb{R}}_{m}=\{(x_1,\dots,x_m): x_1\in\mathbb{R},\dots,x_m\in\mathbb{R}\}.$$

- Element — tartiblangan $m$-lik (nuqta): $x=(x_1,\dots,x_m)$.
- $x_i$ — $x$ nuqtaning $i$-koordinatasi.
- Tenglik: $x=y\iff x_1=y_1,\ x_2=y_2,\ \dots,\ x_m=y_m$.
- $\mathbb{R}^m$ — shu to'plam va unda kiritilgan masofa.

## MASOFA VA XOSSALARI

$$\rho(x,y)=\sqrt{\sum_{k=1}^{m}(y_k-x_k)^2}.$$

1. $\rho(x,y)\ge 0$, bunda $\rho(x,y)=0\iff x=y$.
2. $\rho(x,y)=\rho(y,x)$.
3. $\rho(x,z)\le\rho(x,y)+\rho(y,z)$.

Isbot g'oyalari:

1. Yig'indi manfiy emas; u $0$ bo'ladi faqat har bir had $0$ bo'lganda, ya'ni $x_k=y_k$.
2. $(y_k-x_k)^2=(x_k-y_k)^2$.
3. Koshi–Bunyakovskiy tengsizligi $(\sum a_kb_k)^2\le(\sum a_k^2)(\sum b_k^2)$ da $a_k=y_k-x_k$, $b_k=z_k-y_k$ olinsa, 3-xossa kelib chiqadi.

## SHAR, SFERA, PARALLELEPIPED

$$B_r(a)=\{x\in\mathbb{R}^m:\rho(x,a)<r\}$$ — ochiq shar;

$$\bar B_r(a)=\{x\in\mathbb{R}^m:\rho(x,a)\le r\}$$ — yopiq shar;

$$B_r^0(a)=\{x\in\mathbb{R}^m:\rho(x,a)=r\}$$ — sfera.

$$\bar B_r(a)=B_r(a)\cup B_r^0(a).$$

$$\Pi(a_1,\dots,a_m;b_1,\dots,b_m)=\{x\in\mathbb{R}^m: a_1<x_1<b_1,\dots,a_m<x_m<b_m\}$$ — parallelepiped.

## NUQTANING ATROFI

- Sferik atrof ($\varepsilon>0$):

$$U_\varepsilon(x^0)=\{x\in\mathbb{R}^m:\rho(x,x^0)<\varepsilon\}.$$

- Parallelepipedial atrof ($\delta_1>0,\dots,\delta_m>0$):

$$U_{\delta_1,\dots,\delta_m}(x^0)=\{x\in\mathbb{R}^m: x_i^0-\delta_i<x_i<x_i^0+\delta_i,\ i=1,\dots,m\}.$$

**Lemma.** Ikki atrof turi ekvivalent:

- $\forall U_\varepsilon(x^0)\ \exists U_\delta(x^0):\ U_\delta(x^0)\subset U_\varepsilon(x^0)$;
- $\forall U_{\delta_1,\dots,\delta_m}(x^0)\ \exists U_\varepsilon(x^0):\ U_\varepsilon(x^0)\subset U_{\delta_1,\dots,\delta_m}(x^0)$.

Isbot:

1. $\delta<\varepsilon/\sqrt m$ olinsin. Unda $x\in U_\delta(x^0)$ uchun
$$\rho(x,x^0)^2=\sum_{k=1}^{m}(x_k-x_k^0)^2<\sum_{k=1}^{m}\delta^2=m\delta^2<\varepsilon^2\ \Rightarrow\ \rho(x,x^0)<\varepsilon.$$
2. $\varepsilon=\min\{\delta_1,\dots,\delta_m\}$ olinsin. Unda $x\in U_\varepsilon(x^0)$ uchun $\rho(x,x^0)<\varepsilon\le\delta_k$, bundan $|x_k-x_k^0|<\delta_k$ $(k=1,\dots,m)$.

## OCHIQ VA YOPIQ TO'PLAMLAR

- **Ichki nuqta.** $x^0\in G$ — ichki nuqta, agar $\exists U_\varepsilon(x^0)\subset G$ bo'lsa.
- **Ta'rif.** $G$ ochiq to'plam $\iff$ uning har bir nuqtasi ichki nuqta.
- **Limit nuqta.** $x^0$ — $F$ ning limit nuqtasi, agar har qanday $U_\varepsilon(x^0)$ ichida $F$ ning $x^0$ dan farqli kamida bitta nuqtasi bo'lsa.
- **Ta'rif.** $F$ yopiq to'plam $\iff$ uning barcha limit nuqtalari $F$ ga tegishli.
- **Chegaraviy nuqta.** $x^0$ — $M$ ning chegaraviy nuqtasi, agar har qanday $U_\varepsilon(x^0)$ ichida ham $M$, ham $\mathbb{R}^m\setminus M$ nuqtalari bo'lsa. Barcha chegaraviy nuqtalar — $M$ ning chegarasi $\partial M$.
- $F$ yopiq $\iff \mathbb{R}^m\setminus F$ ochiq.
- $\bar B_r(a)$ — yopiq to'plam; $\partial B_r(a)=B_r^0(a)$.

## MISOL

$B_r(a)$ ning ochiq to'plam ekanligi.

$$\forall x^0\in B_r(a):\quad \delta=r-\rho(x^0,a)>0.$$

$$x\in U_\delta(x^0)\ \Rightarrow\ \rho(x,a)\le\rho(x,x^0)+\rho(x^0,a)<\delta+\rho(x^0,a)=r\ \Rightarrow\ x\in B_r(a).$$

Demak $U_\delta(x^0)\subset B_r(a)$, ya'ni $B_r(a)$ ning har bir nuqtasi ichki. $\blacksquare$

## MASHQLAR VA YECHIMLAR

**1.** $G_1,G_2\subset\mathbb{R}^m$ ochiq $\Rightarrow$ $G_1\cup G_2$ va $G_1\cap G_2$ ochiq.

- Birlashma: $x\in G_1\cup G_2$ olinganda $x\in G_1$ (yoki $G_2$). $G_1$ ochiq $\Rightarrow$ $\exists U_\varepsilon(x)\subset G_1\subset G_1\cup G_2$.
- Kesishma: $x\in G_1\cap G_2$ $\Rightarrow$ $\exists U_{\varepsilon_1}(x)\subset G_1$, $\exists U_{\varepsilon_2}(x)\subset G_2$; $\varepsilon=\min\{\varepsilon_1,\varepsilon_2\}$ uchun $U_\varepsilon(x)\subset G_1\cap G_2$.

**2.** $F_1,F_2\subset\mathbb{R}^m$ yopiq $\Rightarrow$ $F_1\cup F_2$ va $F_1\cap F_2$ yopiq.

$F$ yopiq $\iff$ $\mathbb{R}^m\setminus F$ ochiq ekanidan:

- $F_1\cup F_2$: $\mathbb{R}^m\setminus(F_1\cup F_2)=(\mathbb{R}^m\setminus F_1)\cap(\mathbb{R}^m\setminus F_2)$ — ochiqlar kesishmasi, demak ochiq.
- $F_1\cap F_2$: $\mathbb{R}^m\setminus(F_1\cap F_2)=(\mathbb{R}^m\setminus F_1)\cup(\mathbb{R}^m\setminus F_2)$ — ochiqlar birlashmasi, demak ochiq.

## XATOLAR

- Ochiq shar — $\rho<r$ (qat'iy); yopiq shar — $\rho\le r$. Aralashtirilmaydi.
- Sfera $B_r^0(a)=\partial B_r(a)$ ochiq sharga tegishli emas, lekin uning limit nuqtasi.
- Limit nuqta to'plamga tegishli bo'lishi shart emas; yopiq to'plamda esa barcha limit nuqtalar tegishli.
- Ochiqlar birlashmasi (ixtiyoriy) va chekli kesishmasi ochiq; cheksiz kesishma ochiq bo'lmasligi mumkin.
