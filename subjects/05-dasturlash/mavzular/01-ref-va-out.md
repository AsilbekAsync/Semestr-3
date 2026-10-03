# ⚡ REF VA OUT PARAMETRLARI

> `ref` / `out` — argumentni havola bo'yicha uzatib, metod ichida o'zgartirish yoki bir nechta qiymat qaytarish.

## 🧠 MUAMMO

- Oddiy turlar (`int`, `char`) **qiymat bo'yicha** uzatiladi → metod argumentning o'zini o'zgartira olmaydi.
- `return` orqali metod **faqat bitta** qiymat qaytaradi.
- Yechim: `ref` → argumentni o'zgartirish; `out` → bir nechta qiymat qaytarish.

## 🧠 ref

E'londa ham, chaqiruvda ham yoziladi. Argument oldindan initsializatsiya qilingan bo'lishi **shart**.

```csharp
public void Sqr(ref int i) { i = i * i; }

int a = 10;
ob.Sqr(ref a);          // a → 100
```

## 🧠 out

E'londa ham, chaqiruvda ham yoziladi. Argumentni oldindan qiymat bilan boshlash **shart emas** (initsializatsiya qilinmagan hisoblanadi), lekin metod tugashidan oldin unga **majburiy qiymat beriladi**.

```csharp
public int GetParts(double n, out double frac) {
    int w = (int)n;
    frac = n - w;       // kasr qismi
    return w;           // butun qismi
}

int i = ob.GetParts(10.125, out double f);   // i = 10, f = 0.125
```

## ⚠️ XATOLAR

- `ref` argumentiga chaqiruvdan oldin qiymat bermaslik → kompilyatsiya xatosi.
- `out` parametriga metod ichida qiymat bermaslik → kompilyatsiya xatosi.
- Ikkalasi ham e'lon **va** chaqiruvda yozilishi shart: `ob.Sqr(ref a)`, `GetParts(10.125, out f)`.

## ⚠️ ref vs out

| | `ref` | `out` |
|---|---|---|
| E'lon + chaqiruvda yoziladi | ✅ | ✅ |
| Oldindan qiymat berish | shart | shart emas |
| Metod ichida qiymat berish | ixtiyoriy | **majburiy** |
| Maqsad | kirish + chiqish | faqat chiqish |

## 🛠 NAMUNA — ref bilan qiymatlarni almashtirish

`ref` bo'lmasa `Swap` yozib bo'lmaydi: qiymat bo'yicha uzatilganda `a`/`b` nusxasi o'zgaradi, asl argumentlar o'zgarmaydi.

```csharp
public void Swap(ref int a, ref int b) {
    int t = a; a = b; b = t;
}

int x = 1, y = 2;
ob.Swap(ref x, ref y);   // x = 2, y = 1
```

---

# 🛠 MASALALAR VA YECHIMLAR

Nuqtalar koordinatalari berilgan: `A(xa,ya)`, `B(xb,yb)`, `C(xc,yc)`, `D(xd,yd)`.
Barcha funksiyalar bitta `Geometry` klassida. Asosiy g'oya — kichik funksiyalarni **qayta ishlatish**, natijalar orasida `ref`/`out` kerak bo'lsa qo'llash.

## 1. `Leng` — kesma uzunligi

**Masala:** ikki nuqta orasidagi masofa. `A,B,C,D` berilganda `AB, AC, AD` topilsin.

```csharp
static double Leng(double x1, double y1, double x2, double y2) {
    double dx = x2 - x1, dy = y2 - y1;
    return Math.Sqrt(dx * dx + dy * dy);
}

// AB, AC, AD
Console.WriteLine(Leng(ax, ay, bx, by));
```

## 2. `Perim` — uchburchak perimetri

**Masala:** `Leng`dan foydalanib `ABC, ABD, ACD` perimetrlari.

```csharp
static double Perim(double xa, double ya, double xb, double yb, double xc, double yc) {
    return Leng(xa, ya, xb, yb) + Leng(xb, yb, xc, yc) + Leng(xc, yc, xa, ya);
}
```

## 3. `Area` — uchburchak yuzasi

**Masala:** `Leng` va `Perim`dan foydalanib yuzani (Geron formulasi) hisoblash.

```csharp
static double Area(double xa, double ya, double xb, double yb, double xc, double yc) {
    double p = Perim(xa, ya, xb, yb, xc, yc) / 2;              // yarim perimetr
    double a = Leng(xb, yb, xc, yc);                            // a = |BC|
    double b = Leng(xa, ya, xc, yc);                            // b = |AC|
    double c = Leng(xa, ya, xb, yb);                            // c = |AB|
    return Math.Sqrt(p * (p - a) * (p - b) * (p - c));
}
```

## 4. `Disp` — nuqtadan kesmagacha masofa

**Masala:** `P` nuqtadan `AB` kesmagacha masofa (`Leng` va `Area` orqali). Uchburchak yuzasi va asosi ma'lum bo'lsa, balandlik topiladi:

```
S = a * h / 2   →   h = 2S / a
```

```csharp
static double Disp(double xp, double yp, double xa, double ya, double xb, double yb) {
    return 2 * Area(xp, yp, xa, ya, xb, yb) / Leng(xa, ya, xb, yb);
}
```

## 5. `Heights` — balandliklar (`out`)

**Masala:** uchburchakning uch tomoniga tushirilgan balandliklar `ha, hb, hc`. Uchtasini qaytarish kerak → `return` yetmaydi, **`out`** ishlatiladi.

```csharp
static void Heights(double xa, double ya, double xb, double yb, double xc, double yc,
                    out double ha, out double hb, out double hc) {
    ha = Disp(xa, ya, xb, yb, xc, yc);   // A dan BC gacha
    hb = Disp(xb, yb, xa, ya, xc, yc);   // B dan AC gacha
    hc = Disp(xc, yc, xa, ya, xb, yb);   // C dan AB gacha
}
```

## 🛠 Yig'ma yechim (`Main`)

```csharp
using System;

class Geometry {
    static double Leng(double x1, double y1, double x2, double y2) {
        double dx = x2 - x1, dy = y2 - y1;
        return Math.Sqrt(dx * dx + dy * dy);
    }

    static double Perim(double xa, double ya, double xb, double yb, double xc, double yc) {
        return Leng(xa, ya, xb, yb) + Leng(xb, yb, xc, yc) + Leng(xc, yc, xa, ya);
    }

    static double Area(double xa, double ya, double xb, double yb, double xc, double yc) {
        double p = Perim(xa, ya, xb, yb, xc, yc) / 2;
        return Math.Sqrt(p * (p - Leng(xb, yb, xc, yc))
                           * (p - Leng(xa, ya, xc, yc))
                           * (p - Leng(xa, ya, xb, yb)));
    }

    static double Disp(double xp, double yp, double xa, double ya, double xb, double yb) {
        return 2 * Area(xp, yp, xa, ya, xb, yb) / Leng(xa, ya, xb, yb);
    }

    static void Heights(double xa, double ya, double xb, double yb, double xc, double yc,
                        out double ha, out double hb, out double hc) {
        ha = Disp(xa, ya, xb, yb, xc, yc);
        hb = Disp(xb, yb, xa, ya, xc, yc);
        hc = Disp(xc, yc, xa, ya, xb, yb);
    }

    static void Main() {
        double ax = 0, ay = 0, bx = 3, by = 0, cx = 0, cy = 4;

        Console.WriteLine("AB = " + Leng(ax, ay, bx, by));        // 3
        Console.WriteLine("P  = " + Perim(ax, ay, bx, by, cx, cy)); // 12
        Console.WriteLine("S  = " + Area(ax, ay, bx, by, cx, cy));  // 6

        Heights(ax, ay, bx, by, cx, cy, out double ha, out double hb, out double hc);
        Console.WriteLine($"ha = {ha}, hb = {hb}, hc = {hc}");    // 2.4, 3, 4
    }
}
```

**Tekshirish (A(0,0), B(3,0), C(0,4)):** `AB=3`, `P=3+4+5=12`, `S=6`; balandliklar `2S/tomon`: `12/5=2.4`, `12/4=3`, `12/3=4`.
