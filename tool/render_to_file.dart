// ignore_for_file: avoid_print
import 'dart:io';
import 'package:args/args.dart';
import 'render_formula.dart';

/// One binary `release-binary.yml` ships: its Homebrew formula class, the
/// binary (and asset) name, the formula description and the smoke test the
/// formula runs (`assert_match "<binName>", shell_output("<binName> <testCmd>")`).
typedef BinaryTool = ({
  String className,
  String binName,
  String desc,
  String testCmd,
});

/// Every shipped binary, keyed as the `--out-<key>` option of this script.
/// Keep in sync with the `tool` matrix of `.github/workflows/release-binary.yml`
/// (`render_to_file_test.dart` checks that).
const tools = <String, BinaryTool>{
  'mcp': (
    className: 'TerradartMcp',
    binName: 'terradart-mcp',
    desc: 'MCP server exposing the curated GCP factory catalog of TerraDart',
    testCmd: '--version',
  ),
  'coverage': (
    className: 'TerradartCoverage',
    binName: 'terradart-coverage',
    desc: 'Terraform coverage checker for TerraDart',
    testCmd: '--help',
  ),
  'migrate': (
    className: 'TerradartMigrate',
    binName: 'terradart-migrate',
    desc: 'HCL to Dart migrator for TerraDart (Terraform source tree to Stacks)',
    testCmd: '--version',
  ),
};

/// The release asset suffixes a formula covers (Windows has no formula).
const formulaSuffixes = ['darwin-arm64', 'darwin-amd64', 'linux-amd64'];

/// Reads the sha256 hex digest from a sidecar file.
///
/// The sidecar file contains a single line: the hex digest (no filename).
String readSha(String shaDir, String assetName) {
  final f = File('$shaDir/$assetName.sha256');
  return f.readAsStringSync().trim();
}

/// Assembles the download URL for a release asset.
String assetUrl(String version, String assetName) =>
    'https://github.com/nozomi-koborinai/terradart/releases/download/v$version/$assetName';

/// Per-platform `(url, sha256)` of [binName]'s release assets at [version],
/// the digests read from the sidecars in [shaDir].
Map<String, (String, String)> buildAssets(
  String version,
  String shaDir,
  String binName,
) {
  return {
    for (final suffix in formulaSuffixes)
      suffix: (
        assetUrl(version, '$binName-$suffix'),
        readSha(shaDir, '$binName-$suffix'),
      ),
  };
}

/// Renders the formula of every tool in [tools]: key → Ruby source.
Map<String, String> renderFormulas({
  required String version,
  required String shaDir,
}) {
  return {
    for (final e in tools.entries)
      e.key: renderFormula(
        className: e.value.className,
        binName: e.value.binName,
        desc: e.value.desc,
        version: version,
        testCmd: e.value.testCmd,
        assets: buildAssets(version, shaDir, e.value.binName),
      ),
  };
}

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption('version', abbr: 'v', mandatory: true)
    ..addOption('sha-dir', mandatory: true);
  for (final key in tools.keys) {
    parser.addOption('out-$key', mandatory: true);
  }

  final results = parser.parse(args);
  // Read every option before writing anything: a missing mandatory option
  // throws here, not after the first formula has landed in the tap.
  final version = results['version'] as String;
  final shaDir = results['sha-dir'] as String;
  final outs = {for (final key in tools.keys) key: results['out-$key'] as String};

  final formulas = renderFormulas(version: version, shaDir: shaDir);
  for (final e in formulas.entries) {
    final out = outs[e.key]!;
    File(out).writeAsStringSync(e.value);
    print('wrote $out');
  }
}
