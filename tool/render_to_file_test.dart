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
}
