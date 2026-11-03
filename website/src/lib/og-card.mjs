// Renders a 1200x630 social card for one page. Text is outlined to paths
// with opentype.js, so the PNG bytes (and the hash in its URL) do not depend
// on the fonts installed on the build machine.
import { readFileSync } from "node:fs";
import { createRequire } from "node:module";
import opentype from "opentype.js";
import sharp from "sharp";

const require = createRequire(import.meta.url);
const font = (file) => {
  const bytes = readFileSync(require.resolve(file));
  return opentype.parse(bytes.buffer.slice(bytes.byteOffset, bytes.byteOffset + bytes.byteLength));
};
const inter = font("@fontsource/inter/files/inter-latin-400-normal.woff");
const mono = font("@fontsource/jetbrains-mono/files/jetbrains-mono-latin-400-normal.woff");

const W = 1200;
const H = 630;
const X = 96;
const MAX_WIDTH = W - 2 * X;

const ink = { paper: "#F6F3EC", ground: "#0B0D12", muted: "#9AA0AE", cyan: "#4DD0FE", blue: "#0F8FD8", indigo: "#3B4A82" };

const text = (f, s, x, y, size, fill) =>
  `<path fill="${fill}" d="${f.getPath(s, x, y, size).toPathData(2)}"/>`;

function wrap(s, size, maxLines) {
  const lines = [];
  for (const word of s.split(/\s+/)) {
    const last = lines.at(-1);
    if (last && inter.getAdvanceWidth(`${last} ${word}`, size) <= MAX_WIDTH) lines[lines.length - 1] = `${last} ${word}`;
    else lines.push(word);
  }
  return lines.length <= maxLines && lines.every((l) => inter.getAdvanceWidth(l, size) <= MAX_WIDTH) ? lines : null;
}

function titleLines(title) {
  for (const size of [88, 76, 64, 56]) {
    const lines = wrap(title, size, 3);
    if (lines) return { size, lines };
  }
  throw new Error(`og-card: title does not fit on the card: ${title}`);
}

/** @param {{ title: string, kicker?: string, path: string }} page */
export function ogCardSvg({ title, kicker, path }) {
  const { size, lines } = titleLines(title);
  const lineHeight = size * 1.12;
  const titleBottom = 470;
  const firstBaseline = titleBottom - lineHeight * (lines.length - 1);
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${W} ${H}" width="${W}" height="${H}">
<rect width="${W}" height="${H}" fill="${ink.ground}"/>
<g transform="translate(${X} 64) scale(0.25) translate(-32 -48)">
<polygon points="32,48 224,48 180,152 76,152" fill="${ink.cyan}"/>
<polygon points="76,152 180,152 128,232" fill="${ink.blue}"/>
<rect x="60" y="92" width="136" height="14" fill="${ink.indigo}"/>
</g>
${text(inter, "TerraDart", X + 64, 108, 40, ink.paper)}
${kicker ? text(mono, kicker.toUpperCase(), X, firstBaseline - size - 28, 26, ink.cyan) : ""}
${lines.map((line, i) => text(inter, line, X - size * 0.04, firstBaseline + i * lineHeight, size, ink.paper)).join("\n")}
<rect x="0" y="520" width="${W}" height="14" fill="${ink.indigo}"/>
${text(mono, `terradart.dev${path}`, X, 588, 26, ink.muted)}
</svg>`;
}

/** @param {{ title: string, kicker?: string, path: string }} page */
export const ogCardPng = (page) => sharp(Buffer.from(ogCardSvg(page))).png({ compressionLevel: 9 }).toBuffer();
