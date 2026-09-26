import 'dart:io';
import 'dart:isolate';

import 'package:args/command_runner.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import '../codegen/override_linter.dart';
import '../codegen/wrapper_overrides/_registry.dart';
import '../codegen/wrapper_overrides/yaml_loader.dart';
import '../parser/mm_yaml_parser.dart';
import 'exit_codes.dart';

/// `terradart lint-override` — fails (exit 65) if any wrapper override YAML
/// carries a hand-written axis that a derivation gate has made dead config.
///
/// Phase A5 phase 1: two IR-free, YAML-only rules (see [lintOverride]). The
/// detection logic is the pure `override_linter`; this command only resolves
/// the bundled override-YAML root (or `--dir`), loads it, and reports.
class LintOverrideCommand extends Command<int> {
  LintOverrideCommand() {
    argParser
      ..addOption(
        'dir',
        help: 'Override-YAML directory to lint. Defaults to the bundled '
            'package:terradart_codegen registry.',
        valueHelp: 'DIR',
      )
      ..addOption(
        'mm-dir',
        help: 'MM YAML fixture directory for phase-2 lint rules. Defaults to '
            'test/fixtures/wrap/source/mm beside the bundled override root.',
        valueHelp: 'DIR',
      );
  }

  @override
  String get name => 'lint-override';

  @override
  String get description =>
      'Lint wrapper override YAML for dead/conflicting derive-gate config.';

  @override
  Future<int> run() async {
    final dirArg = argResults!['dir'] as String?;
    final mmDirArg = argResults!['mm-dir'] as String?;

    final String rootDir;
    if (dirArg != null && dirArg.isNotEmpty) {
      rootDir = dirArg;
    } else {
      final uri = await Isolate.resolvePackageUri(
        Uri.parse(
          'package:terradart_codegen/src/codegen/wrapper_overrides/yaml/',
        ),
      );
      if (uri == null) {
        stderr.writeln(
          'terradart lint-override: could not resolve the bundled '
          'package:terradart_codegen yaml root.',
        );
        return CliExitCodes.software;
      }
      rootDir = uri.toFilePath();
    }

    // Malformed registry YAML self-fatals inside the loader (throws
    // LoaderErrorReport, which the entrypoint maps to a non-zero exit) — that
    // is correct linter behavior, so it is intentionally not caught here. A
    // `--dir` pointing at a missing directory instead throws StateError; catch
    // that to report a clean message + dataError (mirrors wrap_command) rather
    // than surfacing a stack trace.
    final LoadedOverrides loaded;
    try {
      loaded = loadWrapperOverrides(rootDir: rootDir);
    } on StateError catch (e) {
      stderr.writeln('terradart lint-override: $e');
      return CliExitCodes.dataError;
    }
    final mmDir = (mmDirArg != null && mmDirArg.isNotEmpty)
        ? mmDirArg
        : defaultMmFixtureDirForOverrideRoot(rootDir);
    final lintBag = loaded.asLintMap();
    final mmByType = loadMmFixtures(mmDir, lintBag.keys);
    final debt = laneLedgerEntries(
      _loadLedger(exactlyOneLintDebtPathForOverrideRoot(rootDir)),
      lintBag.keys,
    );
    final staleDebt = staleExactlyOneOptionalFanoutDebt(
      lintBag,
      mmByType: mmByType,
      debt: debt.keys.toSet(),
    );
    if (staleDebt.isNotEmpty) {
      stderr.writeln(
          'lint-override: stale tool/exactly_one_lint_debt.yaml entries:');
      for (final tf in staleDebt) {
        stderr.writeln(
            '  $tf (override no longer violates exactly-one-optional-fanout)');
      }
      return CliExitCodes.dataError;
    }
    final migrateContext = preludeShapeContext(lintBag);
    final migrateDebt = laneLedgerEntries(
      _loadLedger(migrateManifestDebtPathForOverrideRoot(rootDir)),
      lintBag.keys,
    );
    final staleMigrateDebt = staleMigrateManifestDebt(
      lintBag,
      context: migrateContext,
      debt: migrateDebt.keys.toSet(),
    );
    if (staleMigrateDebt.isNotEmpty) {
      stderr.writeln(
          'lint-override: stale tool/migrate_manifest_debt.yaml entries:');
      for (final tf in staleMigrateDebt) {
        stderr.writeln(
          '  $tf (override no longer violates migrate-shape-underivable)',
        );
      }
      return CliExitCodes.dataError;
    }
    final violations = lintOverrides(
      lintBag,
      mmByType: mmByType,
      exactlyOneOptionalFanoutDebt: debt.keys.toSet(),
      migrate: MigrateShapeLintInput(
        context: migrateContext,
        debt: migrateDebt.keys.toSet(),
      ),
    );

    if (violations.isEmpty) {
      stdout.writeln(
        'lint-override: ${loaded.length} overrides clean.',
      );
      return CliExitCodes.success;
    }

    stderr.writeln('lint-override: ${violations.length} violation(s):');
    for (final v in violations) {
      stderr.writeln('  ${v.tfType}: [${v.rule}] ${v.detail}');
    }
    return CliExitCodes.dataError;
  }
}

/// Default MM fixture dir when linting the bundled override registry.
///
/// `overrideYamlRoot` is `.../wrapper_overrides/yaml`; walk up to the
/// `terradart_codegen` package root, then into the wrap test fixture tree.
@visibleForTesting
String defaultMmFixtureDirForOverrideRoot(String overrideYamlRoot) {
  final codegenPackageRoot = p.normalize(
    p.join(overrideYamlRoot, '..', '..', '..', '..', '..'),
  );
  return p.join(codegenPackageRoot, 'test', 'fixtures', 'wrap', 'source', 'mm');
}

/// The debt ledgers every lane shares, under the repository `tool/`
/// directory.
const lintDebtLedgerFileNames = [
  'exactly_one_lint_debt.yaml',
  'migrate_manifest_debt.yaml',
];

/// The repository `tool/` directory holding the shared debt ledgers, found
/// from the `packages/terradart_codegen/lib/src/codegen/wrapper_overrides`
/// directory [overrideYamlRoot] sits in. The bundled registry
/// (`wrapper_overrides/yaml`) and a lane (`wrapper_overrides/<lane>/yaml`)
/// resolve to the same directory. Null outside that tree, which reads as
/// empty ledgers.
String? lintDebtToolDirForOverrideRoot(String overrideYamlRoot) {
  final parts = p.split(p.normalize(p.absolute(overrideYamlRoot)));
  final i = parts.lastIndexOf('wrapper_overrides');
  const codegenPath = [
    'packages',
    'terradart_codegen',
    'lib',
    'src',
    'codegen'
  ];
  if (i < codegenPath.length) return null;
  final above = parts.sublist(i - codegenPath.length, i);
  for (var k = 0; k < codegenPath.length; k++) {
    if (above[k] != codegenPath[k]) return null;
  }
  return p.joinAll([...parts.take(i - codegenPath.length), 'tool']);
}

/// `tool/exactly_one_lint_debt.yaml`: overrides accepted as
/// `exactly-one-optional-fanout` debt.
String? exactlyOneLintDebtPathForOverrideRoot(String overrideYamlRoot) =>
    _ledgerPath(overrideYamlRoot, lintDebtLedgerFileNames[0]);

/// `tool/migrate_manifest_debt.yaml` beside `tool/exactly_one_lint_debt.yaml`:
/// overrides accepted as `migrate-shape-underivable` debt.
String? migrateManifestDebtPathForOverrideRoot(String overrideYamlRoot) =>
    _ledgerPath(overrideYamlRoot, lintDebtLedgerFileNames[1]);

String? _ledgerPath(String overrideYamlRoot, String fileName) {
  final toolDir = lintDebtToolDirForOverrideRoot(overrideYamlRoot);
  return toolDir == null ? null : p.join(toolDir, fileName);
}

Map<String, String> _loadLedger(String? path) =>
    path == null ? const {} : loadLintDebtLedger(path);

/// The entries of a shared [ledger] that name one of [overrideNames]. A lane
/// validates only its own entries; `tool/wrap_lanes.dart` fails on entries
/// that name an override in no lane.
Map<String, String> laneLedgerEntries(
  Map<String, String> ledger,
  Iterable<String> overrideNames,
) {
  final names = overrideNames.toSet();
  return {
    for (final MapEntry(:key, :value) in ledger.entries)
      if (names.contains(key)) key: value,
  };
}

/// Parses a `name: reason` debt ledger (one entry per line, `#` comments
/// and blank lines ignored). A missing file is an empty ledger; a line
/// without a reason is an error, so every accepted debt stays explained.
Map<String, String> loadLintDebtLedger(String path) {
  final file = File(path);
  if (!file.existsSync()) return const {};
  final label = p.join('tool', p.basename(path));
  final entries = <String, String>{};
  for (final raw in file.readAsLinesSync()) {
    final line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    final sep = line.indexOf(':');
    if (sep <= 0) {
      throw FormatException('$label: unparsable line "$raw"');
    }
    final name = line.substring(0, sep).trim();
    final reason = line.substring(sep + 1).trim();
    if (reason.isEmpty) {
      throw FormatException('$label: $name needs a reason');
    }
    entries[name] = reason;
  }
  return entries;
}

@visibleForTesting
Map<String, MmResourceOverrides> loadMmFixtures(
  String mmDir,
  Iterable<String> tfTypes,
) {
  const parser = MmYamlParser();
  final out = <String, MmResourceOverrides>{};
  for (final tfType in tfTypes) {
    final file = File(p.join(mmDir, '$tfType.yaml'));
    if (!file.existsSync()) continue;
    out[tfType] = parser.parseString(file.readAsStringSync());
  }
  return out;
}
