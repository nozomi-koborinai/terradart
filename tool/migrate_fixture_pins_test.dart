import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'migrate_fixture_pins.dart';
import 'wrap_lanes.dart';

const _hcl = '''
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "1.2.3"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 8.0"
    }
    appwrite = {
      source  = "appwrite/appwrite"
      version = "1.0.0-beta.1"
    }
  }
}
''';

void main() {
  test('an exact pin moves and a range and another source stay', () {
    final after = repinFixture(_hcl, source: 'hashicorp/aws', version: '9.9.9');
    expect(after, _hcl.replaceFirst('"1.2.3"', '"9.9.9"'));
    expect(after, contains('version = "~> 8.0"'));
    expect(after, contains('version = "1.0.0-beta.1"'));
  });

  test('a prerelease moves', () {
    final after = repinFixture(
      _hcl,
      source: 'appwrite/appwrite',
      version: '3.0.0-rc.1',
    );
    expect(after, _hcl.replaceFirst('"1.0.0-beta.1"', '"3.0.0-rc.1"'));
    expect(after, contains('version = "1.2.3"'));
  });

  test('a range stays', () {
    expect(
      repinFixture(_hcl, source: 'hashicorp/google', version: '8.8.1'),
      _hcl,
    );
  });

  test('another source stays', () {
    expect(
      repinFixture(_hcl, source: 'hashicorp/google', version: '9.9.9'),
      _hcl,
    );
    final moved = repinFixture(_hcl, source: 'hashicorp/aws', version: '9.9.9');
    expect(moved, contains('"1.0.0-beta.1"'));
    expect(moved, contains('"~> 8.0"'));
  });

  test('a terraform equals pin moves', () {
    const hcl = '''
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 1.2.3"
    }
  }
}
''';
    final after = repinFixture(hcl, source: 'hashicorp/aws', version: '9.9.9');
    expect(after, contains('version = "9.9.9"'));
    expect(after, isNot(contains('= 1.2.3')));
  });

  test('a second call is a no-op', () {
    final once = repinFixture(_hcl, source: 'hashicorp/aws', version: '9.9.9');
    expect(repinFixture(once, source: 'hashicorp/aws', version: '9.9.9'), once);
  });

  test('repinLaneFixtures writes the changed files once', () {
    final root = Directory.systemTemp.createTempSync('repin-lane');
    addTearDown(() => root.deleteSync(recursive: true));
    final file = File(
      p.join(root.path, migrateFixturesRoot, 'lanes', 'demo', 'main.tf'),
    );
    final shape = File(
      p.join(root.path, migrateFixturesRoot, 'shapes', 'demo', 'main.tf.json'),
    );
    file.parent.createSync(recursive: true);
    shape.parent.createSync(recursive: true);
    file.writeAsStringSync(_hcl);
    shape.writeAsStringSync(
      '{"terraform":{"required_providers":{"aws":{"source":"hashicorp/aws","version":"1.2.3"}}}}\n',
    );
    expect(
      repinLaneFixtures(root.path, source: 'hashicorp/aws', version: '9.9.9'),
      ['demo/main.tf', 'shapes/demo/main.tf.json'],
    );
    expect(file.readAsStringSync(), contains('version = "9.9.9"'));
    expect(file.readAsStringSync(), contains('version = "~> 8.0"'));
    expect(shape.readAsStringSync(), contains('"version": "9.9.9"'));
    expect(
      repinLaneFixtures(root.path, source: 'hashicorp/aws', version: '9.9.9'),
      isEmpty,
    );
  });

  test(
    'repinFixture handles JSON list-form terraform blocks and equals pins',
    () {
      const json =
          '{"terraform":[{"required_providers":[{"aws":{"source":"hashicorp/aws","version":"= 6.72.0"}}]}]}\n';
      final after = repinFixture(
        json,
        source: 'hashicorp/aws',
        version: '6.73.0',
      );
      expect(after, contains('"version": "6.73.0"'));
      expect(after, isNot(contains('6.72.0')));
      expect(
        repinFixture(after, source: 'hashicorp/aws', version: '6.73.0'),
        after,
      );
    },
  );

  test(
    'every committed exact-pinned lane and shape fixture matches provider_version.txt',
    () {
      final lanes = parseWrapLanes(File(providersPath).readAsStringSync());
      for (final lane in lanes) {
        final version = File(
          p.join(lane.schemaDir, 'provider_version.txt'),
        ).readAsStringSync().trim();
        for (final sub in ['lanes', 'shapes']) {
          final dir = Directory(p.join(migrateFixturesRoot, sub));
          if (!dir.existsSync()) continue;
          for (final file in dir.listSync(recursive: true).whereType<File>()) {
            if (!file.path.endsWith('.tf') && !file.path.endsWith('.tf.json')) {
              continue;
            }
            final content = file.readAsStringSync();
            expect(
              repinFixture(content, source: lane.source, version: version),
              content,
              reason:
                  '${file.path} has a stale ${lane.source} pin (expected $version)',
            );
          }
        }
      }
    },
  );
}
