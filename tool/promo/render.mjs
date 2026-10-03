#!/usr/bin/env node
// Renders the release clip from what capture.mjs left in public/: the code
// excerpts (highlighted with the site's palette), the still of init's next
// steps, then the clip, the poster and key frames.
//
//   node render.mjs [--stills-only] [--out DIR]
//
// --stills-only  only the poster and the key frames, for a look before the
//                full render
// --out DIR      also copy the delivery, the poster and the key frames to DIR
//
// Needs ffmpeg and tesseract: every terminal and app frame is read back and
// the render fails on output the clip must not show (storyboard `ocr`).
//
// The deliveries are 1080p30 H.264 High@4.1 with a silent AAC track, faststart
// and an mp42 brand: the shape iOS Photos saves and X and LinkedIn accept.

import { execFileSync, spawn } from "node:child_process";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { codeToTokens } from "shiki";
import { terradartDark } from "../../website/src/lib/syntax-themes.mjs";
import { viewport } from "./src/camera.mjs";

const here = path.dirname(fileURLToPath(import.meta.url));
const root = path.resolve(here, "../..");
const pub = path.join(here, "public");
const outDir = path.join(here, "out");
const args = process.argv.slice(2);
const option = (name) => {
  const i = args.indexOf(name);
  return i >= 0 ? args[i + 1] : undefined;
};
const board = JSON.parse(fs.readFileSync(path.join(here, "storyboard.json"), "utf8"));

const die = (message) => {
  console.error(`render.mjs: ${message}`);
  process.exit(64);
};
// One thread each: tesseract's default oversubscribes the cores when several run at once.
const ocrEnv = { ...process.env, OMP_THREAD_LIMIT: "1" };
const run = (cmd, argv) => execFileSync(cmd, argv, { cwd: here, stdio: "inherit" });

for (const file of ["clips/01-init.mp4", "clips/02-plan.mp4", "files/stack.dart.txt", "files/main.dart.txt", "site.png"]) {
  if (!fs.existsSync(path.join(pub, file))) die(`public/${file} is missing; run capture.mjs first`);
}

fs.mkdirSync(path.join(pub, "brand"), { recursive: true });
fs.copyFileSync(path.join(root, "branding/svg/logo-horizontal-dark.svg"), path.join(pub, "brand/logo-horizontal-dark.svg"));

// Code excerpts: the real generated files, cut by the storyboard's rules and
// highlighted with the theme the landing page uses.
const excerpt = async (spec) => {
  const source = fs.readFileSync(path.join(pub, spec.file), "utf8").replace(/\n+$/, "");
  const { tokens } = await codeToTokens(source, { lang: "dart", theme: terradartDark });
  const raw = source.split("\n");
  let picked = [];
  if (spec.pick) {
    let cursor = 0;
    for (const step of spec.pick) {
      if (step.fold) {
        picked.push({ fold: true });
        continue;
      }
      const at = raw.findIndex((line, i) => i >= cursor && (step.exact ? line === step.match : line.includes(step.match)));
      if (at < 0) die(`${spec.file}: no line ${JSON.stringify(step.match)}`);
      for (let i = at; i < at + (step.count ?? 1); i++) picked.push({ index: i });
      cursor = at + (step.count ?? 1);
    }
  } else {
    const start = raw.findIndex((line) => line.includes(spec.from));
    if (start < 0) die(`${spec.file}: no line ${JSON.stringify(spec.from)}`);
    for (let i = start; i < raw.length; i++) {
      if (spec.dropComments && raw[i].trim().startsWith("//")) continue;
      if (raw[i].trim() === "" && (picked.length === 0 || raw[picked.at(-1).index].trim() === "")) continue;
      picked.push({ index: i });
    }
  }
  let focus = 0;
  const lines = picked.map((p) => {
    if (p.fold) return { tokens: [], fold: true };
    const line = {
      tokens: tokens[p.index].map((t) => ({
        content: t.content,
        color: t.color ?? terradartDark.fg,
        ...(t.fontStyle & 1 ? { italic: true } : {}),
        ...(t.fontStyle & 2 ? { bold: true } : {}),
      })),
    };
    const pattern = spec.focus?.[focus];
    if (pattern && raw[p.index].includes(pattern)) line.focus = focus++;
    return line;
  });
  if (spec.focus && focus !== spec.focus.length) die(`${spec.file}: focus ${JSON.stringify(spec.focus[focus])} matched no picked line`);
  return { title: spec.title, lines };
};

const versions = JSON.parse(fs.readFileSync(path.join(pub, "files/versions.json"), "utf8"));
const data = { terradart: versions.terradart, code: {}, camera: {}, background: terradartDark.colors["editor.background"] };
for (const [name, spec] of Object.entries(board.code)) data.code[name] = await excerpt(spec);

// Where the clips have text, read from their frames at half size: per pixel
// row, the leftmost and rightmost ink over every sampled frame, leaving out
// the rows a mask paints over at that time.
const HALF = { w: board.terminal.width / 2, h: board.terminal.height / 2 };
const inkOf = (clip, times, bandAt = () => undefined) => {
  const left = new Float64Array(HALF.h).fill(Infinity);
  const right = new Float64Array(HALF.h).fill(-Infinity);
  for (const t of times) {
    const frame = execFileSync("ffmpeg", [
      "-v", "error", "-ss", t.toFixed(3), "-i", path.join(pub, clip), "-frames:v", "1",
      "-vf", `scale=${HALF.w}:${HALF.h}:flags=area,format=gray`, "-f", "rawvideo", "-",
    ], { maxBuffer: HALF.w * HALF.h * 2 });
    const bg = frame[4 * HALF.w + 4];
    const band = bandAt(t);
    for (let y = 0; y < HALF.h; y++) {
      if (band && (y < band.y0 * HALF.h || y > band.y1 * HALF.h)) continue;
      const row = y * HALF.w;
      for (let x = 0; x < HALF.w; x++) {
        if (Math.abs(frame[row + x] - bg) > 30) {
          left[y] = Math.min(left[y], x);
          break;
        }
      }
      for (let x = HALF.w - 1; x >= 0; x--) {
        if (Math.abs(frame[row + x] - bg) > 30) {
          right[y] = Math.max(right[y], x);
          break;
        }
      }
    }
  }
  return { left, right };
};

// Rows of text are runs of inked pixel rows; a run a few pixels tall is a
// horizontal rule, which reads the same cut short.
const ruleRows = (ink) => {
  const rule = new Uint8Array(HALF.h);
  for (let y = 0; y < HALF.h; ) {
    if (ink.right[y] < 0) {
      y++;
      continue;
    }
    let end = y;
    while (end < HALF.h && ink.right[end] >= 0) end++;
    if (end - y <= 3) rule.fill(1, y, end);
    y = end;
  }
  return rule;
};

// A box (fractions of the clip) cuts no line when no visible row of text has
// ink past its sides and no row of text straddles its top or bottom edge.
const cutBy = (ink, box) => {
  const rule = (ink.rule ??= ruleRows(ink));
  const x0 = box.x * HALF.w;
  const x1 = (box.x + box.w) * HALF.w;
  const y0 = box.y * HALF.h;
  const y1 = (box.y + box.h) * HALF.h;
  for (let y = Math.ceil(y0); y < Math.min(HALF.h, Math.floor(y1)); y++) {
    if (rule[y]) continue;
    if (ink.right[y] > x1 - 2 || (box.x > 0 && ink.left[y] < x0 + 2)) return "a line runs past the side";
  }
  for (const edge of [y0, y1]) {
    if (edge < 1 || edge > HALF.h - 1) continue;
    for (let y = Math.floor(edge) - 2; y <= Math.ceil(edge) + 2; y++) {
      if (y >= 0 && y < HALF.h && ink.right[y] >= 0 && !rule[y]) return "the edge cuts through a row of text";
    }
  }
  return null;
};

// The lines tesseract reads in a clip frame, top and bottom as fractions.
const linesAt = (clip, t) => {
  const png = path.join(fs.mkdtempSync("/tmp/td-ocr-"), "frame.png");
  execFileSync("ffmpeg", ["-v", "error", "-y", "-ss", t.toFixed(3), "-i", path.join(pub, clip), "-frames:v", "1", "-vf", "format=gray,negate", png]);
  const tsv = execFileSync("tesseract", [png, "-", "--psm", "6", "tsv"], { encoding: "utf8", stdio: ["ignore", "pipe", "ignore"], env: ocrEnv });
  const lines = new Map();
  for (const row of tsv.split("\n").slice(1)) {
    const [level, , block, par, line, , , top, , height, , text] = row.split("\t");
    if (level !== "5" || !text?.trim()) continue;
    const key = `${block}.${par}.${line}`;
    const l = lines.get(key) ?? { words: [], top: Infinity, bottom: -Infinity };
    l.words.push(text);
    l.top = Math.min(l.top, +top / board.terminal.height);
    l.bottom = Math.max(l.bottom, (+top + +height) / board.terminal.height);
    lines.set(key, l);
  }
  return [...lines.values()].map((l) => ({ text: l.words.join(" "), top: l.top, bottom: l.bottom }));
};

// A mask keeps one band of a terminal clip on screen for a span of clip
// time, from the line `first` matches (else the top) through the line `last`
// matches (else the bottom), and paints the rest with the terminal
// background: the way to stop on a line when the next ones land in the same
// frame. Its edges sit midway between the kept rows and their neighbours.
// The composition lays each clip over the palette's background with
// `lighten`, so the decoded background and the paint are the same colour.
const resolveMask = (clip, mask) => {
  const where = `mask ${clip} ${mask.from}-${mask.to}s`;
  const ink = inkOf(clip, [mask.from]);
  const runs = [];
  for (let y = 0; y < HALF.h; y++) {
    if (ink.right[y] < 0) continue;
    if (runs.length && runs.at(-1).end === y) runs.at(-1).end = y + 1;
    else runs.push({ start: y, end: y + 1 });
  }
  const runOf = (pattern, lines) => {
    const hit = lines.find((l) => new RegExp(pattern).test(l.text));
    if (!hit) die(`${where}: no line matches ${JSON.stringify(pattern)}`);
    const mid = ((hit.top + hit.bottom) / 2) * HALF.h;
    const i = runs.findIndex((r) => mid >= r.start - 2 && mid <= r.end + 2);
    if (i < 0) die(`${where}: ${JSON.stringify(pattern)} sits on no row of text`);
    return i;
  };
  const lines = linesAt(clip, mask.from);
  let y0 = 0;
  let y1 = 1;
  if (mask.first) {
    const i = runOf(mask.first, lines);
    if (i > 0) y0 = (runs[i - 1].end + runs[i].start) / 2 / HALF.h;
  }
  if (mask.last) {
    const i = runOf(mask.last, lines);
    if (i < runs.length - 1) y1 = (runs[i].end + runs[i + 1].start) / 2 / HALF.h;
  }
  if (mask.to !== mask.from) {
    const later = linesAt(clip, mask.to);
    for (const pattern of [mask.first, mask.last].filter(Boolean)) {
      const [a, b] = [lines, later].map((ls) => ls.find((l) => new RegExp(pattern).test(l.text)));
      if (!b || Math.abs(a.top - b.top) > 0.005) die(`${where}: ${JSON.stringify(pattern)} moves before the mask ends`);
    }
  }
  return { from: mask.from, to: mask.to, y0: Math.round(y0 * 10000) / 10000, y1: Math.round(y1 * 10000) / 10000 };
};

data.masks = {};
for (const scene of board.scenes.filter((s) => s.kind === "terminal")) {
  data.masks[scene.id] = (scene.masks ?? []).map((m) => resolveMask(scene.clip, m));
}

// Every still stretch of a terminal camera is settled on the frames it shows:
// as close as the storyboard asks but never past a line, with its edges in the
// gaps between rows. The composition plays the settled keyframes.
const SAMPLE = 0.1;
for (const scene of board.scenes.filter((s) => s.kind === "terminal")) {
  const shown = (t) => scene.segments.some((s) => (s.hold !== undefined ? Math.abs(s.hold - t) < SAMPLE / 2 : t >= s.from && t <= s.to));
  const bandAt = (t) => data.masks[scene.id].find((m) => t >= m.from - 1e-6 && t <= m.to + 1e-6);
  const keys = scene.camera.map((k) => ({ ...k }));
  for (let i = 0; i < keys.length - 1; i++) {
    const [a, b] = [keys[i], keys[i + 1]];
    if (a.s <= 1 || a.s !== b.s || a.x !== b.x || a.y !== b.y) continue;
    const times = [];
    for (let t = a.at; t <= b.at + 1e-6; t += SAMPLE) if (shown(t)) times.push(t);
    for (const s of scene.segments) if (s.hold !== undefined && s.hold >= a.at && s.hold <= b.at) times.push(s.hold);
    if (times.length === 0) continue;
    const ink = inkOf(scene.clip, times, bandAt);
    let settled = null;
    for (let s = a.s; s >= 1 && !settled; s = Math.round((s - 0.01) * 100) / 100) {
      for (let d = 0; d <= 0.2 && !settled; d += 0.002) {
        for (const y of d === 0 ? [a.y] : [a.y - d, a.y + d]) {
          if (y < 0 || y > 1) continue;
          if (!cutBy(ink, viewport({ at: 0, s, x: a.x, y }))) {
            settled = { s, y: Math.round(y * 1000) / 1000 };
            break;
          }
        }
      }
    }
    if (!settled || settled.s < 1.1) settled = { s: 1, y: a.y };
    if (settled.s !== a.s || settled.y !== a.y) {
      console.log(`camera ${scene.id} ${a.at}-${b.at}s: s ${a.s} -> ${settled.s}, y ${a.y} -> ${settled.y}`);
    }
    for (const k of [a, b]) Object.assign(k, settled);
  }
  data.camera[scene.id] = keys;
}
// The init clip's last screen, cut to its next steps, for the Flutter beat,
// with the band behind the line `next.highlight` names.
const flutter = board.scenes.find((s) => s.kind === "flutter");
if (flutter) {
  const cut = cutBy(inkOf(flutter.next.clip, [flutter.next.at]), flutter.next.crop);
  if (cut) die(`flutter: next.crop ${JSON.stringify(flutter.next.crop)} cuts the init clip at ${flutter.next.at}s: ${cut}`);
  const { clip, at, crop, highlight } = flutter.next;
  const line = linesAt(clip, at).find((l) => l.text.includes(highlight));
  if (!line || line.top < crop.y || line.bottom > crop.y + crop.h) die(`flutter: no line ${JSON.stringify(highlight)} inside next.crop`);
  const pad = (line.bottom - line.top) * 0.3;
  data.highlight = { top: (line.top - pad - crop.y) / crop.h, height: (line.bottom - line.top + 2 * pad) / crop.h };
  fs.mkdirSync(path.join(pub, "stills"), { recursive: true });
  run("ffmpeg", [
    "-v", "error", "-y", "-ss", String(at), "-i", path.join(pub, clip), "-frames:v", "1",
    "-vf", `crop=iw*${crop.w}:ih*${crop.h}:iw*${crop.x}:ih*${crop.y}`,
    path.join(pub, "stills/next-steps.png"),
  ]);
}
fs.writeFileSync(path.join(pub, "files/data.json"), JSON.stringify(data));

// Absolute frames: each scene overlaps the one before it by the crossfade.
const fps = board.fps;
const fade = Math.round(board.crossfade * fps);
const starts = {};
let start = 0;
for (const scene of board.scenes) {
  starts[scene.id] = start;
  const seconds = scene.segments
    ? scene.segments.reduce((sum, s) => sum + (s.hold !== undefined ? s.seconds : s.to - s.from), 0)
    : scene.duration;
  start += Math.round(seconds * fps) - fade;
}
const frameOf = ({ scene, at }) => starts[scene] + Math.round(at * fps);

fs.mkdirSync(outDir, { recursive: true });
const remotion = path.join(here, "node_modules/.bin/remotion");
const outputs = [];

// Reads frames back with tesseract and fails on a line the storyboard denies
// (an error, a warning, a caution) unless it is one the clip shows on purpose.
const deny = new RegExp(board.ocr.deny, "i");
const allow = board.ocr.allow.map((a) => new RegExp(a, "i"));
const ocr = (png) =>
  new Promise((resolve, reject) => {
    const p = spawn("tesseract", [png, "-", "--psm", "6"], { stdio: ["ignore", "pipe", "ignore"], env: ocrEnv });
    let text = "";
    p.stdout.on("data", (d) => (text += d));
    p.on("error", () => reject(new Error("tesseract is not on PATH")));
    p.on("close", () => resolve(text));
  });
const denied = async (pngs) => {
  const found = [];
  for (let i = 0; i < pngs.length; i += 8) {
    const texts = await Promise.all(pngs.slice(i, i + 8).map(ocr));
    texts.forEach((text, j) => {
      for (const line of text.split("\n")) {
        if (deny.test(line) && !allow.some((a) => a.test(line))) found.push(`${path.basename(pngs[i + j])}: ${line.trim()}`);
      }
    });
  }
  return found;
};
const readable = (src, dir, filter) => {
  fs.rmSync(dir, { recursive: true, force: true });
  fs.mkdirSync(dir, { recursive: true });
  run("ffmpeg", ["-v", "error", "-y", "-i", src, "-vf", `${filter}format=gray,negate`, path.join(dir, "%04d.png")]);
  return fs.readdirSync(dir).map((f) => path.join(dir, f));
};

const poster = path.join(outDir, `terradart-v${board.release}-poster.png`);
run(remotion, ["still", "src/index.ts", "promo", poster, `--frame=${frameOf(board.poster)}`]);
outputs.push(poster);
const stills = [];
for (const still of board.stills) {
  const file = path.join(outDir, `keyframe-${still.name}.png`);
  run(remotion, ["still", "src/index.ts", "promo", file, `--frame=${frameOf(still)}`]);
  stills.push(file);
}
outputs.push(...stills);
const read = [];
for (const [i, file] of stills.entries()) read.push(...readable(file, path.join(outDir, "ocr", `still-${i}`), ""));
let blocked = await denied(read);
if (blocked.length) die(`the key frames show output the clip must not:\n  ${blocked.join("\n  ")}`);

if (!args.includes("--stills-only")) {
  {
    const master = path.join(outDir, "master.mp4");
    run(remotion, ["render", "src/index.ts", "promo", master, "--codec=h264", "--crf=12"]);
    const shown = board.scenes
      .filter((s) => s.kind === "terminal" || s.kind === "flutter")
      .map((s) => `between(n,${starts[s.id]},${starts[s.id] + Math.round((s.segments ? s.segments.reduce((sum, g) => sum + (g.hold !== undefined ? g.seconds : g.to - g.from), 0) : s.duration) * fps)})`);
    const frames = readable(master, path.join(outDir, "ocr", "master"), `select='(${shown.join("+")})*not(mod(n,10))',setpts=N/TB,`);
    blocked = await denied(frames);
    if (blocked.length) die(`the clip shows output it must not (ocr frame: line):\n  ${blocked.join("\n  ")}`);
    const delivery = path.join(outDir, `terradart-v${board.release}.mp4`);
    run("ffmpeg", [
      "-v", "error", "-y", "-i", master,
      "-f", "lavfi", "-i", "anullsrc=channel_layout=stereo:sample_rate=48000",
      "-map", "0:v", "-map", "1:a",
      "-vf", "fps=30,format=yuv420p",
      "-c:v", "libx264", "-profile:v", "high", "-level", "4.1", "-preset", "slow", "-crf", "18",
      "-c:a", "aac", "-b:a", "128k", "-ac", "2", "-ar", "48000", "-shortest",
      "-movflags", "+faststart", "-brand", "mp42", "-map_metadata", "-1",
      delivery,
    ]);
    outputs.push(delivery);
  }
}

const copyTo = option("--out");
if (copyTo) {
  fs.mkdirSync(copyTo, { recursive: true });
  for (const file of outputs) fs.copyFileSync(file, path.join(copyTo, path.basename(file)));
}
for (const file of outputs) console.log(`>> ${path.relative(here, file)}`);
console.log("render: OK");
