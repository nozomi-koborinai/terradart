import { codeToHtml } from "shiki";
import { terradartDark, terradartLight } from "./syntax-themes.mjs";

/**
 * Dual-theme Shiki HTML: every token carries `--shiki-light` and
 * `--shiki-dark`, and `landing.css` picks one from `html[data-theme]`.
 */
export function highlight(code: string, lang: string): Promise<string> {
  return codeToHtml(code, {
    lang,
    themes: { light: terradartLight as never, dark: terradartDark as never },
    defaultColor: false,
  });
}
