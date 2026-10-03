import { codeToHtml } from "shiki";
import { terradartDark } from "./syntax-themes.mjs";

/** Shiki HTML in the dark theme: the landing page is dark-only. */
export function highlight(code: string, lang: string): Promise<string> {
  return codeToHtml(code, { lang, theme: terradartDark as never });
}
