// Prints the workspace packages as a JSON array for the CI test and
// publish dry-run matrices. Examples are not included.
//
//   dart tool/ci_packages.dart
import 'dart:convert';
import 'dart:io';

import 'lane_surface.dart';

void main() {
  stdout.write(
    jsonEncode(workspacePackageNames(File('pubspec.yaml').readAsStringSync())),
  );
}
