import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'validate_engine.dart';
import 'validate_example_shard.dart';

void main() {
  Directory makeTempExamples(Map<String, Map<String, Object?>?> tfJsonBySlug) {
    final root = Directory.systemTemp.createTempSync('terradart_shard_test_');
    for (final MapEntry(:key, :value) in tfJsonBySlug.entries) {
      final dir = Directory('${root.path}/${key}_quickstart')
        ..createSync(recursive: true);
      if (value != null) {
        final outDir = Directory('${dir.path}/tf-out')..createSync();
        File(
          '${outDir.path}/main.tf.json',
        ).writeAsStringSync(jsonEncode(value));
      }
    }
    return root;
  }

  Map<String, Object?> tfJson(String source) => {
    'terraform': {
      'required_providers': {
        'p': {'source': source},
      },
    },
  };

  group('runSynthPhase', () {
    test('detects tofu vs terraform engines across a mixed shard', () async {
      final root = makeTempExamples({
        'pubsub': tfJson('hashicorp/google'),
        'appwrite': tfJson('appwrite/appwrite'),
      });
      addTearDown(() => root.deleteSync(recursive: true));

      final invocations = <String>[];
      final log = StringBuffer();
      final state = await runSynthPhase(
        shardId: '1/2',
        slugs: const ['pubsub', 'appwrite'],
        examplesRoot: root.path,
        out: log,
        runProcess: (exe, args, {workingDirectory, environment}) async {
          invocations.add('$workingDirectory: ${args.join(' ')}');
          expect(environment?['GCP_PROJECT_ID'], 'ci-test-project-id');
          expect(environment?['DB_PASSWORD'], 'ci-synth-placeholder');
          return ProcessResult(0, 0, '', '');
        },
      );

      expect(invocations, hasLength(2));
      expect(state.needsTofu, isTrue);
      expect(state.needsTerraform, isTrue);
      expect(state.outcomes.map((o) => (o.slug, o.ok, o.engineKind)), [
        ('pubsub', true, 'tofu'),
        ('appwrite', true, 'terraform'),
      ]);
      expect(log.toString(), contains('::group::synth pubsub_quickstart'));
      expect(log.toString(), contains('::group::synth appwrite_quickstart'));
    });

    test(
      'continues synthing remaining examples after a failure and emits annotation',
      () async {
        final root = makeTempExamples({
          'bad': null,
          'good': tfJson('hashicorp/google'),
          'missing_json': null,
        });
        addTearDown(() => root.deleteSync(recursive: true));

        final log = StringBuffer();
        final state = await runSynthPhase(
          shardId: '1/1',
          slugs: const ['bad', 'good', 'missing_json', 'absent'],
          examplesRoot: root.path,
          out: log,
          runProcess: (exe, args, {workingDirectory, environment}) async {
            if (workingDirectory!.endsWith('/bad_quickstart')) {
              return ProcessResult(0, 1, '', 'boom synth error');
            }
            return ProcessResult(0, 0, '', '');
          },
        );

        expect(state.needsTofu, isTrue);
        expect(state.needsTerraform, isFalse);
        expect(state.outcomes.map((o) => (o.slug, o.ok)), [
          ('bad', false),
          ('good', true),
          ('missing_json', false),
          ('absent', false),
        ]);
        expect(
          log.toString(),
          contains('::error title=bad_quickstart (synth)::'),
        );
        expect(log.toString(), contains('boom synth error'));
        expect(
          log.toString(),
          contains('::error title=missing_json_quickstart (synth)::'),
        );
        expect(
          log.toString(),
          contains('::error title=absent_quickstart (synth)::'),
        );
      },
    );

    test('round-trips ShardSynthState through JSON', () {
      const original = ShardSynthState(
        shardId: '3/13',
        totalDurationMs: 4200,
        outcomes: [
          SynthOutcome(
            slug: 'pubsub',
            ok: true,
            durationMs: 1200,
            engineKind: 'tofu',
          ),
          SynthOutcome(
            slug: 'broken',
            ok: false,
            durationMs: 500,
            error: 'compile error',
          ),
        ],
      );
      final roundTripped = ShardSynthState.fromJson(
        jsonDecode(jsonEncode(original.toJson())) as Map<String, Object?>,
      );
      expect(roundTripped.shardId, '3/13');
      expect(roundTripped.totalDurationMs, 4200);
      expect(roundTripped.needsTofu, isTrue);
      expect(roundTripped.needsTerraform, isFalse);
      expect(roundTripped.outcomes, hasLength(2));
      expect(roundTripped.outcomes[0].engineKind, 'tofu');
      expect(roundTripped.outcomes[1].error, 'compile error');
    });
  });

  group('runValidatePhase', () {
    test(
      'resolves OpenTofu once per shard and runs kValidateLeg per example',
      () async {
        const state = ShardSynthState(
          shardId: '1/13',
          totalDurationMs: 3000,
          outcomes: [
            SynthOutcome(
              slug: 'pubsub',
              ok: true,
              durationMs: 1000,
              engineKind: 'tofu',
            ),
            SynthOutcome(
              slug: 'storage',
              ok: true,
              durationMs: 1000,
              engineKind: 'tofu',
            ),
            SynthOutcome(
              slug: 'appwrite',
              ok: true,
              durationMs: 1000,
              engineKind: 'terraform',
            ),
          ],
        );

        var resolveCalls = 0;
        final callsByDir = <String, List<(String, List<String>)>>{};
        final log = StringBuffer();

        final result = await runValidatePhase(
          state: state,
          examplesRoot: 'examples',
          out: log,
          resolveTofu: () async {
            resolveCalls++;
            return '/cache/tofu';
          },
          runProcess: (exe, args, {workingDirectory, environment}) async {
            if (workingDirectory != null) {
              callsByDir.putIfAbsent(workingDirectory, () => []).add((
                exe,
                args,
              ));
            }
            return ProcessResult(0, 0, 'ok', '');
          },
        );

        expect(resolveCalls, 1, reason: 'OpenTofu must be resolved once/shard');
        expect(result.allPassed, isTrue);
        expect(result.passedCount, 3);
        expect(result.failedCount, 0);

        for (final entry in {
          'examples/pubsub_quickstart/tf-out': '/cache/tofu',
          'examples/storage_quickstart/tf-out': '/cache/tofu',
          'examples/appwrite_quickstart/tf-out': 'terraform',
        }.entries) {
          final calls = callsByDir[entry.key]!;
          expect(calls.map((c) => c.$1).toSet(), {
            entry.value,
          }, reason: entry.key);
          expect(
            calls.map((c) => c.$2).toList(),
            kValidateLeg,
            reason: '${entry.key} must run exact kValidateLeg',
          );
        }

        final summary = formatStepSummary(
          result,
          setupMs: 42000,
          pubGetMs: 1500,
        );
        expect(summary, contains('### Validate shard 1/13 (3/3 passed)'));
        expect(summary, contains('| `pubsub_quickstart` | `tofu` | PASS |'));
        expect(
          summary,
          contains('| `appwrite_quickstart` | `terraform` | PASS |'),
        );
        expect(summary, isNot(contains('#### Failures')));
      },
    );

    test('skips OpenTofu resolution when shard is terraform-only', () async {
      const state = ShardSynthState(
        shardId: '1/1',
        totalDurationMs: 1000,
        outcomes: [
          SynthOutcome(
            slug: 'appwrite',
            ok: true,
            durationMs: 1000,
            engineKind: 'terraform',
          ),
        ],
      );

      var resolveCalls = 0;
      final result = await runValidatePhase(
        state: state,
        out: StringBuffer(),
        resolveTofu: () async {
          resolveCalls++;
          return '/cache/tofu';
        },
        runProcess: (exe, args, {workingDirectory, environment}) async =>
            ProcessResult(0, 0, '', ''),
      );

      expect(resolveCalls, 0);
      expect(result.allPassed, isTrue);
    });

    test(
      'continues validating all examples when one fails synth and another fails validate',
      () async {
        const state = ShardSynthState(
          shardId: '2/13',
          totalDurationMs: 2500,
          outcomes: [
            SynthOutcome(
              slug: 'broken_synth',
              ok: false,
              durationMs: 400,
              error: 'synth crashed',
            ),
            SynthOutcome(
              slug: 'broken_validate',
              ok: true,
              durationMs: 900,
              engineKind: 'tofu',
            ),
            SynthOutcome(
              slug: 'healthy',
              ok: true,
              durationMs: 1200,
              engineKind: 'tofu',
            ),
          ],
        );

        final validatedDirs = <String>[];
        final log = StringBuffer();
        final result = await runValidatePhase(
          state: state,
          out: log,
          resolveTofu: () async => '/cache/tofu',
          runProcess: (exe, args, {workingDirectory, environment}) async {
            if (workingDirectory != null) {
              validatedDirs.add('$workingDirectory:${args.first}');
              if (workingDirectory.contains('broken_validate') &&
                  args.first == 'validate') {
                return ProcessResult(0, 1, '', 'Error: invalid attribute');
              }
            }
            return ProcessResult(0, 0, '', '');
          },
        );

        expect(result.allPassed, isFalse);
        expect(result.passedCount, 1);
        expect(result.failedCount, 2);
        expect(
          validatedDirs,
          contains('examples/healthy_quickstart/tf-out:validate'),
          reason: 'must continue running healthy example after earlier failure',
        );
        expect(
          validatedDirs.any((d) => d.contains('broken_synth')),
          isFalse,
          reason: 'must not validate an example that failed synth',
        );
        expect(result.outcomes.map((o) => (o.synth.slug, o.ok, o.failedStep)), [
          ('broken_synth', false, 'synth'),
          ('broken_validate', false, 'validate'),
          ('healthy', true, null),
        ]);
        expect(
          log.toString(),
          contains(
            '::error title=broken_validate_quickstart (tofu validate)::',
          ),
        );
        expect(
          log.toString(),
          contains(
            'Shard 2/13: 1/3 passed, 2 failed: '
            'broken_synth (synth), broken_validate (validate)',
          ),
        );

        final summary = formatStepSummary(result);
        expect(summary, contains('### Validate shard 2/13 (1/3 passed)'));
        expect(summary, contains('FAIL (synth)'));
        expect(summary, contains('FAIL (validate)'));
        expect(summary, contains('#### Failures'));
        expect(summary, contains('Error: invalid attribute'));
      },
    );

    test(
      'handles OpenTofu resolution failure while still validating terraform examples',
      () async {
        const state = ShardSynthState(
          shardId: '1/1',
          totalDurationMs: 1000,
          outcomes: [
            SynthOutcome(
              slug: 'pubsub',
              ok: true,
              durationMs: 500,
              engineKind: 'tofu',
            ),
            SynthOutcome(
              slug: 'appwrite',
              ok: true,
              durationMs: 500,
              engineKind: 'terraform',
            ),
          ],
        );

        final result = await runValidatePhase(
          state: state,
          out: StringBuffer(),
          resolveTofu: () async => null,
          runProcess: (exe, args, {workingDirectory, environment}) async =>
              ProcessResult(0, 0, '', ''),
        );

        expect(result.allPassed, isFalse);
        expect(result.outcomes[0].ok, isFalse);
        expect(result.outcomes[0].failedStep, 'engine');
        expect(result.outcomes[1].ok, isTrue);
      },
    );
  });

  group('annotation escaping', () {
    test('escapes percent, newlines, and property delimiters', () {
      expect(escapeAnnotationData('a%b\rc\nd'), 'a%25b%0Dc%0Ad');
      expect(escapeAnnotationProperty('foo:bar,baz'), 'foo%3Abar%2Cbaz');
    });
  });
}
