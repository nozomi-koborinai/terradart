import 'dart:convert';
import 'dart:io';

import 'cli_exception.dart';
import 'output/exit_codes.dart';

/// The environment variable `terradart` sets to the file the entry point
/// describes what it wrote in (`terradartManifestVariable` of
/// `terradart_core`).
const manifestVariable = 'TERRADART_MANIFEST';

/// What `runStack` or `runEnvironments` of `terradart_core` wrote.
final class Manifest {
  const Manifest({
    required this.environments,
    required this.selected,
    this.defaultEnv,
    required this.roots,
  });

  /// Reads [file]; `null` when the entry point wrote none, because it
  /// calls neither helper.
  static Manifest? read(File file) {
    if (!file.existsSync()) return null;
    try {
      final json = jsonDecode(file.readAsStringSync());
      if (json case {
        'version': 1,
        'environments': final List<Object?>? environments,
        'selected': final String? selected,
        'roots': final List<Object?> roots,
      }) {
        return Manifest(
          environments: environments?.cast<String>(),
          selected: selected,
          // Absent from what a terradart_core before defaultEnv writes.
          defaultEnv: json['default'] as String?,
          roots: [for (final r in roots) ManifestRoot.parse(r)],
        );
      }
    } on Object {
      // Reported below.
    }
    throw CliException(
      '${file.path} is not a manifest this terradart reads; upgrade '
      'terradart_cli and terradart_core together.',
      kind: ExitCode.synthFailed,
    );
  }

  /// Every environment the entry point declares, or `null` for `runStack`.
  final List<String>? environments;

  /// The `--env` the entry point ran with.
  final String? selected;

  /// The `defaultEnv` of `runEnvironments`.
  final String? defaultEnv;

  /// The directories it wrote.
  final List<ManifestRoot> roots;
}

/// One Terraform directory the entry point wrote.
final class ManifestRoot {
  const ManifestRoot({
    required this.environment,
    required this.dir,
    required this.workspace,
    required this.backendConfig,
    required this.dartDefines,
  });

  factory ManifestRoot.parse(Object? json) {
    if (json case {
      'environment': final String? environment,
      'dir': final String dir,
      'workspace': final String? workspace,
      'backend_config': final List<Object?> backendConfig,
      'dart_defines': final List<Object?> dartDefines,
    }) {
      return ManifestRoot(
        environment: environment,
        dir: dir,
        workspace: workspace,
        backendConfig: backendConfig.cast<String>(),
        dartDefines: dartDefines.cast<String>(),
      );
    }
    throw const FormatException('root');
  }

  final String? environment;

  /// Relative to the project.
  final String dir;
  final String? workspace;
  final List<String> backendConfig;

  /// The Stack's `addDartDefineOutput` names.
  final List<String> dartDefines;
}
