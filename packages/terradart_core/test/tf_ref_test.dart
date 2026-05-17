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
      final res = _FakeAddressed('google_pubsub_topic.orders');
      final ref = TfRef.resource(res);
      expect(ref.bareAddress, 'google_pubsub_topic.orders');
    });

    test('interpolation wraps the bare address with \${...}', () {
      final res = _FakeAddressed('google_pubsub_topic.orders');
      final ref = TfRef.resource(res);
      expect(ref.interpolation, r'${google_pubsub_topic.orders}');
    });
  });

  group('sealed exhaustiveness', () {
    test('switch covers AttributeRef, DataRef, ResourceRef', () {
      final ref = TfRef.attribute<int>(_FakeAddressed('a.b'), 'c');
      final tag = switch (ref) {
        AttributeRef<int>() => 'attr',
        DataRef<int>() => 'data',
        ResourceRef() => 'res',
      };
      expect(tag, 'attr');
    });
  });
}
