import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/data_source_wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/exactly_one_derivation.dart';
import 'package:terradart_codegen/src/codegen/generated_file_header.dart';
import 'package:terradart_codegen/src/codegen/package_formatter.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/provider_schema_ir.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

late final ResourceDef _googleProject;

void main() {
  setUpAll(() {
    final src = File(
      p.join('test', 'fixtures', 'schema', 'google_project_v7.schema.json'),
    ).readAsStringSync();
    final ir = const SchemaJsonParser().parseString(
      src,
      providerVersion: '7.31.0',
    );
    _googleProject = ir.dataSources['google_project']!;
  });

  group('DataSourceWrapperEmitter', () {
    test('L2b-1 minimal: emits Data wrapper header (no schema generic)', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(out, contains('final class DataGoogleProject extends Data {'));
    });

    test(
      'L2b-2 Level A: production yaml emit matches golden byte-for-byte',
      () {
        final overrides = loadWrapperOverrides(
          rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
        ).dataSources;
        final emitter = DataSourceWrapperEmitter(overrides: overrides);
        final raw = emitter.emit(
          _googleProject,
          providerSource: 'hashicorp/google',
        );
        final formatter = packageFormatter('../terradart_google');
        final String formatted;
        try {
          formatted = formatter.format(raw);
        } on FormatterException catch (e) {
          fail('Emitter output does not parse as Dart:\n$e\n--- raw ---\n$raw');
        }
        final actual = '$generatedFileHeader$formatted';
        final expected = File(
          'test/golden/google_project.factory.expected.dart.golden',
        ).readAsStringSync();
        expect(actual, equals(expected));
      },
    );

    test('L2b-3 extraGetters: injected verbatim into the wrapper class', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
        extraGetters:
            "  TfRef<String> get number => TfRef.attribute<String>(this, 'number');\n",
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(
        out,
        contains(
          "TfRef<String> get number => TfRef.attribute<String>(this, 'number');",
        ),
      );
    });

    test('a data source with a resource twin carries its ref getter', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
      );
      String emit({required Map<String, String> resourceDirs, String? extra}) =>
          DataSourceWrapperEmitter(
            overrides: {
              'google_project': extra == null
                  ? override
                  : WrapperOverride(
                      kind: WrapperOverrideKind.dataSource,
                      outputDir: 'data',
                      schemaStubBodyMode: SchemaStubBodyMode.bare,
                      paramOrder: const ['project_id'],
                      extraGetters: extra,
                    ),
            },
            resourceDirs: resourceDirs,
          ).emit(_googleProject, providerSource: 'hashicorp/google');

      final twin = emit(resourceDirs: {'google_project': 'resourcemanager'});
      expect(
        twin,
        contains("import '../resourcemanager/google_project.dart';"),
      );
      expect(twin, contains('RefTo<GoogleProject> get ref =>'));
      expect(
        twin,
        contains('RefTo.read(this); // ignore: invalid_use_of_internal_member'),
      );

      final orphan = emit(resourceDirs: const {});
      expect(orphan, isNot(contains('RefTo')));

      final taken = emit(
        resourceDirs: {'google_project': 'resourcemanager'},
        extra:
            "  TfRef<String> get ref => TfRef.attribute<String>(this, 'ref');\n",
      );
      expect(taken, isNot(contains('RefTo')));
    });

    test('L2b-4: extends Data and not Resource', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(out, contains('extends Data '));
      expect(out, isNot(contains('extends Resource ')));
      expect(out, isNot(contains('extends Resource<')));
    });

    test('L2b-5 sensitive set: emitted inline as file-private empty const', () {
      const override = WrapperOverride(
        kind: WrapperOverrideKind.dataSource,
        outputDir: 'data',
        schemaStubBodyMode: SchemaStubBodyMode.bare,
        paramOrder: ['project_id'],
      );
      final emitter = DataSourceWrapperEmitter(
        overrides: {'google_project': override},
      );
      final out = emitter.emit(
        _googleProject,
        providerSource: 'hashicorp/google',
      );
      expect(
        out,
        contains('const Set<String> _googleProjectSensitive = <String>{}'),
      );
    });

    test('a sealed group is one required argument and its sealed type', () {
      Attribute attr(String name, {bool required = false}) => Attribute(
        name: name,
        type: const StringType(),
        constraints: required
            ? const Constraints(required: true)
            : const Constraints(optional: true),
      );
      final def = ResourceDef(
        terraformType: 'azurerm_image',
        root: BlockDef(
          attributes: [
            attr('name'),
            attr('name_regex'),
            attr('resource_group_name', required: true),
          ],
        ),
      );
      final derived = deriveExactlyOneSlots(
        const LoadedOverrides(
          resources: {},
          dataSources: {
            'azurerm_image': WrapperOverride(
              kind: WrapperOverrideKind.dataSource,
              outputDir: 'data',
              deriveExactlyOne: true,
            ),
          },
        ),
        ProviderSchemaIR(
          providerName: 'azurerm',
          providerSource: 'hashicorp/azurerm',
          providerVersion: '4.0.0',
          resources: const {},
          dataSources: {'azurerm_image': def},
        ),
        providerEnums: const ProviderEnums.on(
          dataSources: KindHints(
            exactlyOne: {
              'azurerm_image': [
                ['name', 'name_regex'],
              ],
            },
          ),
        ),
        rawSchemas: (resources: const {}, dataSources: const {}),
      );

      final out = DataSourceWrapperEmitter(
        overrides: derived.overrides.dataSources,
      ).emit(def, providerSource: 'hashicorp/azurerm');

      expect(out, contains("import 'package:meta/meta.dart';"));
      expect(out, contains('sealed class DataImageName {'));
      expect(out, contains('required DataImageName name,'));
      expect(out, contains('...name.argMap,'));
      expect(out, isNot(contains('TfArg<String>? name,')));
    });
  });
}
