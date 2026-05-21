import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

class _FakeAddressed implements TfAddressed {
  _FakeAddressed(this.tfAddress);
  @override
  final String tfAddress;
}

void main() {
  group('TfArg.literal', () {
    test('toTfJson returns the raw value', () {
      const arg = TfArgLiteral<int>(60);
      expect(arg.toTfJson(), 60);
    });
  });

  group('TfArg.ref', () {
    final topic = _FakeAddressed('google_pubsub_topic.orders');
    final ref = TfRef.attribute<String>(topic, 'name');
    final arg = TfArg.ref(ref);

    test('toTfJson returns the interpolation string', () {
      expect(arg.toTfJson(), r'${google_pubsub_topic.orders.name}');
    });
  });

  group('sealed exhaustiveness', () {
    test('switch covers TfArgLiteral and TfArgRef', () {
      const TfArg<String> arg = TfArgLiteral('x');
      final kind = switch (arg) {
        TfArgLiteral<String>() => 'literal',
        TfArgRef<String>() => 'ref',
        TfArgVariable<String>() => 'variable',
      };
      expect(kind, 'literal');
    });
  });

  group('factory delegation', () {
    test('TfArg.literal returns TfArgLiteral', () {
      final arg = TfArg.literal<String>('hello');
      expect(arg, isA<TfArgLiteral<String>>());
    });

    test('TfArg.ref returns TfArgRef', () {
      final ref = TfRef.attribute<String>(_FakeAddressed('a.b'), 'c');
      final arg = TfArg.ref(ref);
      expect(arg, isA<TfArgRef<String>>());
    });
  });

  group('Phase 4.5.1 TG-4: TfArgLiteral enum serialization', () {
    test('Enum with `terraformValue` getter → toTfJson returns that String',
        () {
      final arg = TfArg.literal(_SampleEnum.alpha);
      expect(arg.toTfJson(), 'ALPHA_VALUE');
    });

    test('Enum without `terraformValue` getter → toTfJson throws ArgumentError',
        () {
      final arg = TfArg.literal(_BareEnum.first);
      expect(arg.toTfJson, throwsA(isA<ArgumentError>()));
    });

    test('String literal: toTfJson unchanged', () {
      expect(TfArg.literal('hello').toTfJson(), 'hello');
    });

    test('int literal: toTfJson unchanged', () {
      expect(TfArg.literal(42).toTfJson(), 42);
    });

    test('bool literal: toTfJson unchanged', () {
      expect(TfArg.literal(true).toTfJson(), true);
    });
  });

  group('TfArg.duration', () {
    test('encodes a whole-second Duration as "{seconds}s"', () {
      final arg = TfArg.duration(const Duration(days: 90));
      expect(arg, isA<TfArgLiteral<String>>());
      expect(arg.toTfJson(), equals('7776000s'));
    });

    test('zero duration encodes as "0s"', () {
      expect(
        TfArg.duration(Duration.zero).toTfJson(),
        equals('0s'),
      );
    });

    test('rejects sub-second durations with ArgumentError', () {
      expect(
        () => TfArg.duration(const Duration(milliseconds: 1500)),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects negative durations with ArgumentError', () {
      expect(
        () => TfArg.duration(const Duration(seconds: -1)),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('TfArg.variable', () {
    test('TfArgVariable emits \${var.<name>} interpolation', () {
      final arg = TfArgVariable<String>('db_password');
      expect(arg.toTfJson(), equals(r'${var.db_password}'));
    });

    test('TfArg.variable factory returns TfArgVariable<T>', () {
      final arg = TfArg.variable<String>('db_password');
      expect(arg, isA<TfArgVariable<String>>());
      expect(arg.toTfJson(), equals(r'${var.db_password}'));
    });

    test('TfArg.variable infers T from context', () {
      // Implicit context type: TfArg<int>
      final TfArg<int> arg = TfArg.variable('replica_count');
      expect(arg, isA<TfArgVariable<int>>());
      expect(arg.toTfJson(), equals(r'${var.replica_count}'));
    });

    test('TfArgVariable rejects empty name', () {
      expect(
        () => TfArgVariable<String>(''),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('TfArg sealed exhaustive (3-way)', () {
    test('switch covers Literal, Ref, Variable', () {
      String dispatch(TfArg<String> arg) => switch (arg) {
            TfArgLiteral<String>() => 'literal',
            TfArgRef<String>() => 'ref',
            TfArgVariable<String>() => 'variable',
          };

      expect(dispatch(const TfArgLiteral<String>('x')), equals('literal'));
      expect(
        dispatch(
          TfArg.ref(
            TfRef.attribute<String>(
              _FakeAddressed('data.x.y'),
              'z',
            ),
          ),
        ),
        equals('ref'),
      );
      expect(
        dispatch(TfArgVariable<String>('z')),
        equals('variable'),
      );
    });
  });
}

/// Sample enum with the convention (`terraformValue` String getter).
enum _SampleEnum {
  alpha('ALPHA_VALUE');

  const _SampleEnum(this.terraformValue);
  final String terraformValue;
}

/// Sample enum WITHOUT the convention. TfArg should throw on this.
enum _BareEnum { first }
