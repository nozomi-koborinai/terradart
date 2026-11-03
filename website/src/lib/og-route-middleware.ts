import { defineRouteMiddleware } from "@astrojs/starlight/route-data";
import { ogCardUrl } from "./og-cards";

export const onRequest = defineRouteMiddleware(async ({ locals }) => {
  const route = locals.starlightRoute;
  const url = await ogCardUrl(route.id);
  route.head.push(
    { tag: "meta", attrs: { property: "og:image", content: url } },
    { tag: "meta", attrs: { name: "twitter:image", content: url } },
  );
});
