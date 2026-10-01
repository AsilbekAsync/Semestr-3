# Semester-3

Cheat sheet'lar va konspektlar. Barchasi Markdown'da, PDF — `make pdf`.

## Fanlar

| # | Fan | Papka |
|---|-----|-------|
| 01 | Matematik analiz | [`subjects/01-matematik-analiz/`](subjects/01-matematik-analiz/) |
| 02 | Differensial tenglamalar | [`subjects/02-diff-tenglamalar/`](subjects/02-diff-tenglamalar/) |
| 03 | Falsafa | [`subjects/03-falsafa/`](subjects/03-falsafa/) |
| 04 | Pedagogika | [`subjects/04-pedagogika/`](subjects/04-pedagogika/) |
| 05 | Dasturlash (C#) | [`subjects/05-dasturlash/`](subjects/05-dasturlash/) |
| 06 | Fizika | [`subjects/06-fizika/`](subjects/06-fizika/) |

## Qo'llanma

```bash
# Barcha mavzulardan PDF yig'ish
make pdf

# Bitta fan
make 01-matematik-analiz
```

## Struktura

```
subjects/NN-fan/
├── README.md          # indeks + inglizcha lug'at
└── mavzular/NN-*.md   # har bir mavzu alohida fayl → PDF
```

## Uslub

Qoidalar: [`style-guide.md`](style-guide.md).
