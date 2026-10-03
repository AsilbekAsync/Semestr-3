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
