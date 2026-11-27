import 'dart:convert';
import 'dart:io';

import 'example_synth_env.dart';
import 'validate_engine.dart';

typedef ShardProcessRunner =
    Future<ProcessResult> Function(
      String executable,
      List<String> arguments, {
      String? workingDirectory,
      Map<String, String>? environment,
    });

typedef OpenTofuResolver = Future<String?> Function();

Future<ProcessResult> _defaultProcessRunner(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
  Map<String, String>? environment,
}) => Process.run(
  executable,
  arguments,
  workingDirectory: workingDirectory,
  environment: environment,
);

final class SynthOutcome {
  const SynthOutcome({
    required this.slug,
    required this.ok,
    required this.durationMs,
    this.engineKind,
    this.error,
  });

  factory SynthOutcome.fromJson(Map<String, Object?> json) => SynthOutcome(
    slug: json['slug']! as String,
    ok: json['ok']! as bool,
    durationMs: json['durationMs']! as int,
    engineKind: json['engineKind'] as String?,
    error: json['error'] as String?,
  );

  final String slug;
  final bool ok;
  final int durationMs;
  final String? engineKind;
  final String? error;

  Map<String, Object?> toJson() => {
    'slug': slug,
    'ok': ok,
    'durationMs': durationMs,
    if (engineKind != null) 'engineKind': engineKind,
    if (error != null) 'error': error,
  };
}

final class ShardSynthState {
  const ShardSynthState({
    required this.shardId,
    required this.totalDurationMs,
    required this.outcomes,
  });

  factory ShardSynthState.fromJson(Map<String, Object?> json) {
    final rawOutcomes = json['outcomes']! as List<Object?>;
    return ShardSynthState(
      shardId: json['shardId']! as String,
      totalDurationMs: json['totalDurationMs']! as int,
      outcomes: [
        for (final entry in rawOutcomes)
          SynthOutcome.fromJson(entry! as Map<String, Object?>),
      ],
    );
  }

  final String shardId;
  final int totalDurationMs;
  final List<SynthOutcome> outcomes;

  bool get needsTerraform =>
      outcomes.any((o) => o.ok && o.engineKind == 'terraform');

  bool get needsTofu => outcomes.any((o) => o.ok && o.engineKind == 'tofu');

  Map<String, Object?> toJson() => {
    'shardId': shardId,
    'totalDurationMs': totalDurationMs,
    'outcomes': [for (final o in outcomes) o.toJson()],
  };
}

final class ValidateOutcome {
  const ValidateOutcome({
    required this.synth,
    required this.ok,
    required this.validateDurationMs,
    this.failedStep,
    this.error,
  });

  final SynthOutcome synth;
  final bool ok;
  final int validateDurationMs;
  final String? failedStep;
  final String? error;
}

final class ShardValidateResult {
  const ShardValidateResult({
    required this.shardId,
    required this.synthTotalMs,
    required this.validateTotalMs,
    required this.outcomes,
  });

  final String shardId;
  final int synthTotalMs;
  final int validateTotalMs;
  final List<ValidateOutcome> outcomes;

  int get passedCount => outcomes.where((o) => o.ok).length;

  int get failedCount => outcomes.length - passedCount;

  bool get allPassed => failedCount == 0;
}

String escapeAnnotationData(String value) => value
    .replaceAll('%', '%25')
    .replaceAll('\r', '%0D')
    .replaceAll('\n', '%0A');

String escapeAnnotationProperty(String value) =>
    escapeAnnotationData(value).replaceAll(':', '%3A').replaceAll(',', '%2C');

String _combineOutput(ProcessResult result) {
  final parts = <String>[];
  final out = result.stdout.toString().trim();
  final err = result.stderr.toString().trim();
  if (out.isNotEmpty) parts.add(out);
  if (err.isNotEmpty) parts.add(err);
  return parts.join('\n');
}

String _truncate(String text, {int maxChars = 1000}) {
  if (text.length <= maxChars) return text;
  return '${text.substring(0, maxChars)}\n... (truncated)';
}

void _emitErrorAnnotation(StringSink out, String title, String message) {
  final safeTitle = escapeAnnotationProperty(title);
  final safeMessage = escapeAnnotationData(_truncate(message.trim()));
  out.writeln('::error title=$safeTitle::$safeMessage');
}

Future<ShardSynthState> runSynthPhase({
  required String shardId,
  required List<String> slugs,
  String examplesRoot = 'examples',
  ShardProcessRunner runProcess = _defaultProcessRunner,
  StringSink? out,
  String? dartExecutable,
  Map<String, String>? baseEnvironment,
}) async {
  final log = out ?? stdout;
  final dart = dartExecutable ?? Platform.resolvedExecutable;
  final env = {
    ...(baseEnvironment ?? Platform.environment),
    ...exampleSynthEnvironment,
  };
  final totalSw = Stopwatch()..start();
  final outcomes = <SynthOutcome>[];

  for (final slug in slugs) {
    final dirPath = '$examplesRoot/${slug}_quickstart';
    log.writeln('::group::synth ${slug}_quickstart');
    final sw = Stopwatch()..start();

    if (!Directory(dirPath).existsSync()) {
      sw.stop();
      final msg = '$dirPath does not exist';
      log.writeln(msg);
      log.writeln('::endgroup::');
      _emitErrorAnnotation(log, '${slug}_quickstart (synth)', msg);
      outcomes.add(
        SynthOutcome(
          slug: slug,
          ok: false,
          durationMs: sw.elapsedMilliseconds,
          error: msg,
        ),
      );
      continue;
    }

    final result = await runProcess(
      dart,
      const ['run', 'bin/infra.dart'],
      workingDirectory: dirPath,
      environment: env,
    );
    sw.stop();

    if (result.exitCode != 0) {
      final combined = _combineOutput(result);
      final msg = combined.isEmpty
          ? 'dart run bin/infra.dart exited with ${result.exitCode}'
          : 'dart run bin/infra.dart exited with ${result.exitCode}:\n$combined';
      log.writeln(msg);
      log.writeln('::endgroup::');
      _emitErrorAnnotation(log, '${slug}_quickstart (synth)', msg);
      outcomes.add(
        SynthOutcome(
          slug: slug,
          ok: false,
          durationMs: sw.elapsedMilliseconds,
          error: msg,
        ),
      );
      continue;
    }

    final mainTfFile = File('$dirPath/tf-out/main.tf.json');
    if (!mainTfFile.existsSync()) {
      final msg = 'missing $dirPath/tf-out/main.tf.json after synth';
      log.writeln(msg);
      log.writeln('::endgroup::');
      _emitErrorAnnotation(log, '${slug}_quickstart (synth)', msg);
      outcomes.add(
        SynthOutcome(
          slug: slug,
          ok: false,
          durationMs: sw.elapsedMilliseconds,
          error: msg,
        ),
      );
      continue;
    }

    final Map<String, dynamic> decoded;
    try {
      final raw = jsonDecode(mainTfFile.readAsStringSync());
      if (raw is! Map<String, dynamic>) {
        throw const FormatException('main.tf.json root is not a JSON object');
      }
      decoded = raw;
    } on Object catch (e) {
      final msg = 'failed to parse $dirPath/tf-out/main.tf.json: $e';
      log.writeln(msg);
      log.writeln('::endgroup::');
      _emitErrorAnnotation(log, '${slug}_quickstart (synth)', msg);
      outcomes.add(
        SynthOutcome(
          slug: slug,
          ok: false,
          durationMs: sw.elapsedMilliseconds,
          error: msg,
        ),
      );
      continue;
    }

    final missingOnOpenTofu = providersNotOnOpenTofu(decoded);
    final engineKind = missingOnOpenTofu.isNotEmpty ? 'terraform' : 'tofu';
    if (missingOnOpenTofu.isNotEmpty) {
      log.writeln(
        'validate_engine: ${missingOnOpenTofu.join(', ')} not on the OpenTofu '
        'registry; validating with terraform.',
      );
    }
    log.writeln('synth ok (${sw.elapsedMilliseconds}ms, engine=$engineKind)');
    log.writeln('::endgroup::');
    outcomes.add(
      SynthOutcome(
        slug: slug,
        ok: true,
        durationMs: sw.elapsedMilliseconds,
        engineKind: engineKind,
      ),
    );
  }

  totalSw.stop();
  return ShardSynthState(
    shardId: shardId,
    totalDurationMs: totalSw.elapsedMilliseconds,
    outcomes: outcomes,
  );
}

Future<ShardValidateResult> runValidatePhase({
  required ShardSynthState state,
  String examplesRoot = 'examples',
  ShardProcessRunner runProcess = _defaultProcessRunner,
  OpenTofuResolver resolveTofu = resolveOpenTofu,
  StringSink? out,
}) async {
  final log = out ?? stdout;
  final totalSw = Stopwatch()..start();

  String? tofuBinary;
  if (state.needsTofu) {
    tofuBinary = await resolveTofu();
    if (tofuBinary == null) {
      _emitErrorAnnotation(
        log,
        'validate (shard ${state.shardId})',
        'Failed to resolve OpenTofu binary via terradart engine --engine tofu',
      );
    } else {
      log.writeln('::group::OpenTofu version');
      final version = await runProcess(tofuBinary, const ['version']);
      log.writeln(_combineOutput(version));
      log.writeln('::endgroup::');
    }
  }

  if (state.needsTerraform) {
    log.writeln('::group::Terraform version');
    final version = await runProcess('terraform', const ['version']);
    log.writeln(_combineOutput(version));
    log.writeln('::endgroup::');
  }

  final outcomes = <ValidateOutcome>[];

  for (final synth in state.outcomes) {
    if (!synth.ok) {
      outcomes.add(
        ValidateOutcome(
          synth: synth,
          ok: false,
          validateDurationMs: 0,
          failedStep: 'synth',
          error: synth.error,
        ),
      );
      continue;
    }

    final engineKind = synth.engineKind ?? 'tofu';
    final binary = engineKind == 'terraform' ? 'terraform' : tofuBinary;
    if (binary == null) {
      const msg = 'OpenTofu binary could not be resolved';
      _emitErrorAnnotation(
        log,
        '${synth.slug}_quickstart ($engineKind engine)',
        msg,
      );
      outcomes.add(
        ValidateOutcome(
          synth: synth,
          ok: false,
          validateDurationMs: 0,
          failedStep: 'engine',
          error: msg,
        ),
      );
      continue;
    }

    final tfOutPath = '$examplesRoot/${synth.slug}_quickstart/tf-out';
    log.writeln('::group::validate ${synth.slug}_quickstart ($engineKind)');
    final sw = Stopwatch()..start();
    String? failedStep;
    String? failureMessage;

    for (final cmd in kValidateLeg) {
      log.writeln(
        r'$ '
        '$engineKind ${cmd.join(' ')}',
      );
      final result = await runProcess(binary, cmd, workingDirectory: tfOutPath);
      final combined = _combineOutput(result);
      if (combined.isNotEmpty) log.writeln(combined);
      if (result.exitCode != 0) {
        failedStep = cmd.first;
        failureMessage = combined.isEmpty
            ? '$engineKind ${cmd.join(' ')} exited with ${result.exitCode}'
            : '$engineKind ${cmd.join(' ')} exited with ${result.exitCode}:\n'
                  '$combined';
        break;
      }
    }

    sw.stop();
    if (failedStep == null) {
      log.writeln('validate ok (${sw.elapsedMilliseconds}ms)');
      log.writeln('::endgroup::');
      outcomes.add(
        ValidateOutcome(
          synth: synth,
          ok: true,
          validateDurationMs: sw.elapsedMilliseconds,
        ),
      );
    } else {
      log.writeln('::endgroup::');
      _emitErrorAnnotation(
        log,
        '${synth.slug}_quickstart ($engineKind $failedStep)',
        failureMessage!,
      );
      outcomes.add(
        ValidateOutcome(
          synth: synth,
          ok: false,
          validateDurationMs: sw.elapsedMilliseconds,
          failedStep: failedStep,
          error: failureMessage,
        ),
      );
    }
  }

  totalSw.stop();
  final result = ShardValidateResult(
    shardId: state.shardId,
    synthTotalMs: state.totalDurationMs,
    validateTotalMs: totalSw.elapsedMilliseconds,
    outcomes: outcomes,
  );

  final failedSummary = [
    for (final o in outcomes)
      if (!o.ok) '${o.synth.slug} (${o.failedStep})',
  ];
  if (failedSummary.isEmpty) {
    log.writeln(
      'Shard ${result.shardId}: '
      '${result.passedCount}/${outcomes.length} passed',
    );
  } else {
    log.writeln(
      'Shard ${result.shardId}: '
      '${result.passedCount}/${outcomes.length} passed, '
      '${result.failedCount} failed: ${failedSummary.join(', ')}',
    );
  }

  return result;
}

String formatStepSummary(
  ShardValidateResult result, {
  int? setupMs,
  int? pubGetMs,
}) {
  final b = StringBuffer()
    ..writeln(
      '### Validate shard ${result.shardId} '
      '(${result.passedCount}/${result.outcomes.length} passed)',
    )
    ..writeln();

  if (setupMs != null || pubGetMs != null) {
    b
      ..writeln('| Phase | Duration (ms) |')
      ..writeln('|---|---:|');
    if (setupMs != null) {
      b.writeln('| Setup (checkout + Dart + caches) | $setupMs |');
    }
    if (pubGetMs != null) {
      b.writeln('| Workspace `pub get` | $pubGetMs |');
    }
    b
      ..writeln('| Synth (all examples in shard) | ${result.synthTotalMs} |')
      ..writeln(
        '| Validate (all examples in shard) | ${result.validateTotalMs} |',
      )
      ..writeln();
  }

  b
    ..writeln('| Example | Engine | Status | Synth (ms) | Validate (ms) |')
    ..writeln('|---|---|---|---:|---:|');
  for (final o in result.outcomes) {
    final engine = o.synth.engineKind ?? '-';
    final status = o.ok ? 'PASS' : 'FAIL (${o.failedStep ?? 'error'})';
    b.writeln(
      '| `${o.synth.slug}_quickstart` | `$engine` | $status | '
      '${o.synth.durationMs} | ${o.validateDurationMs} |',
    );
  }

  final failures = result.outcomes.where((o) => !o.ok).toList();
  if (failures.isNotEmpty) {
    b
      ..writeln()
      ..writeln('#### Failures')
      ..writeln();
    for (final f in failures) {
      final step = f.failedStep ?? 'error';
      b
        ..writeln('- **`${f.synth.slug}_quickstart`** (`$step`):')
        ..writeln()
        ..writeln('  ```text');
      final text = _truncate(f.error ?? 'unknown error', maxChars: 2000);
      for (final line in text.split('\n')) {
        b.writeln('  $line');
      }
      b
        ..writeln('  ```')
        ..writeln();
    }
  }

  return b.toString();
}

void _usage() {
  stderr.writeln(
    'usage:\n'
    '  validate_example_shard.dart --phase synth --shard-id <id> '
    '--examples-json <json> --state-file <path> [--github-output <path>]\n'
    '  validate_example_shard.dart --phase validate --state-file <path> '
    '[--setup-ms <n>] [--pub-get-ms <n>] [--step-summary <path>]',
  );
}

Future<void> main(List<String> args) async {
  String? phase;
  String? shardId;
  String? examplesJson;
  String? stateFile;
  String? githubOutput;
  String? stepSummary;
  int? setupMs;
  int? pubGetMs;

  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--phase' when i + 1 < args.length:
        phase = args[++i];
      case '--shard-id' when i + 1 < args.length:
        shardId = args[++i];
      case '--examples-json' when i + 1 < args.length:
        examplesJson = args[++i];
      case '--state-file' when i + 1 < args.length:
        stateFile = args[++i];
      case '--github-output' when i + 1 < args.length:
        githubOutput = args[++i];
      case '--step-summary' when i + 1 < args.length:
        stepSummary = args[++i];
      case '--setup-ms' when i + 1 < args.length:
        setupMs = int.tryParse(args[++i]);
      case '--pub-get-ms' when i + 1 < args.length:
        pubGetMs = int.tryParse(args[++i]);
      default:
        _usage();
        exit(64);
    }
  }

  switch (phase) {
    case 'synth':
      if (shardId == null || examplesJson == null || stateFile == null) {
        _usage();
        exit(64);
      }
      final raw = jsonDecode(examplesJson);
      if (raw is! List<Object?>) {
        stderr.writeln('--examples-json must be a JSON array of example slugs');
        exit(64);
      }
      final slugs = [for (final item in raw) item! as String];
      final state = await runSynthPhase(shardId: shardId, slugs: slugs);
      final file = File(stateFile);
      file.parent.createSync(recursive: true);
      file.writeAsStringSync(jsonEncode(state.toJson()));
      if (githubOutput != null && githubOutput.isNotEmpty) {
        File(githubOutput).writeAsStringSync(
          'needs_terraform=${state.needsTerraform}\n'
          'needs_tofu=${state.needsTofu}\n'
          'duration_ms=${state.totalDurationMs}\n',
          mode: FileMode.append,
        );
      }
      return;

    case 'validate':
      if (stateFile == null) {
        _usage();
        exit(64);
      }
      final decoded =
          jsonDecode(File(stateFile).readAsStringSync())
              as Map<String, Object?>;
      final state = ShardSynthState.fromJson(decoded);
      final result = await runValidatePhase(state: state);
      if (stepSummary != null && stepSummary.isNotEmpty) {
        File(stepSummary).writeAsStringSync(
          formatStepSummary(result, setupMs: setupMs, pubGetMs: pubGetMs),
          mode: FileMode.append,
        );
      }
      if (!result.allPassed) exit(1);
      return;

    default:
      _usage();
      exit(64);
  }
}
