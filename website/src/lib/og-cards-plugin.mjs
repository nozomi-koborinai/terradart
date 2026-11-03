// Gives every docs page its own og:image. The label above a card's title is
// the innermost sidebar group that lists the page, read from the Starlight
// config so it follows the sidebar.
import { fileURLToPath } from "node:url";

function sectionsBySlug(items, group) {
  const sections = {};
  for (const item of items ?? []) {
    if (typeof item === "string") sections[item] = group;
    else if ("slug" in item) sections[item.slug] = group;
    else if ("items" in item) Object.assign(sections, sectionsBySlug(item.items, item.label));
  }
  return sections;
}

export default function ogCards() {
  return {
    name: "terradart-og-cards",
    hooks: {
      "config:setup"({ config, addIntegration, addRouteMiddleware }) {
        addRouteMiddleware({ entrypoint: fileURLToPath(new URL("./og-route-middleware.ts", import.meta.url)) });
        addIntegration({
          name: "terradart-og-sections",
          hooks: {
            "astro:config:setup"({ updateConfig }) {
              updateConfig({
                vite: { define: { "import.meta.env.OG_SECTIONS": JSON.stringify(sectionsBySlug(config.sidebar)) } },
              });
            },
          },
        });
      },
    },
  };
}
