// TerraDart syntax themes (TextMate format), shared by the landing page's
// Shiki highlighting and the docs' Expressive Code blocks. Colours stay in
// the brand corridor (branding/BRAND.md): Dart cyan / blue for structure,
// paper or ink for types, one warm tone so strings read apart.

const scopes = (palette) => [
  { scope: ["comment", "comment.block.documentation", "punctuation.definition.comment"], settings: { foreground: palette.comment } },
  {
    scope: ["keyword", "storage", "storage.modifier", "keyword.declaration", "keyword.control", "keyword.other.import", "variable.language"],
    settings: { foreground: palette.keyword },
  },
  { scope: ["keyword.operator", "punctuation"], settings: { foreground: palette.punctuation } },
  { scope: ["support.class", "entity.name.type", "entity.name.class", "support.type", "storage.type"], settings: { foreground: palette.type } },
  { scope: ["entity.name.function", "support.function", "meta.function-call"], settings: { foreground: palette.function } },
  { scope: ["string", "string.quoted", "string.interpolated", "markup.inline.raw"], settings: { foreground: palette.string } },
  { scope: ["constant.numeric", "constant.language", "constant.other", "support.constant"], settings: { foreground: palette.constant } },
  { scope: ["variable.parameter", "variable.other.property", "meta.property-name", "support.type.property-name"], settings: { foreground: palette.property } },
  { scope: ["entity.name.tag", "markup.heading"], settings: { foreground: palette.keyword } },
  { scope: ["variable.other.readwrite", "variable"], settings: { foreground: palette.foreground } },
];

const dark = {
  background: "#11141B",
  foreground: "#D5D9E2",
  comment: "#6B7385",
  keyword: "#4DD0FE",
  punctuation: "#8C93A3",
  type: "#F6F3EC",
  function: "#8FD3FF",
  string: "#E5CF9E",
  constant: "#5EB4F0",
  property: "#B9C0CD",
};

const light = {
  background: "#F6F8FA",
  foreground: "#24292F",
  comment: "#8B919C",
  keyword: "#0175C2",
  punctuation: "#6A7180",
  type: "#0F1116",
  function: "#0B5A94",
  string: "#8A5A10",
  constant: "#0069A8",
  property: "#3A3F4B",
};

const theme = (name, type, palette) => ({
  name,
  type,
  colors: {
    "editor.background": palette.background,
    "editor.foreground": palette.foreground,
    "editor.selectionBackground": type === "dark" ? "#4DD0FE33" : "#0175C222",
  },
  fg: palette.foreground,
  bg: palette.background,
  settings: [{ settings: { foreground: palette.foreground, background: palette.background } }, ...scopes(palette)],
  tokenColors: [{ settings: { foreground: palette.foreground, background: palette.background } }, ...scopes(palette)],
});

export const terradartDark = theme("terradart-dark", "dark", dark);
export const terradartLight = theme("terradart-light", "light", light);
