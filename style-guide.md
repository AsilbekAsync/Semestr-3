# Style guide — qisqa, aniq, professional

## Qoidalar

1. **Ortiqcha yo'q.** Faqat fakt, formula, kod. Kirish so'zi, motivatsion gap — yo'q.
2. **Bir qatlam.** Savol → javob. Uzaytirilgan tushuntirish — boshqa bo'lim, qolgan joy yo'q.
3. **Tayanch shakl.** Blok-kod (`    `) — formullar va kod uchun. Matn — faqat shart va ogohlantirishlar.
4. **Belgilar.** `→` natija, `⚠️` shart/o'xshash xato, `∎` isbot oxiri, `□` checklist.
5. **Raqam ber.** "Cheksiz kichik" emas — `ε→0`. "Katta qiymat" emas — `|x|→∞`.
6. **Inglizcha lug'at** — har bir fan `README.md` oxirida, jadval: `uz | en`.

## Fayl qurilishi

```markdown
# ⚡ MAVZU NOMI

> `asosiy formula / definition` — mohiyat bitta qatlamda

## 🧠 TEOREMA / QOIDA
> if → then. **Shart bajarilmasa — natija yo'q.**

## 🛠 MISOL
    if → step → result

## ⚠️ TOSHKANLAR
- xato variant → to'g'risi
```

## Markdown → PDF

`make pdf` (pandoc + xelatex). Matematika — `$...$` yoki `$$...$$`.
