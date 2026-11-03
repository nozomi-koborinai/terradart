// Renders a 1200x630 social card for one page. Text is outlined to paths
// with fontkit from the same variable fonts the site ships, so the PNG bytes
// (and the hash in its URL) do not depend on the build machine's fonts.
import { createRequire } from "node:module";
import sharp from "sharp";

const require = createRequire(import.meta.url);
// fontkit's ESM build cannot map characters in these WOFF2 files; its CJS build can.
const fontkit = require("fontkit");
// fontkit's getVariation() loses the cmap of a WOFF2 font, so the card uses
// the default instance and requires it to be the weight asked for.
const font = (file, wght) => {
  const f = fontkit.openSync(require.resolve(file));
  if (f.variationAxes.wght?.default !== wght) throw new Error(`og-card: ${file} default weight is not ${wght}`);
  return f;
};
const inter = font("@fontsource-variable/inter/files/inter-latin-wght-normal.woff2", 400);
const mono = font("@fontsource-variable/jetbrains-mono/files/jetbrains-mono-latin-wght-normal.woff2", 400);

const advance = (f, s, size) => (f.layout(s).advanceWidth * size) / f.unitsPerEm;

const W = 1200;
const H = 630;
const X = 96;
const MAX_WIDTH = W - 2 * X;

const ink = { paper: "#F6F3EC", ground: "#0B0D12", muted: "#9AA0AE", cyan: "#4DD0FE", blue: "#0F8FD8", indigo: "#3B4A82" };

function text(f, s, x, y, size, fill) {
  const { glyphs, positions } = f.layout(s);
  let pen = 0;
  const d = glyphs
    .map((glyph, i) => {
      const { xAdvance, xOffset, yOffset } = positions[i];
      const path = glyph.path.translate(pen + xOffset, yOffset).toSVG();
      pen += xAdvance;
      return path;
    })
    .join("");
  const scale = size / f.unitsPerEm;
  return `<path fill="${fill}" transform="translate(${x} ${y}) scale(${scale} ${-scale})" d="${d}"/>`;
}

function wrap(s, size, maxLines) {
  const lines = [];
  for (const word of s.split(/\s+/)) {
    const last = lines.at(-1);
    if (last && advance(inter, `${last} ${word}`, size) <= MAX_WIDTH) lines[lines.length - 1] = `${last} ${word}`;
    else lines.push(word);
  }
  return lines.length <= maxLines && lines.every((l) => advance(inter, l, size) <= MAX_WIDTH) ? lines : null;
}

// Largest size first; short titles stay on one line at a display size.
const TITLE_SIZES = [
  { size: 128, maxLines: 1 },
  { size: 104, maxLines: 1 },
  { size: 88, maxLines: 2 },
  { size: 76, maxLines: 3 },
  { size: 64, maxLines: 3 },
  { size: 56, maxLines: 3 },
];

function titleLines(title) {
  for (const { size, maxLines } of TITLE_SIZES) {
    const lines = wrap(title, size, maxLines);
    if (lines) return { size, lines };
  }
  throw new Error(`og-card: title does not fit on the card: ${title}`);
}

const MARGIN = 64;
const MARK_HEIGHT = 46;
const CAP = 0.727;
const KICKER_SIZE = 26;
const KICKER_GAP = 32;
const URL_BASELINE = H - MARGIN;
const STRIPE_Y = URL_BASELINE - Math.round(CAP * KICKER_SIZE) - 36 - 14;
const CONTENT_TOP = MARGIN + MARK_HEIGHT;

/** @param {{ title: string, kicker?: string, path: string }} page */
function ogCardSvg({ title, kicker, path }) {
  const { size, lines } = titleLines(title);
  const lineHeight = size * 1.12;
  const kickerHeight = kicker ? CAP * KICKER_SIZE + KICKER_GAP : 0;
  const height = kickerHeight + CAP * size + lineHeight * (lines.length - 1);
  const top = (CONTENT_TOP + STRIPE_Y - height) / 2;
  const firstBaseline = top + kickerHeight + CAP * size;
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${W} ${H}" width="${W}" height="${H}">
<rect width="${W}" height="${H}" fill="${ink.ground}"/>
<g transform="translate(${X} ${MARGIN}) scale(0.25) translate(-32 -48)">
<polygon points="32,48 224,48 180,152 76,152" fill="${ink.cyan}"/>
<polygon points="76,152 180,152 128,232" fill="${ink.blue}"/>
<rect x="60" y="92" width="136" height="14" fill="${ink.indigo}"/>
</g>
${text(inter, "TerraDart", X + 64, MARGIN + 44, 40, ink.paper)}
${kicker ? text(mono, kicker.toUpperCase(), X, top + CAP * KICKER_SIZE, KICKER_SIZE, ink.cyan) : ""}
${lines.map((line, i) => text(inter, line, X - size * 0.04, firstBaseline + i * lineHeight, size, ink.paper)).join("\n")}
<rect x="0" y="${STRIPE_Y}" width="${W}" height="14" fill="${ink.indigo}"/>
${text(mono, `terradart.dev${path}`, X, URL_BASELINE, KICKER_SIZE, ink.muted)}
</svg>`;
}

/** @param {{ title: string, kicker?: string, path: string }} page */
export const ogCardPng = (page) => sharp(Buffer.from(ogCardSvg(page))).png({ compressionLevel: 9 }).toBuffer();
