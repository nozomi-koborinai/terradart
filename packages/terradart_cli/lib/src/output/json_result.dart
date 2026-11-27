import 'dart:convert';

import '../cli_exception.dart';
import 'exit_codes.dart';

const jsonSchemaVersion = 1;

final class JsonResult {
  JsonResult(this.command);

  final String command;

  String? version;

  ({String name, String source})? env;

  ({String kind, String? version, String source, String path})? engine;

  String? outDir;

  bool dryRun = false;

  PlanSummary? plan;

  String? defineFile;

  List<String>? keys;

  final notices = <({String code, String message})>[];

  final next = <String>[];

  Map<String, Object?> toJson(
    int exitCode, {
    CliException? error,
    String? usage,
    List<String> errorNext = const [],
  }) {
    final failed =
        error == null &&
            usage == null &&
            exitCode != 0 &&
            exitCode != exitChanges
        ? ExitCode.values.firstWhere(
            (c) => c.code == exitCode,
            orElse: () => ExitCode.internal,
          )
        : null;
    return {
      'schemaVersion': jsonSchemaVersion,
      'command': command,
      'ok': error == null && usage == null && failed == null,
      'exitCode': exitCode,
      'version': ?version,
      if (dryRun) 'dryRun': true,
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
        'error': {'code': ExitCode.usage.error, 'message': usage}
      else if (failed != null)
        'error': {
          'code': failed.error,
          'message': 'exited $exitCode; the reason is on stderr',
        },
      'next': [...errorNext, ...next],
    };
  }

  String encode(
    int exitCode, {
    CliException? error,
    String? usage,
    List<String> errorNext = const [],
  }) => jsonEncode(
    toJson(exitCode, error: error, usage: usage, errorNext: errorNext),
  );
}

final class PlanSummary {
  const PlanSummary({
    this.add = 0,
    this.change = 0,
    this.destroy = 0,
    this.replace = 0,
  });

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
