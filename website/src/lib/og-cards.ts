// One social card per page other than the landing page, which keeps the brand
// card. Cards are keyed by page id (a docs entry id, or a page's path without
// slashes) and served from /og/ under a name carrying a hash of the PNG.
import { createHash } from "node:crypto";
import { getCollection } from "astro:content";
import { ogCardPng } from "./og-card.mjs";

export interface OgCard {
  file: string;
  png: Buffer;
}

const sections: Record<string, string> = import.meta.env.OG_SECTIONS;

const pagesOutsideDocs = [
  { id: "privacy", title: "Privacy" },
  { id: "404", title: "Page not found" },
];

let cards: Promise<Map<string, OgCard>> | undefined;

export const ogCards = () => (cards ??= renderCards());

async function renderCards() {
  const docs = (await getCollection("docs")).map((entry) => ({ id: entry.id, title: entry.data.title }));
  const rendered = new Map<string, OgCard>();
  for (const { id, title } of [...docs, ...pagesOutsideDocs]) {
    const png = await ogCardPng({ title, kicker: sections[id], path: `/${id}/` });
    const hash = createHash("sha256").update(png).digest("hex").slice(0, 8);
    rendered.set(id, { file: `${id.replaceAll("/", "-")}-${hash}.png`, png });
  }
  return rendered;
}

export async function ogCardUrl(id: string) {
  const card = (await ogCards()).get(id);
  if (!card) throw new Error(`og-cards: no card for page "${id}"`);
  return new URL(`/og/${card.file}`, import.meta.env.SITE).href;
}
