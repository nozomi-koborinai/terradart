import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'config.dart';
import 'manifest.dart';

/// What the command line asks for, before the entry point has run.
final class Request {
  Request(
    this.config, {
    this.env,
    this.workspace,
    this.backendConfig = const [],
    List<String> entryArgs = const [],
    this.defineOutput,
    this.defineFile,
  }) : _entryArgs = entryArgs {
    if (env case final env?) _checkName(env, '--env');
    if (workspace case final ws?) _checkName(ws, '--workspace');
  }

  final ProjectConfig config;

  /// `--env`: a member of the entry point's environment enum.
  final String? env;

  /// `--workspace`: overrides the environment's.
  final String? workspace;

  /// `--backend-config`: added after the environment's.
  final List<String> backendConfig;

  final String? defineOutput;
  final String? defineFile;

  final List<String> _entryArgs;

  /// What `dart run <entrypoint>` receives.
  List<String> get entryArgs => [
    if (env case final env?) ...['--env', env],
    if (workspace case final ws?) ...['--workspace', ws],
    ..._entryArgs,
  ];

  /// The target once the entry point has written [manifest] (`null` when it
  /// calls neither `runStack` nor `runEnvironments`).
  Target resolve(Manifest? manifest) {
    final root = manifest == null ? _guess() : _pick(manifest);
    final workspace = this.workspace ?? root.workspace;
    final environment = root.environment;
    final label = environment ?? workspace;
    final output =
        defineOutput ??
        config.defineOutput ??
        switch (root.dartDefines) {
          null => 'dart_defines',
          final names when names.contains('dart_defines') => 'dart_defines',
          final names => names.firstOrNull,
        };
    String? file;
    if (output != null) {
      final base = defineFile ?? config.defineFile ?? '.terradart/$output.json';
      file = p.normalize(
        p.join(config.root, label == null ? base : _withInfix(base, label)),
      );
    }
    return Target._(
      config: config,
      environment: environment,
      dir: p.normalize(p.join(config.root, root.dir)),
      workspace: workspace,
      backendConfig: [...root.backendConfig, ...backendConfig],
      defineOutput: output,
      namedDefineOutput: (defineOutput ?? config.defineOutput) != null,
      declaredDefineOutputs: root.dartDefines,
      defineFile: file,
    );
  }

  _Root _pick(Manifest manifest) {
    final envs = manifest.environments;
    final env = this.env;
    if (envs == null) {
      if (env != null) {
        throw CliException(
          '${config.entrypoint} declares no environments (it calls '
          'runStack); drop --env, or call runEnvironments with an enum of '
          'them.',
          exitCode: 64,
        );
      }
      return _Root.of(manifest.roots.single);
    }
    if (env == null) {
      if (envs.length == 1) return _Root.of(manifest.roots.single);
      throw CliException(
        '${config.entrypoint} declares environments; pass --env <name>, '
        'one of ${envs.join(', ')}.',
        exitCode: 64,
      );
    }
    if (!envs.contains(env)) {
      throw CliException(
        'Unknown environment "$env"; known envs: ${envs.join(', ')}.',
        exitCode: 64,
      );
    }
    for (final r in manifest.roots) {
      if (r.environment == env) return _Root.of(r);
    }
    throw CliException(
      'The last synth did not write environment "$env"; run without '
      '--no-synth.',
    );
  }

  /// For an entry point of its own: `<out>`, or with `--env` the one
  /// directory under it named after the environment — what a
  /// `terradart-migrate --merge-envs` entry point writes.
  _Root _guess() {
    final out = p.normalize(p.join(config.root, config.out));
    final env = this.env;
    if (env == null) {
      if (_isRoot(out)) return _Root.guessed(out);
      final roots = _rootsUnder(out);
      throw CliException(
        roots.isEmpty
            ? 'No main.tf.json in ${_rel(out)}. Does ${config.entrypoint} '
                  'write there? Set terradart.out to the directory it '
                  'writes, or call runStack in it.'
            : 'No main.tf.json in ${_rel(out)} itself, but in '
                  '${roots.map(_rel).join(', ')}. Pass --env <name>.',
      );
    }
    final named = [
      for (final r in _rootsUnder(out))
        if (_sameName(p.basename(r), env)) r,
    ];
    if (named.length == 1) return _Root.guessed(named.single, environment: env);
    throw CliException(
      named.isEmpty
          ? 'No Terraform directory for environment "$env" under '
                '${_rel(out)}. Declare the environments with runEnvironments '
                'in ${config.entrypoint}, so terradart knows where each one '
                'goes.'
          : 'Environment "$env" matches ${named.map(_rel).join(', ')}. '
                'Declare the environments with runEnvironments in '
                '${config.entrypoint}, so terradart knows which one it is.',
    );
  }

  String _rel(String path) => p.relative(path, from: config.root);

  /// `prodEu` (an enum member) names `prod-eu` (a directory).
  static bool _sameName(String dir, String env) => _squash(dir) == _squash(env);

  static String _squash(String s) =>
      s.toLowerCase().replaceAll(RegExp('[^a-z0-9]'), '');

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

  static final _validName = RegExp(r'^[A-Za-z0-9][A-Za-z0-9_.-]*$');

  static void _checkName(String name, String flag) {
    if (!_validName.hasMatch(name)) {
      throw CliException(
        '$flag "$name": use letters, digits, "_", "-" and ".", starting with '
        'a letter or digit.',
        exitCode: 64,
      );
    }
  }

  /// `.terradart/dart_defines.json` → `.terradart/dart_defines.<label>.json`.
  static String _withInfix(String file, String label) {
    final ext = p.extension(file);
    return ext.isEmpty
        ? '$file.$label'
        : '${file.substring(0, file.length - ext.length)}.$label$ext';
  }
}

final class _Root {
  const _Root.guessed(this.dir, {this.environment})
    : workspace = null,
      backendConfig = const [],
      dartDefines = null;

  _Root.of(ManifestRoot r)
    : dir = r.dir,
      environment = r.environment,
      workspace = r.workspace,
      backendConfig = r.backendConfig,
      dartDefines = r.dartDefines;

  final String dir;
  final String? environment;
  final String? workspace;
  final List<String> backendConfig;

  /// `null` when unknown (no manifest).
  final List<String>? dartDefines;
}

/// The Terraform directory one command runs in, with its state selection
/// and define file.
final class Target {
  Target._({
    required this.config,
    required this.environment,
    required this.dir,
    required this.workspace,
    required this.backendConfig,
    required this.defineOutput,
    required this.namedDefineOutput,
    required this.declaredDefineOutputs,
    required this.defineFile,
  });

  final ProjectConfig config;

  /// The environment, or `null`.
  final String? environment;

  /// Absolute.
  final String dir;

  /// The Terraform workspace to select, or `null` to leave it.
  final String? workspace;

  /// `-backend-config` values, as the entry point and command line gave them.
  final List<String> backendConfig;

  /// The define output, or `null` when the Stack declares none.
  final String? defineOutput;

  /// Whether `--define-output` or `pubspec.yaml` names [defineOutput],
  /// rather than the Stack's declaration picking it.
  final bool namedDefineOutput;

  /// The Stack's `addDartDefineOutput` names; `null` when unknown.
  final List<String>? declaredDefineOutputs;

  /// Whether the Stack declares [defineOutput]; `null` when unknown.
  bool? get declaresDefineOutput =>
      declaredDefineOutputs?.contains(defineOutput);

  /// Absolute; `null` with [defineOutput].
  final String? defineFile;

  /// `-backend-config=` arguments for `init`: a file relative to the project
  /// made absolute, a `key=value` pair as it is.
  List<String> get backendConfigArgs => [
    for (final v in backendConfig)
      '-backend-config=${v.contains('=') ? v : p.normalize(p.join(config.root, v))}',
  ];

  /// The key of this target's state in `.terradart/engines.json`.
  String get stateKey => [
    if (environment case final env?)
      'env:$env'
    else
      p.posix.joinAll(p.split(p.relative(dir, from: config.root))),
    if (workspace case final ws?) 'workspace:$ws',
  ].join(' ');
}
