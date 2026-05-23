# TerraDart — Brand & Visual System

> **Type-safe IaC for Dart.**

---

## 1. Philosophy

TerraDart's job is to remove the last non-Dart layer from a Dart developer's stack. Flutter handles the UI in Dart. Firebase Functions handles the server in Dart. TerraDart re-implements Terraform's authoring surface in Dart — type-safe, refactor-safe, IDE-aware — so infrastructure stops being the one HCL-shaped hole in an otherwise pure-Dart codebase. The visual system says exactly this, and nothing else.

The mark belongs to the **Dart visual lineage**. Two overlapping planes, the family signature of Dart's own logo, are repurposed here as a **descending glyph** — the dart points down, into the infrastructure layer. The choice of *descent over diagonal* is the brand's single, deliberate departure from the parent family: where Dart runs sideways across a runtime, TerraDart goes *down*, into territory the language has not previously occupied. The visual hierarchy is the same as the project's mission.

Embedded in the upper plane, cutting straight across the cyan, is a single **Terra stratum** — a recessive indigo bar that names the territory the dart now reaches. The stratum is *inside* the Dart glyph on purpose: Terraform's surface is no longer adjacent, it has been *absorbed* into the Dart shape. One stratum is enough; two would over-explain, none would lose the meaning. The proportion is calibrated so the stratum reads as load-bearing, not decorative.

Color is held to a narrow corridor — a **Dart cyan** for the upper plane (the body of the dart), a **deep Dart blue** for the lower plane (the descent), a **Terra indigo** for the single stratum, and ink and paper. The corridor is narrow on purpose; discipline is the brand. The cyan/blue split echoes the Dart language's own palette so the mark sits beside `dart`, `flutter`, and `pub` without explanation. The indigo stratum is the only foreign note, and it appears exactly once.

Typography is a humanist geometric sans set in **Regular** weight, with the wordmark `TerraDart` always in CamelCase — never `terradart`, never `terra-dart`, never `Terra Dart`. The two capitals are load-bearing: the **T** stands for the legacy surface being re-implemented, the **D** for the language now doing the re-implementing. The lowercase letters between them are the work of compiling one into the other.

Composition is restrained and section-drawing in spirit: the dart vertical, the stratum strictly horizontal, every margin measured. Negative space is structural. No gradients, no glow, no faux-3D, no rotation. The work is the product of a builder who finishes their joints — anyone glancing at the mark should feel they have seen the work of someone at the top of their craft choosing to say only what needs saying.

---

## 2. The Mark

Two overlapping planes descending into a point. A single Terra stratum cuts across the upper plane. The shape reads, at any size, as a *dart aimed downward*.

```
   ┌──────────────┐
   │ ╲          ╱ │      upper plane  — Dart cyan
   │   ╲      ╱   │
   │ ─── ── ───   │      Terra stratum  — indigo, single bar
   │     ╲╱       │
   │     ╱╲       │      lower plane  — deep Dart blue
   │    ╱  ╲      │
   │    ╲╱        │
   └──────────────┘
```

**Variants:**

| File | Use |
|---|---|
| `mark-light.svg` / `.png` | Default mark on paper |
| `mark-dark.svg` / `.png` | Inverted for ink / dark UI (cyan and blue lifted for contrast) |
| `mark-mono.svg` / `.png` | Single-ink fallback — tone difference preserves the two-plane structure; the stratum knocks out to paper |

---

## 3. The Wordmark

`TerraDart` — CamelCase, one word, no separator.

- **Type stack:** `"Inter", "SF Pro Display", "Helvetica Neue", Helvetica, Arial, sans-serif`
- **Weight:** 400 (Regular) at all sizes — the lighter weight used previously fights the mark's geometric weight; Regular sits with it
- **Tracking:** −1 / 1000 em (very slight negative, to close lowercase pairs)
- **Cap-height ratio to mark:** wordmark cap-height ≈ 0.55 × mark height

**Horizontal lockup:**

```
[ MARK ]  TerraDart
```

One stroke-width of clear space between mark and wordmark. Nothing else may sit between them.

---

## 4. Color

| Token | Hex | Role |
|---|---|---|
| `--dart-cyan` | `#13B9FD` | Upper plane — body of the dart |
| `--dart-blue` | `#0175C2` | Lower plane — the descent |
| `--terra-indigo` | `#1E2A56` | Terra stratum — single instance only |
| `--ink` | `#0F1116` | Typography on paper |
| `--paper` | `#F6F3EC` | Default ground (warm white) |
| `--paper-dark` | `#0B0D12` | Inverted ground |

**Dark-surface lifts** (used by `mark-dark.svg` / `logo-horizontal-dark.svg`, which ship with **transparent backgrounds** so they sit on any dark surface):

| Token | Hex |
|---|---|
| `--dart-cyan-lifted` | `#4DD0FE` |
| `--dart-blue-lifted` | `#0F8FD8` |
| `--terra-indigo-lifted` | `#3B4A82` |

The Terra indigo is the rule: it appears once per composition, never twice. If a composition feels like it needs more of the stratum, the composition is wrong, not the rule.

---

## 5. Asset Inventory

```
branding/
├── BRAND.md
├── svg/
│   ├── mark-light.svg
│   ├── mark-dark.svg
│   ├── mark-mono.svg
│   ├── logo-horizontal-light.svg
│   ├── logo-horizontal-dark.svg
│   └── hero.svg                       (1600×800, README hero)
├── png/
│   ├── mark-light-{512,1024}.png
│   ├── mark-dark-{512,1024}.png
│   ├── mark-mono-{512,1024}.png
│   ├── logo-horizontal-{512,1024}.png
│   ├── logo-horizontal-dark-1024.png
│   └── hero-{1600,3200}.png
└── favicon/
    ├── favicon-{16,32,48,180,512}.png   (browser tab, apple-touch-icon, PWA)
    └── favicon.ico                       (multi-size)
```

---

## 6. Don'ts

- No `terradart`, no `terra-dart`, no `TERRADART` — always `TerraDart`.
- No globe, rocket, orbit, or terraforming planet imagery.
- No `T + D` letterform mashup as a substitute for the mark.
- No gradient on the mark, ever.
- No skew, no rotation, no outline of the wordmark.
- No emoji-fication (the mark is not 🎯 / 🏹 / 🌍).
- No second Terra stratum. One only.
- No accent color outside the corridor.
- No 3D, no drop shadow, no faux glow.

---

*v0.3 — descending-dart mark with Terra stratum; supersedes the v0.1 (seam) and v0.2 (vertical shaft) drafts.*
