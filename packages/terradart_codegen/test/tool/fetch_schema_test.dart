import 'dart:io';

import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

// Import the script as a library. Dart allows importing a script file
// directly; the `main()` function is simply unused from tests.
import '../../../../tool/fetch_schema.dart';

void main() {
  group('findLatestInMajor', () {
    test('picks the highest v7.x.y across mixed major versions', () {
      final releases = [
        {'tag_name': 'v7.31.0'},
        {'tag_name': 'v7.32.1'},
        {'tag_name': 'v6.99.0'},
        {'tag_name': 'v8.0.0'},
      ];
      expect(findLatestInMajor(releases, 7), Version.parse('7.32.1'));
    });

    test('ignores prereleases and drafts', () {
      final releases = [
        {'tag_name': 'v7.31.0'},
        {'tag_name': 'v7.32.0', 'prerelease': true},
        {'tag_name': 'v7.33.0', 'draft': true},
      ];
      expect(findLatestInMajor(releases, 7), Version.parse('7.31.0'));
    });

    test('returns null when no v7 release present', () {
      final releases = [
        {'tag_name': 'v6.0.0'},
        {'tag_name': 'v8.0.0'},
      ];
      expect(findLatestInMajor(releases, 7), isNull);
    });

    test('handles tag with no leading v', () {
      final releases = [
        {'tag_name': '7.40.0'},
      ];
      expect(findLatestInMajor(releases, 7), Version.parse('7.40.0'));
    });
  });

  group('findMaxMajor', () {
    test('returns highest version across all majors', () {
      final releases = [
        {'tag_name': 'v7.31.0'},
        {'tag_name': 'v8.0.0'},
        {'tag_name': 'v6.99.0'},
      ];
      expect(findMaxMajor(releases), Version.parse('8.0.0'));
    });

    test('returns null on empty list', () {
      expect(findMaxMajor(<Map<String, dynamic>>[]), isNull);
    });
  });

  group('findLatestInMajor for other lanes', () {
    test('cloudflare v4 maintenance releases never count as latest', () {
      final releases = [
        {'tag_name': 'v4.52.9'},
        {'tag_name': 'v5.26.0'},
        {'tag_name': 'v4.52.10'},
        {'tag_name': 'v5.19.0-beta.5'},
      ];
      expect(findLatestInMajor(releases, 5), Version.parse('5.26.0'));
    });

    test('a prerelease suffix is skipped even when not flagged', () {
      final releases = [
        {'tag_name': 'v5.18.0'},
        {'tag_name': 'v5.19.0-beta.1'},
      ];
      expect(findLatestInMajor(releases, 5), Version.parse('5.18.0'));
    });
  });

  group('bumpState', () {
    test(
      'an older major published later is neither latest nor a new major',
      () {
        final state = bumpState(
          [
            {'tag_name': 'v5.23.0'},
            {'tag_name': 'v5.26.0'},
            {'tag_name': 'v4.52.9'},
          ],
          repo: 'cloudflare/terraform-provider-cloudflare',
          major: 5,
          current: Version.parse('5.23.0'),
        );
        expect(state, {
          'repo': 'cloudflare/terraform-provider-cloudflare',
          'major': 5,
          'latest': '5.26.0',
          'current': '5.23.0',
          'max_major_version': '5',
          'bump_needed': true,
          'new_major_available': false,
        });
      },
    );

    test('a newer major is reported without bumping into it', () {
      final state = bumpState(
        [
          {'tag_name': 'v7.46.1'},
          {'tag_name': 'v8.0.0'},
        ],
        repo: 'hashicorp/terraform-provider-google',
        major: 7,
        current: Version.parse('7.46.1'),
      );
      expect(state['bump_needed'], isFalse);
      expect(state['new_major_available'], isTrue);
      expect(state['max_major_version'], '8');
    });
  });

  group('laneBumpCoordinates', () {
    const yaml = '''
providers:
  aws:
    source: hashicorp/aws
    bump:
      mode: auto
      repo: hashicorp/terraform-provider-aws
      major: 6
  appwrite:
    source: appwrite/appwrite
''';

    test('reads bump.repo and bump.major', () {
      expect(laneBumpCoordinates(yaml, 'aws'), (
        repo: 'hashicorp/terraform-provider-aws',
        major: 6,
      ));
    });

    test('a lane without a bump block is a usage error', () {
      expect(
        () => laneBumpCoordinates(yaml, 'appwrite'),
        throwsFormatException,
      );
      expect(() => laneBumpCoordinates(yaml, 'nope'), throwsFormatException);
    });

    test(
      'every bumped lane in tool/providers.yaml names its repo and major',
      () {
        final text = File('../../tool/providers.yaml').readAsStringSync();
        for (final lane in ['google', 'aws', 'cloudflare']) {
          expect(laneBumpCoordinates(text, lane).repo, isNotEmpty);
        }
      },
    );
  });

  group('tryParseVersion', () {
    test('parses valid semver', () {
      expect(tryParseVersion('7.31.0'), Version.parse('7.31.0'));
    });
    test('returns null on garbage', () {
      expect(tryParseVersion('not-a-version'), isNull);
      expect(tryParseVersion(''), isNull);
    });
  });
}
