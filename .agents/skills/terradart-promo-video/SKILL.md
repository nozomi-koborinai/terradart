---
name: terradart-promo-video
description: Record and post-produce a TerraDart release demo clip (3-beat terminal recording, TerraDart end card, phone-safe delivery encode) and draft the X / LinkedIn copy. Use when announcing a release with a video.
---
# TerraDart promo video

Policy lives in [`AGENTS.md`](../../../AGENTS.md). This skill is the repeatable workflow for a release announcement clip. The deterministic ffmpeg work belongs to [`tool/promo_video.sh`](../../../tool/promo_video.sh); what stays here is the part a script cannot decide.

## Contents

- [When to use](#when-to-use)
- [What a clip may claim](#what-a-clip-may-claim)
- [Workflow](#workflow)
- [Recording the beats](#recording-the-beats)
- [Post-production](#post-production)
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

**Task progress:**

- [ ] 1. **Pick the story** — one capability, three beats (below). Write the beats down before recording.
- [ ] 2. **Stage a demo source** you may show. A coverage fixture is a good one; copy it out of the repo first so the recording does not show repo paths:
      ```bash
      cp -r packages/terradart_coverage/test/fixtures/config_tree /tmp/promo-demo/infra
      ```
- [ ] 3. **Set up the terminal** — see [Recording the beats](#recording-the-beats).
- [ ] 4. **Record** with `RecordScreen` + the `computerUse` subagent. One take per story; do not narrate setup.
- [ ] 5. **Find the zoom timings** off real frames, not guesses:
      ```bash
      tool/promo_video.sh --in RAW.mp4 --dump-frames /tmp/promo-frames
      ```
      Frames are named by source seconds (`005.25.jpg`), so reading one gives both the time and the pixel the command sits at.
- [ ] 6. **Cut it** — see [Post-production](#post-production).
- [ ] 7. **Review the result** with the `videoReview` subagent before showing it. Ask it explicitly whether the Cursor mark is gone, whether the command is fully readable at peak zoom, and whether the end card is correct.
- [ ] 8. **Write a delivery encode** and draft the copy ([below](#writing-the-copy)).
- [ ] 9. The maintainer posts. Agents do not post to X or LinkedIn.

## Recording the beats

Three beats, nothing else. The clip is 15–25s; every extra command costs a viewer.

1. **The input** — what the user already has (`tree -L 2 infra`).
2. **One command** — the thing being announced, typed out.
3. **The result** — the output that proves it (`head` of a generated file).

Do **not** record `clear`, `--version`, `ls`, `dart pub get`, or "let me check that it worked" steps. They read as hesitation and they pushed an earlier cut from 20s to nearly two minutes. Put the version in the window title instead, where it is legible for the whole clip.

Terminal setup that reads well at tweet size:

| Setting | Value | Why |
|---|---|---|
| Window | **not** fullscreen, ~60% of screen | wallpaper frames the terminal; fullscreen reads as a screenshot |
| Font | monospace ~17pt | smaller is unreadable inline on a timeline; much larger fits too few columns |
| Background | `#1e1e1e` | sits with the dark end card |
| Title | the command + version (`terradart-migrate 0.28.1`) | on screen for the whole clip, no beat spent on it |
| Prompt | short, no host or long path | a long prompt pushes the command off the zoom |

Keep the command on **one line** — a wrapped command cannot be zoomed into cleanly.

## Post-production

```bash
tool/promo_video.sh \
  --in RAW.mp4 \
  --out /opt/cursor/artifacts/<name>.mp4 \
  --zoom-in 5.15 --zoom-out 11.15 --zoom-focus 490,740 \
  --deliver /opt/cursor/artifacts/<name>_1080p30.mp4
```

The script drops the Cursor outro (reading `cursor_brand_tag_duration_ms` off the input rather than assuming 2s), pushes in on the command and back out, appends the TerraDart end card from [`branding/`](../../../branding/), and strips the recorder's metadata.

- `--zoom-focus` is in **source** pixels, measured off a dumped frame. Aim at the command line, not the window centre.
- `--zoom-factor` defaults to `1.70`. Past roughly `2.0` a 1920-wide capture starts clipping the end of a long command — check the peak frame rather than trusting the number.
- `--no-endcard` and `--trim-outro none` exist for clips going somewhere that brands them already.
- Pass `--tagline ''` for the lockup with no strapline.

## Delivery

`--deliver` writes the encode that platforms and phones accept: 1080p30, H.264 High@4.1, a silent AAC track, `faststart`, `mp42` brand.

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
- **This ffmpeg build rejects `t`, `st()` and `ld()` inside `zoompan`,** and `drawtext` has no `letter_spacing`. The script writes the curve over `on` (frame index) for this reason — keep it there.
- **Upscale before `zoompan`.** It samples one still per output frame, so zooming the source directly magnifies pixels. The script feeds it a 2x scale.
- **Do not hand-edit `branding/`** to make a card fit. Colour tokens and the lockup rules are in [`BRAND.md`](../../../branding/BRAND.md); one Terra stratum, no gradient, `TerraDart` in CamelCase.
- **Leave the recording desktop running** after a take. A re-cut usually needs one more beat from the same window, and the terminal geometry is hard to reproduce exactly.

## Related

- [`terradart-ship-wave`](../terradart-ship-wave/SKILL.md) — the release the clip announces
- [`terradart-agent-verify`](../terradart-agent-verify/SKILL.md) — shared done gate
