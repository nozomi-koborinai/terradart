import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";
import starlight from "@astrojs/starlight";
import mdx from "@astrojs/mdx";
import rehypeMermaid from "rehype-mermaid";
import starlightLlmsTxt from "starlight-llms-txt";

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
          content: `
import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs';
mermaid.initialize({ startOnLoad: true });
          `.trim(),
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
});
