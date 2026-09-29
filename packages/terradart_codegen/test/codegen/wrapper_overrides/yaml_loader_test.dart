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
        expect(override.paramOrder, isNull);
        expect(override.argMapOrder, isNull);
        expect(override.extraGetters, isNull);
        // Plan 5.X: `schemaStubComment` axis retired alongside the
        // schemantic stub-class emit. The field no longer exists on
        // [WrapperOverride].
        expect(override.requiredParams, isNull);
        expect(override.dartTypeOverrides, isNull);
        expect(override.deprecatedParams, isNull);
        expect(override.extraImports, isNull);
        expect(override.prelude, isNull);
        expect(override.customSlots, isNull);
        expect(override.deriveEnums, isFalse);
        expect(override.deriveExactlyOne, isFalse);
        expect(override.deriveOutputGetters, isFalse);
        expect(override.deriveClassDoc, isFalse);
        expect(override.curatedDoc, isNull);
        expect(override.deriveNestedTypes, isFalse);
        expect(override.nestedTypeExcludes, isNull);
      });

      test('derive_enums_on -> deriveEnums true', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
        final o = result['derive_enums_on']!;
        expect(o.deriveEnums, isTrue);
        expect(o.outputDir, 'test_out');
      });

      test('derive_exactly_one_on -> deriveExactlyOne true', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final o = loader.load().resources['derive_exactly_one_on']!;
        expect(o.deriveExactlyOne, isTrue);
        expect(o.deriveEnums, isFalse);
      });

      test('derive_getters_on -> deriveOutputGetters true', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
        final o = result['derive_getters_on']!;
        expect(o.deriveOutputGetters, isTrue);
        expect(o.outputDir, 'test_out');
      });

      test(
        'derive_class_doc_on -> deriveClassDoc true + curatedDoc parsed',
        () {
          final loader = YamlOverrideLoader(
            rootDir: 'test/fixtures/semantic_hints_loader/happy',
          );
          final result = loader.load().resources;
          final o = result['derive_class_doc_on']!;
          expect(o.deriveClassDoc, isTrue);
          // `equals` (not `contains`) pins the curatedDoc contract: the `|-`
          // chomp strips the trailing newline, so the parsed value is exactly
          // the single `///` line with no leading separator or trailing `\n`.
          expect(o.curatedDoc, equals('/// Curated example block.'));
          expect(o.outputDir, 'test_out');
        },
      );

      test('derive_nested_types_on -> deriveNestedTypes true', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
        final o = result['derive_nested_types_on']!;
        expect(o.deriveNestedTypes, isTrue);
        expect(o.nestedTypeExcludes, isNull);
        expect(o.outputDir, 'test_out');
      });

      test(
        'nested_type_excludes_only -> deriveNestedTypes + nestedTypeExcludes '
        'round-trip',
        () {
          final loader = YamlOverrideLoader(
            rootDir: 'test/fixtures/semantic_hints_loader/happy',
          );
          final result = loader.load().resources;
          final o = result['nested_type_excludes_only']!;
          expect(o.deriveNestedTypes, isTrue);
          expect(o.nestedTypeExcludes, equals(['basic.conditions', 'foo.bar']));
        },
      );

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
        },
      );

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

      // Plan 5.X: the `schema_stub_comment_only` happy-path test is
      // retired alongside the axis. The negative coverage moved to
      // `schemaStubComment is now rejected as an unknown top-level key`
      // (group: failure).

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
          equals({'ack_deadline_seconds': 'int', 'count': 'int'}),
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

      test('full_axis -> all axes set (schemaStubComment retired; '
          'deriveNestedTypes + nestedTypeExcludes added)', () {
        final loader = YamlOverrideLoader(
          rootDir: 'test/fixtures/semantic_hints_loader/happy',
        );
        final result = loader.load().resources;
        final o = result['full_axis']!;
        expect(o.paramOrder, equals(['x', 'y']));
        expect(o.argMapOrder, equals(['y', 'x']));
        expect(o.extraGetters, isNotNull);
        expect(o.requiredParams, equals(['x']));
        expect(o.dartTypeOverrides, equals({'x': 'int'}));
        expect(o.deprecatedParams, equals({'y': 'use z'}));
        expect(o.extraImports, equals(["import 'package:meta/meta.dart';"]));
        expect(o.prelude, equals('sealed class Bar {}\n'));
        expect(o.customSlots!['s']!.paramDeclaration, equals('required Bar b'));
        expect(o.deriveNestedTypes, isTrue);
        expect(o.nestedTypeExcludes, equals(['basic.conditions']));
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
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'unknown_top_level_key',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('unknown top-level key: classDocCommen'),
        );
      });

      group('sealedNames', () {
        late Directory tmp;
        setUp(() => tmp = Directory.systemTemp.createTempSync('sealed_names_'));
        tearDown(() => tmp.deleteSync(recursive: true));

        YamlOverrideLoader loaderFor(String names) {
          File(p.join(tmp.path, 'aws_thing.yaml')).writeAsStringSync('''
outputDir: thing
deriveExactlyOne: true
sealedNames:
$names''');
          return YamlOverrideLoader(rootDir: tmp.path);
        }

        test('reads group keys and concept names', () {
          final o = loaderFor(
            '  "b, settings.a": code\n',
          ).load().resources['aws_thing']!;
          expect(o.sealedNames, {'b, settings.a': 'code'});
        });

        test('a key with one member -> FormatException', () {
          expect(
            loaderFor('  filename: code\n').load,
            throwsFormatExceptionWith('must list the group\'s members'),
          );
        });

        test('a name that is not snake_case -> FormatException', () {
          expect(
            loaderFor('  "a, b": imageUri\n').load,
            throwsFormatExceptionWith('use a snake_case concept name'),
          );
        });
      });

      group('exactlyOneOf / atMostOneOf', () {
        late Directory tmp;
        setUp(() => tmp = Directory.systemTemp.createTempSync('groups_'));
        tearDown(() => tmp.deleteSync(recursive: true));

        YamlOverrideLoader loaderFor(String body) {
          File(
            p.join(tmp.path, 'aws_thing.yaml'),
          ).writeAsStringSync('outputDir: thing\n$body');
          return YamlOverrideLoader(rootDir: tmp.path);
        }

        test('reads both group lists', () {
          final o = loaderFor(
            'exactlyOneOf:\n  - "a, b"\natMostOneOf:\n  - "settings.x, settings.y"\n',
          ).load().resources['aws_thing']!;
          expect(o.exactlyOneOf, ['a, b']);
          expect(o.atMostOneOf, ['settings.x, settings.y']);
        });

        test('an entry with one member -> FormatException', () {
          expect(
            loaderFor('exactlyOneOf:\n  - a\n').load,
            throwsFormatExceptionWith('must list two or more members'),
          );
        });
      });

      test('classDocComment -> retired-axis FormatException with hint', () {
        // The axis was retired with the 2026-07 doc wave; the loader fails
        // loudly with the migration path so it cannot quietly come back.
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'retired_class_doc_comment',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('`classDocComment` is retired'),
        );
      });

      // Plan 5.X: `schemaStubComment` is no longer a recognized
      // top-level axis. The retirement is enforced via the standard
      // unknown-top-level-key rejection so any leftover yaml axis (or
      // future yaml edits that reintroduce it) fail loud at load time
      // rather than silently dropping the value.
      test(
        'schemaStubComment is no longer a recognized top-level key',
        () async {
          final tmpDir = await Directory.systemTemp.createTemp(
            'plan5x_stubcomment_',
          );
          try {
            await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
outputDir: pubsub
schemaStubComment: |-
  // leftover from Plan 4.x
''');
            final loader = YamlOverrideLoader(rootDir: tmpDir.path);
            expect(
              loader.load,
              throwsFormatExceptionWith(
                'unknown top-level key: schemaStubComment',
              ),
            );
          } finally {
            await tmpDir.delete(recursive: true);
          }
        },
      );

      test('top-level not mapping -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'top_level_not_mapping',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('top-level must be a YAML mapping'),
        );
      });

      test('paramOrder empty list -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'param_order_empty',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('"paramOrder" must not be empty'),
        );
      });

      test('paramOrder value not string -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'param_order_value_not_string',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('entries must be strings'),
        );
      });

      test('dartTypeOverrides value not string -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'dart_type_overrides_value_not_string',
        );
        expect(loader.load, throwsFormatExceptionWith('must be a string'));
      });

      test('deriveEnums not a boolean -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'derive_enums_not_bool',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith(
            '"deriveEnums" must be a boolean (true or false)',
          ),
        );
      });

      test('deriveOutputGetters not a boolean -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'derive_getters_not_bool',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith(
            '"deriveOutputGetters" must be a boolean (true or false)',
          ),
        );
      });

      test('nestedTypeExcludes without deriveNestedTypes -> FormatException '
          '(mirrors the classDocComment retirement style)', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'nested_type_excludes_without_derive',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith(
            'nestedTypeExcludes requires deriveNestedTypes',
          ),
        );
      });

      test(
        'dedupeNestedTypes without deriveNestedTypes -> FormatException',
        () {
          final loader = YamlOverrideLoader(
            rootDir:
                'test/fixtures/semantic_hints_loader/failure/'
                'dedupe_nested_types_without_derive',
          );
          expect(
            loader.load,
            throwsFormatExceptionWith(
              'dedupeNestedTypes requires deriveNestedTypes',
            ),
          );
        },
      );

      test('deprecatedParams value not string -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'deprecated_params_value_not_string',
        );
        expect(loader.load, throwsFormatExceptionWith('must be a string'));
      });

      test('customSlots not mapping -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_not_mapping',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('"customSlots" must be a mapping'),
        );
      });

      test('customSlots entry not mapping -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_entry_not_mapping',
        );
        expect(loader.load, throwsFormatExceptionWith('must be a mapping'));
      });

      test('customSlots missing paramDeclaration -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_missing_param_declaration',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('paramDeclaration is required'),
        );
      });

      test('customSlots missing argMapEntry -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_missing_arg_map_entry',
        );
        expect(
          loader.load,
          throwsFormatExceptionWith('argMapEntry is required'),
        );
      });

      test('customSlots unknown subkey -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
              'custom_slots_unknown_subkey',
        );
        expect(loader.load, throwsFormatExceptionWith('unknown key: extra'));
      });

      test('argMapOrder not permutation -> FormatException', () {
        final loader = YamlOverrideLoader(
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
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
          rootDir:
              'test/fixtures/semantic_hints_loader/failure/'
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

  group('LoadedOverrides — kind dispatch', () {
    test('separates resources and dataSources by kind field', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_loader_');
      try {
        await File(
          p.join(tmpDir.path, 'google_pubsub_topic.yaml'),
        ).writeAsString('''
outputDir: pubsub
deriveClassDoc: true
''');
        await File(p.join(tmpDir.path, 'google_project.yaml')).writeAsString('''
kind: data_source
outputDir: data
schemaStubBodyMode: bare
deriveClassDoc: true
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

    test(
      'data_ prefix keys a twin data source without clobbering the resource',
      () async {
        final tmpDir = await Directory.systemTemp.createTemp('phase4_loader_');
        try {
          await File(
            p.join(tmpDir.path, 'google_compute_network.yaml'),
          ).writeAsString('''
outputDir: compute
deriveClassDoc: true
''');
          await File(
            p.join(tmpDir.path, 'data_google_compute_network.yaml'),
          ).writeAsString('''
kind: data_source
outputDir: data
schemaStubBodyMode: bare
deriveClassDoc: true
''');

          final loaded = loadWrapperOverrides(rootDir: tmpDir.path);
          expect(loaded.resources.keys, ['google_compute_network']);
          expect(loaded.dataSources.keys, ['google_compute_network']);
          expect(loaded.length, 2);
          expect(
            loaded.asLintMap().keys,
            containsAll([
              'google_compute_network',
              'data.google_compute_network',
            ]),
          );
          expect(() => loaded.all, throwsA(isA<StateError>()));
        } finally {
          await tmpDir.delete(recursive: true);
        }
      },
    );

    test('--only terraform type loads the data_ twin when present', () async {
      final tmpDir = await Directory.systemTemp.createTemp('phase4_loader_');
      try {
        await File(
          p.join(tmpDir.path, 'google_compute_network.yaml'),
        ).writeAsString('''
outputDir: compute
''');
        await File(
          p.join(tmpDir.path, 'data_google_compute_network.yaml'),
        ).writeAsString('''
kind: data_source
outputDir: data
''');
        await File(p.join(tmpDir.path, 'google_other.yaml')).writeAsString('''
outputDir: other
''');

        final loaded = loadWrapperOverrides(
          rootDir: tmpDir.path,
          only: 'google_compute_network',
        );
        expect(loaded.resources.keys, ['google_compute_network']);
        expect(loaded.dataSources.keys, ['google_compute_network']);
        expect(loaded.resources.containsKey('google_other'), isFalse);
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
deriveClassDoc: true
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
    // Plan 5.X: `schemaStubComment` is no longer a recognized top-level
    // key for any override kind. The post-Plan-5.X behavior is that the
    // key is rejected at the top-level allowed-keys check
    // (FormatException, code path: `unknown top-level key`), well before
    // the resource-vs-data-source axis routing runs.
    test(
      'schemaStubComment on data source is rejected as unknown top-level key',
      () async {
        final tmpDir = await Directory.systemTemp.createTemp('phase4_axis_');
        try {
          await File(p.join(tmpDir.path, 'x.yaml')).writeAsString('''
kind: data_source
outputDir: data
schemaStubComment: |-
  // forbidden
''');
          expect(
            () => loadWrapperOverrides(rootDir: tmpDir.path),
            throwsA(
              isA<FormatException>().having(
                (e) => e.message,
                'message',
                contains('unknown top-level key: schemaStubComment'),
              ),
            ),
          );
        } finally {
          await tmpDir.delete(recursive: true);
        }
      },
    );

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
deriveClassDoc: true
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
    'production round-trip (71 entries — Phase 4.1 13 + Phase 4.5 Wave 0+1+2+3 15 + Plan 5.C Wave 4 Round 1 3 + Plan 5.C Wave 4 Round 2 9 + Plan 5.C Wave 4 Round 3 9 + Plan 5.F Wave 5 Batch 1 +6 + Plan 5.F Wave 5 Batch 2 +5 + Plan 5.F Wave 5 Batch 3 +6 + Plan 5.F Wave 5 Batch 4 +5 new)',
    () {
      test('lib/src/codegen/wrapper_overrides/yaml/ loads one override per '
          'terradart_google catalog entry', () {
        final loaded = loadWrapperOverrides(
          rootDir: p.absolute(
            'lib',
            'src',
            'codegen',
            'wrapper_overrides',
            'yaml',
          ),
        );
        // The weekly schema bump scaffolds overrides for new upstream types,
        // so the count moves; the catalog wrap generated is the reference.
        final kinds = RegExp(r'kind: CatalogKind\.(\w+)')
            .allMatches(
              File(
                '../terradart_google/lib/src/_catalog.g.dart',
              ).readAsStringSync(),
            )
            .map((m) => m[1])
            .toList();
        expect(
          loaded.resources.length,
          kinds.where((k) => k == 'resource').length,
        );
        expect(
          loaded.dataSources.length,
          kinds.where((k) => k == 'dataSource').length,
        );
        expect(loaded.resources.length, greaterThan(1000));
        expect(loaded.dataSources.keys, contains('google_project'));
        expect(loaded.dataSources.keys, contains('google_compute_network'));
      });

      test('every google resource override opts into the sealed groups its '
          '--mm-groups lane feeds', () {
        final loaded = loadWrapperOverrides(
          rootDir: p.absolute(
            'lib',
            'src',
            'codegen',
            'wrapper_overrides',
            'yaml',
          ),
        );
        final missing = [
          for (final MapEntry(key: type, value: o) in loaded.resources.entries)
            if (!o.deriveExactlyOne) type,
        ];
        expect(
          missing,
          isEmpty,
          reason:
              'Set deriveExactlyOne (wrap-init fills it for '
              'hashicorp/google).',
        );
      });

      test(
        'IAM binding/policy overrides document authoritative replace semantics '
        '(AGENTS.md Generation Policy)',
        () {
          final loaded = loadWrapperOverrides(
            rootDir: p.absolute(
              'lib',
              'src',
              'codegen',
              'wrapper_overrides',
              'yaml',
            ),
          );
          final missingDoc = <String>[];
          final missingWarning = <String>[];
          for (final entry in loaded.resources.entries) {
            final type = entry.key;
            if (!type.endsWith('_iam_binding') &&
                !type.endsWith('_iam_policy')) {
              continue;
            }
            final doc = entry.value.curatedDoc?.trim() ?? '';
            if (doc.isEmpty) {
              missingDoc.add(type);
              continue;
            }
            final lower = doc.toLowerCase();
            final warns =
                lower.contains('authoritative') ||
                lower.contains('replaces') ||
                lower.contains('replace') ||
                lower.contains('overwrite') ||
                lower.contains('overwrites');
            if (!warns) {
              missingWarning.add(type);
            }
          }
          expect(
            missingDoc,
            isEmpty,
            reason:
                'Every curated *_iam_binding / *_iam_policy needs '
                'curatedDoc (authoritative / replace semantics).',
          );
          expect(
            missingWarning,
            isEmpty,
            reason:
                'curatedDoc for *_iam_binding / *_iam_policy must mention '
                'authoritative, replace(s), or overwrite(s).',
          );
        },
      );

      test('google_beta/yaml/ loads 112 resources', () {
        final loaded = loadWrapperOverrides(
          rootDir: p.absolute(
            'lib',
            'src',
            'codegen',
            'wrapper_overrides',
            'google_beta',
            'yaml',
          ),
        );
        expect(loaded.resources.length, 112);
        expect(loaded.dataSources, isEmpty);
      });

      test('every google_beta override opts into the gates its --mm-hints lane '
          'feeds (typed helpers, enums, sealed exactly_one_of slots)', () {
        final loaded = loadWrapperOverrides(
          rootDir: p.absolute(
            'lib',
            'src',
            'codegen',
            'wrapper_overrides',
            'google_beta',
            'yaml',
          ),
        );
        final missing = [
          for (final MapEntry(key: type, value: o) in loaded.resources.entries)
            if (!o.deriveNestedTypes ||
                !o.deriveOutputGetters ||
                !o.deriveEnums ||
                !o.deriveExactlyOne)
              type,
        ];
        expect(
          missing,
          isEmpty,
          reason:
              'Set deriveNestedTypes, deriveOutputGetters, deriveEnums '
              'and deriveExactlyOne (wrap-init --provider '
              'hashicorp/google-beta fills them).',
        );
      });

      test('google_beta IAM binding/policy overrides document authoritative '
          'replace semantics', () {
        final loaded = loadWrapperOverrides(
          rootDir: p.absolute(
            'lib',
            'src',
            'codegen',
            'wrapper_overrides',
            'google_beta',
            'yaml',
          ),
        );
        final missingDoc = <String>[];
        final missingWarning = <String>[];
        for (final entry in loaded.resources.entries) {
          final type = entry.key;
          if (!type.endsWith('_iam_binding') && !type.endsWith('_iam_policy')) {
            continue;
          }
          final doc = entry.value.curatedDoc?.trim() ?? '';
          if (doc.isEmpty) {
            missingDoc.add(type);
            continue;
          }
          final lower = doc.toLowerCase();
          final warns =
              lower.contains('authoritative') ||
              lower.contains('replaces') ||
              lower.contains('replace') ||
              lower.contains('overwrite') ||
              lower.contains('overwrites');
          if (!warns) {
            missingWarning.add(type);
          }
        }
        expect(missingDoc, isEmpty);
        expect(missingWarning, isEmpty);
      });
    },
  );

  group('customSlots.<slot>.migrate', () {
    Future<Directory> registry(String yaml) async {
      final dir = await Directory.systemTemp.createTemp('migrate_hint_');
      addTearDown(() => dir.delete(recursive: true));
      await File(p.join(dir.path, 'google_x.yaml')).writeAsString(yaml);
      return dir;
    }

    const slotHead = '''
outputDir: pubsub
paramOrder: [h]
customSlots:
  h:
    paramDeclaration: 'Map<String, Object?>? h'
    argMapEntry: 'if (h != null) ...h,'
''';

    test('kind: manual + reason parses into a MigrateHint', () async {
      final dir = await registry('''
$slotHead    migrate:
      kind: manual
      reason: '  free-form extras merged into the block  '
''');
      final o = YamlOverrideLoader(rootDir: dir.path).load().resources;
      final hint = o['google_x']!.customSlots!['h']!.migrate;
      expect(hint, isNotNull);
      expect(hint!.kind, 'manual');
      expect(hint.reason, 'free-form extras merged into the block');
    });

    test('absent migrate key leaves the hint null', () async {
      final dir = await registry(slotHead);
      final o = YamlOverrideLoader(rootDir: dir.path).load().resources;
      expect(o['google_x']!.customSlots!['h']!.migrate, isNull);
    });

    test('rejects unknown kinds, missing reasons and unknown keys', () async {
      Matcher fails(String substring) => throwsA(
        isA<FormatException>().having(
          (e) => e.message,
          'message',
          contains(substring),
        ),
      );
      final badKind = await registry('''
$slotHead    migrate:
      kind: auto
      reason: x
''');
      expect(
        YamlOverrideLoader(rootDir: badKind.path).load,
        fails('migrate.kind must be "manual"'),
      );
      final noReason = await registry('''
$slotHead    migrate:
      kind: manual
      reason: '   '
''');
      expect(
        YamlOverrideLoader(rootDir: noReason.path).load,
        fails('migrate.reason is required'),
      );
      final unknownKey = await registry('''
$slotHead    migrate:
      kind: manual
      reason: x
      because: y
''');
      expect(
        YamlOverrideLoader(rootDir: unknownKey.path).load,
        fails('migrate has unknown key: because'),
      );
      final notMap = await registry('''
$slotHead    migrate: manual
''');
      expect(
        YamlOverrideLoader(rootDir: notMap.path).load,
        fails('migrate must be a mapping'),
      );
    });
  });
}
