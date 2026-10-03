import { useEffect, useState } from "react";
import {
  AbsoluteFill,
  continueRender,
  delayRender,
  Easing,
  Freeze,
  Img,
  interpolate,
  OffthreadVideo,
  Sequence,
  staticFile,
  useCurrentFrame,
  useVideoConfig,
} from "remotion";
import { font, radius, v } from "./brand";
import { clipTime } from "./camera.mjs";
import {
  assertSafe,
  BAR,
  cameraAt,
  cameraTransform,
  Captions,
  Code,
  codeHeight,
  codeSizeFor,
  focusSchedule,
  Lockup,
  SAFE_BOTTOM,
  Window,
} from "./components";
import { board, type PromoData, type PromoProps, type SceneSpec, sceneSeconds, segmentSeconds } from "./types";

const W = board.width;
const H = board.height;
const TERM_W = 1720;
const TERM_H = BAR + (TERM_W * board.terminal.height) / board.terminal.width;
const TERM_LEFT = (W - TERM_W) / 2;
const TERM_TOP = 30;

const useFonts = () => {
  const [handle] = useState(() => delayRender("fonts"));
  useEffect(() => {
    Promise.all([
      document.fonts.load(`450 42px "Inter Variable"`),
      document.fonts.load(`400 25px "JetBrains Mono Variable"`),
    ])
      .then(() => document.fonts.ready)
      .then(() => continueRender(handle));
  }, [handle]);
};

const seconds = () => useCurrentFrame() / useVideoConfig().fps;

const Title = ({ scene }: { scene: SceneSpec }) => {
  const t = seconds();
  const ease = Easing.out(Easing.cubic);
  const mark = interpolate(t, [0.1, 0.8], [0, 1], { extrapolateLeft: "clamp", extrapolateRight: "clamp", easing: ease });
  const line = interpolate(t, [0.6, 1.1], [0, 1], { extrapolateLeft: "clamp", extrapolateRight: "clamp", easing: ease });
  return (
    <AbsoluteFill style={{ alignItems: "center", justifyContent: "center", gap: 34 }}>
      <div style={{ opacity: mark, transform: `translateY(${(1 - mark) * -22}px)` }}>
        <Lockup width={880} />
      </div>
      <div style={{ opacity: line, textAlign: "center", marginTop: -20 }}>
        <div style={{ fontFamily: font.sans, fontSize: 46, color: v("text-2"), letterSpacing: "-0.01em" }}>
          {scene.tagline}
        </div>
        <div style={{ marginTop: 22, fontFamily: font.mono, fontSize: 30, color: v("mute") }}>v{board.release}</div>
      </div>
    </AbsoluteFill>
  );
};

const Terminal = ({ scene, data }: { scene: SceneSpec; data: PromoData }) => {
  const { fps } = useVideoConfig();
  const t = seconds();
  const segments = scene.segments!;
  assertSafe(scene.id, TERM_TOP + TERM_H);
  const clip = clipTime(segments, t);
  const camera = cameraAt(data.camera[scene.id] ?? scene.camera!, clip);
  let start = 0;
  return (
    <AbsoluteFill>
      <Window title={scene.title!} style={{ left: TERM_LEFT, top: TERM_TOP, width: TERM_W, height: TERM_H }}>
        <div style={{ position: "absolute", inset: 0, background: data.background, isolation: "isolate", ...cameraTransform(camera, TERM_W, TERM_H - BAR) }}>
          {segments.map((segment, i) => {
            const frames = Math.round(segmentSeconds(segment) * fps);
            const at = start;
            start += frames;
            const video = (
              <OffthreadVideo
                src={staticFile(scene.clip!)}
                trimBefore={Math.round(("hold" in segment ? segment.hold : segment.from) * fps)}
                muted
                style={{ position: "absolute", inset: 0, width: "100%", height: "100%", mixBlendMode: "lighten" }}
              />
            );
            return (
              <Sequence key={i} from={at} durationInFrames={frames} layout="none">
                {"hold" in segment ? <Freeze frame={0}>{video}</Freeze> : video}
              </Sequence>
            );
          })}
          {(data.masks?.[scene.id] ?? [])
            .filter((m) => clip >= m.from - 1e-6 && clip <= m.to + 1e-6)
            .flatMap((m, i) => [
              <div key={`${i}a`} style={{ position: "absolute", left: 0, right: 0, top: 0, height: `${m.y0 * 100}%`, background: data.background }} />,
              <div key={`${i}b`} style={{ position: "absolute", left: 0, right: 0, top: `${m.y1 * 100}%`, bottom: 0, background: data.background }} />,
            ])}
        </div>
      </Window>
      <Captions captions={scene.captions ?? []} time={clip} />
    </AbsoluteFill>
  );
};

const CodeScene = ({ scene, data }: { scene: SceneSpec; data: PromoData }) => {
  const t = seconds();
  const block = data.code[scene.code!];
  const focusCount = Math.max(...block.lines.map((l) => (l.focus ?? -1) + 1));
  const size = codeSizeFor(block, SAFE_BOTTOM - 36);
  const height = codeHeight(block, size);
  const top = Math.max(30, (SAFE_BOTTOM - height) / 2);
  assertSafe(scene.id, top + height);
  return (
    <AbsoluteFill>
      <Window title={block.title} style={{ left: (W - 1320) / 2, width: 1320, top, height }}>
        <Code block={block} size={size} focus={focusSchedule(focusCount, 0.9, sceneSeconds(scene) - 0.3, t)} />
      </Window>
      <Captions captions={scene.captions ?? []} time={t} />
    </AbsoluteFill>
  );
};

const FlutterScene = ({ scene, data }: { scene: SceneSpec; data: PromoData }) => {
  const t = seconds();
  const next = scene.next!;
  const block = data.code[scene.code!];
  const focusCount = Math.max(...block.lines.map((l) => (l.focus ?? -1) + 1));
  const cropW = 1500;
  const cropH = (cropW * (next.crop.h * board.terminal.height)) / (next.crop.w * board.terminal.width);
  const gap = 28;
  const size = codeSizeFor(block, SAFE_BOTTOM - 2 * 26 - gap - BAR - cropH);
  const codeH = codeHeight(block, size);
  const top = Math.max(26, (SAFE_BOTTOM - (codeH + gap + BAR + cropH)) / 2);
  assertSafe(scene.id, top + codeH + gap + BAR + cropH);
  const enter = interpolate(t, [next.from - 0.1, next.from + 0.45], [0, 1], {
    extrapolateLeft: "clamp",
    extrapolateRight: "clamp",
    easing: Easing.out(Easing.cubic),
  });
  const band = interpolate(t, [next.from + 0.5, next.from + 0.8], [0, 1], { extrapolateLeft: "clamp", extrapolateRight: "clamp" });
  return (
    <AbsoluteFill>
      <Window title={block.title} style={{ left: (W - 1500) / 2, width: 1500, top, height: codeH }}>
        <Code block={block} size={size} focus={focusSchedule(focusCount, 0.8, next.from, t)} />
      </Window>
      <Window
        title={next.title}
        style={{
          left: (W - cropW) / 2,
          width: cropW,
          top: top + codeH + gap,
          height: BAR + cropH,
          opacity: enter,
          transform: `translateY(${(1 - enter) * 40}px)`,
        }}
      >
        <Img src={staticFile("stills/next-steps.png")} style={{ width: cropW, height: cropH, display: "block" }} />
        <div
          style={{
            position: "absolute",
            left: 0,
            right: 0,
            top: cropH * data.highlight.top,
            height: cropH * data.highlight.height,
            background: v("accent-soft"),
            borderLeft: `3px solid ${v("accent")}`,
            opacity: band,
          }}
        />
      </Window>
      <Captions captions={scene.captions ?? []} time={t} />
    </AbsoluteFill>
  );
};

const Site = ({ scene }: { scene: SceneSpec }) => {
  const t = seconds();
  const width = 1560;
  const height = 880;
  const push = interpolate(t, [0, sceneSeconds(scene)], [1, 1.05]);
  assertSafe(scene.id, 30 + height);
  return (
    <AbsoluteFill>
      <Window title={scene.url!} center style={{ left: (W - width) / 2, width, top: 30, height }}>
        <Img
          src={staticFile("site.png")}
          style={{
            width: "100%",
            height: "100%",
            objectFit: "cover",
            objectPosition: "top",
            transform: `scale(${push})`,
            transformOrigin: "50% 30%",
          }}
        />
      </Window>
      <Captions captions={scene.captions ?? []} time={t} />
    </AbsoluteFill>
  );
};

const End = ({ scene }: { scene: SceneSpec }) => {
  const t = seconds();
  const ease = Easing.out(Easing.cubic);
  const a = interpolate(t, [0, 0.6], [0, 1], { extrapolateRight: "clamp", easing: ease });
  const b = interpolate(t, [0.4, 1.0], [0, 1], { extrapolateLeft: "clamp", extrapolateRight: "clamp", easing: ease });
  return (
    <AbsoluteFill style={{ alignItems: "center", justifyContent: "center", gap: 56 }}>
      <div style={{ opacity: a, transform: `translateY(${(1 - a) * -18}px)` }}>
        <Lockup width={760} />
      </div>
      <div style={{ opacity: b, display: "flex", flexDirection: "column", alignItems: "center", gap: 30 }}>
        <div
          style={{
            padding: "20px 34px",
            borderRadius: radius,
            border: `1px solid ${v("line-strong")}`,
            background: v("surface"),
            fontFamily: font.mono,
            fontSize: 36,
            color: v("text"),
          }}
        >
          <span style={{ color: v("accent") }}>$ </span>
          {scene.install}
        </div>
        <div style={{ fontFamily: font.sans, fontSize: 36, color: v("mute") }}>{scene.url}</div>
      </div>
    </AbsoluteFill>
  );
};

const SceneBody = ({ scene, data }: { scene: SceneSpec; data: PromoData }) => {
  switch (scene.kind) {
    case "title":
      return <Title scene={scene} />;
    case "terminal":
      return <Terminal scene={scene} data={data} />;
    case "code":
      return <CodeScene scene={scene} data={data} />;
    case "flutter":
      return <FlutterScene scene={scene} data={data} />;
    case "site":
      return <Site scene={scene} />;
    case "end":
      return <End scene={scene} />;
  }
};

/** Each scene fades in over the tail of the one before it. */
const Fade = ({ first, children }: { first: boolean; children: React.ReactNode }) => {
  const frame = useCurrentFrame();
  const fade = Math.round(board.crossfade * board.fps);
  const opacity = first ? 1 : interpolate(frame, [0, fade], [0, 1], { extrapolateRight: "clamp" });
  return <AbsoluteFill style={{ background: v("bg"), opacity }}>{children}</AbsoluteFill>;
};

export const Promo = ({ data }: PromoProps) => {
  useFonts();
  const fade = Math.round(board.crossfade * board.fps);
  let start = 0;
  return (
    <AbsoluteFill style={{ background: v("bg"), width: W, height: H }}>
      {data &&
        board.scenes.map((scene, i) => {
          const frames = Math.round(sceneSeconds(scene) * board.fps);
          const from = start;
          start += frames - fade;
          return (
            <Sequence key={scene.id} name={scene.id} from={from} durationInFrames={frames}>
              <Fade first={i === 0}>
                <SceneBody scene={scene} data={data} />
              </Fade>
            </Sequence>
          );
        })}
    </AbsoluteFill>
  );
};
