import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'config.dart';

/// What one command runs against: the entry point's arguments, the
/// Terraform directory, its backend configuration and workspace, and the
/// define file — everything `--env` decides.
final class Target {
  Target._({
    required this.config,
    required this.environment,
    required this.entryArgs,
    required this.backendConfig,
    required this.workspace,
    required this.defineOutput,
    required this.defineFile,
  });

  /// Resolves [env] (one of [ProjectConfig.environments]) with the command
  /// line's overrides.
  factory Target.resolve(
    ProjectConfig config, {
    String? env,
    String? workspace,
    List<String> backendConfig = const [],
    List<String> entryArgs = const [],
    String? defineOutput,
    String? defineFile,
  }) {
    EnvironmentConfig? environment;
    if (env != null) {
      ProjectConfig.checkEnvironmentName(env, '--env');
      environment = config.environments[env];
      if (environment == null) {
        throw CliException(
          config.environments.isEmpty
              ? 'Unknown environment "$env": pubspec.yaml declares none. '
                    'Declare it under terradart.environments, e.g.\n'
                    '  terradart:\n    environments:\n      $env:'
              : 'Unknown environment "$env"; known envs: '
                    '${config.environments.keys.join(', ')}.',
          exitCode: 64,
        );
      }
    }
    final ws = workspace ?? environment?.workspace;
    if (ws != null) ProjectConfig.checkEnvironmentName(ws, 'workspace');
    final label = environment?.name ?? ws;
    final output = defineOutput ?? config.defineOutput;
    final file = defineFile ?? config.defineFile ?? '.terradart/$output.json';
    return Target._(
      config: config,
      environment: environment,
      entryArgs: [
        ...(environment?.args ??
            [
              if (environment != null) ...['--env', environment.name],
              if (ws != null) ...['--workspace', ws],
            ]),
        ...entryArgs,
      ],
      backendConfig: [...?environment?.backendConfig, ...backendConfig],
      workspace: ws,
      defineOutput: output,
      defineFile: p.normalize(
        p.join(config.root, label == null ? file : _withInfix(file, label)),
      ),
    );
  }

  final ProjectConfig config;

  /// The `--env` environment, or `null`.
  final EnvironmentConfig? environment;

  /// What `dart run <entrypoint>` receives.
  final List<String> entryArgs;

  /// `-backend-config` values, as written in the config.
  final List<String> backendConfig;

  /// The Terraform workspace to select, or `null` to leave it.
  final String? workspace;

  final String defineOutput;

  /// The define file, absolute.
  final String defineFile;

  /// `-backend-config=` arguments for `init`: a file relative to the project
  /// made absolute, a `key=value` pair as it is.
  List<String> get backendConfigArgs => [
    for (final v in backendConfig)
      '-backend-config=${v.contains('=') ? v : p.normalize(p.join(config.root, v))}',
  ];

  /// The key of this target's state in `.terradart/engines.json`.
  String stateKey(String dir) {
    final rel = p.posix.joinAll(p.split(p.relative(dir, from: config.root)));
    return [
      if (environment != null) 'env:${environment!.name}' else rel,
      if (workspace != null) 'workspace:$workspace',
    ].join(' ');
  }

  /// The Terraform directory, absolute, once the entry point has written it.
  ///
  /// An environment's `dir` wins. Otherwise it is `<out>/<name>`, or the one
  /// directory named after the environment under `<out>` (`tf-out/envs/
  /// staging` for a root migrated from `envs/staging`), or — when the
  /// environment selects its state with `backend_config` or `workspace` —
  /// `<out>` itself. Without `--env` it is `<out>`.
  String resolveDir() {
    final out = p.normalize(p.join(config.root, config.out));
    final env = environment;
    if (env == null) {
      if (_isRoot(out)) return out;
      final roots = _rootsUnder(out);
      throw CliException(
        roots.isEmpty
            ? 'No main.tf.json in ${_rel(out)}. Does ${config.entrypoint} '
                  'write there? Set terradart.out to the directory it writes.'
            : 'No main.tf.json in ${_rel(out)} itself, but in '
                  '${roots.map(_rel).join(', ')}. Pass --env <name>, with '
                  'each environment declared under terradart.environments.',
      );
    }
    if (env.dir case final dir?) {
      final abs = p.normalize(p.join(config.root, dir));
      if (!_isRoot(abs)) {
        throw CliException(
          'terradart.environments.${env.name}.dir is ${_rel(abs)}, which '
          'holds no main.tf.json after synth.',
        );
      }
      return abs;
    }
    final own = p.join(out, env.name);
    if (_isRoot(own)) return own;
    final named = [
      for (final r in _rootsUnder(out))
        if (p.basename(r) == env.name) r,
    ];
    if (named.length == 1) return named.single;
    if (named.length > 1) {
      throw CliException(
        'Environment "${env.name}" matches ${named.map(_rel).join(', ')}; '
        'set terradart.environments.${env.name}.dir to one of them.',
      );
    }
    final selectsState = env.backendConfig.isNotEmpty || workspace != null;
    if (selectsState && _isRoot(out)) return out;
    throw CliException(
      'No Terraform directory for environment "${env.name}" under '
      '${_rel(out)}. Write it to ${_rel(own)} (or any directory named '
      '"${env.name}"), set its dir, or select its state with '
      'backend_config or workspace.',
    );
  }

  String _rel(String path) => p.relative(path, from: config.root);

  static bool _isRoot(String dir) =>
      File(p.join(dir, 'main.tf.json')).existsSync();

  static List<String> _rootsUnder(String dir) {
    final base = Directory(dir);
    if (!base.existsSync()) return const [];
    final roots = <String>[];
    void walk(Directory d) {
      for (final e in d.listSync(followLinks: false)) {
        if (e is! Directory || p.basename(e.path).startsWith('.')) continue;
        if (_isRoot(e.path)) roots.add(e.path);
        walk(e);
      }
    }

    walk(base);
    return roots..sort();
  }

  /// `.terradart/dart_defines.json` → `.terradart/dart_defines.<label>.json`.
  static String _withInfix(String file, String label) {
    final ext = p.extension(file);
    return ext.isEmpty
        ? '$file.$label'
        : '${file.substring(0, file.length - ext.length)}.$label$ext';
  }
}
