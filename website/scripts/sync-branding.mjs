import { cpSync, existsSync, mkdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = dirname(fileURLToPath(import.meta.url));
const websiteDir = join(root, "..");
const brandingDir = join(websiteDir, "..", "branding");
const publicDir = join(websiteDir, "public");

mkdirSync(publicDir, { recursive: true });

const copies = [
  ["svg/mark-light.svg", "favicon.svg"],
  ["svg/logo-horizontal-light.svg", "logo-horizontal.svg"],
  ["svg/logo-horizontal-dark.svg", "logo-horizontal-dark.svg"],
  ["png/logo-horizontal-1024.png", "og.png"],
  ["png/mark-light-512.png", "apple-touch-icon.png"],
];

for (const [from, to] of copies) {
  const src = join(brandingDir, from);
  if (!existsSync(src)) {
    console.warn(`sync-branding: skip missing ${from}`);
    continue;
  }
  cpSync(src, join(publicDir, to));
}

const faviconDir = join(brandingDir, "favicon");
if (existsSync(faviconDir)) {
  for (const name of ["favicon.ico", "favicon-32.png", "favicon-16.png"]) {
    const src = join(faviconDir, name);
    if (existsSync(src)) cpSync(src, join(publicDir, name));
  }
}

console.log("sync-branding: copied assets to website/public/");
