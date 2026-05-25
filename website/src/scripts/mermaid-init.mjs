/**
 * TerraDart docs — Mermaid themes aligned with BRAND.md (Dart cyan / blue).
 * Re-renders when Starlight toggles data-theme.
 */
import mermaid from "https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs";

const lightVariables = {
  fontFamily: 'Inter, "Helvetica Neue", system-ui, sans-serif',
  background: "#F6F3EC",
  mainBkg: "#FFFFFF",
  primaryColor: "#D6ECFA",
  primaryTextColor: "#0F1116",
  primaryBorderColor: "#0175C2",
  secondaryColor: "#E8F4FC",
  secondaryTextColor: "#0F1116",
  secondaryBorderColor: "#0175C2",
  tertiaryColor: "#F6F3EC",
  tertiaryTextColor: "#0F1116",
  tertiaryBorderColor: "#1E2A56",
  lineColor: "#0175C2",
  arrowheadColor: "#0175C2",
  textColor: "#0F1116",
  nodeTextColor: "#0F1116",
  titleColor: "#0175C2",
  clusterBkg: "#F6F3EC",
  clusterBorder: "#0175C2",
  edgeLabelBackground: "#FFFFFF",
  nodeBorder: "#0175C2",
};

const darkVariables = {
  fontFamily: 'Inter, "Helvetica Neue", system-ui, sans-serif',
  background: "#0B0D12",
  mainBkg: "#1A2A66",
  primaryColor: "#1A3A5C",
  primaryTextColor: "#F6F3EC",
  primaryBorderColor: "#4DD0FE",
  secondaryColor: "#243B6B",
  secondaryTextColor: "#F6F3EC",
  secondaryBorderColor: "#13B9FD",
  tertiaryColor: "#0B0D12",
  tertiaryTextColor: "#F6F3EC",
  tertiaryBorderColor: "#3B4A82",
  lineColor: "#4DD0FE",
  arrowheadColor: "#13B9FD",
  textColor: "#F6F3EC",
  nodeTextColor: "#F6F3EC",
  titleColor: "#4DD0FE",
  clusterBkg: "#0B0D12",
  clusterBorder: "#4DD0FE",
  edgeLabelBackground: "#1A2A66",
  nodeBorder: "#4DD0FE",
  darkMode: "true",
};

function isDarkTheme() {
  return document.documentElement.getAttribute("data-theme") === "dark";
}

function stashMermaidSources() {
  document.querySelectorAll("pre.mermaid").forEach((el) => {
    if (el.dataset.tdSource) return;
    const code = el.querySelector("code");
    const text = (code?.textContent ?? el.textContent)?.trim();
    if (text) el.dataset.tdSource = text;
  });
}

function resetMermaidBlocks() {
  document.querySelectorAll("pre.mermaid").forEach((el) => {
    const src = el.dataset.tdSource;
    if (!src) return;
    el.textContent = src;
    el.removeAttribute("data-processed");
  });
}

async function renderMermaid() {
  mermaid.initialize({
    startOnLoad: false,
    theme: "base",
    themeVariables: isDarkTheme() ? darkVariables : lightVariables,
  });
  const nodes = document.querySelectorAll("pre.mermaid");
  if (nodes.length === 0) return;
  await mermaid.run({ nodes });
}

function boot() {
  stashMermaidSources();
  void renderMermaid();

  const observer = new MutationObserver(() => {
    resetMermaidBlocks();
    void renderMermaid();
  });
  observer.observe(document.documentElement, {
    attributes: true,
    attributeFilter: ["data-theme"],
  });
}

if (document.readyState === "loading") {
  document.addEventListener("DOMContentLoaded", boot);
} else {
  boot();
}
