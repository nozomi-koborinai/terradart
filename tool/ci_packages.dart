import 'dart:convert';
import 'dart:io';

import 'lane_surface.dart';

void main() {
  stdout.write(
    jsonEncode(workspacePackageNames(File('pubspec.yaml').readAsStringSync())),
  );
}
