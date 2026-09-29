// Every sealed type `terradart wrap` emits, and every variant of one, reads
// each block segment once: a concept never repeats the words its owner ends
// with (`S3BucketBucket`), and a variant never repeats the words its sealed
// type ends with (`...RagConfigRagConfig`) — no run of words appears twice in
// a row across the join. Terraform's own block paths may
// repeat words (`custom_metric.custom_metric_definition`); only the joins
// wrap makes are checked.

import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

List<String> _words(String name) => RegExp(
  r'[A-Z][a-z0-9]*|[a-z0-9]+',
).allMatches(name).map((m) => m[0]!).toList();

/// Whether [prefix] followed by [rest] says a run of words twice in a row
/// across the join. Runs wholly inside [prefix] are Terraform's own block
/// names and do not count.
bool repeatsAcrossJoin(String prefix, String rest) {
  final join = _words(prefix).length;
  final w = [..._words(prefix), ..._words(rest)];
  for (var n = 1; 2 * n <= w.length; n++) {
    for (var i = 0; i + 2 * n <= w.length; i++) {
      if (i >= join || i + 2 * n <= join) continue;
      if (List.generate(n, (k) => w[i + k] == w[i + n + k]).every((b) => b)) {
        return true;
      }
    }
  }
  return false;
}

/// Variant class → sealed type, for every `final class V extends S` whose
/// `S` is a `sealed class` in [package]'s `lib/`.
Map<String, String> _sealedParents(String package) {
  final sealed = <String>{};
  final extendsOf = <String, String>{};
  for (final f in Directory(
    'packages/$package/lib',
  ).listSync(recursive: true)) {
    if (f is! File || !f.path.endsWith('.dart')) continue;
    final src = f.readAsStringSync();
    for (final m in RegExp(r'\bsealed class (\w+)').allMatches(src)) {
      sealed.add(m[1]!);
    }
    for (final m in RegExp(
      r'\bfinal class (\w+)\s+extends\s+(\w+)',
    ).allMatches(src)) {
      extendsOf[m[1]!] = m[2]!;
    }
  }
  return {
    for (final MapEntry(:key, :value) in extendsOf.entries)
      if (sealed.contains(value)) key: value,
  };
}

/// The trailing words of [owner] that [sealed] starts with (`AwsS3Bucket`,
/// `S3BucketName` → `S3Bucket`), or null.
String? _stem(String owner, String sealed) {
  final words = _words(owner);
  for (var i = 0; i < words.length; i++) {
    final stem = words.skip(i).join();
    if (sealed.startsWith(stem)) return stem;
  }
  return null;
}

String _pascal(String snake) => [
  for (final p in snake.split('_'))
    if (p.isNotEmpty) p[0].toUpperCase() + p.substring(1),
].join();

/// Each repeated join in [manifest], as `owner.slot: reason`: a sealed
/// type that repeats its owner, or a variant that repeats its sealed type
/// (or, for a hand-written variant not named after its sealed type, its
/// owner).
List<String> repeatedJoins(MigrateManifest manifest) {
  final parents = _sealedParents(manifest.package);
  final out = <String>[];
  void check(String owner, MigrateSlot slot) {
    if (slot.kind != MigrateSlotKind.sealed) return;
    final variants = slot.variants ?? const <String, String>{};
    final sealedTypes = {
      for (final v in variants.values)
        ?parents[v],
    };
    for (final sealed in sealedTypes) {
      final stem = _stem(owner, sealed);
      if (stem != null &&
          (slot.merged ||
              sealed != stem + _pascal(slot.tfName.split('.').last))) {
        final concept = sealed.substring(stem.length);
        if (concept.isEmpty || repeatsAcrossJoin(stem, concept)) {
          out.add('$owner.${slot.dartName}: $sealed repeats $stem');
        }
      }
      for (final v in variants.values) {
        if (parents[v] != sealed) continue;
        final base = v.startsWith(sealed) ? sealed : stem;
        if (base == null || !v.startsWith(base)) continue;
        final member = v.substring(base.length);
        if (member.isEmpty || repeatsAcrossJoin(base, member)) {
          out.add('$owner.${slot.dartName}: $v repeats $base');
        }
      }
    }
  }

  for (final e in manifest.entries) {
    for (final s in e.slots) {
      check(e.className, s);
    }
  }
  for (final h in manifest.helpers.values) {
    for (final s in h.slots) {
      check(h.className, s);
    }
  }
  return out;
}

void main() {
  test('repeatsAcrossJoin flags a run repeated across the join only', () {
    expect(repeatsAcrossJoin('S3Bucket', 'Bucket'), isTrue);
    expect(repeatsAcrossJoin('InferenceConfigRagConfig', 'RagConfig'), isTrue);
    expect(repeatsAcrossJoin('AssessmentRuleSampleRule', 'Sample'), isTrue);
    expect(repeatsAcrossJoin('RdsClusterIdentifier', 'Prefix'), isFalse);
    expect(
      repeatsAcrossJoin('CustomMetricCustomMetricDefinition', 'Value'),
      isFalse,
    );
  });

  for (final manifest in allMigrateManifests) {
    if (!Directory('packages/${manifest.package}/lib').existsSync()) continue;
    test('${manifest.package} sealed types name each segment once', () {
      expect(repeatedJoins(manifest), isEmpty);
    });
  }
}
