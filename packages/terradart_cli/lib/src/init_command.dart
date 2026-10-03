import 'dart:io';

import 'package:args/args.dart';
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
        help:
            'The provider packages, comma-separated. Required without a '
            'terminal; in one, a question.',
      )
      ..addMultiOption(
        'env',
        abbr: 'e',
        valueHelp: 'names',
        help:
            'The environments, comma-separated lowerCamelCase names. '
            'Required without a terminal, unless --defaults (dev,prd).',
      );
    for (final id in InitId.values) {
      argParser.addMultiOption(
        id.flag,
        valueHelp: 'env=value',
        help: switch (id.provider) {
          null =>
            'The bucket that already holds the state, one for every '
                'environment or env=name pairs; picks the backend from the '
                'provider (google: gcs, aws: s3, cloudflare: r2) unless '
                '--backend names it.',
          final p =>
            'The ${id.label} of each environment (--provider ${p.name}); '
                'a bare value is every environment\'s. Left out, '
                '${id.optional ? 'the provider takes any account' : 'lib/env.dart holds a placeholder marked TODO'}.',
        },
      );
    }
    argParser
      ..addOption(
        'backend',
        allowed: [for (final b in InitBackend.values) b.name],
        allowedHelp: {for (final b in InitBackend.values) b.name: b.label},
        help:
            'Where the state lives. Required without a terminal, unless '
            '--state-bucket or --defaults (local). A bucket must already '
            'exist; r2 needs --provider cloudflare.',
      )
      ..addFlag(
        'defaults',
        negatable: false,
        help:
            'Take the defaults for what the flags leave out instead of '
            'asking: --env dev,prd, --backend local, placeholder IDs, and '
            'the Flutter wiring when there is an app. Never picks the '
            'providers.',
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
      'without one it needs --provider, --env and --backend (or --defaults '
      'for the last two). Inside a Flutter app it wires the '
      "app to the Stack's outputs. For an existing Terraform directory use "
      'terradart migrate.';

  @override
  String get invocation => 'terradart init [dir] [flags]';

  @override
  String get usageFooter => '''

Examples:
  terradart init
      Asks in a terminal.
  terradart init --provider google --env dev,prd --backend local
      Without a terminal: these three are required.
  terradart init --provider google --defaults
      The same: --defaults is --env dev,prd --backend local.
  terradart init --provider google --env dev,prd --gcp-project dev=myapp-dev,prd=myapp-prd --state-bucket myapp-tfstate
      State in an existing GCS bucket, under myapp_infra/<env>.
  terradart init --provider aws --env dev,prd --aws-region dev=us-east-1,prd=eu-west-1 --aws-account prd=123456789012 --state-bucket dev=myapp-dev-tfstate,prd=myapp-prd-tfstate
  terradart init --provider cloudflare --env prd --cloudflare-account 0123abcd --backend local
  terradart init --dry-run --provider appwrite --defaults
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
      final found = _terraformDirs([_cwd, target]);
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

    final useDefaults = args.flag('defaults');
    if (!_interactive) _requireFlags(args, useDefaults);

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
        : useDefaults
        ? _defaultEnvs
        : _askEnvs();
    final ids = <InitId, Map<String, String>>{};
    for (final id in InitId.values) {
      final provider = id.provider;
      if (provider == null) continue;
      final chosen = providers.contains(provider);
      if (args.wasParsed(id.flag)) {
        if (!chosen) {
          usageException('--${id.flag} needs --provider ${provider.name}.');
        }
        ids[id] = _flagIds(id, args.multiOption(id.flag), envs);
      } else if (chosen && !useDefaults) {
        final asked = _askIds(id, envs);
        if (asked.isNotEmpty) ids[id] = asked;
      }
    }
    final (backend, buckets) = _state(args, providers, envs, useDefaults);
    if (buckets.isNotEmpty) ids[InitId.stateBucket] = buckets;
    final wire =
        flutterApp != null &&
        (flutterFlag ??
            (!_interactive ||
                useDefaults ||
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
    final defaults = _interactive && !useDefaults
        ? const <String>[]
        : [
            if (!args.wasParsed('env')) '--env ${envs.join(',')}',
            for (final id in plan.idFields)
              if (!id.optional && !args.wasParsed(id.flag))
                '--${id.flag} (placeholders marked TODO)',
            if (args.option('backend') == null &&
                !args.wasParsed('state-bucket'))
              '--backend local',
            if (flutterApp != null && flutterFlag == null) '--flutter',
          ];

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
      _printDefaults(defaults);
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
    _printDefaults(defaults);
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
        !plan.hasPlaceholders
            ? 'Next:'
            : 'Replace each placeholder marked TODO in '
                  '${_show(p.join(target, 'lib', 'env.dart'))}, then:',
      );
    final cd = p.equals(target, _cwd) ? null : _posix(_rel(target));
    for (final step in nextSteps(plan, cd: cd, pubGet: !pubGet)) {
      _console.out('  $step');
    }
    if (plan.backend == InitBackend.local) {
      _console
        ..out('')
        ..out('State is a local file under tf-out/<env>/. $moveStateNote');
    }
    if (plan.has(InitProvider.appwrite)) _console.warn(appwriteEngineNote);
    _printRerun(plan, target, force: force);
    return 0;
  }

  /// Without a terminal nothing consequential is defaulted: fails, with a
  /// command to edit, unless the flags give the providers, environments
  /// and backend, or --defaults accepts the documented ones.
  void _requireFlags(ArgResults args, bool useDefaults) {
    final missing = [
      if (!args.wasParsed('provider')) '--provider',
      if (!args.wasParsed('env') && !useDefaults) '--env',
      if (args.option('backend') == null &&
          !args.wasParsed('state-bucket') &&
          !useDefaults)
        '--backend',
    ];
    if (missing.isEmpty) return;
    String given(String flag, String example) =>
        args.wasParsed(flag) ? args.multiOption(flag).join(',') : example;
    final command = [
      'terradart init',
      ...args.rest,
      '--provider ${given('provider', 'google')}',
      if (!useDefaults || args.wasParsed('env'))
        '--env ${given('env', _defaultEnvs.join(','))}',
      if (args.wasParsed('state-bucket'))
        '--state-bucket ${args.multiOption('state-bucket').join(',')}',
      if (args.option('backend') != null ||
          (!useDefaults && !args.wasParsed('state-bucket')))
        '--backend ${args.option('backend') ?? InitBackend.local.name}',
      if (useDefaults) '--defaults',
    ].join(' ');
    throw CliException(
      'Without a terminal, terradart init asks nothing and needs '
      '${missing.join(', ')}. Choose them (providers: '
      '${InitProvider.values.map((p) => p.name).join(', ')}; backend: '
      '${InitBackend.values.map((b) => b.name).join(', ')}) and run, for '
      'example:\n'
      '  $command\n'
      '--state-bucket <name> instead of --backend keeps the state in a '
      'bucket that exists; --defaults stands for --env '
      '${_defaultEnvs.join(',')} --backend ${InitBackend.local.name}.',
      exitCode: 64,
    );
  }

  void _printDefaults(List<String> defaults) {
    if (defaults.isEmpty) return;
    _console.out('Defaults: ${defaults.join(', ')}.');
  }

  /// The non-interactive command for what was asked.
  void _printRerun(InitPlan plan, String target, {required bool force}) {
    if (_answered.isEmpty) return;
    String pairs(Map<String, String> ids) =>
        ids.length == plan.envs.length && ids.values.toSet().length == 1
        ? ids.values.first
        : [
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
    final picked = _ask<List<InitProvider>?>(
      'provider',
      'Providers, comma-separated names or numbers: ',
      null,
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
      allowEmpty: false,
    );
    return picked ??
        usageException(
          'Pass --provider: one or more of ${names.join(', ')}, '
          'comma-separated.',
        );
  }

  List<String> _askEnvs() => _ask(
    'env',
    'Environments [${_defaultEnvs.join(',')}]: ',
    _defaultEnvs,
    (answer) => _checkEnvs(_split([answer])),
  );

  Map<String, String> _askIds(InitId id, List<String> envs) {
    final ids = <String, String>{};
    if (!id.perEnv) {
      final value = _ask<String?>(
        id.flag,
        '${id.label} [skip]: ',
        null,
        (answer) => switch (_checkId(answer)) {
          null => (answer, null),
          final problem => (null, problem),
        },
      );
      return {
        if (value != null)
          for (final env in envs) env: value,
      };
    }
    for (final env in envs) {
      final value = _ask<String?>(
        id.flag,
        '${id.label} for $env${id.optional ? ' (optional)' : ''} [skip]: ',
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

  /// The backend, and the bucket of each environment when the flags or
  /// the answers name one.
  (InitBackend, Map<String, String>) _state(
    ArgResults args,
    List<InitProvider> providers,
    List<String> envs,
    bool useDefaults,
  ) {
    final flag = switch (args.option('backend')) {
      final name? => InitBackend.parse(name),
      null => null,
    };
    if (flag == InitBackend.r2 &&
        !providers.contains(InitProvider.cloudflare)) {
      usageException(
        '--backend r2 needs --provider cloudflare: the bucket is in its '
        'account.',
      );
    }
    if (args.wasParsed(InitId.stateBucket.flag)) {
      if (flag == InitBackend.local) {
        usageException(
          '--state-bucket: --backend local keeps no bucket; drop one of them.',
        );
      }
      final buckets = _flagIds(
        InitId.stateBucket,
        args.multiOption(InitId.stateBucket.flag),
        envs,
      );
      if (flag != null) return (flag, buckets);
      final kinds = _bucketKinds(providers);
      if (kinds case [final only]) return (only, buckets);
      if (!_interactive) {
        final named = kinds.isEmpty ? _anyBucket : kinds;
        usageException(
          '--state-bucket: pass --backend ${named.map((b) => b.name).join(' or ')} '
          'too, for the kind of bucket.',
        );
      }
      return (_askKind(kinds), buckets);
    }
    if (flag != null) return (flag, const {});
    if (useDefaults || !_interactive) return (InitBackend.local, const {});

    _console.out(
      'Terraform state: without a bucket it is a local file under tf-out/, '
      'fine to start with and moved to a bucket later.',
    );
    if (!_confirmFlag(
      'backend',
      'Do you already have a bucket for Terraform state?',
      false,
    )) {
      return (InitBackend.local, const {});
    }
    final kind = _askKind(_bucketKinds(providers));
    final buckets = _ask<Map<String, String>?>(
      InitId.stateBucket.flag,
      'Bucket name, one for every environment or env=name pairs: ',
      null,
      (answer) => _parseIds(InitId.stateBucket, _split([answer]), envs),
      allowEmpty: false,
    );
    if (buckets == null) {
      _console.err('No bucket name: the state stays local.');
      return (InitBackend.local, const {});
    }
    return (kind, buckets);
  }

  /// The kind of bucket: the one [kinds] holds, else asked.
  InitBackend _askKind(List<InitBackend> kinds) {
    _answered.add('backend');
    var options = kinds;
    if (kinds case [InitBackend.r2]) {
      if (_confirm('Is it a Cloudflare R2 bucket?', true)) {
        return InitBackend.r2;
      }
      options = _anyBucket;
    } else if (kinds case [final only]) {
      _console.out('Taken as ${only.label} (--backend ${only.name}).');
      return only;
    } else if (kinds.isEmpty) {
      options = _anyBucket;
    }
    final names = [for (final b in options) b.name];
    return _ask(
      'backend',
      'Which kind of bucket (${names.join(', ')}) [${names.first}]: ',
      options.first,
      (answer) => names.contains(answer)
          ? (InitBackend.parse(answer), null)
          : (null, 'Pick one of ${names.join(', ')}.'),
    );
  }

  /// Asks until [parse] accepts the answer; end of input, no terminal, or
  /// an empty answer when [allowEmpty] is [fallback]. An accepted answer is
  /// the [flag]'s.
  T _ask<T>(
    String flag,
    String question,
    T fallback,
    (T?, String?) Function(String answer) parse, {
    bool allowEmpty = true,
  }) {
    final ask = _console.ask;
    if (ask == null) return fallback;
    _answered.add(flag);
    while (true) {
      final answer = ask(question)?.trim();
      if (answer == null) return fallback;
      if (answer.isEmpty) {
        if (allowEmpty) return fallback;
        _console.err('Pick at least one.');
        continue;
      }
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
    final (ids, problem) = _parseIds(id, values, envs);
    if (problem != null) usageException('--${id.flag}: $problem');
    return ids!;
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

  /// The directories under each of [roots] that hold `*.tf` / `*.tf.json`
  /// files, by root; all relative to the working directory. A root inside
  /// another is not walked twice.
  Map<String, List<String>> _terraformDirs(Iterable<String> roots) {
    final walked = <String>[];
    final found = <String, List<String>>{};
    for (final root in roots) {
      if (walked.any((r) => p.equals(r, root) || p.isWithin(r, root))) {
        continue;
      }
      walked.add(root);
      final dirs = <String>{};
      void walk(Directory dir) {
        final List<FileSystemEntity> entries;
        try {
          entries = dir.listSync(followLinks: false);
        } on FileSystemException {
          return;
        }
        for (final e in entries) {
          final name = p.basename(e.path);
          if (e is Directory) {
            if (!_notTerraform.contains(name)) walk(e);
          } else if (e is File &&
              (name.endsWith('.tf') || name.endsWith('.tf.json'))) {
            dirs.add(_posix(_rel(dir.path)));
          }
        }
      }

      if (Directory(root).existsSync()) walk(Directory(root));
      if (dirs.isNotEmpty) found[_posix(_rel(root))] = dirs.toList()..sort();
    }
    return found;
  }

  String _migrateHint(Map<String, List<String>> found) {
    final b = StringBuffer();
    for (final MapEntry(key: root, value: dirs) in found.entries) {
      final out = root == '.' ? 'infra' : '${root}_dart';
      final shown = [
        for (final d in dirs.take(5))
          d == '.' ? '. (the current directory)' : d,
        if (dirs.length > 5) '... (${dirs.length} directories)',
      ];
      b
        ..writeln(
          'Found Terraform in ${shown.join(', ')}. Migrate it to TerraDart '
          'instead of starting over:',
        )
        ..writeln(
          '  terradart migrate --report --dir $root    '
          '# what migrates, and what stays Terraform',
        )
        ..writeln('  terradart migrate --dir $root --out $out');
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

const _defaultEnvs = ['dev', 'prd'];

const _anyBucket = [InitBackend.gcs, InitBackend.s3];

/// The buckets the providers point at: google's is GCS, and so on.
List<InitBackend> _bucketKinds(List<InitProvider> providers) => [
  for (final p in providers)
    ?switch (p) {
      InitProvider.google => InitBackend.gcs,
      InitProvider.aws => InitBackend.s3,
      InitProvider.cloudflare => InitBackend.r2,
      InitProvider.appwrite => null,
    },
];

/// `<env>=<value>` pairs, or one value for every environment, by
/// environment in [envs] order.
(Map<String, String>?, String?) _parseIds(
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
        return (
          null,
          'no environment "$env"; the environments are ${envs.join(',')}.',
        );
      }
      if (_checkId(given) case final problem?) return (null, problem);
      ids[env] = given;
    }
  }
  return (
    {
      for (final env in envs)
        if (ids.containsKey(env)) env: ids[env]!,
    },
    null,
  );
}

const _forceHint = 'Pass --force to scaffold a new project anyway.';

/// Directories the Terraform scan skips: tooling, build output, the
/// platform folders of a Flutter app, and what TerraDart itself writes.
const _notTerraform = {
  '.git', '.dart_tool', 'build', 'node_modules', '.terraform', //
  'tf-out', '.terradart', 'ios', 'android', 'macos', 'linux', 'windows',
  'web',
};

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
