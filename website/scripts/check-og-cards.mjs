// Fails unless the landing page keeps the brand card and every other page
// has an og:image of its own: a file in dist/og/ whose name carries the
// first 8 hex digits of its SHA-256, at 1200x630.
import { createHash } from "node:crypto";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";
import { SITE, ogImageFile, ogImageUrl } from "../src/lib/og-image.mjs";
import { builtPages, dist, meta } from "./built-pages.mjs";

const cardUrl = new RegExp(`^${SITE.replaceAll(".", "\\.")}/(og/[a-z0-9-]+-([0-9a-f]{8})\\.png)$`);

function pngProblem(file) {
  const path = join(dist, file);
  if (!existsSync(path)) return `dist/${file} is missing`;
  const png = readFileSync(path);
  if (png.toString("latin1", 12, 16) !== "IHDR") return `dist/${file} is not a PNG`;
  const [width, height] = [png.readUInt32BE(16), png.readUInt32BE(20)];
  if (width !== 1200 || height !== 630) return `dist/${file} is ${width}x${height}, not 1200x630`;
  return null;
}

const failures = [];
const pagesByImage = new Map();
let cards = 0;
for (const { page, html } of builtPages("check-og-cards")) {
  const image = meta(html, "property", "og:image") ?? "";
  if (page === "index.html") {
    if (image !== ogImageUrl) failures.push(`${page}: og:image is ${image}, not the brand card ${ogImageUrl}`);
    const problem = pngProblem(ogImageFile);
    if (problem) failures.push(`${page}: ${problem}`);
    continue;
  }
  const match = image.match(cardUrl);
  if (!match) {
    failures.push(`${page}: og:image ${image || "(missing)"} is not a hashed card under ${SITE}/og/`);
    continue;
  }
  const [, file, hash] = match;
  if (pagesByImage.has(image)) failures.push(`${page}: shares og:image ${image} with ${pagesByImage.get(image)}`);
  pagesByImage.set(image, page);
  cards++;
  const problem = pngProblem(file);
  if (problem) {
    failures.push(`${page}: ${problem}`);
    continue;
  }
  const digest = createHash("sha256").update(readFileSync(join(dist, file))).digest("hex");
  if (!digest.startsWith(hash)) failures.push(`${page}: dist/${file} hashes to ${digest.slice(0, 8)}, not ${hash}`);
}

if (failures.length) {
  console.error(`check-og-cards: ${failures.length} problems:`);
  for (const line of failures) console.error(`  ${line}`);
  process.exit(1);
}
console.log(`check-og-cards: the landing page keeps ${ogImageUrl}; ${cards} other pages each have their own 1200x630 card under ${SITE}/og/, named by content hash.`);
