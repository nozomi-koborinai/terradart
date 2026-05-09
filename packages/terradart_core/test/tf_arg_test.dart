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
    test('literalOrPlaceholder returns the value', () {
      const arg = TfArgLiteral<String>('orders-prod');
      expect(arg.literalOrPlaceholder, 'orders-prod');
    });

    test('toTfJson returns the raw value', () {
      const arg = TfArgLiteral<int>(60);
      expect(arg.toTfJson(), 60);
    });
  });

  group('TfArg.ref', () {
    final topic = _FakeAddressed('google_pubsub_topic.orders');
    final ref = TfRef.attribute<String>(topic, 'name');
    final arg = TfArg.ref(ref);

    test('literalOrPlaceholder returns the placeholder', () {
      expect(arg.literalOrPlaceholder, '');
    });

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
}
