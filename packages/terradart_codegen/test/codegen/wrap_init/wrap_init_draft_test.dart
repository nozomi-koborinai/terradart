import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_draft.dart';
import 'package:test/test.dart';

void main() {
  group('WrapInitAxis sealed type', () {
    test('FilledAxis carries a key + value', () {
      const axis = FilledAxis('outputDir', 'pubsub');
      expect(axis.key, 'outputDir');
      expect(axis.value, 'pubsub');
    });

    test('CommentedAxis carries key + value + optional banner', () {
      const axis = CommentedAxis(
        'paramOrder',
        value: <String>['name', 'labels'],
        banner: 'uncomment to reorder',
      );
      expect(axis.key, 'paramOrder');
      expect(axis.value, <String>['name', 'labels']);
      expect(axis.banner, 'uncomment to reorder');
    });

    test('TodoAxis carries key + todoMessage + optional seed/skeleton', () {
      const axis = TodoAxis(
        'classDocComment',
        todoMessage: 'expand with usage example',
        seed: '/// A resource.',
      );
      expect(axis.key, 'classDocComment');
      expect(axis.todoMessage, 'expand with usage example');
      expect(axis.seed, '/// A resource.');
      expect(axis.skeleton, isNull);
    });

    test('BannerOnlyAxis carries key + banner string', () {
      const axis = BannerOnlyAxis('customSlots', 'See Phase 4.3.');
      expect(axis.key, 'customSlots');
      expect(axis.banner, 'See Phase 4.3.');
    });
  });

  group('WrapInitDraft', () {
    test('carries terraformType + axes + bannerDate', () {
      final draft = WrapInitDraft(
        terraformType: 'google_x',
        axes: const [FilledAxis('outputDir', 'x')],
        bannerDate: DateTime.utc(2026, 1, 1),
      );
      expect(draft.terraformType, 'google_x');
      expect(draft.axes, hasLength(1));
      expect(draft.bannerDate, DateTime.utc(2026, 1, 1));
    });
  });
}
