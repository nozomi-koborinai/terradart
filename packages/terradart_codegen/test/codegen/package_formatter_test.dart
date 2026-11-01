import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:terradart_codegen/src/codegen/package_formatter.dart';
import 'package:test/test.dart';

void main() {
  late Directory tmp;
  setUp(() async => tmp = await Directory.systemTemp.createTemp('pkg_fmt_'));
  tearDown(() => tmp.delete(recursive: true));

  void pubspec(String dir, String body) {
    Directory(dir).createSync(recursive: true);
    File(p.join(dir, 'pubspec.yaml')).writeAsStringSync(body);
  }

  test('formats at the SDK floor of the nearest pubspec', () {
    pubspec(tmp.path, 'name: outer\nenvironment:\n  sdk: ^3.7.0\n');
    final pkg = p.join(tmp.path, 'packages', 'inner');
    pubspec(pkg, "name: inner\nenvironment:\n  sdk: '>=3.10.2 <4.0.0'\n");
    expect(
      packageFormatter(
        p.join(pkg, 'lib', 'src', 'not_yet.dart'),
      ).languageVersion,
      Version(3, 10, 0),
    );
    expect(packageFormatter(tmp.path).languageVersion, Version(3, 7, 0));
  });

  test('formats at the newest version outside a package or without a '
      'floor', () {
    expect(
      packageFormatter(p.join(tmp.path, 'lib')).languageVersion,
      DartFormatter.latestLanguageVersion,
    );
    pubspec(tmp.path, 'name: bare\n');
    expect(
      packageFormatter(tmp.path).languageVersion,
      DartFormatter.latestLanguageVersion,
    );
  });
}
