import 'package:terradart_core/src/tf_arg.dart';
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

  group('TfRef as a TfArg', () {
    final topic = _FakeAddressed('google_pubsub_topic.orders');
    final TfArg<String> arg = TfRef.attribute<String>(topic, 'name');

    test('toTfJson returns the interpolation string', () {
      expect(arg.toTfJson(), r'${google_pubsub_topic.orders.name}');
    });
  });

  group('sealed exhaustiveness', () {
    test('switch covers TfArgLiteral and TfRef', () {
      const TfArg<String> arg = TfArgLiteral('x');
      final kind = switch (arg) {
        TfArgLiteral<String>() => 'literal',
        TfRef<String>() => 'ref',
        TfArgVariable<String>() => 'variable',
        TfArgExpression<String>() => 'expression',
      };
      expect(kind, 'literal');
    });
  });

  group('factory delegation', () {
    test('TfArg.literal returns TfArgLiteral', () {
      final arg = TfArg.literal<String>('hello');
      expect(arg, isA<TfArgLiteral<String>>());
    });

    test('a TfRef is a TfArg', () {
      final TfArg<String> arg = TfRef.attribute<String>(
        _FakeAddressed('a.b'),
        'c',
      );
      expect(arg, isA<AttributeRef<String>>());
      expect(arg.toTfJson(), r'${a.b.c}');
    });
  });

  group('TfArgLiteral enum serialization', () {
    test('a provider enum is a TfArg<String> holding its value', () {
      expect(_SampleEnum.alpha.toTfJson(), 'ALPHA_VALUE');
      expect(_SampleEnum.values, [_SampleEnum.alpha]);
      expect(_SampleEnum.variable('kind').toTfJson(), r'${var.kind}');
      expect(
        _SampleEnum.expression(r'${local.kind}').toTfJson(),
        r'${local.kind}',
      );
    });

    test('a Dart enum → toTfJson throws ArgumentError', () {
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
      expect(TfArg.duration(Duration.zero).toTfJson(), equals('0s'));
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

  group('TfArg.expression', () {
    test('TfArg.expression factory returns TfArgExpression<T>', () {
      final arg = TfArg.expression<int>(r'${var.replicas * 2}');
      expect(arg, isA<TfArgExpression<int>>());
    });

    test('toTfJson returns the template verbatim', () {
      final arg = TfArg.expression<String>(r'${lower(var.name)}-x');
      expect(arg.toTfJson(), equals(r'${lower(var.name)}-x'));
      expect(
        TfArg.expression<String>(
          r'%{ if var.a }a%{ else }b%{ endif }',
        ).toTfJson(),
        equals(r'%{ if var.a }a%{ else }b%{ endif }'),
      );
    });

    test('rejects a template with no interpolation or directive', () {
      for (final plain in ['', 'orders', r'price-$5', r'$${not}-%%{one}']) {
        expect(
          () => TfArg.expression<String>(plain),
          throwsA(isA<ArgumentError>()),
          reason: plain,
        );
      }
    });

    test('referencedVariables lists every var.<name> in the sequences', () {
      final arg = TfArgExpression<String>(
        r'${var.a}-${lower(var.b_2)}-${var.with-dash}%{ if var.c }x%{ endif }',
      );
      expect(arg.referencedVariables, equals({'a', 'b_2', 'with-dash', 'c'}));
    });

    test('referencedVariables ignores escapes, strings and lookalikes', () {
      final arg = TfArgExpression<String>(
        r'$${var.escaped} ${lookup(var.m, "var.key")} '
        r'${google_x.y.var.z} ${avar.x} ${format("%s", "${var.inner}")}',
      );
      expect(arg.referencedVariables, equals({'m', 'inner'}));
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
      expect(() => TfArgVariable<String>(''), throwsA(isA<ArgumentError>()));
    });
  });

  group('TfArg sealed exhaustive (4-way)', () {
    test('switch covers Literal, Ref, Variable, Expression', () {
      String dispatch(TfArg<String> arg) => switch (arg) {
        TfArgLiteral<String>() => 'literal',
        TfRef<String>() => 'ref',
        TfArgVariable<String>() => 'variable',
        TfArgExpression<String>() => 'expression',
      };

      expect(dispatch(const TfArgLiteral<String>('x')), equals('literal'));
      expect(
        dispatch(TfRef.attribute<String>(_FakeAddressed('data.x.y'), 'z')),
        equals('ref'),
      );
      expect(dispatch(TfArgVariable<String>('z')), equals('variable'));
    });
  });

  group('TfArg.workspace', () {
    test('emits the terraform.workspace interpolation', () {
      expect(
        TfArg.workspace<String>().toTfJson(),
        equals(r'${terraform.workspace}'),
      );
      expect(TfArg.workspaceTemplate, equals(r'${terraform.workspace}'));
    });

    test('is an expression, so it is accepted where a ref is', () {
      final arg = TfArg.workspace<String>();
      expect(arg, isA<TfArgExpression<String>>());
      // Nothing to declare: `terraform.workspace` is not a variable.
      expect((arg as TfArgExpression<String>).referencedVariables, isEmpty);
    });

    test('the type argument is inferred from the slot it fills', () {
      final TfArg<String> name = TfArg.workspace();
      expect(name.toTfJson(), equals(r'${terraform.workspace}'));
    });
  });
}

/// The shape every provider package declares its enums in.
extension type const _SampleEnum._(TfArg<String> _) implements TfArg<String> {
  _SampleEnum.variable(String name) : this._(TfArg.variable(name));
  _SampleEnum.expression(String template) : this._(TfArg.expression(template));

  static const _SampleEnum alpha = _SampleEnum._(TfArgLiteral('ALPHA_VALUE'));

  static const List<_SampleEnum> values = [alpha];
}

/// A plain Dart enum, which has no Terraform value. TfArg should throw on
/// this.
enum _BareEnum { first }
