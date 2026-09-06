// Round-trip driver for the issue #80 spike: synth the migrated Stack and
// compare it with the source tf.json (key-order-insensitive deep equality),
// then report whether the resource order survived as well.
//
// Run from the repository root AFTER migrate_spike.dart:
//   dart run tool/spike/migrate/roundtrip.dart
// ignore_for_file: avoid_print, depend_on_referenced_packages
import 'dart:convert';
import 'dart:io';

import 'generated/orders_stack_migrated.dart';

Object? canon(Object? v) {
  if (v is Map) {
    final keys = v.keys.map((k) => k.toString()).toList()..sort();
    return {for (final k in keys) k: canon(v[k])};
  }
  if (v is List) {
    return v.map(canon).toList();
  }
  return v;
}

void diff(Object? a, Object? b, String path, List<String> out) {
  if (a is Map && b is Map) {
    for (final k in {...a.keys, ...b.keys}) {
      if (!a.containsKey(k)) {
        out.add('$path.$k: missing in migrated');
        continue;
      }
      if (!b.containsKey(k)) {
        out.add('$path.$k: extra in migrated');
        continue;
      }
      diff(a[k], b[k], '$path.$k', out);
    }
  } else if (a is List && b is List) {
    if (a.length != b.length) {
      out.add('$path: list length ${a.length} vs ${b.length}');
      return;
    }
    for (var i = 0; i < a.length; i++) {
      diff(a[i], b[i], '$path[$i]', out);
    }
  } else if (a != b) {
    out.add('$path: ${jsonEncode(a)} vs ${jsonEncode(b)}');
  }
}

void main() {
  final expected = jsonDecode(
    File('examples/pubsub_quickstart/tf-out/main.tf.json').readAsStringSync(),
  ) as Map<String, dynamic>;
  final actual = OrdersStackMigrated().synth().tfJson;
  final problems = <String>[];
  diff(canon(expected), canon(actual), r'$', problems);
  if (problems.isEmpty) {
    print(
      'ROUND-TRIP OK: migrated stack synthesizes to an identical tf.json '
      '(${jsonEncode(actual).length} bytes)',
    );
  } else {
    print('ROUND-TRIP MISMATCH:');
    problems.forEach(print);
  }
  final expOrder = (expected['resource'] as Map).keys.join(',');
  final actOrder = (actual['resource'] as Map).keys.join(',');
  print('resource type order identical: ${expOrder == actOrder}');
  exitCode = problems.isEmpty ? 0 : 1;
}
