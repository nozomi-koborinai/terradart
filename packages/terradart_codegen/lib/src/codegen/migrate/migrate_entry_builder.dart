import '../../ir/attribute.dart';
import '../../ir/nested_block.dart';
import '../../ir/resource_def.dart';
import '../constructor_params.dart';
import '../dart_type_writer.dart';
import '../naming.dart';
import '../nested_types/nested_type_collector.dart';
import '../universal_invariants/enum_extractor.dart';
import '../wrapper_overrides/wrapper_override.dart';
import 'helper_class_extractor.dart';
import 'migrate_manifest_data.dart';
import 'migrate_shape_analyzer.dart';
import 'output_getter_extractor.dart';

/// Builds one factory's migration recipe from the SAME inputs the wrapper
/// emitters consume (`ResourceDef` IR, `WrapperOverride`, the raw schema
/// block for `deriveNestedTypes`) plus the just-emitted wrapper source, so
/// the manifest can never drift from the generated Dart API:
///
/// - Top-level slots follow `orderedConstructorParams` /
///   `orderedDataSourceConstructorParams` — the emitter's own slot order.
/// - IR attributes classify from `dartTypeOverrides[name] ??
///   writeDartType(type)` (what `WrapperEmitter._attributeParam` renders).
/// - Derived nested blocks use the `collectNestedTypes` specs the emitter
///   rendered (class name, cardinality, requiredness).
/// - Custom slots are read from their verbatim `paramDeclaration` /
///   `argMapEntry` and resolved against the helper / sealed / enum
///   declarations extracted from the emitted file.
/// - Helper recipes, enum member maps and output getters are extracted
///   from the emitted file (`HelperClassExtractor`, `EnumExtractor`,
///   `extractOutputGetters`).
///
/// Unlike the wrapper emitters this never throws on an unrepresentable
/// shape: such a slot or helper is recorded as manual with a reason, and
/// `terradart lint-override` (rule `migrate-shape-underivable`) decides
/// whether that is an accepted debt.
/// One curated factory's inputs to [buildMigrateEntries].
final class MigrateEntryInput {
  const MigrateEntryInput({
    required this.tfType,
    required this.override,
    required this.def,
    required this.kind,
    required this.emittedSource,
    this.rawSchemaBlock,
  });

  final String tfType;
  final WrapperOverride override;
  final ResourceDef def;

  /// `'resource'` or `'dataSource'` (the catalog's kind vocabulary).
  final String kind;

  /// The formatted wrapper file `terradart wrap` just emitted.
  final String emittedSource;

  /// Raw provider-schema `block` for the type; required when
  /// `override.deriveNestedTypes` is set.
  final Map<String, dynamic>? rawSchemaBlock;
}

/// Builds every factory's recipe against one package-wide symbol table.
///
/// Helper classes and enums are extracted from every emitted file first, so
/// a slot typed with a helper that a *sibling* wrapper file declares (the
/// Eventarc `LoggingConfig` shared by three resources) resolves exactly like
/// a same-file helper. Each build still records only the helpers / enums its
/// own file declares, so the manifest emitter's per-name tables stay
/// one-declaration-per-file.
List<MigrateEntryBuild> buildMigrateEntries(List<MigrateEntryInput> inputs) {
  const helperExtractor = HelperClassExtractor();
  const enumExtractor = EnumExtractor.lenient();
  final perFileHelpers = <HelperExtraction>[];
  final perFileEnums = <List<EmittedEnum>>[];
  for (final input in inputs) {
    perFileHelpers.add(helperExtractor.extract(input.emittedSource));
    perFileEnums.add(enumExtractor.extract(input.emittedSource));
  }
  final ctx = ShapeContext(
    helpers: HelperExtraction.merge(perFileHelpers),
    enumNames: {
      for (final enums in perFileEnums)
        for (final e in enums) e.name,
    },
  );
  return [
    for (var i = 0; i < inputs.length; i++)
      buildMigrateEntry(
        tfType: inputs[i].tfType,
        override: inputs[i].override,
        def: inputs[i].def,
        kind: inputs[i].kind,
        emittedSource: inputs[i].emittedSource,
        rawSchemaBlock: inputs[i].rawSchemaBlock,
        context: ctx,
        fileHelpers: perFileHelpers[i],
        fileEnums: perFileEnums[i],
      ),
  ];
}

/// Builds one factory's recipe. [context] is the symbol table slot types
/// resolve against (package-wide via [buildMigrateEntries], or the file's
/// own when omitted); [fileHelpers] / [fileEnums] default to extracting the
/// file's own declarations.
MigrateEntryBuild buildMigrateEntry({
  required String tfType,
  required WrapperOverride override,
  required ResourceDef def,
  required String kind,
  required String emittedSource,
  Map<String, dynamic>? rawSchemaBlock,
  ShapeContext? context,
  HelperExtraction? fileHelpers,
  List<EmittedEnum>? fileEnums,
}) {
  final isDataSource = kind == 'dataSource';
  final className =
      isDataSource ? dataSourceClassName(tfType) : snakeToPascal(tfType);

  final extraction =
      fileHelpers ?? const HelperClassExtractor().extract(emittedSource);
  final enums =
      fileEnums ?? const EnumExtractor.lenient().extract(emittedSource);
  final ctx = context ??
      ShapeContext(
        helpers: extraction,
        enumNames: {for (final e in enums) e.name},
      );

  final customSlots = override.customSlots ?? const <String, CustomSlot>{};
  final requiredOverrides = (override.requiredParams ?? const []).toSet();
  final dartTypeOverrides = override.dartTypeOverrides ?? const {};

  final specs = <String, NestedBlockSpec>{};
  if (override.deriveNestedTypes) {
    final raw = rawSchemaBlock;
    if (raw == null) {
      throw StateError(
        'buildMigrateEntry: deriveNestedTypes is set for "$tfType" but no '
        'raw provider-schema block was supplied.',
      );
    }
    final collected = collectNestedTypes(
      resourceBlock: raw,
      resourcePrefix: isDataSource
          ? 'Data${shortResourcePascal(tfType)}'
          : shortResourcePascal(tfType),
      customSlotKeys: customSlots.keys.toSet(),
      excludedPaths: (override.nestedTypeExcludes ?? const []).toSet(),
    );
    for (final s in collected) {
      specs[s.tfName] = s;
    }
  }

  final attrs = {for (final a in def.root.attributes) a.name: a};
  final blocks = {for (final b in def.root.nestedBlocks) b.name: b};
  final order = isDataSource
      ? orderedDataSourceConstructorParams(def, override.paramOrder)
      : orderedConstructorParams(def, override.paramOrder);

  final slots = <MigrateSlotData>[];
  for (final name in order) {
    final custom = customSlots[name];
    final spec = specs[name];
    final attr = attrs[name];
    final block = blocks[name];
    if (custom != null) {
      slots.add(_customSlot(name, custom, ctx));
    } else if (spec != null) {
      slots.add(MigrateSlotData(
        tfName: spec.tfName,
        dartName: snakeToDartIdent(spec.tfName),
        kind: MigrateSlotKind.helper,
        required: spec.required || requiredOverrides.contains(name),
        repeated: spec.repeated,
        wrapped: false,
        helper: spec.className,
      ));
    } else if (attr != null) {
      slots
          .add(_attributeSlot(attr, requiredOverrides, dartTypeOverrides, ctx));
    } else if (block != null) {
      slots.add(_passthroughSlot(block, requiredOverrides));
    } else {
      throw StateError(
        'buildMigrateEntry: paramOrder references unknown slot "$name" for '
        '"$tfType".',
      );
    }
  }

  final helpers = <MigrateHelperData>[
    for (final h in extraction.helpers.values) _helper(h, ctx),
  ];

  final enumData = <MigrateEnumData>[
    for (final e in enums)
      MigrateEnumData(
        name: e.name,
        members: {for (final m in e.members.entries) m.value: m.key},
      ),
  ];

  final getters = <MigrateGetterData>[
    for (final g in extractOutputGetters(emittedSource))
      MigrateGetterData(
        tfName: g.tfName,
        dartName: g.dartName,
        dartType: g.dartType,
      ),
  ];

  return MigrateEntryBuild(
    entry: MigrateEntryData(
      tfType: tfType,
      className: className,
      barrel: override.outputDir,
      kind: kind,
      slots: slots,
      getters: getters,
    ),
    helpers: helpers,
    enums: enumData,
  );
}

/// A custom slot with a `<slot>.blockKey:` argMap entry is a *virtual*
/// slot: the chosen variant's key lands directly in the resource's
/// arguments, which is what [MigrateSlotData.merged] means (no Terraform
/// key of its own, so `tfName` is empty).
MigrateSlotData _customSlot(String name, CustomSlot custom, ShapeContext ctx) {
  final parsed = parseCustomSlot(custom);
  final shape = customSlotShape(custom, parsed, ctx);
  return _fromShape(
    shape,
    tfName: parsed.dynamicKey ? '' : (parsed.tfKey ?? name),
    dartName: parsed.dartName,
    required: parsed.required,
    merged: parsed.dynamicKey && !shape.isManual,
  );
}

MigrateSlotData _attributeSlot(
  Attribute attr,
  Set<String> requiredOverrides,
  Map<String, String> dartTypeOverrides,
  ShapeContext ctx,
) {
  final payload = dartTypeOverrides[attr.name] ?? writeDartType(attr.type);
  final shape = resolveEnumPayload(
    classifyDartType('TfArg<$payload>', ctx),
    ctx,
  );
  return _fromShape(
    shape,
    tfName: attr.name,
    dartName: snakeToDartIdent(attr.name),
    required:
        attr.constraints.required || requiredOverrides.contains(attr.name),
  );
}

/// Mirrors `WrapperEmitter._nestedBlockParam`: single-valued nestings
/// collapse to `Map<String, dynamic>`, the rest to
/// `List<Map<String, dynamic>>`.
MigrateSlotData _passthroughSlot(
  NestedBlockDef block,
  Set<String> requiredOverrides,
) {
  final isSingle = block.nesting == NestingMode.single ||
      (block.nesting == NestingMode.list && block.maxItems == 1);
  return MigrateSlotData(
    tfName: block.name,
    dartName: snakeToDartIdent(block.name),
    kind: MigrateSlotKind.passthrough,
    required:
        block.constraints.required || requiredOverrides.contains(block.name),
    dartType: isSingle ? 'Map<String, dynamic>' : 'List<Map<String, dynamic>>',
  );
}

MigrateHelperData _helper(ExtractedHelper h, ShapeContext ctx) {
  final slots = <MigrateSlotData>[];
  for (final f in h.fields) {
    var shape = resolveEnumPayload(classifyDartType(f.typeSource, ctx), ctx);
    if (f.merged) shape = mergedShape(shape);
    slots.add(_fromShape(
      shape,
      tfName: f.tfKey ?? '',
      dartName: f.name,
      required: f.required,
      positional: f.positional,
      merged: f.merged,
    ));
  }
  return MigrateHelperData(
    className: h.name,
    slots: slots,
    reason: h.irregularReason,
  );
}

MigrateSlotData _fromShape(
  SlotShape shape, {
  required String tfName,
  required String dartName,
  required bool required,
  bool positional = false,
  bool merged = false,
}) {
  return MigrateSlotData(
    tfName: tfName,
    dartName: dartName,
    kind: shape.kind,
    required: required,
    repeated: shape.repeated,
    wrapped: shape.wrapped,
    positional: positional,
    merged: merged,
    dartType: shape.dartType,
    helper: shape.helper,
    variants: shape.variants,
    reason: shape.reason,
  );
}
