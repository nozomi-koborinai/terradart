import { cpSync, existsSync, mkdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = dirname(fileURLToPath(import.meta.url));
const websiteDir = join(root, "..");
const brandingDir = join(websiteDir, "..", "branding");
const publicDir = join(websiteDir, "public");

mkdirSync(publicDir, { recursive: true });

const copies = [
  ["svg/app-icon.svg", "favicon.svg"],
  ["png/og-card.png", "og.png"],
  ["favicon/favicon-180.png", "apple-touch-icon.png"],
  ["favicon/favicon-512.png", "icon-512.png"],
  ["favicon/favicon.ico", "favicon.ico"],
  ["favicon/favicon-32.png", "favicon-32.png"],
  ["favicon/favicon-16.png", "favicon-16.png"],
];

for (const [from, to] of copies) {
  const src = join(brandingDir, from);
  if (!existsSync(src)) {
    console.warn(`sync-branding: skip missing ${from}`);
    continue;
  }
  cpSync(src, join(publicDir, to));
}

console.log("sync-branding: copied assets to website/public/");
