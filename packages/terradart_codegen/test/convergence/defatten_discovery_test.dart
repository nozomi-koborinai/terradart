@Tags(['convergence'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/getter_emitter.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/universal_invariants/enum_extractor.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/ir_merger.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

const _overrideRoot = 'lib/src/codegen/wrapper_overrides/yaml';
const _schemaPath = 'test/fixtures/wrap/source/schema.json';
const _mmDir = 'test/fixtures/wrap/source/mm';

typedef _Setup = ({Map<String, ResourceDef> resources, LoadedOverrides loaded});

_Setup _setup() {
  final schemaSrc = File(_schemaPath).readAsStringSync();
  final baseIr = const SchemaJsonParser().parseString(schemaSrc);

  final mm = <String, MmResourceOverrides>{};
  final mmDirRef = Directory(_mmDir);
  if (mmDirRef.existsSync()) {
    for (final file in mmDirRef.listSync().whereType<File>().where(
      (f) => f.path.endsWith('.yaml'),
    )) {
      final key = p.basenameWithoutExtension(file.path);
      mm[key] = const MmYamlParser().parseString(file.readAsStringSync());
    }
  }

  final ir = mm.isEmpty
      ? baseIr
      : const IrMerger().merge(base: baseIr, overrides: mm);
  final loaded = loadWrapperOverrides(rootDir: _overrideRoot);
  return (resources: ir.resources, loaded: loaded);
}

Set<String> derivableEnumNames(ResourceDef def) => {
  for (final a in def.root.attributes)
    if ((a.constraints.enumValues ?? const <String>[]).isNotEmpty)
      enumName(
        resourceType: def.terraformType,
        fieldPath: a.name,
        members: a.constraints.enumValues!,
      ).dartName,
};

Set<String> derivableGetterNames(ResourceDef def) => RegExp(
  r'\bget (\w+)',
).allMatches(emitDerivedOutputGetters(def)).map((m) => m.group(1)!).toSet();

Set<String> handwrittenEnumNames(String? prelude) => prelude == null
    ? <String>{}
    : const EnumExtractor().extract(prelude).map((e) => e.name).toSet();

Set<String> handwrittenGetterNames(String? extra) => extra == null
    ? <String>{}
    : RegExp(r'\bget (\w+)').allMatches(extra).map((m) => m.group(1)!).toSet();

String classifyDoc(WrapperOverride o) {
  if (o.deriveClassDoc) {
    return o.curatedDoc != null ? 'derived+frozen' : 'derived';
  }
  return 'none';
}

void main() {
  test('discovery harness loads overrides and IR', () {
    final result = _setup();
    expect(
      result.loaded.resources,
      isNotEmpty,
      reason: 'loadWrapperOverrides must return at least one resource entry',
    );
    expect(
      result.resources,
      isNotEmpty,
      reason: 'merged IR must contain at least one resource',
    );
  });

  test('classification splits covered vs curated-only', () {
    final result = _setup();

    const capacityType = 'google_bigquery_capacity_commitment';
    final capacityDef = result.resources[capacityType];
    expect(
      capacityDef,
      isNotNull,
      reason: '$capacityType must exist in fixture schema',
    );
    final capacityOverride = result.loaded.resources[capacityType];
    expect(
      capacityOverride,
      isNotNull,
      reason: '$capacityType override must be loaded',
    );

    final capacityHandwritten = handwrittenEnumNames(capacityOverride!.prelude);
    expect(
      capacityHandwritten,
      hasLength(3),
      reason: 'expected 3 hand-written prelude enums',
    );

    final capacityDerivable = derivableEnumNames(capacityDef!);
    final capacityCuratedOnly = capacityHandwritten.difference(
      capacityDerivable,
    );
    expect(
      capacityCuratedOnly,
      equals(capacityHandwritten),
      reason:
          'all 3 capacity_commitment enums must be curated-only '
          '(no schema enumValues for plan/renewal_plan/edition)',
    );

    const pubsubTopicType = 'google_pubsub_topic';
    final pubsubTopicDef = result.resources[pubsubTopicType];
    expect(
      pubsubTopicDef,
      isNotNull,
      reason: '$pubsubTopicType must exist in fixture schema',
    );

    final topicDerivable = derivableGetterNames(pubsubTopicDef!);
    expect(
      topicDerivable.intersection({'name', 'id'}),
      equals({'name', 'id'}),
      reason: 'name and id must be derivable for google_pubsub_topic',
    );
  });

  test('classifyDoc keys on derive gates, not null classDocComment', () {
    final result = _setup();

    final schema = result.loaded.resources['google_pubsub_schema'];
    expect(schema, isNotNull, reason: 'pubsub schema override must load');
    expect(schema!.deriveClassDoc, isTrue, reason: 'pubsub schema is migrated');
    expect(schema.curatedDoc, isNotNull);
    expect(
      classifyDoc(schema),
      'derived+frozen',
      reason: 'migrated + curatedDoc must classify as derived+frozen, not none',
    );

    final iam = result.loaded.resources['google_project_iam_custom_role'];
    expect(iam, isNotNull);
    expect(iam!.deriveClassDoc, isTrue);
    expect(classifyDoc(iam), 'derived+frozen');

    final member = result.loaded.resources['google_project_iam_member'];
    expect(member, isNotNull);
    expect(member!.deriveClassDoc, isTrue);
    expect(classifyDoc(member), 'derived+frozen');
  });

  test('emit de-fatten discovery report', () {
    final result = _setup();

    final rows = <String>[];
    var skipped = 0;

    rows.add(
      [
        'type',
        'outputDir',
        'enumsCoveredOfTotal',
        'curatedOnlyEnums',
        'gettersCoveredOfTotal',
        'renameKeepGetters',
        'doc',
      ].join('\t'),
    );

    for (final entry in result.loaded.entries) {
      final type = entry.key;
      final override = entry.value;

      final def = result.resources[type];
      if (def == null) {
        skipped++;
        continue;
      }

      final hwEnums = handwrittenEnumNames(override.prelude);
      final derivEnums = derivableEnumNames(def);
      final coveredEnums = hwEnums.intersection(derivEnums);
      final curatedOnlyEnums = hwEnums.difference(derivEnums);

      final hwGetters = handwrittenGetterNames(override.extraGetters);
      final derivGetters = derivableGetterNames(def);
      final coveredGetters = hwGetters.intersection(derivGetters);
      final renameKeepGetters = hwGetters.difference(derivGetters);

      final docClass = classifyDoc(override);

      rows.add(
        [
          type,
          override.outputDir,
          '${coveredEnums.length}/${hwEnums.length}',
          curatedOnlyEnums.isEmpty
              ? '-'
              : (curatedOnlyEnums.toList()..sort()).join(';'),
          '${coveredGetters.length}/${hwGetters.length}',
          renameKeepGetters.isEmpty
              ? '-'
              : (renameKeepGetters.toList()..sort()).join(';'),
          docClass,
        ].join('\t'),
      );
    }

    final tsvPath = p.join(Directory.systemTemp.path, 'defatten_discovery.tsv');
    File(tsvPath).writeAsStringSync(rows.join('\n'));

    // ignore: avoid_print
    print(
      'DEFATTEN DISCOVERY: checked=${rows.length - 1} skipped=$skipped '
      'report=$tsvPath',
    );

    expect(
      (rows.length - 1) + skipped,
      equals(result.loaded.length),
      reason: 'rows + skipped must equal total loaded overrides',
    );
  });
}
