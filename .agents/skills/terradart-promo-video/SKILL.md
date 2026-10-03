---
name: terradart-promo-video
description: Produce a TerraDart release clip — scripted terminal beats (VHS), a composition in the brand system with English and Japanese captions (Remotion), phone-safe delivery encodes — and draft the X / LinkedIn copy. Use when announcing a release with a video.
---
# TerraDart promo video

Policy lives in [`AGENTS.md`](../../../AGENTS.md). This skill is the repeatable workflow for a release announcement clip. The deterministic work belongs to [`tool/promo/`](../../../tool/promo/) (a release clip) and [`tool/promo_video.sh`](../../../tool/promo_video.sh) (one screen recording, cut and branded); what stays here is the part a script cannot decide.

## Contents

- [When to use](#when-to-use)
- [What a clip may claim](#what-a-clip-may-claim)
- [Workflow](#workflow)
- [Writing the beats](#writing-the-beats)
- [The brand system on screen](#the-brand-system-on-screen)
- [One screen recording](#one-screen-recording)
- [Delivery](#delivery)
- [Writing the copy](#writing-the-copy)
- [Pitfalls](#pitfalls)

## When to use

- A release ships a user-visible command or capability the maintainer wants to announce.
- An existing clip needs re-cutting (different zoom, different end card, a delivery encode for a new platform).

Not for docs GIFs or `website/` assets — those are authored with the page, not as a release artifact.

## What a clip may claim

**The copy may only claim what the clip shows.** This is the highest-value rule here, because a wrong claim is a public credibility problem rather than rework.

- A clip of a **fixture or sample tree** supports "converts a Terraform tree". It does **not** support "migrated a real app".
- Only claim `terraform plan` reports *No changes* once the [status](../../../website/src/content/docs/docs/status.md) gate for it is actually ticked — that gate needs a real tree against real state, and it is maintainer work, not an agent's.
- Numbers spoken in the copy must be the numbers on screen (`82 migrated, 0 kept`), from the version in the clip.
- Never name a third-party repository as a migration success without the maintainer's explicit go-ahead.

When a claim is tempting but unsupported, cut the claim, not the caveat.

## Workflow

[`tool/promo/`](../../../tool/promo/) holds the whole clip as code: `tapes/*.tape` (the terminal beats, recorded by VHS), `storyboard.json` (scenes, cuts and holds, camera keyframes, captions in both languages, which lines of the generated files to show) and a Remotion composition under `src/` that reads the site's tokens and syntax theme. Re-recording after a CLI change is a re-run, not a re-edit.

Needs Node ≥ 22.12, `vhs` with `ttyd`, `ffmpeg` and `google-chrome`; `npm ci` in `tool/promo/` installs Remotion and the fonts (Inter, JetBrains Mono, Noto Sans JP), so no system font matters.

**Task progress:**

- [ ] 1. **Write the beats** in `storyboard.json` and the tapes before recording ([below](#writing-the-beats)).
- [ ] 2. **Rehearse** against the unreleased CLI: build `terradart` from the release branch and point the scaffold at the checkout.
      ```bash
      cd tool/promo && npm ci
      node capture.mjs --bin-dir /tmp/promo/bin --sandbox-path --rehearse-packages /path/to/checkout
      ```
      `--sandbox-path` hides `terraform` and `tofu` from the recorded shell; rehearsal only, because the clip then claims something false about the machine.
- [ ] 3. **Time the storyboard off real frames.** Times in `storyboard.json` are seconds of the recorded clip, so read them off a contact sheet:
      ```bash
      ffmpeg -i public/clips/02-plan.mp4 -vf "fps=2,scale=400:-1,drawtext=text='%{pts\\:flt}':fontcolor=yellow:fontsize=22,tile=6x7" -frames:v 1 sheet.png
      ```
- [ ] 4. **Look before rendering.** `node render.mjs --stills-only` writes the poster and one key frame per entry of `stills` in each language — the brand check.
- [ ] 5. **The take**, once the release is on pub.dev: `dart pub global activate terradart_cli`, move the engines off `PATH` for real (`capture.mjs` refuses to record while `terraform` or `tofu` is on it), `node capture.mjs`, restore them. Re-time the storyboard against the new clips.
- [ ] 6. **Render**: `node render.mjs --out DIR` writes `terradart-v<release>-en.mp4`, `terradart-v<release>-ja.mp4`, `poster.png` and the key frames. `npm run studio` scrubs the composition frame by frame.
- [ ] 7. **Review** each delivery with the `videoReview` subagent: captions against what the frame shows, zooms that clip a line, text too small at phone size. Treat its brand verdicts with care — check a flagged colour against `tokens.css` before changing anything.
- [ ] 8. Draft the copy ([below](#writing-the-copy)). The maintainer posts; agents do not post to X or LinkedIn.

## Writing the beats

One message per beat, five to seven beats, 40–50s. Open on the lockup with the release, close on the install line and the site.

- **Record what the user runs, nothing else.** No `clear`, `ls`, `--version` or checks; the tapes hide setup with `Hide` / `Show`.
- **Wait on output, not on time.** `Wait /regex/` on the prompt (`Wait /^\$\s*$/`) ends a beat when the command does; `Sleep` is only for reading time.
- **Cut what nobody reads** (dependency resolution, an engine's init text) with a segment gap, and **hold what proves the claim** — a line that scrolls past in half a second gets a `{ "hold": t, "seconds": s }` segment.
- **Zoom on the line that carries the beat**, 1.3–1.7x. A long line clips at the right edge, so anchor wide lines left (`"x": 0`) and keep the whole line in frame at peak zoom.
- **Show real files.** Code beats are excerpts of what the take generated (`code` rules in the storyboard: start line, picked lines, folds), highlighted with the site's theme; never a hand-written mock.

## The brand system on screen

Everything on screen comes from [`BRAND.md`](../../../branding/BRAND.md) and [`website/src/styles/tokens.css`](../../../website/src/styles/tokens.css), which the composition imports — never a hex value typed into a scene.

| Element | Value |
|---|---|
| Ground | `--td-bg` |
| Windows | the landing's code window: `--td-surface` body, `--td-surface-2` bar, `--td-line-strong` border, neutral dots |
| Terminal | JetBrains Mono, the site's dark syntax palette, every ANSI hue mapped into the corridor (`capture.mjs`) |
| Captions | Inter (Noto Sans JP for kana and kanji) on a `--td-surface-2` pill; commands in JetBrains Mono, `--td-accent` |
| Highlight | `--td-accent-soft` band with a `--td-accent` rule |
| Cards | the repository's dark lockup, inlined so its wordmark is the loaded Inter |

The mark carries the composition's one Terra stratum; nothing else on screen uses indigo. No gradients, glow, particles or motion blur; transitions are short crossfades.

## One screen recording

For a clip that is a single take (`RecordScreen` of a terminal), [`tool/promo_video.sh`](../../../tool/promo_video.sh) drops the recorder's outro, pushes in on one command, burns `--subtitles` in, adds `--title-card` and the end card, and writes the same delivery encode:

```bash
tool/promo_video.sh --in RAW.mp4 --out EDIT.mp4 \
  --zoom-in 5.15 --zoom-out 11.15 --zoom-focus 490,740 --deliver DELIVERY.mp4
```

`--dump-frames DIR` names frames by source second, for the zoom timings. Its terminal should match [the brand system](#the-brand-system-on-screen): JetBrains Mono ~17pt, `#11141b` on a `#0b0d12` desktop, prompt and cursor `#4dd0fe`.

## Delivery

`render.mjs` (and `promo_video.sh --deliver`) writes the encode that platforms and phones accept: 1080p30, H.264 High@4.1, a silent AAC track, `faststart`, `mp42` brand.

This is not cosmetic. **iOS Photos silently refuses "Save Video"** on the raw recording shape — soundless, 1200 tall, 60fps, level 5.0 — with no error to explain it. The delivery encode is what saves to a phone and what to hand over for posting. On iOS, open it in **Safari** and use Share → Save Video; the in-app share sheet does not always offer it.

## Writing the copy

Draft both X and LinkedIn, and offer English (the audience for a Dart IaC tool skews international).

- **Lead with the release, then the capability** — "TerraDart v0.28.1 is here, introducing the new migrate command". The reader learns what project this is before what the command does.
- **Cut internal vocabulary.** *Leftover sidecar*, *resource-atomic*, *merged IR* are precise in this repo and opaque in a feed; "anything not yet converted simply stays as regular Terraform" says the same thing to someone who has never read the docs.
- **Name the reassurance, not the mechanism.** The reason people care is that they do not have to rewrite everything at once.
- Include the install line and the docs link. Hashtags: up to three on LinkedIn, none on X.
- Let the video carry the demo — if the clip shows the tree and the counts, the copy does not need to.

## Pitfalls

- **Artifacts are immutable.** A re-cut needs a new filename under `/opt/cursor/artifacts/`; overwriting silently keeps the old upload.
- **VHS exits 0 when a recording fails** (a `Wait` timing out). `capture.mjs` checks the clip and stderr instead; keep that check.
- **`Wait+Screen` does not see past the first screenful** in VHS 0.12; wait on the prompt line instead.
- **A rehearsal scaffold resolves the published packages.** Until the release is on pub.dev, `--rehearse-packages` points them at a checkout; the take never uses it.
- **Do not hand-edit `branding/`** to make a card fit. One Terra stratum, no gradient, `TerraDart` in CamelCase.
- **Remotion's licence** is free for individuals and teams of up to three; a larger organisation operating it needs a company licence.

## Related

- [`terradart-ship-wave`](../terradart-ship-wave/SKILL.md) — the release the clip announces
- [`terradart-agent-verify`](../terradart-agent-verify/SKILL.md) — shared done gate
