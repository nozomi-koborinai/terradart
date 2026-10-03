import 'dart:convert';

import '../cli_exception.dart';
import 'exit_codes.dart';

/// The `schemaVersion` of the `--json` result; raised only for a change
/// that breaks a reader.
const jsonSchemaVersion = 1;

/// What `--json` prints: one object on stdout, filled in as the command
/// runs.
final class JsonResult {
  JsonResult(this.command);

  /// The command path: `plan`, `state migrate`.
  final String command;

  /// The environment and why it is the one (`flag`, `variable`, `default`,
  /// `only`, `prompt`).
  ({String name, String source})? env;

  /// The engine, its version and why it is the one (`engine_path`,
  /// `setting`, `state`, `path`, `managed`).
  ({String kind, String? version, String source, String path})? engine;

  /// The Terraform directory, relative to the working directory.
  String? outDir;

  /// What `plan` would do.
  PlanSummary? plan;

  /// The define file `apply` or `outputs` wrote.
  String? defineFile;

  /// The keys of the define file — never the values, which may be
  /// sensitive.
  List<String>? keys;

  /// One-line notices (`skill_outdated`).
  final notices = <({String code, String message})>[];

  /// Commands to run next.
  final next = <String>[];

  /// The result of a run that exited [exitCode], failing with [error] or a
  /// usage error ([usage]).
  Map<String, Object?> toJson(
    int exitCode, {
    CliException? error,
    String? usage,
    List<String> errorNext = const [],
  }) => {
    'schemaVersion': jsonSchemaVersion,
    'command': command,
    'ok': error == null && usage == null,
    'exitCode': exitCode,
    if (env case final env?) 'env': {'name': env.name, 'source': env.source},
    if (engine case final engine?)
      'engine': {
        'kind': engine.kind,
        'version': engine.version,
        'source': engine.source,
        'path': engine.path,
      },
    'outDir': ?outDir,
    if (plan case final plan?) 'plan': plan.toJson(),
    'defineFile': ?defineFile,
    'keys': ?keys,
    'notices': [
      for (final n in notices) {'code': n.code, 'message': n.message},
    ],
    if (error != null)
      'error': {
        'code': error.kind.error,
        'message': error.message,
        'flag': ?error.flag,
        if (error.choices.isNotEmpty) 'choices': error.choices,
        'engineExitCode': ?error.engineExitCode,
      }
    else if (usage != null)
      'error': {'code': ExitCode.usage.error, 'message': usage},
    'next': [...errorNext, ...next],
  };

  String encode(
    int exitCode, {
    CliException? error,
    String? usage,
    List<String> errorNext = const [],
  }) => jsonEncode(
    toJson(exitCode, error: error, usage: usage, errorNext: errorNext),
  );
}

/// The resource changes of a saved plan, as `show -json` lists them.
final class PlanSummary {
  const PlanSummary({
    this.add = 0,
    this.change = 0,
    this.destroy = 0,
    this.replace = 0,
  });

  /// Counts the `resource_changes` of a `show -json <plan>` document: a
  /// replacement (`delete` and `create`) counts once, as `replace`.
  factory PlanSummary.fromShowJson(Map<String, Object?> plan) {
    var add = 0, change = 0, destroy = 0, replace = 0;
    for (final rc in (plan['resource_changes'] as List?) ?? const []) {
      final actions = switch (rc) {
        {'change': {'actions': final List<Object?> a}} => a,
        _ => const <Object?>[],
      };
      if (actions.contains('create') && actions.contains('delete')) {
        replace++;
      } else if (actions.contains('create')) {
        add++;
      } else if (actions.contains('update')) {
        change++;
      } else if (actions.contains('delete')) {
        destroy++;
      }
    }
    return PlanSummary(
      add: add,
      change: change,
      destroy: destroy,
      replace: replace,
    );
  }

  final int add;
  final int change;
  final int destroy;
  final int replace;

  bool get hasChanges => add + change + destroy + replace > 0;

  Map<String, int> toJson() => {
    'add': add,
    'change': change,
    'destroy': destroy,
    'replace': replace,
  };
}
