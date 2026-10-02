// Renders the raster brand assets from their SVG sources in ../branding/:
// the favicon set and favicon.ico from svg/app-icon.svg, and png/og-card.png
// from svg/og-card.svg. Run by hand after an SVG changes; the PNGs are
// committed so the site build needs no rasterizer.
import { readFileSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import sharp from "sharp";

const brandingDir = join(dirname(fileURLToPath(import.meta.url)), "..", "..", "branding");
const svg = (name) => readFileSync(join(brandingDir, "svg", name));

const png = (source, size, height = size) =>
  sharp(source, { density: 300 }).resize(size, height).png({ compressionLevel: 9 }).toBuffer();

const faviconSizes = [16, 32, 48, 180, 512];
const icons = {};
for (const size of faviconSizes) {
  icons[size] = await png(svg("app-icon.svg"), size);
  writeFileSync(join(brandingDir, "favicon", `favicon-${size}.png`), icons[size]);
}

// ICO with PNG-encoded entries (supported by every current browser).
const icoSizes = [16, 32, 48];
const header = Buffer.alloc(6);
header.writeUInt16LE(0, 0);
header.writeUInt16LE(1, 2);
header.writeUInt16LE(icoSizes.length, 4);
let offset = 6 + 16 * icoSizes.length;
const entries = icoSizes.map((size) => {
  const entry = Buffer.alloc(16);
  entry.writeUInt8(size, 0);
  entry.writeUInt8(size, 1);
  entry.writeUInt16LE(1, 4);
  entry.writeUInt16LE(32, 6);
  entry.writeUInt32LE(icons[size].length, 8);
  entry.writeUInt32LE(offset, 12);
  offset += icons[size].length;
  return entry;
});
writeFileSync(
  join(brandingDir, "favicon", "favicon.ico"),
  Buffer.concat([header, ...entries, ...icoSizes.map((s) => icons[s])]),
);

writeFileSync(join(brandingDir, "png", "og-card.png"), await png(svg("og-card.svg"), 1200, 630));

console.log("render-branding: wrote favicon set, favicon.ico and og-card.png");
