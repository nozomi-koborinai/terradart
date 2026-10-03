import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as p;

import '../assets/skill_md.g.dart';
import '../cli_exception.dart';
import '../config.dart';
import '../version.dart';
import '../workflow.dart';
import 'installer.dart';

/// The exit code of `skill status --check` when a skill is missing, older
/// or newer than this CLI, edited, or without a marker.
const skillDriftExitCode = 4;

/// The exit code of `skill install` / `update` when it left a file it does
/// not overwrite without `--force`.
const skillKeptExitCode = 5;

/// The `npx skills` command that installs the skill this CLI bundles,
/// pinned to its release tag.
const npxSkillsAdd =
    'npx skills add nozomi-koborinai/terradart#v$cliVersion --skill terradart';

/// `terradart skill install | update | status`: the terradart agent skill
/// this CLI bundles, in the project's agent skills directories.
final class SkillCommand extends Command<int> {
  SkillCommand({required Console console, required String cwd}) {
    addSubcommand(_SkillWriteCommand(console, cwd, update: false));
    addSubcommand(_SkillWriteCommand(console, cwd, update: true));
    addSubcommand(_SkillStatusCommand(console, cwd));
  }

  @override
  String get name => 'skill';

  @override
  String get description =>
      'Install, update and check the terradart agent skill this CLI bundles '
      '(skills/terradart/SKILL.md at v$cliVersion) in .agents/skills/ and '
      '.claude/skills/.';
}

abstract class _SkillSubcommand extends Command<int> {
  _SkillSubcommand(this.console, this.cwd) {
    argParser
      ..addOption(
        'project',
        abbr: 'C',
        valueHelp: 'dir',
        help:
            'The project to write in (default: the nearest directory with a '
            'pubspec.yaml).',
      )
      ..addMultiOption(
        'agents',
        allowed: [...SkillTarget.values.map((t) => t.name), 'all'],
        allowedHelp: {
          for (final t in SkillTarget.values) t.name: t.dir,
          'all': 'every one of them',
        },
        valueHelp: 'names',
        help: agentsHelp,
      );
  }

  final Console console;
  final String cwd;

  String get agentsHelp;

  String get root {
    final project = argResults!.option('project');
    if (project != null) return p.normalize(p.join(cwd, project));
    return ProjectConfig.findRoot(cwd);
  }

  /// The `--agents` targets; `null` without the flag.
  List<SkillTarget>? get agents => argResults!.wasParsed('agents')
      ? SkillTarget.parse(argResults!.multiOption('agents'))
      : null;

  String show(String path) => p.relative(path, from: cwd);

  @override
  String get usageFooter => '''

Examples:
  terradart skill install
  terradart skill install --agents agents,claude,cursor
  terradart skill update --dry-run
  terradart skill status --check

Without this CLI, the same skill pinned to this release:
  $npxSkillsAdd''';
}

final class _SkillWriteCommand extends _SkillSubcommand {
  _SkillWriteCommand(super.console, super.cwd, {required this.update}) {
    argParser
      ..addFlag(
        'force',
        negatable: false,
        help:
            'Overwrite a skill with local edits, without a terradart marker, '
            'or from a newer CLI.',
      )
      ..addFlag(
        'dry-run',
        negatable: false,
        help: 'Print what it would write and the diff, and write nothing.',
      );
  }

  final bool update;

  @override
  String get name => update ? 'update' : 'install';

  @override
  String get description => update
      ? 'Rewrite every installed terradart skill with the one this CLI '
            'bundles. Leaves a skill with local edits alone without --force '
            '(exit $skillKeptExitCode).'
      : 'Write the terradart skill this CLI bundles to .agents/skills/'
            'terradart/ and .claude/skills/terradart/ (or the --agents '
            'directories). Leaves a skill with local edits alone without '
            '--force (exit $skillKeptExitCode).';

  @override
  String get agentsHelp => update
      ? 'The skills directories to update (default: every one that holds the '
            'skill).'
      : 'The skills directories to write, comma-separated (default: '
            'agents,claude).';

  @override
  Future<int> run() async {
    final root = this.root;
    final force = argResults!.flag('force');
    final dryRun = argResults!.flag('dry-run');
    var targets = agents;
    if (targets == null && update) {
      targets = [
        for (final i in inspectSkills(root))
          if (i.exists) i.target,
      ];
      if (targets.isEmpty) {
        throw CliException(
          'No terradart agent skill in ${show(root)}.\n'
          '  Next: terradart skill install',
        );
      }
    }
    targets ??= SkillTarget.defaults;

    var kept = 0;
    var wrote = false;
    for (final target in targets) {
      final install = inspectSkill(root, target);
      final rel = show(install.path);
      final state = install.state;
      if (state == SkillState.current) {
        console.out('up to date: $rel ($cliVersion)');
        continue;
      }
      if (state.keepsWithoutForce && !force) {
        kept++;
        console.err(
          'skipped $rel: ${_reason(install)}. Review: terradart skill $name '
          '--dry-run; overwrite: terradart skill $name --force',
        );
        if (dryRun) _diff(install, rel);
        continue;
      }
      final from = install.version ?? 'no marker';
      if (dryRun) {
        console.out(
          state == SkillState.missing
              ? 'would write $rel ($cliVersion)'
              : 'would update $rel ($from → $cliVersion)',
        );
        _diff(install, rel);
        continue;
      }
      writeSkill(install);
      wrote = true;
      console.out(switch (state) {
        SkillState.missing => 'wrote $rel ($cliVersion)',
        SkillState.edited => 'overwrote local edits in $rel ($cliVersion)',
        _ => 'updated $rel ($from → $cliVersion)',
      });
    }
    if (wrote && skillsCliManages(root)) {
      console.warn(
        'skills-lock.json records the terradart skill for npx skills; its '
        'computedHash no longer matches the files. Update it with: '
        'npx skills update terradart -p -y',
      );
    }
    return kept > 0 ? skillKeptExitCode : 0;
  }

  String _reason(SkillInstall install) => switch (install.state) {
    SkillState.edited => 'local edits',
    SkillState.newer =>
      'it is ${install.version}, newer than this CLI ($cliVersion)',
    _ => 'no terradart-version marker',
  };

  void _diff(SkillInstall install, String rel) {
    if (!install.exists) return;
    final diff = unifiedDiff(
      File(install.path).readAsStringSync(),
      bundledSkillMd,
      fromName: rel,
      toName: '$rel (terradart $cliVersion)',
    );
    if (diff.isNotEmpty) console.out(diff.trimRight());
  }
}

final class _SkillStatusCommand extends _SkillSubcommand {
  _SkillStatusCommand(super.console, super.cwd) {
    argParser.addFlag(
      'check',
      negatable: false,
      help:
          'Exit $skillDriftExitCode when the skill is missing, older or newer '
          'than this CLI, edited, or has no marker — for CI.',
    );
  }

  @override
  String get name => 'status';

  @override
  String get description =>
      'Show each installed terradart skill against the one this CLI '
      'bundles ($cliVersion).';

  @override
  String get agentsHelp =>
      'The skills directories to check, comma-separated (default: '
      'agents,claude and every other one that holds the skill).';

  @override
  Future<int> run() async {
    final root = this.root;
    final named = agents;
    final installs = named != null
        ? [for (final t in named) inspectSkill(root, t)]
        : [
            for (final i in inspectSkills(root))
              if (i.exists || SkillTarget.defaults.contains(i.target)) i,
          ];
    final width = installs.fold(0, (w, i) {
      final n = show(i.path).length;
      return n > w ? n : w;
    });
    for (final i in installs) {
      console.out(
        '${show(i.path).padRight(width)}  '
        '${i.state.label.padRight(11)}  ${_detail(i)}',
      );
    }
    final installed = installs.where((i) => i.exists);
    if (skillsCliManages(root)) {
      console.out(
        'skills-lock.json: installed with npx skills; update with '
        'npx skills update terradart -p -y',
      );
    }
    if (installed.isEmpty) {
      console.out('Next: terradart skill install');
    }
    if (!argResults!.flag('check')) return 0;
    final drift = named != null
        ? installs.any((i) => i.state.drifts)
        : installed.isEmpty || installed.any((i) => i.state.drifts);
    return drift ? skillDriftExitCode : 0;
  }

  String _detail(SkillInstall i) => switch (i.state) {
    SkillState.current => cliVersion,
    SkillState.markerOnly =>
      '${i.version} → $cliVersion, same content (update rewrites the marker)',
    SkillState.outdated when i.version == cliVersion =>
      '$cliVersion, not the content this CLI bundles. Run: terradart skill '
          'update',
    SkillState.outdated =>
      '${i.version} → $cliVersion. Run: terradart skill update',
    SkillState.newer =>
      '${i.version}, newer than this CLI ($cliVersion). Run: dart pub '
          'global activate terradart_cli',
    SkillState.edited => 'local changes; update needs --force',
    SkillState.missing => 'not installed',
    SkillState.foreign => 'no terradart marker; update needs --force',
  };
}
