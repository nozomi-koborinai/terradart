import 'package:terradart_codegen/src/codegen/wrap_promote/valid_values_emitter.dart';
import 'package:test/test.dart';

void main() {
  group('ValidValuesEmitter', () {
    const emitter = ValidValuesEmitter();

    test('emits Dart enum with snake-to-camel value names', () {
      final out = emitter.emit(
        fieldName: 'state',
        enumValues: ['active', 'always_running', 'on_demand'],
        resourcePascal: 'GoogleFoo',
      );
      expect(out, contains('enum GoogleFooState {'));
      expect(out, contains('active'));
      expect(out, contains('alwaysRunning'));
      expect(out, contains('onDemand'));
    });

    test('emits terraformValue getter mapping camel back to snake', () {
      final out = emitter.emit(
        fieldName: 'state',
        enumValues: ['active', 'always_running'],
        resourcePascal: 'GoogleFoo',
      );
      expect(out, contains('String get terraformValue'));
      expect(out, contains("case GoogleFooState.active: return 'active'"));
      expect(
          out,
          contains(
              "case GoogleFooState.alwaysRunning: return 'always_running'"));
    });

    test('emits commented dartTypeOverrides entry', () {
      final out = emitter.emit(
        fieldName: 'state',
        enumValues: ['active', 'inactive'],
        resourcePascal: 'GoogleFoo',
      );
      expect(out, contains('# dartTypeOverrides:'));
      expect(out, contains('#   state: GoogleFooState'));
    });
  });
}
