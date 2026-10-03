// The social card is served under a content-hashed name because Slack and
// other unfurlers cache previews by image URL, ignoring query strings on the
// page. A changed card gets a new URL; `og.png` stays for old links.
import { createHash } from "node:crypto";
import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";

export const SITE = "https://terradart.dev";

export const ogCardSource = fileURLToPath(
  new URL("../../../branding/png/og-card.png", import.meta.url),
);

export const ogImageFile = `og-${createHash("sha256")
  .update(readFileSync(ogCardSource))
  .digest("hex")
  .slice(0, 8)}.png`;

export const ogImageUrl = `${SITE}/${ogImageFile}`;
