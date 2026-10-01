import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/tf_arg.dart';
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
      expect(lc.conditions, isNull);
    });

    test('ignoreChanges is all or a list of attribute paths', () {
      const all = LifecycleOptions(ignoreChanges: .all);
      expect(all.ignoreChanges, isA<IgnoreAllChanges>());
      const some = LifecycleOptions(ignoreChanges: .of(['name', 'tags']));
      expect((some.ignoreChanges! as IgnoreAttributes).attributes, [
        'name',
        'tags',
      ]);
    });

    test('replaceTriggeredBy takes attribute references', () {
      final ref = TfRef.attribute<String>(
        _FakeAddressed('google_pubsub_topic.orders'),
        'name',
      );
      final lc = LifecycleOptions(replaceTriggeredBy: [ref]);
      expect(lc.replaceTriggeredBy, [ref]);
    });

    test('conditions are pre or post', () {
      final pre = LifecycleCondition.pre(.expression(r'${true}'), 'm');
      final post = LifecycleCondition.post(.expression(r'${true}'), 'm');
      expect(pre.post, isFalse);
      expect(post.post, isTrue);
    });
  });
}
