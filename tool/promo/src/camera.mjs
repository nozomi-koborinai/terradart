// Camera and timeline maths shared by the composition and render.mjs, which
// checks every zoomed frame before it renders; plain JS so node runs it as is.

/** @typedef {{ at: number, s: number, x: number, y: number }} Keyframe */
/** @typedef {{ from: number, to: number } | { hold: number, seconds: number }} Segment */

/** @param {Segment} s */
export const segmentSeconds = (s) => ("hold" in s ? s.seconds : s.to - s.from);

/**
 * Maps scene seconds to clip seconds across the cuts; a hold keeps its second.
 * @param {Segment[]} segments
 * @param {number} t
 */
export const clipTime = (segments, t) => {
  let rest = t;
  for (const s of segments) {
    if (rest < segmentSeconds(s)) return "hold" in s ? s.hold : s.from + rest;
    rest -= segmentSeconds(s);
  }
  const last = segments[segments.length - 1];
  return "hold" in last ? last.hold : last.to;
};

/** @param {number} p */
const easeInOut = (p) => (p < 0.5 ? 4 * p * p * p : 1 - Math.pow(-2 * p + 2, 3) / 2);

/**
 * Interpolates keyframes; zoom is geometric so a push in and out reads at an even pace.
 * @param {Keyframe[]} keys
 * @param {number} t
 * @returns {Keyframe}
 */
export const cameraAt = (keys, t) => {
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
 * The offset that scales a box about a focus point and moves that point toward
 * the box's centre, clamped so the zoomed box never uncovers what it covered.
 * @param {Keyframe} k
 * @param {number} w
 * @param {number} h
 */
export const cameraOffset = (k, w, h) => ({
  dx: Math.min(0, Math.max(w - w * k.s, w / 2 - k.x * w * k.s)),
  dy: Math.min(0, Math.max(h - h * k.s, h / 2 - k.y * h * k.s)),
});

/**
 * The part of the clip a camera shows, as fractions of its width and height.
 * @param {Keyframe} k
 */
export const viewport = (k) => {
  const { dx, dy } = cameraOffset(k, 1, 1);
  return { x: -dx / k.s, y: -dy / k.s, w: 1 / k.s, h: 1 / k.s };
};
