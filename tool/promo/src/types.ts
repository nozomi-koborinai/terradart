import storyboard from "../storyboard.json";
import { segmentSeconds } from "./camera.mjs";

export { segmentSeconds };

export type Lang = "en" | "ja";

export type Token = { content: string; color: string; bold?: boolean; italic?: boolean };

export type CodeLine = { tokens: Token[]; fold?: boolean; focus?: number };

export type CodeBlock = { title: string; lines: CodeLine[] };

/** What render.mjs derives from the captured files: written to public/files/data.json. */
export type PromoData = {
  code: Record<string, CodeBlock>;
  terradart: string;
  /** Each terminal scene's keyframes, settled on its clip so no zoom cuts a line. */
  camera: Record<string, Keyframe[]>;
};

export type PromoProps = { lang: Lang; data: PromoData | null };

export type Caption = { from: number; to: number; en: string; ja: string };

/** A camera position: scale `s`, centred on the point (`x`, `y`) of the window, as fractions. */
export type Keyframe = { at: number; s: number; x: number; y: number };

export type Segment = { from: number; to: number } | { hold: number; seconds: number };

export type SceneSpec = {
  id: string;
  kind: "title" | "terminal" | "code" | "flutter" | "site" | "end";
  /** Seconds; a terminal scene's length is the sum of its segments. */
  duration?: number;
  title?: string;
  tagline?: string;
  /** Under public/. */
  clip?: string;
  /** Played back to back: a span of the clip, or a still of one clip second. */
  segments?: Segment[];
  /** In clip seconds for a terminal scene, scene seconds otherwise. */
  camera?: Keyframe[];
  captions?: Caption[];
  code?: string;
  next?: {
    title: string;
    clip: string;
    at: number;
    crop: { x: number; y: number; w: number; h: number };
    highlight: number;
    from: number;
  };
  url?: string;
  install?: string;
};

export type Storyboard = {
  release: string;
  fps: number;
  width: number;
  height: number;
  crossfade: number;
  /** The VHS terminal capture.mjs records, in pixels. */
  terminal: { width: number; height: number; fontSize: number; lineHeight: number; padding: number };
  scenes: SceneSpec[];
};

export const board = storyboard as unknown as Storyboard;

export const sceneSeconds = (scene: SceneSpec): number =>
  scene.segments ? scene.segments.reduce((sum, s) => sum + segmentSeconds(s), 0) : (scene.duration ?? 0);
