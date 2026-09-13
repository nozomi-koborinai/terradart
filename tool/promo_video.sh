#!/usr/bin/env bash
# Post-produce a Cloud Agent screen recording into a TerraDart promo clip:
# drop the Cursor outro, optionally push in on one command, append a TerraDart
# end card, and write a phone/social delivery encode. Maintainer ops — not part
# of any shipped package.
#
# Usage (from repo root):
#   tool/promo_video.sh --in RAW.mp4 --dump-frames /tmp/frames
#   tool/promo_video.sh --in RAW.mp4 --out EDIT.mp4 \
#     --zoom-in 5.15 --zoom-out 11.15 --zoom-focus 490,740 \
#     --deliver DELIVERY.mp4
#
# Editorial judgment (what to record, what a clip may claim) lives in
# .agents/skills/terradart-promo-video/SKILL.md. This script only owns the
# ffmpeg invocations that are deterministic and easy to get wrong.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

readonly LOGO_DEFAULT="$ROOT/branding/png/logo-horizontal-dark-1024.png"
readonly FONT_DEFAULT="/usr/share/fonts/truetype/macos/Inter-Regular.ttf"
# branding/BRAND.md: --paper-dark ground, --paper text.
readonly CARD_BG="0x0B0D12"
readonly CARD_FG="0xF6F3ECC0"

IN=""
OUT=""
DELIVER=""
DUMP_FRAMES=""
LOGO="$LOGO_DEFAULT"
FONT="$FONT_DEFAULT"
TAGLINE="Type-safe IaC for Dart."
CARD_SECONDS="2.2"
ZOOM_IN=""
ZOOM_OUT=""
ZOOM_FOCUS=""
ZOOM_FACTOR="1.70"
ZOOM_RAMP="1.75"
TRIM_OUTRO="auto"
WITH_CARD=1

die() {
  echo "promo_video.sh: $*" >&2
  exit 64
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --in) IN="${2:?--in needs a file}"; shift 2 ;;
    --out) OUT="${2:?--out needs a file}"; shift 2 ;;
    --deliver) DELIVER="${2:?--deliver needs a file}"; shift 2 ;;
    --dump-frames) DUMP_FRAMES="${2:?--dump-frames needs a directory}"; shift 2 ;;
    --logo) LOGO="${2:?--logo needs a file}"; shift 2 ;;
    --font) FONT="${2:?--font needs a file}"; shift 2 ;;
    --tagline) TAGLINE="${2-}"; shift 2 ;;
    --card-seconds) CARD_SECONDS="${2:?--card-seconds needs a number}"; shift 2 ;;
    --zoom-in) ZOOM_IN="${2:?--zoom-in needs seconds}"; shift 2 ;;
    --zoom-out) ZOOM_OUT="${2:?--zoom-out needs seconds}"; shift 2 ;;
    --zoom-focus) ZOOM_FOCUS="${2:?--zoom-focus needs X,Y}"; shift 2 ;;
    --zoom-factor) ZOOM_FACTOR="${2:?--zoom-factor needs a number}"; shift 2 ;;
    --zoom-ramp) ZOOM_RAMP="${2:?--zoom-ramp needs seconds}"; shift 2 ;;
    --trim-outro) TRIM_OUTRO="${2:?--trim-outro needs seconds or auto or none}"; shift 2 ;;
    --no-endcard) WITH_CARD=0; shift ;;
    -h | --help)
      sed -n '2,14p' "$0"
      exit 0
      ;;
    *) die "unknown argument: $1" ;;
  esac
done

command -v ffmpeg >/dev/null 2>&1 || die "ffmpeg not on PATH"
command -v ffprobe >/dev/null 2>&1 || die "ffprobe not on PATH"
[[ -n "$IN" ]] || die "--in is required"
[[ -f "$IN" ]] || die "no such input: $IN"

probe() {
  ffprobe -v error -select_streams v:0 -show_entries "$1" -of default=nw=1:nk=1 "$IN"
}

SRC_W="$(probe stream=width)"
SRC_H="$(probe stream=height)"
SRC_FPS_RAW="$(probe stream=r_frame_rate)"
SRC_FPS="$(awk -v r="$SRC_FPS_RAW" 'BEGIN { split(r, p, "/"); printf "%.6f", p[1] / (p[2] == 0 ? 1 : p[2]) }')"
SRC_DUR="$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$IN")"

# RecordScreen tags the clip it appends its brand mark to; trust the tag over a guess.
OUTRO_MS="$(ffprobe -v error -show_entries format_tags=cursor_brand_tag_duration_ms -of default=nw=1:nk=1 "$IN" 2>/dev/null || true)"

echo ">> source: ${SRC_W}x${SRC_H} @ ${SRC_FPS}fps, ${SRC_DUR}s"

if [[ -n "$DUMP_FRAMES" ]]; then
  mkdir -p "$DUMP_FRAMES"
  # 4fps, named by source timestamp, so zoom timings and focus pixels are
  # picked off real frames instead of guessed.
  ffmpeg -v error -y -i "$IN" -vf fps=4 -frame_pts 1 "$DUMP_FRAMES/t_%04d.jpg"
  for f in "$DUMP_FRAMES"/t_*.jpg; do
    [[ -e "$f" ]] || break
    n="${f##*/t_}"
    n="${n%.jpg}"
    mv "$f" "$DUMP_FRAMES/$(awk -v n="$n" 'BEGIN { printf "%06.2f", n / 4 }').jpg"
  done
  echo ">> dumped 4fps frames (named by source seconds) to $DUMP_FRAMES"
  [[ -n "$OUT" ]] || { echo "promo_video: OK"; exit 0; }
fi

[[ -n "$OUT" ]] || die "--out is required unless only --dump-frames is given"

case "$TRIM_OUTRO" in
  auto) TRIM_S="$(awk -v ms="${OUTRO_MS:-0}" 'BEGIN { printf "%.3f", ms / 1000 }')" ;;
  none) TRIM_S="0.000" ;;
  *) TRIM_S="$(awk -v s="$TRIM_OUTRO" 'BEGIN { printf "%.3f", s }')" ;;
esac

BODY_END="$(awk -v d="$SRC_DUR" -v t="$TRIM_S" 'BEGIN { printf "%.3f", d - t }')"
awk -v e="$BODY_END" 'BEGIN { exit (e > 0.5) ? 0 : 1 }' || die "trimming ${TRIM_S}s leaves nothing of a ${SRC_DUR}s clip"

if awk -v t="$TRIM_S" 'BEGIN { exit (t > 0) ? 0 : 1 }'; then
  echo ">> trimming ${TRIM_S}s of Cursor outro (body ends at ${BODY_END}s)"
elif [[ "$TRIM_OUTRO" == "auto" ]]; then
  echo ">> no outro trim: input carries no cursor_brand_tag_duration_ms"
else
  echo ">> no outro trim: --trim-outro $TRIM_OUTRO"
fi

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

# zoompan samples a still per output frame, so feeding it a 2x upscale keeps
# text crisp at peak zoom instead of magnifying source pixels.
ZOOM_W=$((SRC_W * 2))
ZOOM_H=$((SRC_H * 2))

if [[ -n "$ZOOM_IN" || -n "$ZOOM_OUT" || -n "$ZOOM_FOCUS" ]]; then
  [[ -n "$ZOOM_IN" && -n "$ZOOM_OUT" && -n "$ZOOM_FOCUS" ]] ||
    die "--zoom-in, --zoom-out and --zoom-focus must be given together"
  [[ "$ZOOM_FOCUS" == *,* ]] || die "--zoom-focus wants X,Y in source pixels"

  FOCUS_X="${ZOOM_FOCUS%%,*}"
  FOCUS_Y="${ZOOM_FOCUS##*,}"
  # Focus is authored in source pixels (measurable off a dumped frame) but
  # zoompan reads x/y in its own input space, which is the 2x upscale.
  ZX=$((FOCUS_X * 2))
  ZY=$((FOCUS_Y * 2))

  read -r IN_F OUT_F RAMP_F DELTA < <(awk \
    -v zi="$ZOOM_IN" -v zo="$ZOOM_OUT" -v rp="$ZOOM_RAMP" \
    -v fps="$SRC_FPS" -v zf="$ZOOM_FACTOR" \
    'BEGIN { printf "%d %d %d %.4f\n", zi * fps, zo * fps, (rp * fps < 1 ? 1 : rp * fps), zf - 1 }')

  # Ramp in from IN_F, hold, ramp back out from OUT_F. zoompan in this ffmpeg
  # build rejects `t`, `st()` and `ld()`, so the curve is written over `on`.
  ZOOM_CHAIN="scale=${ZOOM_W}:${ZOOM_H}:flags=lanczos,zoompan=z='1+${DELTA}*min(1\\,max(0\\,(on-${IN_F})/${RAMP_F}))*max(0\\,1-min(1\\,max(0\\,(on-${OUT_F})/${RAMP_F})))':x='clip(${ZX}-iw/zoom/2\\,0\\,iw-iw/zoom)':y='clip(${ZY}-ih/zoom/2\\,0\\,ih-ih/zoom)':d=1:s=${SRC_W}x${SRC_H}:fps=${SRC_FPS}"
  echo ">> zoom: ${ZOOM_FACTOR}x on source (${FOCUS_X},${FOCUS_Y}), in at ${ZOOM_IN}s, out at ${ZOOM_OUT}s, ${ZOOM_RAMP}s ramp"
else
  ZOOM_CHAIN="null"
  echo ">> no zoom"
fi

if [[ "$WITH_CARD" == 1 ]]; then
  [[ -f "$LOGO" ]] || die "no logo at $LOGO"
  if [[ -n "$TAGLINE" ]]; then
    [[ -f "$FONT" ]] || die "no font at $FONT (pass --font, or --tagline '' to drop the text)"
  fi

  CARD="$WORK/endcard.png"
  CARD_LOGO_W=$((SRC_W * 46 / 100))
  CARD_FILTER="[1:v]scale=${CARD_LOGO_W}:-1:flags=lanczos[logo];[0:v][logo]overlay=(W-w)/2:(H-h)/2-36:format=auto[bg]"
  if [[ -n "$TAGLINE" ]]; then
    CARD_FILTER="${CARD_FILTER};[bg]drawtext=fontfile=${FONT}:text='${TAGLINE}':fontsize=34:fontcolor=${CARD_FG}:x=(w-text_w)/2:y=(h/2)+148"
  else
    CARD_FILTER="${CARD_FILTER};[bg]null"
  fi

  ffmpeg -v error -y \
    -f lavfi -i "color=c=${CARD_BG}:s=${SRC_W}x${SRC_H}:d=1:r=1" \
    -i "$LOGO" \
    -filter_complex "$CARD_FILTER" \
    -frames:v 1 -update 1 "$CARD"

  cat >"$WORK/edit.filter" <<FILTER
[0:v]trim=start=0:end=${BODY_END},setpts=PTS-STARTPTS,${ZOOM_CHAIN},fade=t=out:st=$(awk -v e="$BODY_END" 'BEGIN { printf "%.3f", e - 0.38 }'):d=0.38,format=yuv420p[body];
[1:v]fps=${SRC_FPS},fade=t=in:st=0:d=0.45,format=yuv420p[card];
[body][card]concat=n=2:v=1:a=0[v]
FILTER

  ffmpeg -v error -y \
    -i "$IN" \
    -loop 1 -t "$CARD_SECONDS" -r "$SRC_FPS" -i "$CARD" \
    -filter_complex_script "$WORK/edit.filter" \
    -map '[v]' -an \
    -c:v libx264 -preset medium -crf 18 -pix_fmt yuv420p \
    -movflags +faststart -map_metadata -1 \
    "$OUT"
  echo ">> end card: TerraDart lockup${TAGLINE:+ + \"$TAGLINE\"}, ${CARD_SECONDS}s"
else
  cat >"$WORK/edit.filter" <<FILTER
[0:v]trim=start=0:end=${BODY_END},setpts=PTS-STARTPTS,${ZOOM_CHAIN},format=yuv420p[v]
FILTER

  ffmpeg -v error -y \
    -i "$IN" \
    -filter_complex_script "$WORK/edit.filter" \
    -map '[v]' -an \
    -c:v libx264 -preset medium -crf 18 -pix_fmt yuv420p \
    -movflags +faststart -map_metadata -1 \
    "$OUT"
  echo ">> no end card"
fi

echo ">> wrote $OUT ($(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$OUT")s)"

if [[ -n "$DELIVER" ]]; then
  # iOS Photos silently refuses "Save Video" on the raw recording shape
  # (soundless, 1200-tall, 60fps, H.264 level 5.0). 1080p30 High@4.1 with a
  # silent AAC track, faststart and an mp42 brand is what it accepts, and is
  # also inside X's and LinkedIn's upload envelope.
  ffmpeg -v error -y \
    -i "$OUT" \
    -f lavfi -i anullsrc=channel_layout=stereo:sample_rate=48000 \
    -filter_complex "[0:v]scale=1920:1080:force_original_aspect_ratio=decrease:flags=lanczos,pad=1920:1080:(ow-iw)/2:(oh-ih)/2:black,fps=30,format=yuv420p[v]" \
    -map '[v]' -map 1:a \
    -c:v libx264 -profile:v high -level 4.1 -preset medium -crf 18 \
    -c:a aac -b:a 128k -ac 2 -ar 48000 -shortest \
    -movflags +faststart -brand mp42 -map_metadata -1 \
    "$DELIVER"
  echo ">> wrote $DELIVER (1080p30, High@4.1, silent AAC — iOS Photos / X / LinkedIn safe)"
fi

echo "promo_video: OK"
