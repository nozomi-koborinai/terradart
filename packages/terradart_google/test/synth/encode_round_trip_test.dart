// packages/terradart_google/test/synth/encode_round_trip_test.dart
//
// Gate 6: encode round-trip structural test (PR 2 of Plan 5.D codegen
// correctness work — see docs/superpowers/plans/2026-05-16-plan5d-2-encode-gate6-plan.md).
//
// Discovers every sealed-class member declared in production yaml overrides
// via [SealedClassExtractor], constructs a synthetic instance via the
// hand-curated [_syntheticInstances] lookup table, invokes encode() (with
// toArgMap() fallback), and asserts the encoded Map shape:
//
//   * the result is a non-empty Map<String, Object?>;
//   * every required attr's snake_case schema key is present in the keys;
//   * no raw TfArg<T> values leak into the encoded payload
//     (.toTfJson() should have unwrapped them at serialization time).
//
// Component B-3-a (this commit) ships the FRAMEWORK only — the lookup table
// is intentionally empty and the whole group is marked `skip:` so CI stays
// green between B-3-a and B-3-b. Component B-3-b removes the skip and
// fills the table in lockstep with the discovered members.
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/sealed_class_extractor.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

/// Hand-curated lookup: sealed-class-member-name -> a thunk that returns a
/// constructed instance. Each thunk supplies synthetic `TfArg<T>` values for
/// required params and omits all optional params.
///
/// Add an entry per new sealed-class member shipped in future waves. Gate 6
/// fails loudly when a sealed-class is extracted from yaml but no entry
/// exists here — keeping the table in lockstep with yaml is a curator
/// responsibility.
///
/// Component B-3-a (this commit) ships the framework with an empty table —
/// the per-test "Gate 6 lookup table missing entry" failures are expected
/// and intentional. Component B-3-b fills the table in lockstep.
final Map<String, Object Function()> _syntheticInstances = {
  // Filled in by Component B-3-b — see plan 5.D PR 2 Task 10.
};

void main() {
  group(
    'Gate 6: encode round-trip structural',
    () {
      final yamlDir = Directory(
        p.join(
          '..',
          'terradart_codegen',
          'lib',
          'src',
          'codegen',
          'wrapper_overrides',
          'yaml',
        ),
      );
      final yamlFiles =
          yamlDir
              .listSync()
              .whereType<File>()
              .where((f) => f.path.endsWith('.yaml'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));

      for (final yamlFile in yamlFiles) {
        final yamlSource = yamlFile.readAsStringSync();
        if (!yamlSource.contains('sealed class')) continue;

        final preludeStart = yamlSource.indexOf('prelude:');
        if (preludeStart < 0) continue;
        final preludeText = yamlSource.substring(preludeStart);
        final sealedClasses = const SealedClassExtractor().extract(preludeText);

        for (final sealed in sealedClasses) {
          for (final member in sealed.members) {
            test('${sealed.name}.${member.name}: encode() round-trips '
                'with required keys present', () {
              final thunk = _syntheticInstances[member.name];
              expect(
                thunk,
                isNotNull,
                reason:
                    'Gate 6 lookup table missing entry for ${member.name}. '
                    'Add a constructor thunk to _syntheticInstances in '
                    'encode_round_trip_test.dart. See Plan 5.D PR 2 Task 10.',
              );

              final instance = thunk!();

              // The wrapper may expose `encode()` (return Map) OR
              // `toArgMap()` (return Map). Try encode() first via dynamic
              // dispatch; fall back to toArgMap().
              final dyn = instance as dynamic;
              late Map<String, Object?> result;
              try {
                result = dyn.encode() as Map<String, Object?>;
              } on NoSuchMethodError {
                result = dyn.toArgMap() as Map<String, Object?>;
              }

              expect(result, isA<Map<String, Object?>>());
              expect(
                result,
                isNotEmpty,
                reason: 'encoded Map must not be empty',
              );
              for (final param in member.params.where((p) => p.required)) {
                // Convert camelCase param name -> snake_case schema key.
                final schemaKey = _camelToSnake(param.name);
                expect(
                  result.keys,
                  contains(schemaKey),
                  reason:
                      'required attr "$schemaKey" '
                      '(camel: ${param.name}) must be a key in encoded Map',
                );
              }
              expect(
                result.values,
                everyElement(isNot(isA<TfArg<dynamic>>())),
                reason:
                    'encoded values must be TfArg-unwrapped '
                    '(.toTfJson() should have been called)',
              );
            });
          }
        }
      }
    },
    skip: 'Gate 6 lookup table not yet filled — see Plan 5.D PR 2 B-3-b',
  );
}

String _camelToSnake(String camel) {
  final buf = StringBuffer();
  for (var i = 0; i < camel.length; i++) {
    final ch = camel[i];
    if (i > 0 && ch == ch.toUpperCase() && ch != ch.toLowerCase()) {
      buf.write('_');
      buf.write(ch.toLowerCase());
    } else {
      buf.write(ch);
    }
  }
  return buf.toString();
}
