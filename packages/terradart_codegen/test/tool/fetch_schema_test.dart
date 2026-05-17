import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

// Import the script as a library. Dart allows importing a script file
// directly; the `main()` function is simply unused from tests.
import '../../../../tool/fetch_schema.dart';

void main() {
  group('findLatestV7', () {
    test('picks the highest v7.x.y across mixed major versions', () {
      final releases = [
        {'tag_name': 'v7.31.0'},
        {'tag_name': 'v7.32.1'},
        {'tag_name': 'v6.99.0'},
        {'tag_name': 'v8.0.0'},
      ];
      expect(findLatestV7(releases), Version.parse('7.32.1'));
    });

    test('ignores prereleases and drafts', () {
      final releases = [
        {'tag_name': 'v7.31.0'},
        {'tag_name': 'v7.32.0', 'prerelease': true},
        {'tag_name': 'v7.33.0', 'draft': true},
      ];
      expect(findLatestV7(releases), Version.parse('7.31.0'));
    });

    test('returns null when no v7 release present', () {
      final releases = [
        {'tag_name': 'v6.0.0'},
        {'tag_name': 'v8.0.0'},
      ];
      expect(findLatestV7(releases), isNull);
    });

    test('handles tag with no leading v', () {
      final releases = [
        {'tag_name': '7.40.0'},
      ];
      expect(findLatestV7(releases), Version.parse('7.40.0'));
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
