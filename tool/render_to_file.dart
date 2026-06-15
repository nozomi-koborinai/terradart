// ignore_for_file: avoid_print
import 'dart:io';
import 'package:args/args.dart';
import 'render_formula.dart';

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

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption('version', abbr: 'v', mandatory: true)
    ..addOption('sha-dir', mandatory: true)
    ..addOption('out-mcp', mandatory: true)
    ..addOption('out-coverage', mandatory: true);

  final results = parser.parse(args);
  final version = results['version'] as String;
  final shaDir = results['sha-dir'] as String;
  final outMcp = results['out-mcp'] as String;
  final outCoverage = results['out-coverage'] as String;

  // Build per-platform asset maps for each tool.
  Map<String, (String, String)> buildAssets(String toolName) {
    return {
      for (final suffix in ['darwin-arm64', 'darwin-amd64', 'linux-amd64'])
        suffix: (
          assetUrl(version, '$toolName-$suffix'),
          readSha(shaDir, '$toolName-$suffix'),
        ),
    };
  }

  final mcpFormula = renderFormula(
    className: 'TerradartMcp',
    binName: 'terradart-mcp',
    desc: 'MCP server exposing the curated GCP factory catalog of TerraDart',
    version: version,
    testCmd: '--version',
    assets: buildAssets('terradart-mcp'),
  );

  final coverageFormula = renderFormula(
    className: 'TerradartCoverage',
    binName: 'terradart-coverage',
    desc: 'Terraform coverage checker for TerraDart',
    version: version,
    testCmd: '--help',
    assets: buildAssets('terradart-coverage'),
  );

  File(outMcp).writeAsStringSync(mcpFormula);
  print('wrote $outMcp');
  File(outCoverage).writeAsStringSync(coverageFormula);
  print('wrote $outCoverage');
}
