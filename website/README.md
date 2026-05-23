# TerraDart site (`terradart.dev`)

Landing page and docs for [TerraDart](https://terradart.dev).

- [Astro](https://astro.build/) 6 + [Starlight](https://starlight.astro.build/) (minimal docs)
- [Tailwind CSS](https://tailwindcss.com/) v4
- [starlight-llms-txt](https://github.com/adrian-ub/starlight-llms-txt) → `/llms.txt`
- Hosted on **Cloudflare Pages** (deploy is not driven by GitHub Actions)

## Local development

```sh
cd website
bun install
bun run dev
```

Opens at `http://localhost:4321/`. Brand assets are copied from `../branding/` on `dev` / `build` via `bun run sync-branding`.

## CI (GitHub)

`.github/workflows/website.yml` runs `bun run build` and `bun run typecheck` when `website/**` or `branding/**` changes.

## Cloudflare Pages (manual setup)

Create a Pages project connected to `nozomi-koborinai/terradart`:

| Setting | Value |
| --- | --- |
| Production branch | `main` |
| Root directory | `website` |
| Build command | `bun install --frozen-lockfile && bun run build` |
| Build output directory | `dist` |
| Environment variables | `NODE_VERSION=22`, `PACKAGE_MANAGER=bun` |
| Build watch paths | `website/**`, `branding/**` |

Custom domain: `terradart.dev` (and optional `www`).

Enable **Cloudflare Web Analytics** in the dashboard, then add the beacon to the site when ready (see `/privacy`).

Deploy runs on Cloudflare when `main` is updated — not via `website.yml`.
