import type { APIRoute, GetStaticPaths } from "astro";
import { ogCards } from "../../lib/og-cards";

export const getStaticPaths = (async () =>
  [...(await ogCards()).values()].map(({ file, png }) => ({
    params: { card: file.replace(/\.png$/, "") },
    props: { png },
  }))) satisfies GetStaticPaths;

export const GET: APIRoute = ({ props }) =>
  new Response(new Uint8Array(props.png), { headers: { "Content-Type": "image/png" } });
