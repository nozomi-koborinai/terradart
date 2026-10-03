#!/usr/bin/env node
// Records the terminal beats of the release clip with VHS and gathers the
// real files and the site shot the composition shows. Everything lands in
// public/, which render.mjs and `npm run studio` read.
//
//   node capture.mjs [--bin-dir DIR] [--sandbox-path] [--skip-site]
//                    [--rehearse-packages DIR]
//
// --bin-dir       a directory holding the `terradart` to record (default:
//                 the one on PATH, i.e. `dart pub global activate terradart_cli`)
// --sandbox-path  record with a PATH that leaves out terraform and tofu
//                 instead of requiring them to be absent; for rehearsals only,
//                 since the clip then shows "command not found" on a machine
//                 that has Terraform installed
// --skip-site     keep the existing public/site.png
// --rehearse-packages DIR
//                 between the beats, point the scaffold's terradart_* packages
//                 at DIR/packages (a checkout of the unreleased version); for
//                 rehearsals before the release is on pub.dev
//
// Needs vhs, ttyd, ffmpeg and google-chrome on PATH, and Google credentials
// (GOOGLE_APPLICATION_CREDENTIALS as a file path or as the key JSON) for the
// plan: the google provider configures itself before planning, although a plan
// that only creates resources makes no API call.

import { execFileSync, spawnSync } from "node:child_process";
import fs from "node:fs";
import os from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { terradartDark } from "../../website/src/lib/syntax-themes.mjs";

const here = path.dirname(fileURLToPath(import.meta.url));
const pub = path.join(here, "public");
const args = process.argv.slice(2);
const flag = (name) => args.includes(name);
const option = (name) => {
  const i = args.indexOf(name);
  return i >= 0 ? args[i + 1] : undefined;
};

const which = (cmd, envPath = process.env.PATH) =>
  envPath
    .split(path.delimiter)
    .map((dir) => path.join(dir, cmd))
    .find((file) => fs.existsSync(file));

const die = (message) => {
  console.error(`capture.mjs: ${message}`);
  process.exit(64);
};

for (const tool of ["vhs", "ttyd", "ffmpeg"]) {
  if (!which(tool)) die(`${tool} is not on PATH`);
}

const work = fs.mkdtempSync(path.join(os.tmpdir(), "terradart-promo-"));
const binDir = option("--bin-dir");

// The shell VHS records gets this PATH.
let shellPath = binDir ? `${binDir}${path.delimiter}${process.env.PATH}` : process.env.PATH;
if (flag("--sandbox-path")) {
  const farm = path.join(work, "path");
  fs.mkdirSync(farm);
  const linked = new Set();
  for (const dir of process.env.PATH.split(path.delimiter)) {
    if (!fs.existsSync(dir) || (binDir && dir === binDir)) continue;
    for (const name of fs.readdirSync(dir)) {
      if (name === "terraform" || name === "tofu" || linked.has(name)) continue;
      linked.add(name);
      fs.symlinkSync(path.join(dir, name), path.join(farm, name));
    }
  }
  shellPath = [binDir, farm].filter(Boolean).join(path.delimiter);
} else {
  for (const engine of ["terraform", "tofu"]) {
    const found = which(engine, shellPath);
    if (found) {
      die(`${found} is on PATH; the clip claims no engine is installed. Move it aside for the take, or rehearse with --sandbox-path.`);
    }
  }
}
if (!which("terradart", shellPath)) die("no terradart on PATH (dart pub global activate terradart_cli, or --bin-dir)");

let credentials = process.env.GOOGLE_APPLICATION_CREDENTIALS ?? "";
if (credentials.trim().startsWith("{")) {
  const file = path.join(work, "gcp.json");
  fs.writeFileSync(file, credentials, { mode: 0o600 });
  credentials = file;
}
if (!credentials || !fs.existsSync(credentials)) die("GOOGLE_APPLICATION_CREDENTIALS names no key file or JSON");

// A Flutter app as `flutter create` leaves its pubspec, cut to what
// `terradart init` reads; the clip never runs Flutter.
const app = path.join(work, "my_app");
fs.mkdirSync(path.join(app, "lib"), { recursive: true });
fs.writeFileSync(
  path.join(app, "pubspec.yaml"),
  "name: my_app\npublish_to: none\n\nenvironment:\n  sdk: ^3.10.0\n\ndependencies:\n  flutter:\n    sdk: flutter\n\nflutter:\n  uses-material-design: true\n",
);
fs.writeFileSync(
  path.join(app, "lib", "main.dart"),
  "import 'package:flutter/material.dart';\n\nvoid main() => runApp(const MaterialApp(home: Scaffold()));\n",
);
// Telemetry notice of a first `dart` run: once per machine, not part of the story.
spawnSync("dart", ["--disable-analytics"], { stdio: "ignore" });

// The landing page's dark syntax palette, with every ANSI hue mapped into the
// brand corridor: OpenTofu's green `+ create` and bold colours come out as
// Dart cyan, paper or the one warm string tone.
const c = terradartDark.colors;
const palette = {
  background: c["editor.background"],
  foreground: c["editor.foreground"],
  cursor: "#4DD0FE",
  selection: "#1F2430",
  black: "#0B0D12",
  red: "#E5CF9E",
  green: "#4DD0FE",
  yellow: "#E5CF9E",
  blue: "#0F8FD8",
  magenta: "#8FD3FF",
  cyan: "#4DD0FE",
  white: "#D5D9E2",
  brightBlack: "#6B7385",
  brightRed: "#E5CF9E",
  brightGreen: "#4DD0FE",
  brightYellow: "#F6F3EC",
  brightBlue: "#5EB4F0",
  brightMagenta: "#8FD3FF",
  brightCyan: "#4DD0FE",
  brightWhite: "#F6F3EC",
};

// Recorded larger than it is shown, so a zoom stays sharp; the composition
// lays the window out from the same numbers.
const term = JSON.parse(fs.readFileSync(path.join(here, "storyboard.json"), "utf8")).terminal;
const settings = `Set Shell bash
Set FontFamily "JetBrains Mono"
Set FontSize ${term.fontSize}
Set LineHeight ${term.lineHeight}
Set Width ${term.width}
Set Height ${term.height}
Set Padding ${term.padding}
Set Margin 0
Set BorderRadius 0
Set Framerate 30
Set TypingSpeed 100ms
Set CursorBlink false
Set Theme ${JSON.stringify(palette)}
`;

const prompt = String.raw`\[\e[38;2;77;208;254m\]$\[\e[0m\] `;
// Empty, so the take downloads OpenTofu on screen, and short, so the
// "Installed OpenTofu ... at <path>" line fits a zoomed shot.
const cache = fs.mkdtempSync("/tmp/td-");
const setup = (cwd) => `Hide
Type "export PATH='${shellPath}' GOOGLE_APPLICATION_CREDENTIALS='${credentials}' TERRADART_CACHE_DIR='${cache}' PS1='${prompt}' && cd '${cwd}' && clear"
Enter
Sleep 600ms
`;

const clips = path.join(pub, "clips");
fs.mkdirSync(clips, { recursive: true });
const tapes = [
  ["01-init", app],
  ["02-plan", path.join(app, "infra")],
];
const rehearse = option("--rehearse-packages");
for (const [name, cwd] of tapes) {
  if (rehearse && name === "02-plan") {
    const spec = path.join(cwd, "pubspec.yaml");
    const names = [...fs.readFileSync(spec, "utf8").matchAll(/^  (terradart_\w+):/gm)].map((m) => m[1]);
    fs.appendFileSync(
      spec,
      `\ndependency_overrides:\n${names.map((n) => `  ${n}:\n    path: ${path.join(rehearse, "packages", n)}\n`).join("")}`,
    );
    execFileSync("dart", ["pub", "get"], { cwd, stdio: "ignore" });
  }
  const body = fs.readFileSync(path.join(here, "tapes", `${name}.tape`), "utf8");
  const out = path.join(clips, `${name}.mp4`);
  const tape = path.join(work, `${name}.tape`);
  fs.writeFileSync(tape, `Output "${out}"\n${settings}\n${setup(cwd)}\n${body}`);
  console.log(`>> vhs ${name}`);
  fs.rmSync(out, { force: true });
  // vhs exits 0 when a Wait times out, so the clip is the only proof it recorded.
  const run = spawnSync("vhs", [tape], { stdio: ["ignore", "inherit", "pipe"], cwd: work, encoding: "utf8" });
  if (run.status !== 0 || /recording failed/.test(run.stderr) || !fs.existsSync(out)) {
    die(`vhs ${name} did not record:\n${run.stderr}`);
  }
}

// The app's side of the typed outputs: the call site the Flutter quickstart
// has (a top-level reader, a getter in a widget), written against the reader
// this take generated and analyzed against it, so the beat shows real API.
const reader = fs.readFileSync(path.join(app, "lib", "generated", "infra.g.dart"), "utf8");
const outputsClass = /final class (\w+Outputs) \{/.exec(reader)?.[1];
const getter = /^ {2}String get (\w+) \{/m.exec(reader)?.[1];
if (!outputsClass || !getter) die("the generated reader has no Outputs class with a String getter");
const mainDart = `import 'package:flutter/material.dart';

import 'generated/infra.g.dart';

const outputs = ${outputsClass}.fromDartDefine();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Center(child: Text(outputs.${getter})),
        ),
      );
}
`;
fs.writeFileSync(path.join(app, "lib", "main.dart"), mainDart);
const check = path.join(work, "outputs_check");
fs.mkdirSync(path.join(check, "lib", "generated"), { recursive: true });
fs.writeFileSync(path.join(check, "pubspec.yaml"), "name: outputs_check\npublish_to: none\n\nenvironment:\n  sdk: ^3.10.0\n");
fs.copyFileSync(path.join(app, "lib", "generated", "infra.g.dart"), path.join(check, "lib", "generated", "infra.g.dart"));
fs.writeFileSync(
  path.join(check, "lib", "check.dart"),
  `import 'generated/infra.g.dart';\n\nconst outputs = ${outputsClass}.fromDartDefine();\n\nString read() => outputs.${getter};\n`,
);
execFileSync("dart", ["pub", "get"], { cwd: check, stdio: "ignore" });
const analyze = spawnSync("dart", ["analyze", "--fatal-infos", "lib/check.dart"], { cwd: check, encoding: "utf8" });
if (analyze.status !== 0) die(`the app snippet does not analyze against the generated reader:\n${analyze.stdout}`);

// The files the code beats show, as this take generated them; `.txt` keeps
// `dart analyze` at the repository root from reading them.
const files = path.join(pub, "files");
fs.mkdirSync(files, { recursive: true });
fs.copyFileSync(path.join(app, "infra", "lib", "stack.dart"), path.join(files, "stack.dart.txt"));
fs.copyFileSync(path.join(app, "lib", "main.dart"), path.join(files, "main.dart.txt"));
fs.writeFileSync(
  path.join(files, "versions.json"),
  JSON.stringify(
    {
      // `terradart init` pins the packages at its own lockstep version.
      terradart: /terradart_core: \^?(\S+)/.exec(fs.readFileSync(path.join(app, "infra", "pubspec.yaml"), "utf8"))?.[1],
      capturedAt: new Date().toISOString(),
    },
    null,
    2,
  ),
);

if (!flag("--skip-site")) {
  const chrome = which("google-chrome") ?? which("chromium");
  if (!chrome) die("google-chrome is not on PATH (or pass --skip-site)");
  console.log(">> terradart.dev");
  const site = path.join(pub, "site.png");
  fs.rmSync(site, { force: true });
  // Chrome can stay up after writing the shot, so the file, not the exit, ends the step.
  spawnSync(chrome, [
    "--headless=new",
    "--hide-scrollbars",
    "--window-size=1600,1000",
    "--force-device-scale-factor=2",
    "--virtual-time-budget=8000",
    `--screenshot=${site}`,
    "https://terradart.dev/",
  ], { stdio: "ignore", timeout: 60_000, killSignal: "SIGKILL" });
  if (!fs.existsSync(site)) die("no screenshot of terradart.dev");
}

console.log(`capture: OK (${pub})`);
