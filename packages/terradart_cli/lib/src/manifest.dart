import 'dart:convert';
import 'dart:io';

import 'cli_exception.dart';
import 'output/exit_codes.dart';

const manifestVariable = 'TERRADART_MANIFEST';

final class Manifest {
  const Manifest({
    required this.environments,
    required this.selected,
    this.defaultEnv,
    required this.roots,
  });

  static Manifest? read(File file) {
    if (!file.existsSync()) return null;
    final invalid = CliException(
      '${file.path} is not a manifest this terradart reads; upgrade '
      'terradart_cli and terradart_core together.',
      kind: ExitCode.synthFailed,
    );
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
          defaultEnv: json['default'] as String?,
          roots: [for (final r in roots) ManifestRoot.parse(r)],
        );
      }
    } on Object {
      throw invalid;
    }
    throw invalid;
  }

  final List<String>? environments;

  final String? selected;

  final String? defaultEnv;

  final List<ManifestRoot> roots;
}

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

  final String dir;
  final String? workspace;
  final List<String> backendConfig;

  final List<String> dartDefines;
}
