// The site's tokens are the single source of the palette and type: the video
// reads the same custom properties the terradart.dev landing page does.
import "../../../website/src/styles/tokens.css";
import "@fontsource-variable/inter/wght.css";
import "@fontsource-variable/jetbrains-mono/wght.css";
import "@fontsource/noto-sans-jp/400.css";
import "@fontsource/noto-sans-jp/500.css";

export const v = (name: string) => `var(--td-${name})`;

export const font = {
  // Noto Sans JP only fills the glyphs Inter has no outline for.
  sans: `"Inter Variable", "Noto Sans JP", sans-serif`,
  mono: `"JetBrains Mono Variable", "Noto Sans JP", monospace`,
};

export const radius = 10;
