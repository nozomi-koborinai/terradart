import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'cli_exception.dart';
import 'init_templates.dart';
import 'migrate_command.dart';
import 'process_runner.dart';
import 'workflow.dart';

/// `terradart init [dir]`: scaffolds a project that `terradart plan` runs.
///
/// Every question it asks in a terminal is one of its flags, and it prints
/// the command that answers them all; without a terminal it never asks.
/// Run inside a Flutter app, it wires `infra/` to the app. A directory that
/// already holds Terraform is pointed at `terradart migrate` instead.
final class InitCommand extends Command<int> {
  InitCommand({
    required Console console,
    required String cwd,
    required ProcessRunner runner,
    String? dartExecutable,
  }) : _console = console,
       _cwd = cwd,
       _runner = runner,
       _dart = dartExecutable {
    argParser
      ..addMultiOption(
        'provider',
        abbr: 'p',
        allowed: [for (final p in InitProvider.values) p.name],
        valueHelp: 'names',
        help: 'The provider packages, comma-separated (default: google).',
      )
      ..addMultiOption(
        'env',
        abbr: 'e',
        valueHelp: 'names',
        help:
            'The environments, comma-separated lowerCamelCase names '
            '(default: dev,prd).',
      );
    for (final id in InitId.values) {
      argParser.addMultiOption(
        id.flag,
        valueHelp: 'env=id',
        help:
            'The ${id.label} of each environment (--provider '
            '${id.provider.name}); a bare id is every environment\'s. Left '
            'out, lib/env.dart holds a placeholder marked TODO.',
      );
    }
    argParser
      ..addOption(
        'backend',
        allowed: [for (final b in InitBackend.values) b.name],
        help:
            'Where the state lives (default: local). gcs and s3 need a '
            'bucket that already exists.',
      )
      ..addFlag(
        'flutter',
        defaultsTo: null,
        help:
            'Wire the project to the Flutter app in the current directory '
            '(default: when there is one).',
      )
      ..addFlag(
        'pub-get',
        defaultsTo: true,
        help: 'Run dart pub get in the new project.',
      )
      ..addFlag(
        'dry-run',
        negatable: false,
        help: 'List the files it would write, and write nothing.',
      )
      ..addFlag(
        'force',
        negatable: false,
        help:
            'Overwrite files that exist, and scaffold next to existing '
            'Terraform.',
      );
  }

  final Console _console;
  final String _cwd;
  final ProcessRunner _runner;
  final String? _dart;

  /// The flags the questions answered, for the command printed at the end.
  final _answered = <String>{};

  @override
  String get name => 'init';

  @override
  String get description =>
      'Create a TerraDart project in [dir] (default: infra/): pubspec.yaml, '
      'an Env enum, a Stack, bin/infra.dart, README.md and AGENTS.md, then '
      'dart pub get. In a terminal it asks for what the flags leave out; '
      'otherwise it takes the defaults. Inside a Flutter app it wires the '
      "app to the Stack's outputs. For an existing Terraform directory use "
      'terradart migrate.';

  @override
  String get invocation => 'terradart init [dir] [flags]';

  @override
  String get usageFooter => '''

Examples:
  terradart init
      Asks in a terminal; without one: infra/, google, dev and prd, local state.
  terradart init infra --provider aws --env dev,stg,prd --backend s3
  terradart init --provider google,cloudflare --gcp-project dev=acme-dev,prd=acme-prd --cloudflare-account 0123abcd
  terradart init --dry-run --provider appwrite
      Lists the files, writes nothing.

Existing Terraform:
  terradart migrate --report --dir <dir>
  terradart migrate --dir <dir> --out <package dir>''';

  bool get _interactive => _console.ask != null;

  @override
  Future<int> run() async {
    final args = argResults!;
    if (args.rest.length > 1) usageException('init takes one directory.');
    final target = p.normalize(p.join(_cwd, args.rest.singleOrNull ?? 'infra'));
    var force = args.flag('force');
    final dryRun = args.flag('dry-run');

    if (!force) {
      final found = _terraformDirs({_cwd, target});
      if (found.isNotEmpty) {
        final hint = _migrateHint(found);
        if (!_interactive) throw CliException('$hint\n$_forceHint');
        _console.err(hint);
        if (_confirm('Run the migration report now?', true)) {
          return runMigrate([
            '--report',
            '--dir',
            p.normalize(p.join(_cwd, found.keys.first)),
          ], _console);
        }
        if (!_confirm('Scaffold a new TerraDart project anyway?', false)) {
          throw const CliException(_forceHint);
        }
        force = true;
        _answered.add('force');
      }
    }

    final flutterApp = _flutterAppName(_cwd);
    final flutterFlag = args.wasParsed('flutter') ? args.flag('flutter') : null;
    if (flutterFlag == true && flutterApp == null) {
      usageException(
        '--flutter: no Flutter app (a pubspec.yaml that depends on flutter) '
        'in ${_show(_cwd)}.',
      );
    }

    final providers = args.wasParsed('provider')
        ? [for (final n in args.multiOption('provider')) InitProvider.parse(n)]
        : _askProviders();
    final envs = args.wasParsed('env')
        ? _flagEnvs(_split(args.multiOption('env')))
        : _askEnvs();
    final ids = <InitId, Map<String, String>>{};
    for (final id in InitId.values) {
      final chosen = providers.contains(id.provider);
      if (args.wasParsed(id.flag)) {
        if (!chosen) {
          usageException('--${id.flag} needs --provider ${id.provider.name}.');
        }
        ids[id] = _flagIds(id, args.multiOption(id.flag), envs);
      } else if (chosen) {
        final asked = _askIds(id, envs);
        if (asked.isNotEmpty) ids[id] = asked;
      }
    }
    final backend = switch (args.option('backend')) {
      final name? => InitBackend.parse(name),
      null => _askBackend(),
    };
    final wire =
        flutterApp != null &&
        (flutterFlag ??
            (!_interactive ||
                _confirmFlag(
                  'flutter',
                  'Flutter app "$flutterApp" found: generate its reader in '
                      'lib/generated/ and the define file it builds with?',
                  true,
                )));

    final base = p.basename(target);
    final plan = InitPlan(
      packageName: _packageName(switch (base) {
        'infra' when wire => '${flutterApp}_infra',
        'infra' => '${p.basename(p.dirname(target))}_infra',
        _ => base,
      }),
      providers: providers,
      envs: envs,
      backend: backend,
      ids: ids,
      flutter: wire ? _flutterApp(target) : null,
    );
    _checkFieldNames(plan);

    final files = renderProject(plan);
    final existing = [
      for (final rel in files.keys)
        if (File(p.join(target, rel)).existsSync()) rel,
    ];
    if (existing.isNotEmpty && !force) {
      throw CliException(
        '${_show(target)} already has ${existing.join(', ')}; pass --force '
        'to overwrite.',
      );
    }

    if (dryRun) {
      _console.out(
        'Would write ${plan.packageName} in ${_show(target)} '
        '(${_summary(plan)}):',
      );
      for (final rel in files.keys) {
        _console.out('  $rel${existing.contains(rel) ? ' (overwrite)' : ''}');
      }
      _printRerun(plan, target, force: force);
      return 0;
    }

    for (final MapEntry(key: rel, value: text) in files.entries) {
      File(p.join(target, rel))
        ..parent.createSync(recursive: true)
        ..writeAsStringSync(text);
    }
    _console.out(
      'Created ${plan.packageName} in ${_show(target)} (${_summary(plan)}):',
    );
    for (final rel in files.keys) {
      _console.out('  $rel');
    }
    if (plan.flutter case final app?) {
      _console.out(
        'Synth writes ${_show(p.normalize(p.join(target, app.appExports)))} '
        "for the app to read the Stack's outputs.",
      );
    }

    final pubGet = args.flag('pub-get');
    if (pubGet) {
      _console.out('> dart pub get');
      final code = await _runner.stream(_dart ?? dartBinary(), [
        'pub',
        'get',
      ], workingDirectory: target);
      if (code != 0) {
        throw CliException(
          'dart pub get failed in ${_show(target)} (exit $code); the files '
          'are written, so fix it and run dart pub get there again.',
          exitCode: code,
        );
      }
    }

    _console
      ..out('')
      ..out(
        plan.ids.length == plan.idFields.length &&
                plan.backend == InitBackend.local
            ? 'Next:'
            : 'Replace each placeholder marked TODO in '
                  '${_show(p.join(target, 'lib', 'env.dart'))}, then:',
      );
    final cd = p.equals(target, _cwd) ? null : _posix(_rel(target));
    for (final step in nextSteps(plan, cd: cd, pubGet: !pubGet)) {
      _console.out('  $step');
    }
    if (plan.has(InitProvider.appwrite)) _console.warn(appwriteEngineNote);
    _printRerun(plan, target, force: force);
    return 0;
  }

  /// The non-interactive command for what was asked.
  void _printRerun(InitPlan plan, String target, {required bool force}) {
    if (_answered.isEmpty) return;
    String pairs(Map<String, String> ids) => [
      for (final MapEntry(:key, :value) in ids.entries) '$key=$value',
    ].join(',');
    final command = [
      'terradart init',
      _posix(_rel(target)),
      '--provider ${plan.providers.map((p) => p.name).join(',')}',
      '--env ${plan.envs.join(',')}',
      for (final MapEntry(key: id, value: ids) in plan.ids.entries)
        '--${id.flag} ${pairs(ids)}',
      '--backend ${plan.backend.name}',
      if (_flutterAppName(_cwd) != null)
        plan.flutter == null ? '--no-flutter' : '--flutter',
      if (force) '--force',
    ].join(' ');
    _console
      ..out('')
      ..out('Re-run with: $command');
  }

  List<InitProvider> _askProviders() {
    final names = [for (final p in InitProvider.values) p.name];
    if (_interactive) {
      _console.out('Providers:');
      for (final (i, n) in names.indexed) {
        _console.out('  ${i + 1}) $n');
      }
    }
    return _ask(
      'provider',
      'Providers, comma-separated names or numbers [google]: ',
      [InitProvider.google],
      (answer) {
        final picked = [
          for (final n in _split([answer]))
            switch (int.tryParse(n)) {
              final i? when i >= 1 && i <= names.length => names[i - 1],
              _ => n,
            },
        ];
        if (picked.isEmpty || picked.any((n) => !names.contains(n))) {
          return (null, 'Pick from ${names.join(', ')}, or 1 to 4.');
        }
        return ([for (final n in picked) InitProvider.parse(n)], null);
      },
    );
  }

  List<String> _askEnvs() => _ask('env', 'Environments [dev,prd]: ', const [
    'dev',
    'prd',
  ], (answer) => _checkEnvs(_split([answer])));

  Map<String, String> _askIds(InitId id, List<String> envs) {
    final ids = <String, String>{};
    for (final env in envs) {
      final value = _ask<String?>(
        id.flag,
        '${id.label} for $env [skip]: ',
        null,
        (answer) => switch (_checkId(answer)) {
          null => (answer, null),
          final problem => (null, problem),
        },
      );
      if (value != null) ids[env] = value;
    }
    return ids;
  }

  InitBackend _askBackend() {
    final names = [for (final b in InitBackend.values) b.name];
    if (_interactive) {
      _console.out(
        'State backend: local keeps the state in a file under tf-out/; gcs '
        'and s3 keep it in a bucket that must already exist.',
      );
    }
    return _ask(
      'backend',
      'State backend (${names.join(', ')}) [local]: ',
      InitBackend.local,
      (answer) => names.contains(answer)
          ? (InitBackend.parse(answer), null)
          : (null, 'Pick one of ${names.join(', ')}.'),
    );
  }

  /// Asks until [parse] accepts the answer; an empty answer, end of input
  /// or no terminal is [fallback]. An accepted answer is the [flag]'s.
  T _ask<T>(
    String flag,
    String question,
    T fallback,
    (T?, String?) Function(String answer) parse,
  ) {
    final ask = _console.ask;
    if (ask == null) return fallback;
    _answered.add(flag);
    while (true) {
      final answer = ask(question)?.trim();
      if (answer == null || answer.isEmpty) return fallback;
      final (value, problem) = parse(answer);
      if (value != null) return value;
      _console.err(problem!);
    }
  }

  bool _confirmFlag(String flag, String question, bool fallback) {
    _answered.add(flag);
    return _confirm(question, fallback);
  }

  bool _confirm(String question, bool fallback) {
    final ask = _console.ask;
    if (ask == null) return fallback;
    while (true) {
      final answer = ask(
        '$question ${fallback ? '[Y/n]' : '[y/N]'} ',
      )?.trim().toLowerCase();
      if (answer == null || answer.isEmpty) return fallback;
      if (answer == 'y' || answer == 'yes') return true;
      if (answer == 'n' || answer == 'no') return false;
      _console.err('Answer y or n.');
    }
  }

  List<String> _flagEnvs(List<String> envs) {
    final (checked, problem) = _checkEnvs(envs);
    if (problem != null) usageException('--env: $problem');
    return checked!;
  }

  Map<String, String> _flagIds(
    InitId id,
    List<String> values,
    List<String> envs,
  ) {
    final ids = <String, String>{};
    for (final value in values) {
      final eq = value.indexOf('=');
      final (keys, given) = eq < 0
          ? (envs, value)
          : ([value.substring(0, eq)], value.substring(eq + 1));
      for (final env in keys) {
        if (!envs.contains(env)) {
          usageException(
            '--${id.flag}: no environment "$env"; --env is ${envs.join(',')}.',
          );
        }
        if (_checkId(given) case final problem?) {
          usageException('--${id.flag}: $problem');
        }
        ids[env] = given;
      }
    }
    return {
      for (final env in envs)
        if (ids.containsKey(env)) env: ids[env]!,
    };
  }

  FlutterApp _flutterApp(String target) => FlutterApp(
    appExports: _posix(
      p.relative(
        p.join(_cwd, 'lib', 'generated', 'infra.g.dart'),
        from: target,
      ),
    ),
    defineFile: _posix(
      p.join(_rel(target), '.terradart', 'dart_defines.<env>.json'),
    ),
    infraDir: _posix(_rel(target)),
    appDir: _posix(p.relative(_cwd, from: target)),
  );

  /// The `*.tf` / `*.tf.json` files directly in each of [dirs] that has
  /// any, by directory relative to the working directory.
  Map<String, List<String>> _terraformDirs(Set<String> dirs) => {
    for (final dir in dirs)
      if (Directory(dir).existsSync())
        if ([
              for (final f in Directory(dir).listSync().whereType<File>())
                if (f.path.endsWith('.tf') || f.path.endsWith('.tf.json'))
                  p.basename(f.path),
            ]..sort()
            case final files when files.isNotEmpty)
          _posix(_rel(dir)): files,
  };

  String _migrateHint(Map<String, List<String>> found) {
    final b = StringBuffer();
    for (final MapEntry(key: dir, value: files) in found.entries) {
      final out = dir == '.' ? 'infra' : '${dir}_dart';
      b
        ..writeln(
          '${dir == '.' ? 'The current directory' : dir} already holds '
          'Terraform (${files.take(3).join(', ')}'
          '${files.length > 3 ? ', ...' : ''}). Migrate it to TerraDart '
          'instead of starting over:',
        )
        ..writeln(
          '  terradart migrate --report --dir $dir    '
          '# what migrates, and what stays Terraform',
        )
        ..writeln('  terradart migrate --dir $dir --out $out');
    }
    return '$b'.trimRight();
  }

  String _summary(InitPlan plan) =>
      '${plan.providers.map((p) => p.name).join(', ')}; environments '
      '${plan.envs.join(', ')}; ${plan.backend.name} state'
      '${plan.flutter == null ? '' : '; wired to the Flutter app'}';

  String _rel(String path) => p.relative(path, from: _cwd);

  String _show(String path) {
    final rel = _rel(path);
    return rel == '.' ? 'the current directory' : _posix(rel);
  }
}

const _forceHint = 'Pass --force to scaffold a new project anyway.';

List<String> _split(List<String> values) => [
  for (final v in values)
    for (final part in v.split(','))
      if (part.trim().isNotEmpty) part.trim(),
];

(List<String>?, String?) _checkEnvs(List<String> envs) {
  if (envs.isEmpty) return (null, 'Name at least one environment.');
  for (final env in envs) {
    if (!RegExp(r'^[a-z][a-zA-Z0-9]*$').hasMatch(env) ||
        _reserved.contains(env)) {
      return (
        null,
        'Environment "$env" is not a lowerCamelCase Dart name an enum member '
            'can take, e.g. dev, staging, prd.',
      );
    }
  }
  final dupes = envs.where((e) => envs.indexOf(e) != envs.lastIndexOf(e));
  if (dupes.isNotEmpty) {
    return (null, 'Environment "${dupes.first}" is named twice.');
  }
  return (envs, null);
}

/// Why [id] cannot go into a Dart string literal as it is, or `null`.
String? _checkId(String id) => RegExp(r"^[^'\\$\s]+$").hasMatch(id)
    ? null
    : '"$id" is not an ID: no spaces, quotes, backslashes or \$.';

void _checkFieldNames(InitPlan plan) {
  final fields = {for (final f in plan.fields) f.name};
  for (final env in plan.envs) {
    if (fields.contains(env)) {
      throw CliException(
        '--env: environment "$env" is also a field of the Env enum; name it '
        'differently.',
        exitCode: 64,
      );
    }
  }
}

/// The `name` of the Flutter app whose `pubspec.yaml` is in [dir], or `null`.
String? _flutterAppName(String dir) {
  final file = File(p.join(dir, 'pubspec.yaml'));
  if (!file.existsSync()) return null;
  final Object? doc;
  try {
    doc = loadYaml(file.readAsStringSync());
  } on YamlException {
    return null;
  }
  if (doc is! Map) return null;
  final deps = doc['dependencies'];
  if (deps is! Map || !deps.containsKey('flutter')) return null;
  return '${doc['name'] ?? 'app'}';
}

/// [name] as a pub package name: lowercase, `_` for anything else.
String _packageName(String name) {
  var n = name
      .toLowerCase()
      .replaceAll(RegExp('[^a-z0-9_]'), '_')
      .replaceAll(RegExp('_+'), '_')
      .replaceAll(RegExp(r'^_|_$'), '');
  if (n.isEmpty || RegExp('^[0-9]').hasMatch(n)) n = 'infra_$n';
  if (_reserved.contains(n)) n = '${n}_infra';
  return n.replaceAll(RegExp(r'_$'), '');
}

String _posix(String path) => p.split(path).join('/');

/// Dart reserved words, and the members every enum has.
const _reserved = {
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', //
  'default', 'do', 'else', 'enum', 'extends', 'false', 'final', 'finally',
  'for', 'if', 'in', 'is', 'new', 'null', 'rethrow', 'return', 'super',
  'switch', 'this', 'throw', 'true', 'try', 'var', 'void', 'while', 'with',
  'values', 'index', 'name', 'hashCode', 'runtimeType', 'toString',
  'noSuchMethod',
};
