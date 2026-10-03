// The site's tokens are the single source of the palette and type: the video
// reads the same custom properties the terradart.dev landing page does.
import "../../../website/src/styles/tokens.css";
import "@fontsource-variable/inter/wght.css";
import "@fontsource-variable/jetbrains-mono/wght.css";

export const v = (name: string) => `var(--td-${name})`;

export const font = {
  sans: `"Inter Variable", sans-serif`,
  mono: `"JetBrains Mono Variable", monospace`,
};

export const radius = 10;
