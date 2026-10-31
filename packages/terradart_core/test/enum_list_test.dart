import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

extension type const _Mode._(TfArg<String> _) implements TfArg<String> {
  _Mode.variable(String name) : this._(TfArg.variable(name));

  static const read = _Mode._(TfArgLiteral('READ'));
  static const write = _Mode._(TfArgLiteral('WRITE'));
}

final class _FakeGrant extends Resource {
  _FakeGrant(super.localName, {required EnumList<_Mode> modes})
    : super(terraformType: 'fake_grant', argMap: {'modes': modes});

  @override
  Set<String> get sensitiveFields => const {};
}

final class _FakeGrantRule {
  const _FakeGrantRule({this.modes});

  final EnumList<_Mode>? modes;

  Map<String, Object?> encode() => {'modes': ?modes?.toTfJson()};
}

final class _FakePolicy extends Resource {
  _FakePolicy(super.localName, {required _FakeGrantRule rule})
    : super(
        terraformType: 'fake_policy',
        argMap: {
          'rule': TfArg.literal([rule.encode()]),
        },
      );

  @override
  Set<String> get sensitiveFields => const {};
}

Map<String, Object?> _synth(void Function(TestStack) build) {
  final stack = TestStack(
    providers: const [
      FakeStackProvider(
        providerName: 'fake',
        source: 'example/fake',
        versionConstraint: '~> 1.0',
      ),
    ],
  );
  build(stack);
  return stack.synth().tfJson['resource']! as Map<String, Object?>;
}

void main() {
  test('a literal list, a whole-list variable and a whole-list expression '
      'synthesize', () {
    final resources = _synth((stack) {
      stack
        ..variable<List<String>>('modes')
        ..variable<String>('extra')
        ..add(_FakeGrant('literal', modes: .literal([.read, .write])))
        ..add(
          _FakeGrant('member', modes: .literal([.read, .variable('extra')])),
        )
        ..add(_FakeGrant('variable', modes: .variable('modes')))
        ..add(
          _FakeGrant('expression', modes: .expression(r'${tolist(var.modes)}')),
        );
    });
    final grants = resources['fake_grant']! as Map<String, Object?>;
    expect((grants['literal']! as Map)['modes'], ['READ', 'WRITE']);
    expect((grants['member']! as Map)['modes'], ['READ', r'${var.extra}']);
    expect((grants['variable']! as Map)['modes'], r'${var.modes}');
    expect((grants['expression']! as Map)['modes'], r'${tolist(var.modes)}');
  });

  test('a const helper holds a literal list', () {
    const rule = _FakeGrantRule(modes: .literal([.write]));
    final resources = _synth((stack) {
      stack.add(_FakePolicy('p', rule: rule));
    });
    final policy = (resources['fake_policy']! as Map)['p'] as Map;
    expect(policy['rule'], [
      {
        'modes': ['WRITE'],
      },
    ]);
  });

  test('a helper encodes a literal list as its members\' values', () {
    expect(const _FakeGrantRule(modes: .literal([.read, .write])).encode(), {
      'modes': ['READ', 'WRITE'],
    });
    expect(
      _FakeGrantRule(
        modes: .literal([.read, _Mode.variable('extra')]),
      ).encode(),
      {
        'modes': ['READ', r'${var.extra}'],
      },
    );
    expect(_FakeGrantRule(modes: .variable('modes')).encode(), {
      'modes': r'${var.modes}',
    });
  });

  test('a literal leaves a list and a map without a TfArg as they are', () {
    const list = ['a', 'b'];
    const map = {
      'k': [1, 2],
    };
    expect(identical(const TfArg.literal(list).toTfJson(), list), isTrue);
    expect(identical(const TfArg.literal(map).toTfJson(), map), isTrue);
    expect(
      const TfArg<Object?>.literal({
        'nested': [
          {'mode': _Mode.read},
        ],
      }).toTfJson(),
      {
        'nested': [
          {'mode': 'READ'},
        ],
      },
    );
  });

  test('synth requires the variable a whole list names', () {
    expect(
      () => _synth(
        (stack) => stack.add(_FakeGrant('v', modes: .variable('undeclared'))),
      ),
      throwsA(anything),
    );
  });
}
