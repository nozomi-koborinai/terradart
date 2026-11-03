// The built HTML pages under dist/ that link unfurlers read. Redirect stubs
// (meta refresh) are skipped: crawlers follow them first.
import { existsSync, readdirSync, readFileSync } from "node:fs";
import { join, relative } from "node:path";
import { fileURLToPath } from "node:url";

export const dist = fileURLToPath(new URL("../dist/", import.meta.url));

function* htmlFiles(dir) {
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name);
    if (entry.isDirectory()) yield* htmlFiles(path);
    else if (entry.name.endsWith(".html")) yield path;
  }
}

export function* builtPages(check) {
  if (!existsSync(dist)) {
    console.error(`${check}: dist/ not found — run \`astro build\` first.`);
    process.exit(1);
  }
  for (const file of htmlFiles(dist)) {
    const html = readFileSync(file, "utf8");
    if (/<meta\b[^>]*http-equiv=["']refresh["']/i.test(html)) continue;
    yield { page: relative(dist, file), html };
  }
}

export function meta(html, attr, key) {
  for (const tag of html.match(/<meta\b[^>]*>/gi) ?? []) {
    if (!new RegExp(`\\b${attr}=["']${key}["']`, "i").test(tag)) continue;
    return tag.match(/\bcontent=["']([^"']*)["']/i)?.[1] ?? "";
  }
  return null;
}
