import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  group('YamlOverrideLoader', () {
    group('happy', () {
      test('empty.yaml -> empty WrapperOverride', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        // ファイル名 stem `empty` が key として使われる前提
        final result = loader.load();
        expect(result, contains('empty'));
        final override = result['empty']!;
        expect(override.classDocComment, isNull);
        expect(override.paramOrder, isNull);
        expect(override.argMapOrder, isNull);
        expect(override.extraGetters, isNull);
        expect(override.schemaStubComment, isNull);
        expect(override.requiredParams, isNull);
        expect(override.dartTypeOverrides, isNull);
        expect(override.deprecatedParams, isNull);
        expect(override.extraImports, isNull);
        expect(override.prelude, isNull);
        expect(override.customSlots, isNull);
      });

      test('class_doc_comment_only -> only classDocComment set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['class_doc_comment_only']!;
        expect(o.classDocComment, equals('/// Test doc.\n/// Multi-line.'));
        expect(o.paramOrder, isNull);
        expect(o.extraGetters, isNull);
      });

      test('param_order_only -> only paramOrder set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['param_order_only']!;
        expect(o.paramOrder, equals(['alpha', 'beta', 'gamma']));
        expect(o.argMapOrder, isNull);
      });

      test(
          'arg_map_order_only -> paramOrder + argMapOrder set, permutation valid',
          () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['arg_map_order_only']!;
        expect(o.paramOrder, equals(['alpha', 'beta']));
        expect(o.argMapOrder, equals(['beta', 'alpha']));
      });

      test('extra_getters_only -> trailing newline preserved', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['extra_getters_only']!;
        expect(o.extraGetters, endsWith('\n'));
        expect(
          o.extraGetters,
          equals(
            "    TfRef<String> get x => TfRef.attribute<String>(this, 'x');\n",
          ),
        );
      });

      test('schema_stub_comment_only -> trailing newline stripped', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['schema_stub_comment_only']!;
        expect(o.schemaStubComment, isNot(endsWith('\n')));
        expect(o.schemaStubComment, equals('// line 1\n// line 2'));
      });

      test('required_params_only -> list set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['required_params_only']!;
        expect(o.requiredParams, equals(['location', 'region']));
      });

      test('dart_type_overrides_only -> map set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['dart_type_overrides_only']!;
        expect(
          o.dartTypeOverrides,
          equals({
            'ack_deadline_seconds': 'int',
            'count': 'int',
          }),
        );
      });

      test('deprecated_params_only -> map set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['deprecated_params_only']!;
        expect(
          o.deprecatedParams,
          equals({'old_field': 'use new_field instead'}),
        );
      });

      test('extra_imports_only -> list set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['extra_imports_only']!;
        expect(o.extraImports, equals(["import 'package:meta/meta.dart';"]));
      });

      test('prelude_only -> trailing newline preserved', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['prelude_only']!;
        expect(o.prelude, endsWith('\n'));
        expect(o.prelude, equals('sealed class Foo {\n  const Foo();\n}\n'));
      });

      test('custom_slots_only -> CustomSlot mapping', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['custom_slots_only']!;
        expect(o.customSlots, hasLength(1));
        expect(
          o.customSlots!['target']!.paramDeclaration,
          equals('required Target target'),
        );
        expect(
          o.customSlots!['target']!.argMapEntry,
          equals('target.blockKey: TfArg.literal(target.encode()),'),
        );
      });

      test('full_axis -> all 11 axes set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load();
        final o = result['full_axis']!;
        expect(o.classDocComment, isNotNull);
        expect(o.paramOrder, equals(['x', 'y']));
        expect(o.argMapOrder, equals(['y', 'x']));
        expect(o.extraGetters, isNotNull);
        expect(o.schemaStubComment, isNotNull);
        expect(o.requiredParams, equals(['x']));
        expect(o.dartTypeOverrides, equals({'x': 'int'}));
        expect(o.deprecatedParams, equals({'y': 'use z'}));
        expect(o.extraImports, equals(["import 'package:meta/meta.dart';"]));
        expect(o.prelude, equals('sealed class Bar {}\n'));
        expect(
          o.customSlots!['s']!.paramDeclaration,
          equals('required Bar b'),
        );
      });
    });

    group('failure', () {
      Matcher throwsFormatExceptionWith(String substring) {
        return throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            contains(substring),
          ),
        );
      }

      test('unknown top-level key -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'unknown_top_level_key',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('unknown top-level key: classDocCommen'),
        );
      });

      test('top-level not mapping -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'top_level_not_mapping',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('top-level must be a YAML mapping'),
        );
      });

      test('paramOrder empty list -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'param_order_empty',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('"paramOrder" must not be empty'),
        );
      });

      test('paramOrder value not string -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'param_order_value_not_string',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('entries must be strings'),
        );
      });

      test('dartTypeOverrides value not string -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'dart_type_overrides_value_not_string',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('must be a string'),
        );
      });

      test('deprecatedParams value not string -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'deprecated_params_value_not_string',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('must be a string'),
        );
      });

      test('customSlots not mapping -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_not_mapping',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('"customSlots" must be a mapping'),
        );
      });

      test('customSlots entry not mapping -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_entry_not_mapping',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('must be a mapping'),
        );
      });

      test('customSlots missing paramDeclaration -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_missing_param_declaration',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('paramDeclaration is required'),
        );
      });

      test('customSlots missing argMapEntry -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_missing_arg_map_entry',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('argMapEntry is required'),
        );
      });

      test('customSlots unknown subkey -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_unknown_subkey',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('unknown key: extra'),
        );
      });

      test('argMapOrder not permutation -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'arg_map_order_not_permutation',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith(
            'argMapOrder must be a permutation of paramOrder',
          ),
        );
      });

      test('yaml syntax error -> YamlException', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/failure/'
              'yaml_syntax_error',
        );
        expect(loader.load, throwsA(isA<YamlException>()));
      });

      test('invalid filename -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure_invalid_filename',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('invalid terraform type'),
        );
      });
    });

    group('production round-trip', () {
      test('production yaml/ directory loads without errors', () {
        final loader = YamlOverrideLoader(
          rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
        );
        expect(loader.load, returnsNormally);
      });
    });
  });
}
