import { readFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";
import starlight from "@astrojs/starlight";
import mdx from "@astrojs/mdx";
import rehypeMermaid from "rehype-mermaid";
import starlightLlmsTxt from "starlight-llms-txt";

const websiteDir = dirname(fileURLToPath(import.meta.url));
const mermaidInit = readFileSync(
  join(websiteDir, "src/scripts/mermaid-init.mjs"),
  "utf8",
);

// https://astro.build/config
export default defineConfig({
  site: "https://terradart.dev",
  vite: {
    plugins: [tailwindcss()],
  },
  integrations: [
    starlight({
      title: "TerraDart",
      description:
        "Documentation for TerraDart — type-safe Google Cloud IaC for Dart.",
      defaultLocale: "root",
      locales: {
        root: { label: "English", lang: "en" },
      },
      social: [
        {
          icon: "github",
          label: "GitHub",
          href: "https://github.com/nozomi-koborinai/terradart",
        },
      ],
      sidebar: [
        {
          label: "Guide",
          items: [
            "docs/getting-started",
            "docs/why-terradart",
            "docs/architecture",
            "docs/status",
          ],
        },
        {
          label: "Agent",
          items: [
            "docs/agent",
            "docs/agent/install",
            "docs/agent/clients",
            "docs/agent/tools-reference",
            "docs/agent/recipes",
          ],
        },
      ],
      plugins: [starlightLlmsTxt()],
      components: {
        SiteTitle: "./src/components/StarlightSiteTitle.astro",
      },
      customCss: ["./src/styles/starlight-overrides.css"],
      head: [
        {
          tag: "link",
          attrs: {
            rel: "preconnect",
            href: "https://fonts.googleapis.com",
          },
        },
        {
          tag: "link",
          rel: "preconnect",
          href: "https://fonts.gstatic.com",
          crossorigin: true,
        },
        {
          tag: "link",
          attrs: {
            rel: "stylesheet",
            href: "https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@400;500&display=swap",
          },
        },
        {
          tag: "script",
          attrs: { type: "module" },
          content: mermaidInit,
        },
      ],
    }),
    mdx(),
  ],
  markdown: {
    rehypePlugins: [
      [rehypeMermaid, { strategy: "pre-mermaid" }],
    ],
  },
  redirects: {
    "/docs/how-it-works/": "/docs/architecture/",
  },
});
