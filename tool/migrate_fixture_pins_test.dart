import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'migrate_fixture_pins.dart';

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
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(_hcl);
    expect(
      repinLaneFixtures(root.path, source: 'hashicorp/aws', version: '9.9.9'),
      ['demo/main.tf'],
    );
    expect(file.readAsStringSync(), contains('version = "9.9.9"'));
    expect(file.readAsStringSync(), contains('version = "~> 8.0"'));
    expect(
      repinLaneFixtures(root.path, source: 'hashicorp/aws', version: '9.9.9'),
      isEmpty,
    );
  });
}
