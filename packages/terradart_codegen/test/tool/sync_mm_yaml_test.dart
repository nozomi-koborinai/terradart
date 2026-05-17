import 'package:test/test.dart';

import '../../../../tool/sync_mm_yaml.dart';

void main() {
  group('parseManifest', () {
    test('parses a well-formed manifest with mixed entries', () {
      const yaml = '''
upstream_repo: GoogleCloudPlatform/magic-modules
upstream_branch: main
files:
  google_kms_crypto_key:
    upstream: mmv1/products/kms/CryptoKey.yaml
  google_synthetic:
    upstream: null
    note: 'synthetic fixture for tests'
''';
      final m = parseManifest(yaml);
      expect(m.upstreamRepo, 'GoogleCloudPlatform/magic-modules');
      expect(m.upstreamBranch, 'main');
      expect(m.files.length, 2);
      expect(
          m.files['google_kms_crypto_key'], 'mmv1/products/kms/CryptoKey.yaml');
      expect(m.files['google_synthetic'], isNull);
    });

    test('rejects missing upstream_repo', () {
      const yaml = '''
upstream_branch: main
files: {}
''';
      expect(() => parseManifest(yaml), throwsFormatException);
    });

    test('rejects non-string upstream value', () {
      const yaml = '''
upstream_repo: x/y
upstream_branch: main
files:
  google_x:
    upstream: 42
''';
      expect(() => parseManifest(yaml), throwsFormatException);
    });
  });

  group('Manifest helpers', () {
    test('urlFor composes the raw.githubusercontent.com URL', () {
      final m = Manifest(
        upstreamRepo: 'GoogleCloudPlatform/magic-modules',
        upstreamBranch: 'main',
        files: {},
      );
      expect(
        m.urlFor('mmv1/products/kms/CryptoKey.yaml'),
        'https://raw.githubusercontent.com/GoogleCloudPlatform/magic-modules/main/mmv1/products/kms/CryptoKey.yaml',
      );
    });

    test('realFileCount excludes synthetic (null) entries', () {
      final m = Manifest(
        upstreamRepo: 'x/y',
        upstreamBranch: 'main',
        files: {
          'a': 'pathA',
          'b': null,
          'c': 'pathC',
        },
      );
      expect(m.realFileCount, 2);
    });
  });
}
