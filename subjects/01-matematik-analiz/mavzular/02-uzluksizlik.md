# KO'P O'ZGARUVCHILI FUNKSIYANING UZLUKSIZLIGI

> $f:D\subset\mathbb{R}^m\to\mathbb{R}$, $x^0$ — $D$ ning limit nuqtasi. $f$ $x^0$ da uzluksiz $\iff \lim\limits_{x\to x^0}f(x)=f(x^0)$ $\iff$ $\Delta f(x^0)\to 0$ ($\Delta x\to 0$).

## UZLUQSIZLIK TA'RIFLARI

$D\subset\mathbb{R}^m$, $f:D\to\mathbb{R}$, $x^0\in D$ — $D$ ning limit nuqtasi.

- **Asosiy ta'rif.** $f$ $x^0$ da uzluksiz, agar
$$\lim_{x\to x^0}f(x)=f(x^0).$$
- **Geyne ta'rifi.** $D$ ning nuqtalaridan tuzilgan $x_n\to x^0$ bo'lgan har qanday ketma-ketlik uchun $f(x_n)\to f(x^0)$.
- **Koshi ta'rifi.** $\forall\varepsilon>0\ \exists\delta>0:\ x\in D,\ 0<\|x-x^0\|<\delta\ \Rightarrow\ |f(x)-f(x^0)|<\varepsilon$.
- **Atrof orqali.** $\forall\varepsilon>0\ \exists\delta>0:\ x\in U_\delta(x^0)\cap D\ \Rightarrow\ f(x)\in U_\varepsilon(f(x^0))$, ya'ni $f\big(U_\delta(x^0)\cap D\big)\subset U_\varepsilon(f(x^0))$.

**Orttirmalar orqali.** Argument orttirmasi $\Delta x=x-x^0$, to'liq orttirma
$$\Delta f(x^0)=f(x^0+\Delta x)-f(x^0).$$
Xususiy orttirmalar: $\Delta_{x_k}f=f(x_1,\dots,x_k+\Delta x_k,\dots,x_m)-f(x)$. Unda
$$f\ \text{uzluksiz}\iff \lim_{\Delta x\to 0}\Delta f(x^0)=0.$$

- **Ta'rif (to'plamda).** $f$ $D$ ning har bir nuqtasida uzluksiz bo'lsa, $f$ $D$ da uzluksiz deyiladi.

## UZILISH NUQTASI

Agar $x^0$ da $\lim\limits_{x\to x^0}f(x)$ mavjud bo'lmasa, yoki limit mavjud, chekli bo'lib $\lim\limits_{x\to x^0}f(x)\ne f(x^0)$ bo'lsa, $f$ $x^0$ nuqtada **uzilishga ega** deyiladi.

## ARIFMETIK AMALLAR VA MURAKKAB FUNKSIYA

- **5-teorema.** $f$, $g$ $x^0$ da uzluksiz $\Rightarrow$ $f\pm g$, $f\cdot g$, hamda $g(x^0)\ne 0$ bo'lganda $f/g$ ham $x^0$ da uzluksiz.
- **6-teorema (murakkab funksiya).** $g_1,\dots,g_m$ $x^0$ da uzluksiz, $F$ esa $y^0=(g_1(x^0),\dots,g_m(x^0))$ nuqtada uzluksiz $\Rightarrow$ $F(g_1(x),\dots,g_m(x))$ $x^0$ da uzluksiz.

Isbot (6-teorema) Geyne ta'rifi orqali: $x_n\to x^0$ uchun $g_k(x_n)\to g_k(x^0)$, keyin $F$ ning uzluksizligidan
$$F\big(g_1(x_n),\dots,g_m(x_n)\big)\to F\big(g_1(x^0),\dots,g_m(x^0)\big).$$

## LOKAL XOSSALAR

$f$ $x^0$ da uzluksiz bo'lsin. U holda $x^0$ ning yetarli kichik atrofida:

1. **Chegaralanganlik.** $\exists M:\ |f(x)|\le M$.
2. **Ishorani saqlash.** $f(x^0)>0$ $(<0)$ $\Rightarrow$ atrofda $f(x)>0$ $(<0)$.
3. **Baho.** $|f(x)|\le |f(x^0)|+1$.

## GLOBAL XOSSALAR

- **17-teorema (Boltsano–Koshi I).** $f$ bog'lamli $D$ da uzluksiz; $f(a)$ va $f(b)$ har xil ishorali $\Rightarrow$ $\exists c\in D:\ f(c)=0$.
- **18-teorema (Boltsano–Koshi II).** $f$ bog'lamli $D$ da uzluksiz, $f(a)=A$, $f(b)=B$; $A<C<B$ $\Rightarrow$ $\exists c\in D:\ f(c)=C$.
- **19-teorema (Veyershtrass I).** $f$ chegaralangan yopiq $D$ da uzluksiz $\Rightarrow$ $f$ $D$ da chegaralangan.
- **20-teorema (Veyershtrass II).** $f$ chegaralangan yopiq $D$ da uzluksiz $\Rightarrow$ $f$ $D$ da o'zining aniq yuqori va aniq quyi chegaralariga erishadi.

Isbot g'oyalari:

- **17:** $D$ bog'lamli $\Rightarrow$ $a$, $b$ ni tutashtiruvchi va $D$ da yotuvchi siniq chiziq bor; har bir kesmada bir o'zgaruvchili holatga keltiriladi.
- **19:** teskarisidan faraz: $x_n\in D$, $|f(x_n)|>n$. $D$ chegaralangan $\Rightarrow$ Boltsano–Veyershtrass bo'yicha yaqinlashuvchi $x_{n_k}\to x^*$; $D$ yopiq $\Rightarrow$ $x^*\in D$; uzluksizlik va $|f(x_n)|>n$ ziddiyat beradi.

## MISOL

**1. Uzluksiz funksiya.** $f(x,y)=x^2+y^2$. Ixtiyoriy $(x_0,y_0)\in\mathbb{R}^2$ uchun limit xossalaridan
$$\lim_{(x,y)\to(x_0,y_0)}(x^2+y^2)=x_0^2+y_0^2=f(x_0,y_0),$$
demak $f$ butun $\mathbb{R}^2$ da uzluksiz.

**2. Bitta nuqtada uzilish.** $f(x,y)=\dfrac{xy}{x^2+y^2}$ ($(x,y)\ne(0,0)$), $f(0,0)=0$.
$$y=x:\ \frac{xy}{x^2+y^2}=\frac12;\qquad y=0:\ \frac{xy}{x^2+y^2}=0.$$
Har xil yo'llarda har xil qiymat $\Rightarrow$ $(0,0)$ da limit yo'q, $f$ $(0,0)$ da uzilishga ega; qolgan barcha nuqtalarda uzluksiz.

**3. Hamma joyda uzilish (Dirixle).** $f(x,y)=1$, agar $x,y\in\mathbb{Q}$; $f(x,y)=0$, aks holda. Har bir nuqtada limit mavjud emas, shuning uchun $f$ hamma joyda uzilishga ega.

## XATOLAR

- Uzluksizlik faqat $x^0\in D$ nuqtada so'raladi (izolyatsiya qilingan nuqtalarda alohida qaraladi).
- "Limit mavjud" $\ne$ "uzluksiz": uzluksizlikda $\lim f(x)=f(x^0)$ bo'lishi shart.
- Ko'p o'zgaruvchili limitda bitta yo'l bo'ylab (masalan, $y=x$) limitning mavjudligi yetarli emas — barcha yo'llar bo'yicha tekshiriladi.
- Veyershtrass teoremalarida "chegaralangan **yopiq** to'plam" sharti muhim.
