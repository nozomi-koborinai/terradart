import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

// dart_style formatting is language-versioned; match dart format / pana
// by using the nearest pubspec.yaml's environment.sdk floor instead of latestLanguageVersion.
DartFormatter packageFormatter(String path) =>
    DartFormatter(languageVersion: _languageVersion(path));

Version _languageVersion(String path) {
  var dir = p.absolute(p.normalize(path));
  while (true) {
    final pubspec = File(p.join(dir, 'pubspec.yaml'));
    if (pubspec.existsSync()) return _sdkFloor(pubspec);
    final parent = p.dirname(dir);
    if (parent == dir) return DartFormatter.latestLanguageVersion;
    dir = parent;
  }
}

Version _sdkFloor(File pubspec) {
  final yaml = loadYaml(pubspec.readAsStringSync());
  final sdk = yaml is Map && yaml['environment'] is Map
      ? (yaml['environment'] as Map)['sdk']
      : null;
  final constraint = sdk is String ? VersionConstraint.parse(sdk) : null;
  final min = constraint is VersionRange ? constraint.min : null;
  if (min == null) return DartFormatter.latestLanguageVersion;
  return Version(min.major, min.minor, 0);
}
