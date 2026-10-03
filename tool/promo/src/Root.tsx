import { Composition, staticFile } from "remotion";
import { Promo } from "./Promo";
import { board, type PromoData, type PromoProps, sceneSeconds } from "./types";

export const totalFrames = () => {
  const fade = Math.round(board.crossfade * board.fps);
  const frames = board.scenes.map((s) => Math.round(sceneSeconds(s) * board.fps));
  return frames.reduce((sum, f) => sum + f, 0) - fade * (frames.length - 1);
};

export const Root = () => (
  <>
    {(["en", "ja"] as const).map((lang) => (
      <Composition
        key={lang}
        id={`promo-${lang}`}
        component={Promo}
        durationInFrames={totalFrames()}
        fps={board.fps}
        width={board.width}
        height={board.height}
        defaultProps={{ lang, data: null } satisfies PromoProps}
        calculateMetadata={async ({ props }) => {
          if (props.data) return { props };
          const response = await fetch(staticFile("files/data.json"));
          return { props: { ...props, data: (await response.json()) as PromoData } };
        }}
      />
    ))}
  </>
);
