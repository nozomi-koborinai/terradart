// Fails when a built page lacks the social-preview tags link unfurlers read.
// Redirect stubs (meta refresh) are skipped: crawlers follow them first.
import { existsSync, readdirSync, readFileSync } from "node:fs";
import { join, relative } from "node:path";
import { fileURLToPath } from "node:url";
import { SITE, ogImageFile, ogImageUrl } from "../src/lib/og-image.mjs";

const dist = fileURLToPath(new URL("../dist/", import.meta.url));

function* htmlFiles(dir) {
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name);
    if (entry.isDirectory()) yield* htmlFiles(path);
    else if (entry.name.endsWith(".html")) yield path;
  }
}

function meta(html, attr, key) {
  for (const tag of html.match(/<meta\b[^>]*>/gi) ?? []) {
    if (!new RegExp(`\\b${attr}=["']${key}["']`, "i").test(tag)) continue;
    return tag.match(/\bcontent=["']([^"']*)["']/i)?.[1] ?? "";
  }
  return null;
}

if (!existsSync(dist)) {
  console.error("check-og: dist/ not found — run `astro build` first.");
  process.exit(1);
}

const failures = [];
for (const file of [ogImageFile, "og.png"]) {
  if (!existsSync(join(dist, file))) failures.push(`dist/${file} is missing`);
}
let checked = 0;
for (const file of htmlFiles(dist)) {
  const html = readFileSync(file, "utf8");
  if (/<meta\b[^>]*http-equiv=["']refresh["']/i.test(html)) continue;
  checked++;
  const page = relative(dist, file);
  const problems = [];
  const ogImage = meta(html, "property", "og:image");
  const twitterImage = meta(html, "name", "twitter:image");
  if (ogImage !== ogImageUrl) problems.push(`og:image is ${ogImage ?? "missing"}, not ${ogImageUrl}`);
  if (twitterImage !== ogImageUrl) problems.push(`twitter:image is ${twitterImage ?? "missing"}, not ${ogImageUrl}`);
  if (meta(html, "name", "twitter:card") !== "summary_large_image") problems.push("twitter:card is not summary_large_image");
  for (const key of ["og:title", "og:description"]) {
    if (!meta(html, "property", key)) problems.push(`${key} is missing`);
  }
  const ogUrl = meta(html, "property", "og:url");
  if (!ogUrl?.startsWith(`${SITE}/`)) problems.push(`og:url is ${ogUrl ?? "missing"}`);
  if (problems.length) failures.push(`${page}: ${problems.join("; ")}`);
}

if (failures.length) {
  console.error(`check-og: ${failures.length} problems across ${checked} pages:`);
  for (const line of failures) console.error(`  ${line}`);
  process.exit(1);
}
console.log(`check-og: ${checked} pages carry og:image and twitter:image ${ogImageUrl}, og:title, og:description and og:url.`);
