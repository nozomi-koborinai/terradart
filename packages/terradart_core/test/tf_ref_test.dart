import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

class _FakeAddressed implements TfAddressed {
  _FakeAddressed(this.tfAddress);
  @override
  final String tfAddress;
}

void main() {
  group('TfRef.attribute', () {
    final topic = _FakeAddressed('google_pubsub_topic.orders');
    final ref = TfRef.attribute<String>(topic, 'name');

    test('interpolation wraps with \${...}', () {
      expect(ref.interpolation, r'${google_pubsub_topic.orders.name}');
    });

    test('bareAddress is unwrapped', () {
      expect(ref.bareAddress, 'google_pubsub_topic.orders.name');
    });

    test('placeholder uses placeholderFor<T>()', () {
      expect(ref.placeholder, '');
    });
  });

  group('TfRef.data', () {
    final project = _FakeAddressed('data.google_project.current');
    final ref = TfRef.data<String>(project, 'project_id');

    test('interpolation wraps the data address', () {
      expect(ref.interpolation, r'${data.google_project.current.project_id}');
    });

    test('bareAddress preserves data. prefix', () {
      expect(ref.bareAddress, 'data.google_project.current.project_id');
    });
  });

  group('TfRef.resource', () {
    test('bareAddress is the resource address with no attribute', () {
      final res = _FakeResourceLike<int>('google_pubsub_topic.orders', 0);
      final ref = TfRef.resource<int>(res);
      expect(ref.bareAddress, 'google_pubsub_topic.orders');
    });

    test('interpolation wraps the bare address with \${...}', () {
      final res = _FakeResourceLike<int>('google_pubsub_topic.orders', 0);
      final ref = TfRef.resource<int>(res);
      expect(ref.interpolation, r'${google_pubsub_topic.orders}');
    });

    test('placeholder returns the owner schema instance', () {
      final res = _FakeResourceLike<int>('google_pubsub_topic.orders', 7);
      final ref = TfRef.resource<int>(res);
      expect(ref.placeholder, 7);
    });
  });

  group('sealed exhaustiveness', () {
    test('switch covers AttributeRef, DataRef, ResourceRef', () {
      final ref = TfRef.attribute<int>(_FakeAddressed('a.b'), 'c');
      final tag = switch (ref) {
        AttributeRef<int>() => 'attr',
        DataRef<int>() => 'data',
        ResourceRef<int>() => 'res',
      };
      expect(tag, 'attr');
    });
  });
}

/// A minimal `SchemaCarrier<S>` fixture so we can construct a
/// `ResourceRef<S>` without dragging the full `Resource<S>` base
/// into this test file. In real Task 4/7 tests, a true `Resource<S>`
/// instance is used.
class _FakeResourceLike<S> implements SchemaCarrier<S> {
  _FakeResourceLike(this._addr, this._schema);
  final String _addr;
  final S _schema;
  @override
  String get tfAddress => _addr;
  @override
  S get schema => _schema;
}
