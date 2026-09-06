// Issue #80 spike: how terradart_core's synth treats interpolation strings,
// TfArg.variable, and undeclared variables in sensitive and non-sensitive
// positions. Each case prints OK (with the emitted JSON) or the thrown error.
//
// Run from the repository root:
//   dart run tool/spike/migrate/sensitive_test.dart
// ignore_for_file: avoid_print, depend_on_referenced_packages
import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';

final class FakeProvider implements StackProvider {
  @override
  String get providerName => 'fake';
  @override
  String get source => 'example/fake';
  @override
  String get versionConstraint => '~> 1.0';
  @override
  Map<String, Object?> get configArgs => const {};
}

final class FakeSecret extends Resource {
  FakeSecret({
    required super.localName,
    required TfArg<String> password,
    TfArg<Map<String, Object?>>? nested,
  }) : super(
          terraformType: 'fake_secret',
          argMap: {'password': password, if (nested != null) 'nested': nested},
        );

  @override
  Set<String> get sensitiveFields => const {'password', 'nested.key'};
}

final class S extends Stack {
  S(Resource r, {bool declareVar = false})
      : super(providers: [FakeProvider()]) {
    if (declareVar) {
      addVariable('x', const TfVariable(type: 'string', sensitive: true));
    }
    add(r);
  }
}

void run(String label, Stack Function() build) {
  try {
    final out = build().synth().tfJson;
    print('$label: OK ${jsonEncode(out['resource'])}');
  } catch (e) {
    print('$label: THROWS ${e.runtimeType}: ${e.toString().split('\n').first}');
  }
}

void main() {
  run(
    r'1 top-level sensitive, literal "${var.x}"',
    () => S(FakeSecret(localName: 'a', password: TfArg.literal(r'${var.x}'))),
  );
  run(
    '2 top-level sensitive, TfArg.variable + addVariable',
    () => S(
      FakeSecret(localName: 'a', password: TfArg.variable('x')),
      declareVar: true,
    ),
  );
  run(
    '3 top-level sensitive, TfArg.variable, undeclared',
    () => S(FakeSecret(localName: 'a', password: TfArg.variable('x'))),
  );
  run(
    r'4 nested sensitive, literal map with "${var.x}"',
    () => S(
      FakeSecret(
        localName: 'a',
        password: TfArg.variable('x'),
        nested: TfArg.literal({'key': r'${var.x}'}),
      ),
      declareVar: true,
    ),
  );
  run(
    '5 nested sensitive, plain literal',
    () => S(
      FakeSecret(
        localName: 'a',
        password: TfArg.variable('x'),
        nested: TfArg.literal({'key': 'plain'}),
      ),
      declareVar: true,
    ),
  );
  run(
    r'6 non-sensitive raw "${var.undeclared}" literal passes the var check?',
    () => S(
      FakeSecret(
        localName: 'a',
        password: TfArg.variable('x'),
        nested: TfArg.literal({'other': r'${var.undeclared}'}),
      ),
      declareVar: true,
    ),
  );
}
