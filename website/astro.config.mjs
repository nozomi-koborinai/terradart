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
        "Documentation for TerraDart — type-safe infrastructure-as-code for Dart.",
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
        {
          icon: "x.com",
          label: "X",
          href: "https://x.com/terradart_dev",
        },
      ],
      sidebar: [
        {
          label: "Start",
          items: ["docs/getting-started", "docs/why-terradart"],
        },
        {
          label: "Guides",
          items: [
            "docs/arguments",
            "docs/client-outputs",
            "docs/migrate-from-hcl",
            "docs/agents",
          ],
        },
        {
          label: "Providers",
          items: [
            { label: "Google Cloud", slug: "docs/providers/google" },
            { label: "AWS", slug: "docs/providers/aws" },
            { label: "Cloudflare", slug: "docs/providers/cloudflare" },
            { label: "Appwrite", slug: "docs/providers/appwrite" },
          ],
        },
        {
          label: "Reference",
          items: [
            "docs/cli",
            {
              label: "Coverage",
              items: [
                { label: "Overview", slug: "docs/coverage" },
                { label: "Google Cloud", slug: "docs/coverage/google" },
                { label: "Google Cloud (beta-only)", slug: "docs/coverage/google-beta" },
                { label: "AWS", slug: "docs/coverage/aws" },
                { label: "Cloudflare", slug: "docs/coverage/cloudflare" },
                { label: "Appwrite", slug: "docs/coverage/appwrite" },
              ],
            },
            {
              label: "API reference",
              link: "https://pub.dev/packages?q=terradart",
              attrs: { target: "_blank", rel: "noopener" },
            },
          ],
        },
        {
          label: "Under the hood",
          items: ["docs/architecture", "docs/how-its-built"],
        },
        {
          label: "Project",
          items: ["docs/upgrading", "docs/status"],
        },
      ],
      plugins: [starlightLlmsTxt()],
      components: {
        SiteTitle: "./src/components/StarlightSiteTitle.astro",
      },
      customCss: [
        "./src/styles/starlight-overrides.css",
        "./src/styles/pipeline.css",
      ],
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
    "/docs/aws/": "/docs/providers/aws/",
    "/docs/migrating/": "/docs/upgrading/",
    "/docs/how-it-works/": "/docs/architecture/",
    "/docs/agent/": "/docs/agents/",
    "/docs/agent/install/": "/docs/agents/",
    "/docs/agent/clients/": "/docs/agents/",
    "/docs/agent/tools-reference/": "/docs/agents/",
    "/docs/agent/recipes/": "/docs/agents/",
  },
});
