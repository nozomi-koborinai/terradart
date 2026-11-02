import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

/// The formatter `dart format` applies to a file at [path].
///
/// Its language version is the `environment.sdk` floor (major.minor) of the
/// nearest `pubspec.yaml` at or above [path], which is the package language
/// version `dart format` and pana format with. Style changes are language
/// versioned, so formatting at `latestLanguageVersion` instead drifts from
/// `dart format` whenever dart_style supports a newer version than the
/// package's floor. Without a pubspec or an SDK floor it is
/// `latestLanguageVersion`, as for a file outside any package. The walk is
/// lexical, so [path] need not exist yet.
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
