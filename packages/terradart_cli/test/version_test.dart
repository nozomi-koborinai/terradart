import 'dart:io';

import 'package:terradart_cli/src/assets/skill_md.g.dart';
import 'package:terradart_cli/src/skill/marker.dart';
import 'package:terradart_cli/src/version.dart';
import 'package:test/test.dart';

void main() {
  test('cliVersion matches pubspec.yaml (lockstep)', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final version = RegExp(
      r'^version:\s*(\S+)',
      multiLine: true,
    ).firstMatch(pubspec)!.group(1);
    expect(cliVersion, version);
  });

  test('the bundled skill records this version and its own hash', () {
    final marker = SkillMarker.parse(bundledSkillMd);
    expect(marker, isNotNull, reason: 'no terradart-version marker');
    expect(marker!.version, cliVersion);
    expect(marker.sha256, skillContentHash(bundledSkillMd));
  });
}
