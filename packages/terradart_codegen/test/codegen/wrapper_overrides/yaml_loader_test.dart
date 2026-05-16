import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/loader_errors.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
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
        final result = loader.load().resources;
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
        final result = loader.load().resources;
        final o = result['class_doc_comment_only']!;
        expect(o.classDocComment, equals('/// Test doc.\n/// Multi-line.'));
        expect(o.paramOrder, isNull);
        expect(o.extraGetters, isNull);
      });

      test('param_order_only -> only paramOrder set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
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
        final result = loader.load().resources;
        final o = result['arg_map_order_only']!;
        expect(o.paramOrder, equals(['alpha', 'beta']));
        expect(o.argMapOrder, equals(['beta', 'alpha']));
      });

      test('extra_getters_only -> trailing newline preserved', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
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
        final result = loader.load().resources;
        final o = result['schema_stub_comment_only']!;
        expect(o.schemaStubComment, isNot(endsWith('\n')));
        expect(o.schemaStubComment, equals('// line 1\n// line 2'));
      });

      test('required_params_only -> list set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
        final o = result['required_params_only']!;
        expect(o.requiredParams, equals(['location', 'region']));
      });

      test('dart_type_overrides_only -> map set', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
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
        final result = loader.load().resources;
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
        final result = loader.load().resources;
        final o = result['extra_imports_only']!;
        expect(o.extraImports, equals(["import 'package:meta/meta.dart';"]));
      });

      test('prelude_only -> trailing newline preserved', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
        final o = result['prelude_only']!;
        expect(o.prelude, endsWith('\n'));
        expect(o.prelude, equals('sealed class Foo {\n  const Foo();\n}\n'));
      });

      test('custom_slots_only -> CustomSlot mapping', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
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
        final result = loader.load().resources;
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
      test(
        'production yaml/ directory loads without errors',
        () {
          final loader = YamlOverrideLoader(
            rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
          );
          expect(loader.load, returnsNormally);
        },
      );
    });
  });

  group('LoadedOverrides — kind dispatch', () {
    test('separates resources and dataSources by kind field', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_loader_');
      try {
        await File(p.join(tmpDir.path, 'google_pubsub_topic.yaml'))
            .writeAsString('''
outputDir: pubsub
classDocComment: |-
  /// Wrapper for google_pubsub_topic.
''');
        await File(p.join(tmpDir.path, 'google_project.yaml')).writeAsString('''
kind: data_source
outputDir: data
schemaStubBodyMode: bare
classDocComment: |-
  /// Data source for data.google_project.
''');

        final loaded = loadWrapperOverrides(rootDir: tmpDir.path);
        expect(loaded.resources.keys, ['google_pubsub_topic']);
        expect(loaded.dataSources.keys, ['google_project']);
        expect(
          loaded.resources['google_pubsub_topic']!.kind,
          WrapperOverrideKind.resource,
        );
        expect(
          loaded.dataSources['google_project']!.kind,
          WrapperOverrideKind.dataSource,
        );
        expect(loaded.dataSources['google_project']!.outputDir, 'data');
        expect(
          loaded.dataSources['google_project']!.schemaStubBodyMode,
          SchemaStubBodyMode.bare,
        );
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });

    test('default kind is resource when omitted', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_loader_');
      try {
        await File(p.join(tmpDir.path, 'google_x.yaml')).writeAsString('''
outputDir: pubsub
''');
        final loaded = loadWrapperOverrides(rootDir: tmpDir.path);
        expect(loaded.resources.containsKey('google_x'), isTrue);
        expect(loaded.dataSources, isEmpty);
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });
  });

  group('Axis: kind', () {
    test('kind: data_source parses', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_kind_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: data_source
outputDir: data
''');
        final loaded = loadWrapperOverrides(rootDir: tmpDir.path);
        expect(loaded.dataSources['x']!.kind, WrapperOverrideKind.dataSource);
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });

    test('kind: <unknown> raises E101', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_kind_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: bogus
outputDir: data
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(e.errors, hasLength(1));
          expect(e.errors.first.code, LoaderErrorCode.unknownKind);
          expect(e.errors.first.message, contains('bogus'));
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });
  });

  group('Axis: outputDir', () {
    test('outputDir missing raises E102', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_outdir_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
classDocComment: |-
  /// X.
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(e.errors.first.code, LoaderErrorCode.outputDirRequired);
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });

    test('outputDir with slash raises E103', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_outdir_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
outputDir: data/sub
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(e.errors.first.code, LoaderErrorCode.outputDirInvalid);
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });

    test('outputDir with .. raises E103', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_outdir_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
outputDir: ..
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(e.errors.first.code, LoaderErrorCode.outputDirInvalid);
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });

    test('data_source with outputDir != data raises E104', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_outdir_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: data_source
outputDir: pubsub
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(
            e.errors.first.code,
            LoaderErrorCode.outputDirMismatchForDataSource,
          );
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });
  });

  group('Axis: schemaStubBodyMode', () {
    test('bare parses', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_stub_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: data_source
outputDir: data
schemaStubBodyMode: bare
''');
        final loaded = loadWrapperOverrides(rootDir: tmpDir.path);
        expect(
          loaded.dataSources['x']!.schemaStubBodyMode,
          SchemaStubBodyMode.bare,
        );
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });
  });

  group('Axis: fileLeadingComment', () {
    test('block scalar parses with newlines', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_flc_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: data_source
outputDir: data
fileLeadingComment: |-
  Operational note line 1.
  Line 2 explains why.
''');
        final loaded = loadWrapperOverrides(rootDir: tmpDir.path);
        expect(
          loaded.dataSources['x']!.fileLeadingComment,
          'Operational note line 1.\nLine 2 explains why.',
        );
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });
  });

  group('Data source axis restriction', () {
    test('schemaStubComment on data source raises E201', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_axis_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: data_source
outputDir: data
schemaStubComment: |-
  // forbidden
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(
            e.errors.first.code,
            LoaderErrorCode.axisNotAllowedForDataSource,
          );
          expect(e.errors.first.message, contains('schemaStubComment'));
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });

    test('prelude on data source raises E201', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_axis_');
      try {
        await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: data_source
outputDir: data
prelude: |
  // forbidden prelude
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(
            e.errors.first.code,
            LoaderErrorCode.axisNotAllowedForDataSource,
          );
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });
  });

  group('LoaderErrorReport aggregation', () {
    test('multiple errors aggregated and reported', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_aggr_');
      try {
        // E101: unknown kind value.
        await File(p.join(tmpDir.path, 'a.yaml')).writeAsString('''
kind: bogus
outputDir: x
''');
        // E102: outputDir missing entirely.
        await File(p.join(tmpDir.path, 'b.yaml')).writeAsString('''
classDocComment: |-
  /// hi
''');
        try {
          loadWrapperOverrides(rootDir: tmpDir.path);
          fail('expected LoaderErrorReport');
        } on LoaderErrorReport catch (e) {
          expect(e.errors.length, greaterThanOrEqualTo(2));
          final formatted = e.format();
          expect(formatted, contains('[E101]'));
          expect(formatted, contains('[E102]'));
        }
      } finally {
        await tmpDir.delete(recursive: true);
      }
    });
  });

  group(
      'production round-trip (31 entries — Phase 4.1 13 + Phase 4.5 Wave 0+1+2+3 15 + Plan 5.C Wave 4 Round 1 3)',
      () {
    test(
      'lib/src/codegen/wrapper_overrides/yaml/ loads 30 resources + 1 data source',
      () {
        final loaded = loadWrapperOverrides(
          rootDir:
              p.absolute('lib', 'src', 'codegen', 'wrapper_overrides', 'yaml'),
        );
        expect(loaded.resources.length, 30);
        expect(loaded.dataSources.length, 1);
        expect(loaded.dataSources.keys.first, 'google_project');
      },
    );
  });
}
