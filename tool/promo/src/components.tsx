import { useEffect, useState, type CSSProperties, type ReactNode } from "react";
import { continueRender, delayRender, Easing, interpolate, staticFile, useCurrentFrame, useVideoConfig } from "remotion";
import { font, radius, v } from "./brand";
import { cameraOffset } from "./camera.mjs";
import { board, type Caption, type CodeBlock, type Keyframe } from "./types";

export { cameraAt } from "./camera.mjs";

export const BAR = 44;

/** The landing page's code window: surface body, surface-2 bar, neutral dots. */
export const Window = ({
  title,
  center,
  style,
  children,
}: {
  title: string;
  center?: boolean;
  style?: CSSProperties;
  children: ReactNode;
}) => (
  <div
    style={{
      position: "absolute",
      display: "flex",
      flexDirection: "column",
      border: `1px solid ${v("line-strong")}`,
      borderRadius: radius,
      background: v("surface"),
      overflow: "hidden",
      ...style,
    }}
  >
    <div
      style={{
        display: "flex",
        alignItems: "center",
        gap: 10,
        height: BAR,
        flex: "none",
        padding: "0 18px",
        borderBottom: `1px solid ${v("line")}`,
        background: v("surface-2"),
        fontFamily: font.mono,
        fontSize: 19,
        color: v("mute"),
        whiteSpace: "nowrap",
      }}
    >
      <span style={{ display: "inline-flex", gap: 7, marginRight: 8 }}>
        {[0, 1, 2].map((i) => (
          <i key={i} style={{ width: 12, height: 12, borderRadius: "50%", background: v("line-strong") }} />
        ))}
      </span>
      <span style={center ? { flex: 1, textAlign: "center", marginRight: 70 } : undefined}>{title}</span>
    </div>
    <div style={{ position: "relative", flex: 1, minHeight: 0, overflow: "hidden" }}>{children}</div>
  </div>
);

export const cameraTransform = (k: Keyframe, w: number, h: number): CSSProperties => {
  const { dx, dy } = cameraOffset(k, w, h);
  return { transform: `translate(${dx}px, ${dy}px) scale(${k.s})`, transformOrigin: "0 0" };
};

const CAPTION_BOTTOM = 34;
const CAPTION_HEIGHT = 92;

/** The lowest y a scene may draw at: the band below belongs to the captions. */
export const SAFE_BOTTOM = board.height - CAPTION_BOTTOM - CAPTION_HEIGHT - 18;

/** Fails the render when a scene's layout reaches into the caption band. */
export const assertSafe = (scene: string, bottom: number) => {
  if (bottom > SAFE_BOTTOM + 0.5) {
    throw new Error(`${scene}: content ends at y=${Math.round(bottom)}, inside the caption band (below ${SAFE_BOTTOM})`);
  }
};

/** Splits on backticks: the odd parts are commands, set in the mono face. */
const Rich = ({ text }: { text: string }) => (
  <>
    {text.split("`").map((part, i) =>
      i % 2 ? (
        <span key={i} style={{ fontFamily: font.mono, color: v("accent"), fontSize: "0.92em" }}>
          {part}
        </span>
      ) : (
        <span key={i}>{part}</span>
      ),
    )}
  </>
);

export const Captions = ({ captions, time }: { captions: Caption[]; time: number }) => {
  const { fps } = useVideoConfig();
  const fade = 6 / fps;
  const active = captions.find((c) => time >= c.from && time < c.to);
  if (!active) return null;
  const opacity = Math.min(
    interpolate(time - active.from, [0, fade], [0, 1], { extrapolateRight: "clamp" }),
    interpolate(active.to - time, [0, fade], [0, 1], { extrapolateRight: "clamp" }),
  );
  const rise = interpolate(time - active.from, [0, fade * 1.5], [12, 0], {
    extrapolateRight: "clamp",
    easing: Easing.out(Easing.cubic),
  });
  return (
    <div
      style={{
        position: "absolute",
        left: 0,
        right: 0,
        bottom: CAPTION_BOTTOM,
        display: "flex",
        justifyContent: "center",
        opacity,
        transform: `translateY(${rise}px)`,
      }}
    >
      <div
        style={{
          boxSizing: "border-box",
          height: CAPTION_HEIGHT,
          display: "flex",
          alignItems: "center",
          padding: "0 30px 2px",
          borderRadius: radius,
          border: `1px solid ${v("line-strong")}`,
          background: v("surface-2"),
          fontFamily: font.sans,
          fontSize: 42,
          fontWeight: 450,
          letterSpacing: "-0.01em",
          color: v("text"),
          whiteSpace: "nowrap",
        }}
      >
        <span>
          <Rich text={active.text} />
        </span>
      </div>
    </div>
  );
};

/** The repository's dark lockup, inlined so its wordmark uses the loaded Inter. */
export const Lockup = ({ width }: { width: number }) => {
  const [svg, setSvg] = useState<string | null>(null);
  const [handle] = useState(() => delayRender("lockup"));
  useEffect(() => {
    fetch(staticFile("brand/logo-horizontal-dark.svg"))
      .then((r) => r.text())
      .then((text) => {
        setSvg(
          text
            .replace(/<\?xml[^>]*>/, "")
            .replace(/font-family='[^']*'/, `font-family='"Inter Variable", Inter, sans-serif'`)
            .replace(/width="\d+" height="\d+"/, `width="${width}" height="${(width * 320) / 1072}"`),
        );
        continueRender(handle);
      });
  }, [handle, width]);
  return svg ? <div style={{ lineHeight: 0 }} dangerouslySetInnerHTML={{ __html: svg }} /> : null;
};

export const CODE_SIZE = 25;
export const CODE_LINE = 1.62;

export const Code = ({
  block,
  focus,
  size = CODE_SIZE,
}: {
  block: CodeBlock;
  focus: (index: number) => number;
  size?: number;
}) => {
  const frame = useCurrentFrame();
  return (
    <pre
      style={{
        margin: 0,
        padding: "22px 0 24px",
        fontFamily: font.mono,
        fontSize: size,
        lineHeight: CODE_LINE,
        color: v("text-2"),
      }}
    >
      {block.lines.map((line, i) => {
        const lit = line.focus === undefined ? 0 : focus(line.focus);
        const enter = interpolate(frame - i * 1.2, [0, 9], [0, 1], {
          extrapolateLeft: "clamp",
          extrapolateRight: "clamp",
        });
        return (
          <div
            key={i}
            style={{
              position: "relative",
              padding: "0 30px",
              minHeight: `${CODE_LINE}em`,
              opacity: enter,
              transform: `translateY(${(1 - enter) * 8}px)`,
            }}
          >
            <span
              style={{
                position: "absolute",
                inset: 0,
                background: v("accent-soft"),
                borderLeft: `3px solid ${v("accent")}`,
                opacity: lit,
              }}
            />
            <span style={{ position: "relative" }}>
              {line.fold ? (
                <span style={{ color: v("faint") }}>  ⋯</span>
              ) : (
                line.tokens.map((t, j) => (
                  <span
                    key={j}
                    style={{
                      color: t.color,
                      fontWeight: t.bold ? 700 : undefined,
                      fontStyle: t.italic ? "italic" : undefined,
                    }}
                  >
                    {t.content}
                  </span>
                ))
              )}
            </span>
          </div>
        );
      })}
    </pre>
  );
};

export const codeHeight = (block: CodeBlock, size = CODE_SIZE) => BAR + 46 + block.lines.length * size * CODE_LINE;

/** The largest size up to CODE_SIZE at which the block fits in `height`. */
export const codeSizeFor = (block: CodeBlock, height: number) =>
  Math.min(CODE_SIZE, Math.floor(((height - BAR - 46) / (block.lines.length * CODE_LINE)) * 2) / 2);

/** 0→1→0 around each focus slot, so one line at a time carries the band. */
export const focusSchedule = (count: number, start: number, end: number, time: number) => (index: number) => {
  const slot = (end - start) / count;
  const from = start + slot * index;
  return interpolate(time, [from, from + 0.25, from + slot - 0.1, from + slot + 0.15], [0, 1, 1, index === count - 1 ? 1 : 0], {
    extrapolateLeft: "clamp",
    extrapolateRight: "clamp",
  });
};
