#!/usr/bin/env python3
"""The release clip's music bed, synthesized here with numpy: no samples, no
third-party audio, so nothing to license. 100 BPM, Am - F - C - G two bars
each: a soft pad, a plucked arpeggio and a sub bass from bar 3, a light kick
and hat from bar 5, a 2s fade in and a 3s fade out. render.mjs --music runs it
at the clip's length and ducks it under the narration.

  python3 music.py OUT.wav SECONDS
"""
import sys
import wave

import numpy as np

SR = 48000
BPM = 100.0
BEAT = 60.0 / BPM
BAR = 4 * BEAT

out_path = sys.argv[1]
total = float(sys.argv[2])
n = int(total * SR)
t = np.arange(n) / SR
mix_l = np.zeros(n)
mix_r = np.zeros(n)
rng = np.random.default_rng(34)


def midi(m):
    return 440.0 * 2 ** ((m - 69) / 12)


# Two bars per chord: Am, F, C, G.
chords = [
    [57, 60, 64, 71],  # Am(add9)
    [53, 57, 60, 67],  # Fmaj(add9)
    [48, 55, 60, 64],  # C
    [55, 59, 62, 69],  # G(add9)
]
bass_roots = [45, 41, 36, 43]


def one_pole_lowpass(x, cutoff):
    a = np.exp(-2 * np.pi * cutoff / SR)
    y = np.empty_like(x)
    acc = 0.0
    for i in range(len(x)):
        acc = (1 - a) * x[i] + a * acc
        y[i] = acc
    return y


def env_ad(length, attack, decay):
    k = np.arange(length) / SR
    return np.minimum(1.0, k / max(attack, 1e-4)) * np.exp(-np.maximum(0.0, k - attack) / decay)


def add(sig, start, gain, pan=0.0):
    i0 = int(start * SR)
    if i0 >= n:
        return
    seg = sig[: n - i0]
    mix_l[i0 : i0 + len(seg)] += seg * gain * np.sqrt(0.5 * (1 - pan))
    mix_r[i0 : i0 + len(seg)] += seg * gain * np.sqrt(0.5 * (1 + pan))


section = 2 * BAR
sections = int(np.ceil(total / section)) + 1

# Pad: three detuned voices per note with two overtones, swelling per chord.
pad = np.zeros(n)
for c in range(sections):
    start = c * section
    if start >= total:
        break
    length = int((section + 0.6) * SR)
    k = np.arange(length) / SR
    swell = np.minimum(1.0, k / 0.9) * np.minimum(1.0, np.maximum(0.0, section + 0.6 - k) / 0.8)
    s = np.zeros(length)
    for m in chords[c % 4]:
        for det in (-0.12, 0.0, 0.12):
            f = midi(m) * 2 ** (det / 12)
            s += np.sin(2 * np.pi * f * k + rng.uniform(0, 6.28))
            s += 0.35 * np.sin(2 * np.pi * 2 * f * k + rng.uniform(0, 6.28))
            s += 0.12 * np.sin(2 * np.pi * 3 * f * k + rng.uniform(0, 6.28))
    s *= swell / (len(chords[c % 4]) * 3)
    i0 = int(start * SR)
    seg = s[: n - i0]
    pad[i0 : i0 + len(seg)] += seg
pad = one_pole_lowpass(pad, 1800.0)
add(pad, 0.0, 0.55, -0.15)
add(np.roll(pad, int(0.013 * SR)), 0.0, 0.55, 0.15)

# Arpeggio: 8th-note plucks an octave up, from bar 3.
pattern = [0, 1, 2, 3, 2, 1, 3, 2]
pluck_len = int(0.5 * SR)
pk = np.arange(pluck_len) / SR
for c in range(sections):
    for j in range(16):
        when = c * section + j * BEAT / 2
        if when < 2 * BAR or when >= total - 1.5:
            continue
        f = midi(chords[c % 4][pattern[j % 8]] + 12)
        tone = np.sin(2 * np.pi * f * pk) + 0.3 * np.sin(2 * np.pi * 2 * f * pk) + 0.08 * np.sin(2 * np.pi * 3 * f * pk)
        add(tone * env_ad(pluck_len, 0.004, 0.16), when, 0.16, 0.35 if j % 2 else -0.35)

# Sub bass: the root on beats 1 and 3, from bar 3.
bass_len = int(1.1 * SR)
bk = np.arange(bass_len) / SR
for c in range(sections):
    for beat in (0, 2, 4, 6):
        when = c * section + beat * BEAT
        if when < 2 * BAR or when >= total - 1.0:
            continue
        f = midi(bass_roots[c % 4])
        tone = np.sin(2 * np.pi * f * bk) + 0.25 * np.sin(2 * np.pi * 2 * f * bk)
        add(tone * env_ad(bass_len, 0.01, 0.45), when, 0.30)

# Kick on every beat and a soft hat on the off-beats, from bar 5.
kick_len = int(0.35 * SR)
kk = np.arange(kick_len) / SR
kick = np.sin(2 * np.pi * np.cumsum(48 + 90 * np.exp(-kk / 0.03)) / SR) * env_ad(kick_len, 0.002, 0.11)
hat_len = int(0.06 * SR)
hat = rng.normal(0, 1, hat_len)
hat = (hat - one_pole_lowpass(hat, 6000.0)) * env_ad(hat_len, 0.001, 0.018)
for b in range(int(total / BEAT)):
    when = b * BEAT
    if when < 4 * BAR or when >= total - 2.0:
        continue
    add(kick, when, 0.32)
    add(hat, when + BEAT / 2, 0.07, 0.25)

mix = np.stack([mix_l, mix_r], axis=1)
mix *= (np.minimum(1.0, t / 2.0) * np.minimum(1.0, np.maximum(0.0, total - t) / 3.0))[:, None]
mix *= 0.89 / (np.max(np.abs(mix)) + 1e-9)

with wave.open(out_path, "wb") as w:
    w.setnchannels(2)
    w.setsampwidth(2)
    w.setframerate(SR)
    w.writeframes((mix * 32767).astype(np.int16).tobytes())
