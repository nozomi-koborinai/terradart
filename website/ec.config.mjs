import { defineEcConfig, ExpressiveCodeTheme } from "@astrojs/starlight/expressive-code";
import { terradartDark, terradartLight } from "./src/lib/syntax-themes.mjs";

export default defineEcConfig({
  themes: [new ExpressiveCodeTheme(terradartDark), new ExpressiveCodeTheme(terradartLight)],
  styleOverrides: {
    borderRadius: "10px",
    borderColor: "var(--td-line-strong)",
    codeFontFamily: "var(--td-font-mono)",
    codeFontSize: "0.8125rem",
    codeLineHeight: "1.7",
    uiFontFamily: "var(--td-font)",
    frames: {
      shadowColor: "transparent",
      editorTabBarBackground: "var(--td-surface-2)",
      editorActiveTabBackground: "var(--td-surface)",
      editorActiveTabIndicatorTopColor: "transparent",
      editorActiveTabIndicatorBottomColor: "var(--td-accent)",
      editorTabBarBorderBottomColor: "var(--td-line)",
      terminalTitlebarBackground: "var(--td-surface-2)",
      terminalTitlebarBorderBottomColor: "var(--td-line)",
      frameBoxShadowCssValue: "none",
    },
  },
});
