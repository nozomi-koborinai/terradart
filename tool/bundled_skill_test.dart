import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/skill/marker.dart';
import 'package:test/test.dart';

import 'sync_bundled_skill.dart';

void main() {
  final root = Directory.current.path;

  test('the CLI bundles skills/terradart/SKILL.md byte for byte, with a '
      'current marker', () {
    expect(
      syncBundledSkill(root),
      isEmpty,
      reason: 'run `dart tool/sync_bundled_skill.dart --fix`',
    );
  });

  test('the source records the CLI version and its own hash', () {
    final text = File(p.join(root, skillSource)).readAsStringSync();
    final marker = SkillMarker.parse(text);
    expect(marker, isNotNull);
    expect(marker!.version, cliPubspecVersion(root));
    expect(marker.sha256, skillContentHash(text));
  });

  group('withSkillMarker', () {
    const plain = '---\nname: x\ndescription: y\n---\n\n# Body\n';

    test('adds metadata lines, and the hash leaves them out', () {
      final marked = withSkillMarker(plain, '1.2.3');
      expect(
        marked,
        startsWith(
          '---\nname: x\ndescription: y\nmetadata:\n'
          '  terradart-version: "1.2.3"\n  terradart-sha256: "',
        ),
      );
      expect(marked, endsWith('"\n---\n\n# Body\n'));
      expect(SkillMarker.parse(marked)!.sha256, skillContentHash(marked));
    });

    test('a version bump keeps the hash; a body edit changes it', () {
      final a = withSkillMarker(plain, '1.2.3');
      final b = withSkillMarker(a, '1.3.0');
      expect(SkillMarker.parse(b)!.version, '1.3.0');
      expect(SkillMarker.parse(b)!.sha256, SkillMarker.parse(a)!.sha256);
      expect(withSkillMarker(b, '1.3.0'), b);
      expect(
        skillContentHash(b.replaceFirst('Body', 'Edited')),
        isNot(SkillMarker.parse(b)!.sha256),
      );
    });
  });
}
