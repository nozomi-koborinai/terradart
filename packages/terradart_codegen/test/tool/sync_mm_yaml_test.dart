import 'dart:io';

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
        m.files['google_kms_crypto_key'],
        'mmv1/products/kms/CryptoKey.yaml',
      );
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
        files: {'a': 'pathA', 'b': null, 'c': 'pathC'},
      );
      expect(m.realFileCount, 2);
    });
  });

  group('upstream_ref pin', () {
    late Directory tmp;
    setUp(() => tmp = Directory.systemTemp.createTempSync('mm_pin_'));
    tearDown(() => tmp.deleteSync(recursive: true));

    const sha = '0123456789abcdef0123456789abcdef01234567';

    Manifest pinned({String version = '8.1.0'}) {
      File('${tmp.path}/provider_version.txt').writeAsStringSync('$version\n');
      return parseManifest('''
upstream_repo: GoogleCloudPlatform/magic-modules
upstream_ref:
  provider_repo: hashicorp/terraform-provider-google
  provider_version_file: ${tmp.path}/provider_version.txt
  ref_file: ${tmp.path}/mm_upstream_ref.txt
files: {}
''');
    }

    test('parses the provider pin', () {
      final m = pinned();
      expect(m.upstreamBranch, isNull);
      expect(
        m.providerPin!.providerRepo,
        'hashicorp/terraform-provider-google',
      );
      expect(m.providerPin!.refFile, '${tmp.path}/mm_upstream_ref.txt');
      expect(
        m.urlFor('mmv1/products/kms/CryptoKey.yaml', ref: sha),
        'https://raw.githubusercontent.com/GoogleCloudPlatform/magic-modules/'
        '$sha/mmv1/products/kms/CryptoKey.yaml',
      );
    });

    test('rejects both upstream_branch and upstream_ref, or neither', () {
      expect(
        () => parseManifest('''
upstream_repo: x/y
upstream_branch: main
upstream_ref:
  provider_repo: a/b
  provider_version_file: v.txt
files: {}
'''),
        throwsFormatException,
      );
      expect(
        () => parseManifest('upstream_repo: x/y\nfiles: {}\n'),
        throwsFormatException,
      );
      expect(
        () => parseManifest('''
upstream_repo: x/y
upstream_ref:
  provider_repo: a/b
files: {}
'''),
        throwsFormatException,
      );
    });

    test('resolves the stamp nearest the release tag', () async {
      String? asked;
      final ref = await resolveUpstreamRef(
        pinned(),
        commitMessages: (repo, tag) async {
          asked = '$repo@$tag';
          return [
            'Update CHANGELOG for version 8.1.0 (#29107)',
            'cloudrunv2: support 0.0 (#18820) (#29081)\n\n[upstream:$sha]\n',
            'older (#1)\n\n[upstream:${'f' * 40}]',
          ];
        },
      );
      expect(asked, 'hashicorp/terraform-provider-google@v8.1.0');
      expect(ref, sha);
    });

    test('fails when no commit near the tag is stamped', () {
      expect(
        resolveUpstreamRef(
          pinned(),
          commitMessages: (_, _) async => ['Update CHANGELOG'],
        ),
        throwsStateError,
      );
    });

    test(
      '--ref overrides the pin; an unpinned manifest reads its branch',
      () async {
        expect(
          await resolveUpstreamRef(
            pinned(),
            override: 'main',
            commitMessages: (_, _) => fail('must not look up the tag'),
          ),
          'main',
        );
        final branch = parseManifest(
          'upstream_repo: x/y\nupstream_branch: main\nfiles: {}\n',
        );
        expect(await resolveUpstreamRef(branch), 'main');
        expect(recordedUpstreamRef(branch), 'main');
      },
    );

    test('recordedUpstreamRef reads the ref file the sync wrote', () {
      final m = pinned();
      expect(() => recordedUpstreamRef(m), throwsStateError);
      File(m.providerPin!.refFile!).writeAsStringSync('$sha\n');
      expect(recordedUpstreamRef(m), sha);
    });
  });
}
