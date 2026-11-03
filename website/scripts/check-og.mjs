// Fails when a built page lacks the social-preview tags link unfurlers read.
// Which image each page carries is check-og-cards' job.
import { existsSync } from "node:fs";
import { join } from "node:path";
import { SITE, ogImageFile } from "../src/lib/og-image.mjs";
import { builtPages, dist, meta } from "./built-pages.mjs";

const failures = [];
for (const file of [ogImageFile, "og.png"]) {
  if (!existsSync(join(dist, file))) failures.push(`dist/${file} is missing`);
}
let checked = 0;
for (const { page, html } of builtPages("check-og")) {
  checked++;
  const problems = [];
  const ogImage = meta(html, "property", "og:image");
  const twitterImage = meta(html, "name", "twitter:image");
  if (!ogImage?.startsWith(`${SITE}/`)) problems.push(`og:image is ${ogImage ?? "missing"}`);
  if (twitterImage !== ogImage) problems.push(`twitter:image is ${twitterImage ?? "missing"}, not ${ogImage}`);
  if (meta(html, "name", "twitter:card") !== "summary_large_image") problems.push("twitter:card is not summary_large_image");
  if (meta(html, "property", "og:image:width") !== "1200") problems.push("og:image:width is not 1200");
  if (meta(html, "property", "og:image:height") !== "630") problems.push("og:image:height is not 630");
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
console.log(`check-og: ${checked} pages carry og:image, twitter:image, summary_large_image, og:title, og:description and og:url.`);
