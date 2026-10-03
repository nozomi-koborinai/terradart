import { useEffect, useState, type CSSProperties, type ReactNode } from "react";
import { continueRender, delayRender, Easing, interpolate, staticFile, useCurrentFrame, useVideoConfig } from "remotion";
import { font, radius, v } from "./brand";
import type { Caption, CodeBlock, Keyframe, Lang } from "./types";

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

const easeInOut = Easing.bezier(0.65, 0, 0.35, 1);

/** Interpolates keyframes; zoom is geometric so a push in and out reads at an even pace. */
export const cameraAt = (keys: Keyframe[], t: number) => {
  if (t <= keys[0].at) return keys[0];
  for (let i = 0; i < keys.length - 1; i++) {
    const a = keys[i];
    const b = keys[i + 1];
    if (t <= b.at) {
      const p = b.at === a.at ? 1 : easeInOut((t - a.at) / (b.at - a.at));
      return { at: t, s: a.s * Math.pow(b.s / a.s, p), x: a.x + (b.x - a.x) * p, y: a.y + (b.y - a.y) * p };
    }
  }
  return keys[keys.length - 1];
};

/**
 * Scales a box about a focus point and moves that point toward the box's
 * centre, clamped so the zoomed box never uncovers what the box covered.
 */
export const cameraTransform = (k: Keyframe, w: number, h: number): CSSProperties => {
  const dx = Math.min(0, Math.max(w - w * k.s, w / 2 - k.x * w * k.s));
  const dy = Math.min(0, Math.max(h - h * k.s, h / 2 - k.y * h * k.s));
  return { transform: `translate(${dx}px, ${dy}px) scale(${k.s})`, transformOrigin: "0 0" };
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

export const Captions = ({ captions, time, lang }: { captions: Caption[]; time: number; lang: Lang }) => {
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
        bottom: 34,
        display: "flex",
        justifyContent: "center",
        opacity,
        transform: `translateY(${rise}px)`,
      }}
    >
      <div
        style={{
          padding: "16px 30px 18px",
          borderRadius: radius,
          border: `1px solid ${v("line-strong")}`,
          background: v("surface-2"),
          fontFamily: font.sans,
          fontSize: lang === "ja" ? 40 : 42,
          fontWeight: lang === "ja" ? 500 : 450,
          letterSpacing: lang === "ja" ? "0.02em" : "-0.01em",
          color: v("text"),
          whiteSpace: "nowrap",
        }}
      >
        <Rich text={active[lang]} />
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
