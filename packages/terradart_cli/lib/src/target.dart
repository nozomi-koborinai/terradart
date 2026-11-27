import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'config.dart';
import 'manifest.dart';
import 'output/exit_codes.dart';

const envVariable = 'TERRADART_ENV';

enum EnvSource {
  flag('--env', 'flag'),
  variable(envVariable, 'variable'),
  defaultEnv('default', 'default'),
  only('only environment', 'only'),
  prompt('prompt', 'prompt');

  const EnvSource(this.label, this.id);

  final String label;

  final String id;

  bool get confirms => this == variable || this == defaultEnv;
}

final class Request {
  Request(
    this.config, {
    this.env,
    this.envSource = EnvSource.flag,
    this.workspace,
    this.backendConfig = const [],
    this._entryArgs = const [],
    this.defineOutput,
    this.defineFile,
  }) {
    if (env case final env?) {
      _checkName(env, envSource == EnvSource.variable ? envVariable : '--env');
    }
    if (workspace case final ws?) _checkName(ws, '--workspace');
  }

  final ProjectConfig config;

  final String? env;

  final EnvSource envSource;

  final String? workspace;

  final List<String> backendConfig;

  final String? defineOutput;
  final String? defineFile;

  final List<String> _entryArgs;

  Request withEnv(String env, EnvSource source) => Request(
    config,
    env: env,
    envSource: source,
    workspace: workspace,
    backendConfig: backendConfig,
    entryArgs: _entryArgs,
    defineOutput: defineOutput,
    defineFile: defineFile,
  );

  List<String> get entryArgs => [
    if (env case final env?) ...['--env', env],
    if (workspace case final ws?) ...['--workspace', ws],
    ..._entryArgs,
  ];

  Target resolve(Manifest? manifest) {
    final (root, source) = manifest == null ? _guess() : _pick(manifest);
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
      environmentSource: environment == null ? null : source,
      ignoredEnv: env != null && environment == null ? env : null,
      dir: p.normalize(p.join(config.root, root.dir)),
      workspace: workspace,
      backendConfig: [...root.backendConfig, ...backendConfig],
      defineOutput: output,
      namedDefineOutput: (defineOutput ?? config.defineOutput) != null,
      declaredDefineOutputs: root.dartDefines,
      defineFile: file,
    );
  }

  (_Root, EnvSource?) _pick(Manifest manifest) {
    final envs = manifest.environments;
    final env = this.env;
    if (envs == null) {
      if (env != null && envSource == EnvSource.flag) {
        throw CliException(
          '${config.entrypoint} declares no environments (it calls '
          'runStack); drop --env, or call runEnvironments with an enum of '
          'them.',
          kind: ExitCode.usage,
        );
      }
      return (_Root.of(manifest.roots.single), null);
    }
    final (String name, EnvSource source) = switch ((env, manifest)) {
      (final env?, _) => (env, envSource),
      (null, Manifest(defaultEnv: final d?)) => (d, EnvSource.defaultEnv),
      _ when envs.length == 1 => (envs.single, EnvSource.only),
      _ => throw CliException(
        '--env is required: ${config.entrypoint} declares '
        '${envs.join(', ')} and no defaultEnv. Pass --env, set '
        '$envVariable, or give runEnvironments a defaultEnv.',
        kind: ExitCode.missingFlag,
        flag: '--env',
        choices: envs,
        next: [
          ['--env', envs.first],
        ],
      ),
    };
    if (!envs.contains(name)) {
      throw CliException(
        'Unknown environment "$name" (${source.label}); known envs: '
        '${envs.join(', ')}.',
        kind: ExitCode.projectConfig,
        flag: '--env',
        choices: envs,
      );
    }
    for (final r in manifest.roots) {
      if (r.environment == name) return (_Root.of(r), source);
    }
    throw CliException(
      'The last synth did not write environment "$name"; run without '
      '--no-synth.',
      kind: ExitCode.usage,
    );
  }

  (_Root, EnvSource?) _guess() {
    final out = p.normalize(p.join(config.root, config.out));
    final String? env;
    if (envSource == EnvSource.variable && _isRoot(out)) {
      env = null;
    } else {
      env = this.env;
    }
    if (env == null) {
      if (_isRoot(out)) return (_Root.guessed(out), null);
      final roots = _rootsUnder(out);
      if (roots.isEmpty) {
        throw CliException(
          'No main.tf.json in ${_rel(out)}. Does ${config.entrypoint} '
          'write there? Set terradart.out to the directory it writes, or '
          'call runStack in it.',
          kind: ExitCode.projectConfig,
        );
      }
      final names = [for (final r in roots) p.basename(r)];
      throw CliException(
        '--env is required: no main.tf.json in ${_rel(out)} itself, but in '
        '${roots.map(_rel).join(', ')}.',
        kind: ExitCode.missingFlag,
        flag: '--env',
        choices: names,
        next: [
          ['--env', names.first],
        ],
      );
    }
    final named = [
      for (final r in _rootsUnder(out))
        if (_sameName(p.basename(r), env)) r,
    ];
    if (named.length == 1) {
      return (_Root.guessed(named.single, environment: env), envSource);
    }
    throw CliException(
      named.isEmpty
          ? 'No Terraform directory for environment "$env" under '
                '${_rel(out)}. Declare the environments with runEnvironments '
                'in ${config.entrypoint}, so terradart knows where each one '
                'goes.'
          : 'Environment "$env" matches ${named.map(_rel).join(', ')}. '
                'Declare the environments with runEnvironments in '
                '${config.entrypoint}, so terradart knows which one it is.',
      kind: ExitCode.projectConfig,
    );
  }

  String _rel(String path) => p.relative(path, from: config.root);

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
        kind: ExitCode.usage,
      );
    }
  }

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

  final List<String>? dartDefines;
}

final class Target {
  Target._({
    required this.config,
    required this.environment,
    required this.environmentSource,
    required this.ignoredEnv,
    required this.dir,
    required this.workspace,
    required this.backendConfig,
    required this.defineOutput,
    required this.namedDefineOutput,
    required this.declaredDefineOutputs,
    required this.defineFile,
  });

  final ProjectConfig config;

  final String? environment;

  final EnvSource? environmentSource;

  final String? ignoredEnv;

  final String dir;

  final String? workspace;

  final List<String> backendConfig;

  final String? defineOutput;

  final bool namedDefineOutput;

  final List<String>? declaredDefineOutputs;

  bool? get declaresDefineOutput =>
      declaredDefineOutputs?.contains(defineOutput);

  final String? defineFile;

  List<String> get backendConfigArgs => [
    for (final v in backendConfig)
      '-backend-config=${v.contains('=') ? v : p.normalize(p.join(config.root, v))}',
  ];

  String get stateKey => [
    if (environment case final env?)
      'env:$env'
    else
      p.posix.joinAll(p.split(p.relative(dir, from: config.root))),
    if (workspace case final ws?) 'workspace:$ws',
  ].join(' ');
}
