import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/skill/marker.dart';

const skillSource = 'skills/terradart/SKILL.md';
const bundledSkillDart =
    'packages/terradart_cli/lib/src/assets/skill_md.g.dart';
const cliPubspec = 'packages/terradart_cli/pubspec.yaml';

String cliPubspecVersion(String root) {
  final text = File(p.join(root, cliPubspec)).readAsStringSync();
  return RegExp(
    r'^version:\s*(\S+)',
    multiLine: true,
  ).firstMatch(text)!.group(1)!;
}

String renderBundledSkill(String skill) {
  if (skill.contains("'''")) {
    throw const FormatException(
      "$skillSource: holds ''', which the constant cannot",
    );
  }
  return '// GENERATED FILE - DO NOT EDIT\n'
      '// `dart tool/sync_bundled_skill.dart --fix` copies $skillSource here;\n'
      '// tool/bundled_skill_test.dart fails when the two differ.\n'
      '\n'
      '/// `$skillSource`, byte for byte: the agent skill\n'
      '/// `terradart skill install` writes.\n'
      "const String bundledSkillMd = r'''\n"
      "$skill''';\n";
}

List<String> syncBundledSkill(String root, {bool fix = false}) {
  final stale = <String>[];
  final source = File(p.join(root, skillSource));
  final text = source.readAsStringSync();
  final skill = withSkillMarker(text, cliPubspecVersion(root));
  if (skill != text) {
    stale.add(skillSource);
    if (fix) source.writeAsStringSync(skill);
  }
  final bundled = File(p.join(root, bundledSkillDart));
  final dart = renderBundledSkill(skill);
  if (!bundled.existsSync() || bundled.readAsStringSync() != dart) {
    stale.add(bundledSkillDart);
    if (fix) {
      bundled.parent.createSync(recursive: true);
      bundled.writeAsStringSync(dart);
    }
  }
  return stale;
}

void main(List<String> args) {
  final fix = args.contains('--fix');
  final root = p.normalize(
    p.join(p.dirname(Platform.script.toFilePath()), '..'),
  );
  final stale = syncBundledSkill(root, fix: fix);
  if (stale.isEmpty) {
    stdout.writeln('The bundled agent skill matches $skillSource.');
    return;
  }
  for (final f in stale) {
    stdout.writeln('${fix ? 'rewrote' : 'stale'}: $f');
  }
  if (!fix) {
    stderr.writeln('Run: dart tool/sync_bundled_skill.dart --fix');
    exitCode = 1;
  }
}
