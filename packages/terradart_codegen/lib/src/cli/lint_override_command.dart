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
    final debtPath = exactlyOneLintDebtPathForOverrideRoot(rootDir);
    final debt = loadExactlyOneLintDebt(debtPath);
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
    for (final tf in debt.keys) {
      if (!lintBag.containsKey(tf)) {
        stderr.writeln(
          'lint-override: tool/exactly_one_lint_debt.yaml lists unknown override $tf',
        );
        return CliExitCodes.dataError;
      }
    }
    final migrateContext = preludeShapeContext(lintBag);
    final migrateDebtPath = migrateManifestDebtPathForOverrideRoot(rootDir);
    final migrateDebt = loadLintDebtLedger(migrateDebtPath);
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
          lintBag.containsKey(tf)
              ? '  $tf (override no longer violates migrate-shape-underivable)'
              : '  $tf (unknown override)',
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

@visibleForTesting
String exactlyOneLintDebtPathForOverrideRoot(String overrideYamlRoot) {
  final codegenPackageRoot = p.normalize(
    p.join(overrideYamlRoot, '..', '..', '..', '..', '..'),
  );
  final repoRoot = p.normalize(p.join(codegenPackageRoot, '..', '..'));
  return p.join(repoRoot, 'tool', 'exactly_one_lint_debt.yaml');
}

/// `tool/migrate_manifest_debt.yaml` beside `tool/exactly_one_lint_debt.yaml`:
/// overrides accepted as `migrate-shape-underivable` debt.
@visibleForTesting
String migrateManifestDebtPathForOverrideRoot(String overrideYamlRoot) {
  return p.join(
    p.dirname(exactlyOneLintDebtPathForOverrideRoot(overrideYamlRoot)),
    'migrate_manifest_debt.yaml',
  );
}

@visibleForTesting
Map<String, String> loadExactlyOneLintDebt(String path) =>
    loadLintDebtLedger(path);

/// Parses a `name: reason` debt ledger (one entry per line, `#` comments
/// and blank lines ignored). A missing file is an empty ledger; a line
/// without a reason is an error, so every accepted debt stays explained.
@visibleForTesting
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
