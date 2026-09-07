import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import '../tool/render_to_file.dart' as rif;

void main() {
  late Directory tmpDir;

  setUp(() {
    tmpDir = Directory.systemTemp.createTempSync('render_to_file_test_');
  });

  tearDown(() {
    tmpDir.deleteSync(recursive: true);
  });

  test('readSha reads hex digest from sidecar file', () {
    // Write a fake .sha256 sidecar (one-line hex digest, as Task 8 produces).
    final sidecar = File(p.join(tmpDir.path, 'terradart-mcp-darwin-arm64.sha256'));
    sidecar.writeAsStringSync('deadbeef1234\n');

    final sha = rif.readSha(tmpDir.path, 'terradart-mcp-darwin-arm64');
    expect(sha, equals('deadbeef1234'));
  });

  test('assetUrl assembles correct download URL', () {
    final url = rif.assetUrl('0.13.1', 'terradart-mcp-darwin-arm64');
    expect(
      url,
      equals(
        'https://github.com/nozomi-koborinai/terradart/releases/download/v0.13.1/terradart-mcp-darwin-arm64',
      ),
    );
  });

  test('assetUrl includes v-prefix tag segment', () {
    final url = rif.assetUrl('1.0.0', 'terradart-coverage-linux-amd64');
    expect(url, contains('/download/v1.0.0/'));
    expect(url, endsWith('terradart-coverage-linux-amd64'));
  });

  test('readSha strips trailing whitespace from digest', () {
    final sidecar = File(p.join(tmpDir.path, 'terradart-coverage-linux-amd64.sha256'));
    sidecar.writeAsStringSync('  abc123  \n');

    final sha = rif.readSha(tmpDir.path, 'terradart-coverage-linux-amd64');
    expect(sha, equals('abc123'));
  });

  test('renderFormulas renders one formula per shipped binary', () {
    for (final tool in rif.tools.values) {
      for (final suffix in rif.formulaSuffixes) {
        File(p.join(tmpDir.path, '${tool.binName}-$suffix.sha256'))
            .writeAsStringSync('sha-${tool.binName}-$suffix\n');
      }
    }
    final formulas = rif.renderFormulas(version: '0.28.0', shaDir: tmpDir.path);
    expect(formulas.keys, unorderedEquals(['mcp', 'coverage', 'migrate']));

    final migrate = formulas['migrate']!;
    expect(migrate, contains('class TerradartMigrate < Formula'));
    expect(migrate, contains('version "0.28.0"'));
    expect(
      migrate,
      contains(
        'https://github.com/nozomi-koborinai/terradart/releases/download/v0.28.0/terradart-migrate-darwin-arm64',
      ),
    );
    expect(migrate, contains('sha256 "sha-terradart-migrate-linux-amd64"'));
    expect(
      migrate,
      contains('bin.install "terradart-migrate-darwin-amd64" => "terradart-migrate"'),
    );
    expect(migrate, contains('shell_output("#{bin}/terradart-migrate --version")'));
    expect(migrate, isNot(contains('terradart-mcp')));

    expect(formulas['mcp'], contains('class TerradartMcp < Formula'));
    expect(formulas['coverage'], contains('shell_output("#{bin}/terradart-coverage --help")'));
  });

  test('renderFormulas fails on a missing sha256 sidecar', () {
    expect(
      () => rif.renderFormulas(version: '0.28.0', shaDir: tmpDir.path),
      throwsA(isA<FileSystemException>()),
    );
  });

  test('release-binary.yml builds and taps every tool renderFormulas knows', () {
    // Runs from the repo root (dart test tool/...), like agent_verify.sh and CI.
    final workflow = File('.github/workflows/release-binary.yml').readAsStringSync();
    for (final e in rif.tools.entries) {
      final bin = e.value.binName;
      expect(workflow, contains('name: $bin,'), reason: '$bin missing from the build matrix');
      expect(workflow, contains('--out-${e.key} tap/Formula/$bin.rb'), reason: '$bin formula not rendered');
      expect(workflow, contains('Formula/$bin.rb'), reason: '$bin formula not committed to the tap');
    }
  });
}
