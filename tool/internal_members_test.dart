// The members a generated wrapper calls to encode its helper and sealed types
// — `encode()`, `blockKey` and a sealed choice's `argMap` — are `@internal`
// in every package of a tool/providers.yaml lane, derived and override
// `prelude` types alike, so a Stack's completion does not offer them.

import 'dart:io';

import 'package:test/test.dart';

import 'type_name_length_test.dart' show lanePackages;

final _member = RegExp(
  r'^\s*(?:(?:List<)?Map<String, Object\?>>? encode\(\)|String get blockKey\b|Map<String, TfArg<Object\?>> get argMap\b)',
);
final _annotation = RegExp(r'^\s*@\w+');

/// `file:line` of every member [_member] matches whose annotations, the
/// lines right above it, do not include `@internal`.
List<String> unannotatedMembers(String path, String source) {
  final lines = source.split('\n');
  return [
    for (var i = 0; i < lines.length; i++)
      if (_member.hasMatch(lines[i]) && !_annotated(lines, i))
        '$path:${i + 1}',
  ];
}

bool _annotated(List<String> lines, int at) {
  for (var j = at - 1; j >= 0 && _annotation.hasMatch(lines[j]); j--) {
    if (lines[j].trim() == '@internal') return true;
  }
  return false;
}

void main() {
  test('a member without @internal is reported', () {
    expect(
      unannotatedMembers('x.dart', '''
class A {
  @internal
  Map<String, Object?> encode() => {};
}
final class B extends S {
  @internal
  @override
  String get blockKey => 'b';

  @override
  Map<String, Object?> encode() => {};
}
'''),
      ['x.dart:11'],
    );
  });

  test('generated encode / blockKey / argMap are @internal', () {
    final offenders = <String>[
      for (final package in lanePackages())
        for (final f
            in Directory('packages/$package/lib/src')
                .listSync(recursive: true)
                .whereType<File>()
                .where((f) => f.path.endsWith('.dart')))
          ...unannotatedMembers(f.path, f.readAsStringSync()),
    ];
    expect(
      offenders,
      isEmpty,
      reason:
          'annotate the prelude member with @internal in its override and '
          're-run terradart wrap',
    );
  });
}
