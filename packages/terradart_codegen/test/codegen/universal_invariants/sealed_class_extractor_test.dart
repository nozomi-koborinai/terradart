import 'dart:io';

import 'package:terradart_codegen/src/codegen/universal_invariants/sealed_class_extractor.dart';
import 'package:test/test.dart';

void main() {
  group('SealedClassExtractor', () {
    test('parses a single sealed class with two members from prelude text', () {
      const prelude = '''
sealed class TrafficChoice {
  const TrafficChoice();
  String get blockKey;
  Map<String, Object?> encode();
}

final class TargetSplit extends TrafficChoice {
  const TargetSplit({required this.splits});

  final List<AppHostingTrafficSplit> splits;

  @override
  String get blockKey => 'target';

  @override
  Map<String, Object?> encode() => {'splits': splits.map((s) => s.toArgMap()).toList()};
}

final class RolloutPolicy extends TrafficChoice {
  const RolloutPolicy({this.codebaseBranch, this.disabled});

  final TfArg<String>? codebaseBranch;
  final TfArg<bool>? disabled;

  @override
  String get blockKey => 'rollout_policy';

  @override
  Map<String, Object?> encode() => {
        if (codebaseBranch != null) 'codebase_branch': codebaseBranch!.toTfJson(),
        if (disabled != null) 'disabled': disabled!.toTfJson(),
      };
}
''';

      final extracted = const SealedClassExtractor().extract(prelude);

      expect(extracted, hasLength(1),
          reason: 'one sealed class expected in this prelude fragment');
      final sealed = extracted.single;
      expect(sealed.name, 'TrafficChoice');
      expect(sealed.members, hasLength(2));

      final byName = {for (final m in sealed.members) m.name: m};
      expect(byName.keys, containsAll(['TargetSplit', 'RolloutPolicy']));

      final targetSplit = byName['TargetSplit']!;
      expect(targetSplit.params, hasLength(1));
      expect(targetSplit.params.single.name, 'splits');
      expect(targetSplit.params.single.required, isTrue);

      final rollout = byName['RolloutPolicy']!;
      expect(rollout.params, hasLength(2));
      final pByName = {for (final p in rollout.params) p.name: p};
      expect(pByName['codebaseBranch']!.required, isFalse);
      expect(pByName['disabled']!.required, isFalse);
    });

    test('parses google_cloud_scheduler_job.yaml prelude end-to-end', () {
      final yaml = File(
        'lib/src/codegen/wrapper_overrides/yaml/google_cloud_scheduler_job.yaml',
      ).readAsStringSync();
      // Crude prelude slice: from the `prelude:` key to the end of the yaml.
      // Component B-3 (Gate 6) parses yaml properly via the yaml package; this
      // test is a smoke check that the regex robustly handles a real production
      // prelude.
      final preludeStart = yaml.indexOf('prelude:');
      expect(preludeStart, greaterThan(0));
      final preludeText = yaml.substring(preludeStart);

      final extracted = const SealedClassExtractor().extract(preludeText);
      expect(extracted.map((s) => s.name), contains('SchedulerTarget'));
      final scheduler =
          extracted.singleWhere((s) => s.name == 'SchedulerTarget');
      // SchedulerTarget has 3 known members per the Wave 4 yaml.
      expect(scheduler.members.map((m) => m.name),
          containsAll(['PubsubTarget', 'HttpTarget', 'AppEngineHttpTarget']));
    });
  });
}
