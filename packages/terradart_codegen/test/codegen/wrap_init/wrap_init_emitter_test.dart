import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_draft.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_emitter.dart';
import 'package:test/test.dart';

void main() {
  group('WrapInitEmitter', () {
    test('FILL axes appear uncommented as `key: value`', () {
      final draft = WrapInitDraft(
        terraformType: 'google_x',
        axes: const [FilledAxis('outputDir', 'pubsub')],
        bannerDate: DateTime.utc(2026, 1, 1),
      );
      final yaml = const WrapInitEmitter().emit(draft);
      expect(yaml, contains('outputDir: pubsub'));
      expect(yaml, isNot(contains('# outputDir')));
    });

    test('TODO axes have `# TODO(wrap-init):` prefix', () {
      final draft = WrapInitDraft(
        terraformType: 'google_x',
        axes: const [
          TodoAxis(
            'classDocComment',
            todoMessage: 'expand here',
            seed: '/// A resource.',
          ),
        ],
        bannerDate: DateTime.utc(2026, 1, 1),
      );
      final yaml = const WrapInitEmitter().emit(draft);
      expect(yaml, contains('# TODO(wrap-init): expand here'));
    });

    test('emitter only emits axes listed in draft.axes; others absent', () {
      final draft = WrapInitDraft(
        terraformType: 'google_x',
        axes: const [FilledAxis('outputDir', 'x')],
        bannerDate: DateTime.utc(2026, 1, 1),
      );
      final yaml = const WrapInitEmitter().emit(draft);
      // Verify only the listed axis appears.
      expect(yaml, contains('outputDir: x'));
      // Verify NO unlisted axes appear.
      expect(yaml, isNot(contains('classDocComment')));
      expect(yaml, isNot(contains('paramOrder')));
      expect(yaml, isNot(contains('extraGetters')));
      expect(yaml, isNot(contains('prelude')));
      expect(yaml, isNot(contains('customSlots')));
    });
  });
}
