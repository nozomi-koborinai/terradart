import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

class _FakeAddressed implements TfAddressed {
  _FakeAddressed(this.tfAddress);
  @override
  final String tfAddress;
}

void main() {
  group('LifecycleOptions', () {
    test('all fields default to null', () {
      const lc = LifecycleOptions();
      expect(lc.createBeforeDestroy, isNull);
      expect(lc.preventDestroy, isNull);
      expect(lc.ignoreChanges, isNull);
      expect(lc.replaceTriggeredBy, isNull);
    });

    test('preventDestroy can be set', () {
      const lc = LifecycleOptions(preventDestroy: true);
      expect(lc.preventDestroy, isTrue);
    });

    test('ignoreChanges accepts string list', () {
      const lc = LifecycleOptions(ignoreChanges: ['name', 'tags']);
      expect(lc.ignoreChanges, ['name', 'tags']);
    });

    test('replaceTriggeredBy accepts TfRef list', () {
      final ref = TfRef.attribute<String>(
        _FakeAddressed('google_pubsub_topic.orders'),
        'name',
      );
      final lc = LifecycleOptions(replaceTriggeredBy: [ref]);
      expect(lc.replaceTriggeredBy, hasLength(1));
      expect(
        lc.replaceTriggeredBy!.first.bareAddress,
        'google_pubsub_topic.orders.name',
      );
    });
  });

  group('DependencyTarget sealed', () {
    test('ResourceDependency renders bareAddress of the resource', () {
      final dep = ResourceDependency(_FakeAddressed('a.b'));
      expect(dep.bareAddress, 'a.b');
    });

    test('RefDependency renders bareAddress of the ref', () {
      final ref = TfRef.attribute<String>(_FakeAddressed('a.b'), 'c');
      final dep = RefDependency(ref);
      expect(dep.bareAddress, 'a.b.c');
    });

    test('switch is exhaustive', () {
      final DependencyTarget dep = ResourceDependency(_FakeAddressed('a.b'));
      final tag = switch (dep) {
        ResourceDependency() => 'res',
        RefDependency() => 'ref',
      };
      expect(tag, 'res');
    });
  });
}
