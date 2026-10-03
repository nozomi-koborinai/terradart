import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/assets/skill_md.g.dart';
import 'package:terradart_cli/src/skill/marker.dart';
import 'package:terradart_cli/src/version.dart';
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

import 'support.dart';

const agentsSkill = '.agents/skills/terradart/SKILL.md';
const claudeSkill = '.claude/skills/terradart/SKILL.md';

void main() {
  late TestProject project;
  setUp(() => project = TestProject.create());

  File skill(String rel) => File(project.path(rel));

  void put(String rel, String text) => skill(rel)
    ..parent.createSync(recursive: true)
    ..writeAsStringSync(text);

  Future<({int code, String out, String err})> run(List<String> args) =>
      project.run(args, FakeRunner());

  /// An older skill: other content, recorded at 0.1.0.
  final older = withSkillMarker(
    bundledSkillMd.replaceFirst('# TerraDart', '# TerraDart (old)'),
    '0.1.0',
  );

  group('skill install', () {
    test('writes the bundled skill to .agents and .claude', () async {
      final r = await run(['skill', 'install']);
      expect(r.code, 0, reason: r.err);
      for (final rel in [agentsSkill, claudeSkill]) {
        expect(skill(rel).readAsStringSync(), bundledSkillMd);
        expect(r.out, contains('wrote ${p.normalize(rel)} ($cliVersion)'));
      }
      expect(SkillMarker.parse(bundledSkillMd)!.version, cliVersion);

      final again = await run(['skill', 'install']);
      expect(again.code, 0);
      expect(again.out, contains('up to date: ${p.normalize(agentsSkill)}'));
    });

    test('--agents picks the directories', () async {
      final r = await run(['skill', 'install', '--agents', 'cursor,copilot']);
      expect(r.code, 0, reason: r.err);
      expect(skill('.cursor/skills/terradart/SKILL.md').existsSync(), isTrue);
      expect(skill('.github/skills/terradart/SKILL.md').existsSync(), isTrue);
      expect(skill(agentsSkill).existsSync(), isFalse);
    });

    test('--project writes into a directory without a pubspec.yaml', () async {
      final dir = Directory(project.path('elsewhere'))..createSync();
      final r = await run(['skill', 'install', '-C', 'elsewhere']);
      expect(r.code, 0, reason: r.err);
      expect(
        File(p.join(dir.path, agentsSkill)).readAsStringSync(),
        bundledSkillMd,
      );
    });
  });

  group('skill status', () {
    test('a project without the skill: missing, and --check fails', () async {
      final r = await run(['skill', 'status']);
      expect(r.code, 0);
      expect(r.out, contains('missing'));
      expect(r.out, contains('Next: terradart skill install'));
      expect((await run(['skill', 'status', '--check'])).code, 4);
    });

    test('a fresh install is current, and --check passes', () async {
      await run(['skill', 'install']);
      final r = await run(['skill', 'status', '--check']);
      expect(r.code, 0, reason: r.out);
      expect(RegExp('current').allMatches(r.out), hasLength(2));
    });

    test('an older skill is outdated', () async {
      put(agentsSkill, older);
      final r = await run(['skill', 'status', '--check']);
      expect(r.code, 4);
      expect(r.out, contains('outdated'));
      expect(r.out, contains('0.1.0 → $cliVersion'));
    });

    test('--json fails with skill_drift, not ok', () async {
      put(agentsSkill, older);
      final r = await run(['skill', 'status', '--check', '--json']);
      expect(r.code, 4);
      final json = jsonDecode(r.out.trim()) as Map<String, Object?>;
      expect(json['ok'], isFalse);
      expect(json['exitCode'], 4);
      expect(json['error'], containsPair('code', 'skill_drift'));
    });

    test('the same content under an older version is marker-only, and '
        'passes --check', () async {
      put(agentsSkill, withSkillMarker(bundledSkillMd, '0.1.0'));
      final r = await run(['skill', 'status', '--check']);
      expect(r.code, 0, reason: r.out);
      expect(r.out, contains('marker-only'));
    });

    test('edited, newer and foreign skills fail --check', () async {
      put(agentsSkill, '${bundledSkillMd}my note\n');
      put(claudeSkill, withSkillMarker(bundledSkillMd, '99.0.0'));
      put('.cursor/skills/terradart/SKILL.md', '---\nname: terradart\n---\n');
      final r = await run(['skill', 'status', '--check']);
      expect(r.code, 4);
      expect(r.out, contains('edited'));
      expect(r.out, contains('newer'));
      expect(r.out, contains('foreign'));
    });

    test('--agents names the directories that must hold it', () async {
      await run(['skill', 'install', '--agents', 'agents']);
      expect((await run(['skill', 'status', '--check'])).code, 0);
      expect(
        (await run([
          'skill',
          'status',
          '--check',
          '--agents',
          'agents,claude',
        ])).code,
        4,
      );
    });

    test('names npx skills when skills-lock.json records the skill', () async {
      await run(['skill', 'install']);
      File(project.path('skills-lock.json')).writeAsStringSync(
        jsonEncode({
          'version': 1,
          'skills': {
            'terradart': {'source': 'nozomi-koborinai/terradart'},
          },
        }),
      );
      final r = await run(['skill', 'status']);
      expect(r.out, contains('npx skills update terradart -p -y'));
    });
  });

  group('skill update', () {
    test('rewrites an outdated skill', () async {
      put(agentsSkill, older);
      final r = await run(['skill', 'update']);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('0.1.0 → $cliVersion'));
      expect(skill(agentsSkill).readAsStringSync(), bundledSkillMd);
      expect(skill(claudeSkill).existsSync(), isFalse);
    });

    test(
      'leaves local edits without --force, and --force overwrites them',
      () async {
        await run(['skill', 'install']);
        const edited = '${bundledSkillMd}my note\n';
        put(claudeSkill, edited);
        final r = await run(['skill', 'update']);
        expect(r.code, 5);
        expect(
          r.err,
          contains('skipped ${p.normalize(claudeSkill)}: local edits'),
        );
        expect(skill(claudeSkill).readAsStringSync(), edited);

        final forced = await run(['skill', 'update', '--force']);
        expect(forced.code, 0, reason: forced.err);
        expect(skill(claudeSkill).readAsStringSync(), bundledSkillMd);
      },
    );

    test('leaves a newer skill without --force', () async {
      final newer = withSkillMarker(bundledSkillMd, '99.0.0');
      put(agentsSkill, newer);
      final r = await run(['skill', 'update']);
      expect(r.code, 5);
      expect(r.err, contains('newer than this CLI'));
      expect(skill(agentsSkill).readAsStringSync(), newer);
    });

    test('--dry-run prints the diff and writes nothing', () async {
      put(agentsSkill, older);
      final r = await run(['skill', 'update', '--dry-run']);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('would update'));
      expect(r.out, contains('-# TerraDart (old)'));
      expect(r.out, contains('+# TerraDart'));
      expect(skill(agentsSkill).readAsStringSync(), older);
    });

    test('with nothing installed, points at install', () async {
      final r = await run(['skill', 'update']);
      expect(r.code, 1);
      expect(r.err, contains('Next: terradart skill install'));
    });

    test(
      'writes through a symlinked skill directory and keeps the link',
      () async {
        put(agentsSkill, older);
        Directory(project.path('.claude/skills')).createSync(recursive: true);
        Link(
          project.path('.claude/skills/terradart'),
        ).createSync(p.join('..', '..', '.agents', 'skills', 'terradart'));
        final r = await run(['skill', 'update']);
        expect(r.code, 0, reason: r.err);
        expect(
          FileSystemEntity.isLinkSync(project.path('.claude/skills/terradart')),
          isTrue,
        );
        expect(skill(claudeSkill).readAsStringSync(), bundledSkillMd);
      },
      skip: Platform.isWindows ? 'symlinks need privileges' : null,
    );

    test('warns that skills-lock.json no longer matches', () async {
      put(agentsSkill, older);
      File(
        project.path('skills-lock.json'),
      ).writeAsStringSync('{"version":1,"skills":{"terradart":{}}}');
      final r = await run(['skill', 'update']);
      expect(r.code, 0);
      expect(r.err, contains('skills-lock.json'));
    });
  });

  group('the notice on other commands', () {
    test('names an older skill once, on stderr', () async {
      put(agentsSkill, older);
      put(claudeSkill, older);
      final r = await run(['synth']);
      expect(r.code, 0, reason: r.err);
      expect(
        r.err,
        'terradart: the terradart agent skill in .agents/skills is 0.1.0; '
        'this CLI is $cliVersion. Run: terradart skill update\n',
      );
      expect(r.out, isNot(contains('skill')));
    });

    test('is a notice in the --json result', () async {
      put(agentsSkill, older);
      final r = await run(['synth', '--json']);
      expect(r.code, 0, reason: r.err);
      final json = jsonDecode(r.out.trim()) as Map<String, Object?>;
      expect(json['ok'], isTrue);
      expect(json['notices'], [
        {
          'code': 'skill_outdated',
          'message':
              'the terradart agent skill in .agents/skills is 0.1.0; this CLI '
              'is $cliVersion. Run: terradart skill update',
        },
      ]);
    });

    test(
      'is silent for a current, marker-only, edited or missing skill',
      () async {
        expect((await run(['synth'])).err, isEmpty);
        put(agentsSkill, withSkillMarker(bundledSkillMd, '0.1.0'));
        put(claudeSkill, '$older\nmy note\n');
        expect((await run(['synth'])).err, isEmpty);
      },
    );

    test('names a newer skill', () async {
      put(agentsSkill, withSkillMarker(bundledSkillMd, '99.0.0'));
      final r = await run(['synth']);
      expect(r.err, contains('newer than this CLI ($cliVersion)'));
    });

    test('TERRADART_NO_SKILL_NOTICE=1 turns it off', () async {
      put(agentsSkill, older);
      final err = StringBuffer();
      final code = await runTerradart(
        ['synth'],
        runner: FakeRunner(),
        console: Console(out: (_) {}, err: err.writeln),
        workingDirectory: project.root,
        environment: {...project.environment, 'TERRADART_NO_SKILL_NOTICE': '1'},
        dartExecutable: 'dart',
      );
      expect(code, 0);
      expect('$err', isEmpty);
    });

    test('is not printed by the skill commands', () async {
      put(agentsSkill, older);
      final r = await run(['skill', 'status']);
      expect(r.err, isEmpty);
    });
  });

  test(
    'the help names the npx skills command pinned to this release',
    () async {
      final printed = StringBuffer();
      await runZoned(
        () => run(['skill', 'install', '--help']),
        zoneSpecification: ZoneSpecification(
          print: (_, _, _, line) => printed.writeln(line),
        ),
      );
      expect(
        '$printed',
        contains(
          'npx skills add nozomi-koborinai/terradart#v$cliVersion '
          '--skill terradart',
        ),
      );
    },
  );
}
