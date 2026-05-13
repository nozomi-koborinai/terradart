import 'package:terradart_codegen/src/codegen/wrap_promote/valid_values_emitter.dart';
import 'package:test/test.dart';

void main() {
  group('ValidValuesEmitter', () {
    const emitter = ValidValuesEmitter();

    test('emits Dart enum with snake-to-camel value names (lowercase snake)',
        () {
      final out = emitter.emit(
        fieldName: 'state',
        enumValues: ['active', 'always_running', 'on_demand'],
        resourcePascal: 'GoogleFoo',
      );
      expect(out, contains('enum GoogleFooState {'));
      expect(out, contains('active'));
      expect(out, contains('alwaysRunning'));
      expect(out, contains('onDemand'));
      // Phase 4.5.1: emitter no longer wraps in `prelude: |`.
      expect(out, isNot(contains('prelude:')));
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

    test('Phase 4.5.1: does NOT emit dartTypeOverrides (moved to generator)',
        () {
      final out = emitter.emit(
        fieldName: 'state',
        enumValues: ['active', 'inactive'],
        resourcePascal: 'GoogleFoo',
      );
      expect(out, isNot(contains('# dartTypeOverrides:')));
    });

    test(
        'Phase 4.5.1 TG-2 fix: ALL_CAPS input produces correct camelCase '
        '(addCostToMed, not addCOSTTOMED)', () {
      final out = emitter.emit(
        fieldName: 'cost_mode',
        enumValues: ['DEFAULT', 'ADD_COST_TO_MED'],
        resourcePascal: 'GoogleFoo',
      );
      expect(out, contains('defaultCase'));
      expect(out, contains('addCostToMed'));
      expect(out, isNot(contains('addCOSTTOMED')));
      expect(out, isNot(contains('aDDCOSTTOMED')));
    });

    test(
        'Phase 4.5.1 TG-2 fix: Dart reserved word `default` is suffixed `Case`',
        () {
      final out = emitter.emit(
        fieldName: 'mode',
        enumValues: ['DEFAULT', 'STRICT'],
        resourcePascal: 'GoogleFoo',
      );
      expect(out, contains('defaultCase'));
      expect(out, contains('strict'));
      // The `case GoogleFooMode.defaultCase: return 'DEFAULT';` arm must
      // produce the unmodified terraform value.
      expect(out, contains("case GoogleFooMode.defaultCase: return 'DEFAULT'"));
    });

    test(
        'Phase 4.5.1 TG-2 fix: nested MM path `routing_config.routing_mode` '
        'uses leaf only for naming + dartTypeOverrides key', () {
      final out = emitter.emit(
        fieldName: 'routing_config.routing_mode',
        enumValues: ['REGIONAL', 'GLOBAL'],
        resourcePascal: 'GoogleComputeNetwork',
      );
      // No `.` in the Dart enum identifier.
      expect(out, isNot(contains('GoogleComputeNetworkRoutingConfig.')));
      // Pascal-cased leaf field.
      expect(out, contains('enum GoogleComputeNetworkRoutingMode {'));
      // The header comment uses the leaf.
      expect(out, contains('# --- validValues: routing_mode ---'));
    });

    test(
        'Phase 4.5.1 TG-2 fix: emitter output is 2-space indented '
        '(`prelude: |2` shape)', () {
      final out = emitter.emit(
        fieldName: 'state',
        enumValues: ['active', 'inactive'],
        resourcePascal: 'GoogleFoo',
      );
      // Every non-empty line begins with at least 2 spaces.
      for (final line in out.split('\n')) {
        if (line.isEmpty) continue;
        expect(line, startsWith('  '),
            reason: 'unindented line: ${_jsonStrPreview(line)}');
      }
    });

    test('leafFieldName: returns input for flat field', () {
      expect(emitter.leafFieldName('routing_mode'), 'routing_mode');
    });

    test('leafFieldName: returns leaf for nested path', () {
      expect(
          emitter.leafFieldName('routing_config.routing_mode'), 'routing_mode');
    });

    test('enumNameFor: pascal-cases leaf and prefixes resource', () {
      expect(
          emitter.enumNameFor(
            fieldName: 'routing_config.routing_mode',
            resourcePascal: 'GoogleComputeNetwork',
          ),
          'GoogleComputeNetworkRoutingMode');
    });
  });
}

String _jsonStrPreview(String s) => '"${s.replaceAll('"', r'\"')}"';
