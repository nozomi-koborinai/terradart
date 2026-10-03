import { readFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import { defineConfig } from "astro/config";
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
    build: {
      // Vendor marks ship as the files the vendor published, never re-encoded inline.
      assetsInlineLimit: (file) => (file.includes("/src/assets/providers/") ? false : undefined),
    },
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
            "docs/environments",
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
          items: ["docs/how-it-works", "docs/how-its-built"],
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
      favicon: "/favicon.svg",
      customCss: [
        "@fontsource-variable/inter",
        "@fontsource-variable/jetbrains-mono",
        "./src/styles/tokens.css",
        "./src/styles/starlight.css",
        "./src/styles/pipeline.css",
      ],
      head: [
        { tag: "link", attrs: { rel: "icon", href: "/favicon.ico", sizes: "48x48" } },
        { tag: "link", attrs: { rel: "apple-touch-icon", href: "/apple-touch-icon.png" } },
        { tag: "meta", attrs: { name: "theme-color", content: "#0B0D12" } },
        { tag: "meta", attrs: { property: "og:image", content: "https://terradart.dev/og.png" } },
        { tag: "meta", attrs: { property: "og:image:width", content: "1200" } },
        { tag: "meta", attrs: { property: "og:image:height", content: "630" } },
        { tag: "meta", attrs: { name: "twitter:card", content: "summary_large_image" } },
        { tag: "meta", attrs: { name: "twitter:site", content: "@terradart_dev" } },
        { tag: "meta", attrs: { name: "twitter:image", content: "https://terradart.dev/og.png" } },
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
    "/docs/architecture/": "/docs/how-it-works/",
    "/docs/agent/": "/docs/agents/",
    "/docs/agent/install/": "/docs/agents/",
    "/docs/agent/clients/": "/docs/agents/",
    "/docs/agent/tools-reference/": "/docs/agents/",
    "/docs/agent/recipes/": "/docs/agents/",
  },
});
