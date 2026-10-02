import 'dart:convert';
import 'dart:io';

import 'stack.dart';

/// The environment variable the `terradart` command sets to the file
/// [runStack] and [runEnvironments] describe what they wrote in.
const terradartManifestVariable = 'TERRADART_MANIFEST';

/// The entry point of a project with one Stack: writes it to [out].
///
/// ```dart
/// // bin/run_stack.dart
/// final class OrdersStack extends Stack {
///   OrdersStack() : super(providers: const [TimeProvider()]);
/// }
///
/// Future<void> main(List<String> args) => runStack(args, OrdersStack.new);
/// ```
///
/// `dart run bin/infra.dart` writes `tf-out/main.tf.json`; `terradart plan`
/// and `terradart apply` run the engine there.
Future<void> runStack(
  List<String> args,
  Stack Function() build, {
  String out = 'tf-out',
}) async {
  final stack = build();
  await stack.writeTo(out);
  stdout.writeln('synthesized $out/main.tf.json');
  await _writeManifest(
    environments: null,
    selected: null,
    roots: [_root(null, out, null, const [], stack)],
  );
}

/// The entry point of a project with one Stack per environment. The
/// environments are the members of an enum of the project's own — any
/// names, each carrying its values — so the Stack takes a typed `env` and
/// derives everything per environment from it, its backend included:
///
/// ```dart
/// // bin/run_environments.dart
/// enum Env {
///   dev(stateBucket: null),
///   qa(stateBucket: 'acme-qa-state'),
///   prd(stateBucket: 'acme-prd-state');
///
///   const Env({required this.stateBucket});
///
///   /// The GCS bucket of the state; `null` keeps it in a local file.
///   final String? stateBucket;
/// }
///
/// final class OrdersStack extends Stack {
///   OrdersStack({required Env env})
///     : super(
///         providers: const [TimeProvider()],
///         backend: switch (env.stateBucket) {
///           final bucket? => GcsBackend(bucket: bucket, prefix: 'orders'),
///           null => LocalBackend(path: 'state/${env.name}.tfstate'),
///         },
///       );
/// }
///
/// Future<void> main(List<String> args) =>
///     runEnvironments(args, Env.values, (env) => OrdersStack(env: env));
/// ```
///
/// `dart run bin/infra.dart --env qa` writes `tf-out/qa/main.tf.json`;
/// without `--env` every environment is written. A name that is not a
/// member is a usage error (exit code 64) that lists the members.
/// `terradart apply --env qa` runs the entry point the same way, then the
/// engine in the directory it wrote; the names `terradart` accepts are the
/// enum's.
///
/// Environments that keep their state in one backend whose settings differ
/// can share one directory instead of one each:
///
/// - [dir] is the directory an environment writes (default
///   `tf-out/<name>`). Two environments may share one only when [workspace]
///   or [backendConfig] tells their states apart.
/// - [workspace] is the Terraform workspace `terradart` selects (and
///   creates on the first `plan` or `apply`).
/// - [backendConfig] is the partial backend configuration `terradart`
///   passes to `init` as `-backend-config`: files relative to the project,
///   or `key=value` pairs.
///
/// ```dart
/// // lib/partial_backend_config.dart
/// enum Region { eu, us }
///
/// final class ApiStack extends Stack {
///   ApiStack(Region region)
///     : super(
///         providers: const [TimeProvider()],
///         backend: const GcsBackend(),
///       );
/// }
///
/// Future<void> infra(List<String> args) => runEnvironments(
///   args,
///   Region.values,
///   ApiStack.new,
///   dir: (_) => 'tf-out',
///   backendConfig: (region) => ['backend/${region.name}.gcs.tfbackend'],
/// );
/// ```
Future<void> runEnvironments<E extends Enum>(
  List<String> args,
  List<E> environments,
  Stack Function(E env) build, {
  String Function(E env)? dir,
  String? Function(E env)? workspace,
  List<String> Function(E env)? backendConfig,
}) async {
  if (environments.isEmpty) {
    throw ArgumentError.value(environments, 'environments', 'is empty');
  }
  String dirOf(E env) => dir?.call(env) ?? 'tf-out/${env.name}';
  final shared = <String, List<E>>{};
  for (final env in environments) {
    (shared[_normalize(dirOf(env))] ??= []).add(env);
  }
  for (final MapEntry(key: path, value: envs) in shared.entries) {
    if (envs.length < 2) continue;
    final states = <String>{};
    for (final env in envs) {
      final ws = workspace?.call(env);
      final config = backendConfig?.call(env) ?? const [];
      if (ws == null && config.isEmpty) {
        throw ArgumentError(
          'Environments ${envs.map((e) => e.name).join(', ')} all write '
          '$path, but ${env.name} has no workspace or backendConfig to keep '
          'its state apart; give it one, or its own dir.',
        );
      }
      if (!states.add('$ws\n${config.join('\n')}')) {
        throw ArgumentError(
          'Environments sharing $path need different workspaces or '
          'backendConfig; ${env.name} repeats another one\'s.',
        );
      }
    }
  }

  final name = _option(args, '--env');
  final List<E> selected;
  if (name == null) {
    final clash = [
      for (final MapEntry(key: path, value: envs) in shared.entries)
        if (envs.length > 1) '$path (${envs.map((e) => e.name).join(', ')})',
    ];
    if (clash.isNotEmpty) {
      stderr.writeln(
        'infra: environments share ${clash.join(', ')}; pass --env <name>, '
        'one of ${environments.map((e) => e.name).join(', ')}.',
      );
      exitCode = 64;
      return;
    }
    selected = environments;
  } else {
    selected = [
      for (final env in environments)
        if (env.name == name) env,
    ];
    if (selected.isEmpty) {
      stderr.writeln(
        'infra: unknown environment "$name"; known envs: '
        '${environments.map((e) => e.name).join(', ')}.',
      );
      exitCode = 64;
      return;
    }
  }

  final roots = <Map<String, Object?>>[];
  for (final env in selected) {
    final stack = build(env);
    final out = dirOf(env);
    await stack.writeTo(out);
    stdout.writeln('synthesized $out/main.tf.json (${env.name})');
    roots.add(
      _root(
        env.name,
        out,
        workspace?.call(env),
        backendConfig?.call(env) ?? const [],
        stack,
      ),
    );
  }
  await _writeManifest(
    environments: [for (final e in environments) e.name],
    selected: name,
    roots: roots,
  );
}

Map<String, Object?> _root(
  String? environment,
  String dir,
  String? workspace,
  List<String> backendConfig,
  Stack stack,
) => {
  'environment': environment,
  'dir': dir,
  'workspace': workspace,
  'backend_config': backendConfig,
  'dart_defines': stack.dartDefineOutputs.keys.toList(),
};

Future<void> _writeManifest({
  required List<String>? environments,
  required String? selected,
  required List<Map<String, Object?>> roots,
}) async {
  final path = Platform.environment[terradartManifestVariable];
  if (path == null || path.isEmpty) return;
  final file = File(path);
  await file.parent.create(recursive: true);
  await file.writeAsString(
    const JsonEncoder.withIndent('  ').convert({
      'version': 1,
      'environments': environments,
      'selected': selected,
      'roots': roots,
    }),
  );
}

String _normalize(String path) {
  final parts = <String>[];
  for (final part in path.replaceAll(r'\', '/').split('/')) {
    if (part.isEmpty || part == '.') continue;
    if (part == '..' && parts.isNotEmpty && parts.last != '..') {
      parts.removeLast();
    } else {
      parts.add(part);
    }
  }
  return parts.join('/');
}

String? _option(List<String> args, String flag) {
  for (var i = 0; i < args.length; i++) {
    if (args[i] == flag && i + 1 < args.length) return args[i + 1];
    if (args[i].startsWith('$flag=')) return args[i].substring(flag.length + 1);
  }
  return null;
}
