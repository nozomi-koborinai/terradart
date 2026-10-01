import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'constructor_params.dart'
    show
        nestedBlockIsObject,
        orderedDataSourceConstructorParams,
        skipDataSourceAttribute,
        skipNestedBlock;
import 'dart_type_writer.dart';
import 'doc_comment_builder.dart';
import 'getter_emitter.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_emitter.dart';
import 'provider_enums.dart';
import 'references/reference_slots.dart';
import 'references/reference_targets.dart';
import 'sensitive_set_emitter.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// Emits a Factory Wrapper class for **data source** entries
/// (`final class GoogleProject extends Data`).
///
/// Sibling of [WrapperEmitter] (`Resource` entries). The public API
/// mirrors [WrapperEmitter] for symmetry: take a [ResourceDef] (the IR
/// reuses [ResourceDef] for both resource and data source schemas — see
/// `ProviderSchemaIR.dataSources` typed as `Map<String, ResourceDef>`)
/// and produce a single Dart source string. Output is **unformatted**
/// Dart source; consumers feed it through `dart_style.DartFormatter`.
///
/// Usage:
///
/// ```dart
/// final emitter = DataSourceWrapperEmitter(
///   overrides: loadedOverrides.dataSources,
/// );
/// final dartSource = emitter.emit(
///   dataSourceDef,
///   providerSource: 'hashicorp/google',
/// );
/// ```
///
/// Plan 5.X (v0.5.0-dev): the schemantic chain (`$<R>` abstract +
/// `_<R>SchemaInstance` stub + `Data<S>` generic) is retired. The emitted
/// wrapper now:
///
/// - Does NOT emit the schemantic-style abstract `$<R>` class inline.
/// - Does NOT emit the `_<R>SchemaInstance` schema-stub class.
/// - Extends `Data` (no `<S>` generic).
/// - Does NOT pass `schema:` to the `super()` initializer (the field is
///   gone from `Data`).
/// - Emits a file-private `_<r>Sensitive` const (data source schemas are
///   typically empty, so this is `<String>{}` — but the shape is
///   identical to the resource path for consistency).
/// - `sensitiveFields` getter references the file-private const.
class DataSourceWrapperEmitter {
  DataSourceWrapperEmitter({
    required this.overrides,
    this.rawDataSourceSchemas = const {},
    this.providerEnums = ProviderEnums.off,
    this.resourceDirs = const {},
    this.references = const {},
    this.laneInputs = const {},
    this.principals = const {},
    this.principal,
  });

  /// The types whose wrapper carries a `principal` getter.
  final Set<String> principals;

  /// The principal type, for the import [principals] need.
  final ResolvedReference? principal;

  /// The stem of every type the lane wraps (`joinStem`).
  final Map<String, Set<String>> laneInputs;

  /// `--typed-references`: data source type → dotted input path → the
  /// resource that input references. A matched string input is typed
  /// `RefTo<Target>` unless the override already types it.
  final Map<String, Map<String, ResolvedReference>> references;

  /// The inputs the last [emit] typed as references, as
  /// `data.<type>.<path>`.
  final List<String> typedReferences = [];

  /// The `--provider-enums` gate; supplies the nested helpers' enum values.
  final ProviderEnums providerEnums;

  /// Terraform type → `outputDir` of every resource wrapper the same wrap
  /// run emits. A data source whose type is in it reads that resource, so its
  /// wrapper imports the resource's file and carries the resource's `ref`
  /// getter.
  final Map<String, String> resourceDirs;

  /// `Map<terraformType, override>` for data source entries.
  /// Keys must match [ResourceDef.terraformType].
  final Map<String, WrapperOverride> overrides;

  /// Raw provider-schema JSON `block` maps, keyed by Terraform type — same
  /// shape [WrapperEmitter.rawResourceSchemas] consumes. Consulted when an
  /// override sets `deriveNestedTypes: true`.
  final Map<String, Map<String, dynamic>> rawDataSourceSchemas;

  /// Emits the full Dart source string for a single data source wrapper file.
  ///
  /// - [def]: IR for the data source (terraformType + attributes).
  /// - [providerSource]: e.g. `'hashicorp/google'`. Not currently embedded
  ///   in the output (data source wrappers don't carry a `// Source:`
  ///   banner — that's the Layer 1 schema-file's job), but kept in the
  ///   signature for symmetry with [WrapperEmitter.emit] and in case a
  ///   future banner is added.
  ///
  /// The override entry MUST exist for [def.terraformType] in [overrides]
  /// and MUST be [WrapperOverrideKind.dataSource]; [StateError] otherwise.
  String emit(ResourceDef def, {required String providerSource}) {
    final override = overrides[def.terraformType];
    if (override == null) {
      throw StateError(
        'DataSourceWrapperEmitter: no override registered for '
        '"${def.terraformType}". Data source wrappers require an override '
        'entry (paramOrder + extraGetters live there).',
      );
    }
    if (override.kind != WrapperOverrideKind.dataSource) {
      throw StateError(
        'DataSourceWrapperEmitter: override for "${def.terraformType}" has '
        'kind=${override.kind}; expected ${WrapperOverrideKind.dataSource}.',
      );
    }

    final buf = StringBuffer();

    final pascal = dataSourceClassName(def.terraformType);
    final sensitiveConst = filePrivateSensitiveConstName(
      def.terraformType,
    ); // _googleProjectSensitive
    final requiredOverrides = (override.requiredParams ?? const <String>[])
        .toSet();

    // Imports. Same alphabetical-within-`package:`-group convention as the
    // resource emitter; `extraImports` come first so consumers can sort
    // `package:meta` above `package:terradart_core`.
    //
    // Plan 5.X: no `.schema.dart` import (data source Layer 1 retired
    // alongside the resource Layer 1) and no `package:terradart_annotations`
    // import (package deleted).
    final refs = references[def.terraformType] ?? const {};
    final nestedTypeSpecs = override.deriveNestedTypes
        ? collectNestedTypes(
            resourceBlock: _requireRawSchema(def.terraformType),
            resourcePrefix: 'Data${shortResourcePascal(def.terraformType)}',
            customSlotKeys: const <String>{},
            excludedPaths: (override.nestedTypeExcludes ?? const <String>[])
                .toSet(),
            shareIdenticalShapes: override.dedupeNestedTypes,
            enumValues: providerEnums.resolver(null),
            references: (path) => refs[path.join('.')],
            laneInputs: laneInputs,
          )
        : const <NestedBlockSpec>[];
    final dartTypeOverrides =
        override.dartTypeOverrides ?? const <String, String>{};
    final topLevelRefs = <String, ResolvedReference>{
      for (final attr in def.root.attributes)
        if (refs[attr.name] case final ref?)
          if (!skipDataSourceAttribute(attr) &&
              !dartTypeOverrides.containsKey(attr.name))
            attr.name: ref,
    };
    final nestedRefs = <String, ResolvedReference>{};
    void collectNestedRefs(NestedBlockSpec spec, List<String> at) {
      for (final attr in spec.attrs) {
        final ref = attr.reference;
        if (ref != null) nestedRefs[[...at, attr.tfName].join('.')] = ref;
      }
      for (final child in spec.children) {
        collectNestedRefs(child, [...at, child.tfName]);
      }
    }

    for (final spec in nestedTypeSpecs) {
      collectNestedRefs(spec, [spec.tfName]);
    }
    typedReferences
      ..clear()
      ..addAll([
        for (final path in [...topLevelRefs.keys, ...nestedRefs.keys])
          'data.${def.terraformType}.$path',
      ]);

    final extraImports = override.extraImports ?? const <String>[];
    final nestedTypes = nestedTypeSpecs.isEmpty
        ? ''
        : renderNestedTypes(
            nestedTypeSpecs,
            resourceTerraformType: def.terraformType,
          );
    final needsMeta =
        nestedTypes.contains('@immutable') &&
        !extraImports.any((i) => i.contains('package:meta/meta.dart'));
    if (needsMeta) {
      buf.writeln("import 'package:meta/meta.dart';");
    }
    for (final imp in extraImports) {
      buf.writeln(imp);
    }
    buf.writeln("import 'package:terradart_core/terradart_core.dart';");
    final twinDir = resourceDirs[def.terraformType];
    final twinClass = twinDir == null ? null : snakeToPascal(def.terraformType);
    final derivedGetters = override.deriveOutputGetters
        ? emitDerivedOutputGetters(
            def,
            excludeNames: extraGetterNames(override.extraGetters),
            principal: principals.contains(def.terraformType),
          )
        : '';
    final emitsRef =
        twinClass != null &&
        !RegExp(
          r'\bget ref\b',
        ).hasMatch('$derivedGetters${override.extraGetters ?? ''}');
    final refImports = referenceImports([
      for (final ref in [
        ...topLevelRefs.values,
        ...nestedRefs.values,
        if (principals.contains(def.terraformType)) ?principal,
      ])
        if (!emitsRef || ref.target != def.terraformType) ref,
    ]);
    refImports
        .where((i) => i.startsWith("import 'package:"))
        .forEach(buf.writeln);
    if (emitsRef) {
      buf.writeln("import '../$twinDir/${def.terraformType}.dart';");
    }
    refImports
        .where((i) => !i.startsWith("import 'package:"))
        .forEach(buf.writeln);
    buf.writeln();

    // File-leading comment block: a verbatim narrative comment that lives
    // between the import block and the wrapper class. Each line is
    // prefixed with `// `; empty source lines become `//` so the block
    // remains a single contiguous comment to `dart_style`.
    final fileLeadingComment = override.fileLeadingComment;
    if (fileLeadingComment != null) {
      for (final line in fileLeadingComment.split('\n')) {
        if (line.isEmpty) {
          buf.writeln('//');
        } else {
          buf.writeln('// $line');
        }
      }
      buf.writeln();
    }

    // File-private sensitive const, emitted inline. Data source schemas
    // are almost always empty; the emit shape is shared with the resource
    // wrapper so the synth pipeline's `sensitiveFields` lookup is
    // structurally identical for both kinds.
    //
    // `extraSensitiveFields` is sourced from the override; the data
    // source emitter does not take an additional emit-time parameter
    // (no Wave-B-time injection point for data sources).
    final extraSensitive = override.extraSensitiveFields;
    buf.writeln(
      emitFilePrivateSensitiveSet(
        def,
        extraSensitiveFields: (extraSensitive == null || extraSensitive.isEmpty)
            ? null
            : extraSensitive,
      ),
    );
    buf.writeln();

    if (nestedTypes.isNotEmpty) {
      buf.write(nestedTypes);
      buf.writeln();
    }

    // Class-level doc comment. Phase A4: derived deterministically from the
    // IR (same path as WrapperEmitter), with any artisanal `curatedDoc`
    // appended verbatim. The hand-written `classDocComment` fallback was
    // retired with the 2026-07 doc wave; a gate-off override emits no doc.
    if (override.deriveClassDoc) {
      buf.writeln(buildClassDocComment(def, curatedDoc: override.curatedDoc));
    }

    // Wrapper class header — Plan 5.X: `extends Data` (no `<S>` generic).
    // v0.11.0 (ADR-0016): the dollar-prefix sigil on the tfType identifier
    // is retired — name is plain `tfType`, no `// ignore` directive required.
    buf.writeln('final class $pascal extends Data {');
    buf.writeln("  static const String tfType = '${def.terraformType}';");
    buf.writeln();

    // Constructor + super initializer. The slot machinery mirrors
    // WrapperEmitter (paramOrder drives both the param list and the
    // argMap), minus the customSlots / dartTypeOverrides / deprecations /
    // virtual-fan-out machinery — data source overrides don't need any
    // of that (no fan-outs, no `BigQueryConfig` helpers, no deprecation
    // policy). We still respect dartTypeOverrides and requiredOverrides
    // for parity with the resource path; they're cheap.
    final paramOrder = orderedDataSourceConstructorParams(
      def,
      override.paramOrder,
    );
    final argMapOrder = override.argMapOrder ?? paramOrder;
    final paramsByName = _paramsByName(
      def,
      requiredOverrides,
      dartTypeOverrides,
    );
    final argMapByName = _argMapEntriesByName(def, requiredOverrides);
    for (final MapEntry(key: name, value: ref) in topLevelRefs.entries) {
      final attr = def.root.attributes.firstWhere((a) => a.name == name);
      final slot = referenceSlot(
        tfName: name,
        dartName: snakeToDartIdent(name),
        reference: ref,
        required: attr.constraints.required || requiredOverrides.contains(name),
      );
      paramsByName[name] = slot.param;
      argMapByName[name] = slot.argMapEntry;
    }
    for (final spec in nestedTypeSpecs) {
      final isRequired =
          spec.required || requiredOverrides.contains(spec.tfName);
      final slot = nestedTypeConstructorSlot(spec, isRequired: isRequired);
      paramsByName[spec.tfName] = slot.param;
      argMapByName[spec.tfName] = slot.argMapEntry;
    }

    buf.writeln('  $pascal(super.localName, {');
    for (final name in paramOrder) {
      final snippet = paramsByName[name];
      if (snippet == null) {
        throw StateError(
          'DataSourceWrapperEmitter: paramOrder references unknown slot '
          '"$name" for data source "${def.terraformType}". Names must come '
          'from the IR.',
        );
      }
      buf.writeln('    $snippet,');
    }
    buf.writeln('    super.provider,');
    buf.writeln('    super.timeouts,');
    buf.writeln('  }) : super(');
    buf.writeln('         terraformType: tfType,');
    buf.writeln('         argMap: {');
    for (final name in argMapOrder) {
      final snippet = argMapByName[name];
      if (snippet == null) {
        throw StateError(
          'DataSourceWrapperEmitter: argMapOrder references unknown slot '
          '"$name" for data source "${def.terraformType}". Names must come '
          'from the IR.',
        );
      }
      buf.writeln('           $snippet');
    }
    buf.writeln('         },');
    buf.writeln('       );');
    buf.writeln();

    // `sensitiveFields` getter. The const is the inline one we emitted
    // above (not imported), so the getter expression is identical to the
    // resource path's.
    // v0.11.0 (ADR-0016): the `$`-prefix sigil is retired — getter is
    // plain `sensitiveFields`, no `// ignore` directive required.
    buf.writeln('  @override');
    buf.writeln('  Set<String> get sensitiveFields => $sensitiveConst;');

    if (emitsRef) {
      buf
        ..writeln()
        ..write(emitDataSourceRefGetter(def.terraformType, twinClass));
    }

    // Phase A3: derive output-attribute getters (name, id, every readable
    // attribute) from the IR when the override opts in via
    // `deriveOutputGetters: true`. Mirrors WrapperEmitter's path exactly.
    if (derivedGetters.isNotEmpty) {
      buf.writeln();
      buf.write(derivedGetters);
    }

    if (principals.contains(def.terraformType)) {
      buf
        ..writeln()
        ..write(emitPrincipalGetter(data: true));
    }

    // Extra getters (TfRef shortcuts). Same verbatim-with-trailing-newline
    // contract as [WrapperEmitter] — `write`, not `writeln`, with a blank
    // line separator from the sensitive-fields getter.
    final extraGetters = override.extraGetters;
    if (extraGetters != null) {
      buf.writeln();
      buf.write(extraGetters);
    }

    buf.writeln('}');

    return buf.toString();
  }

  // ---------------------------------------------------------------------
  // Slot-name helpers. Trimmed-down copy of WrapperEmitter's helpers —
  // data sources have no nested-block filtering quirks and no customSlots,
  // so the surface is smaller.
  // ---------------------------------------------------------------------

  Map<String, String> _paramsByName(
    ResourceDef def,
    Set<String> requiredOverrides,
    Map<String, String> dartTypeOverrides,
  ) {
    final out = <String, String>{};
    for (final attr in def.root.attributes) {
      if (skipDataSourceAttribute(attr)) continue;
      final isRequired =
          attr.constraints.required || requiredOverrides.contains(attr.name);
      out[attr.name] = _attributeParam(
        attr,
        isRequired: isRequired,
        typeOverride: dartTypeOverrides[attr.name],
      );
    }
    for (final nested in def.root.nestedBlocks) {
      if (_skipNestedBlock(nested)) continue;
      final isRequired =
          nested.constraints.required ||
          requiredOverrides.contains(nested.name);
      out[nested.name] = _nestedBlockParam(nested, isRequired: isRequired);
    }
    return out;
  }

  Map<String, String> _argMapEntriesByName(
    ResourceDef def,
    Set<String> requiredOverrides,
  ) {
    final out = <String, String>{};
    for (final attr in def.root.attributes) {
      if (skipDataSourceAttribute(attr)) continue;
      final isRequired =
          attr.constraints.required || requiredOverrides.contains(attr.name);
      out[attr.name] = _argMapEntry(attr.name, isRequired);
    }
    for (final nested in def.root.nestedBlocks) {
      if (_skipNestedBlock(nested)) continue;
      final isRequired =
          nested.constraints.required ||
          requiredOverrides.contains(nested.name);
      out[nested.name] = _argMapEntry(nested.name, isRequired);
    }
    return out;
  }

  // Delegates to the shared rule so framework-normalized computed-only
  // nested_type attributes stay out of data-source constructors too.
  bool _skipNestedBlock(NestedBlockDef nested) => skipNestedBlock(nested);

  String _attributeParam(
    Attribute attr, {
    required bool isRequired,
    String? typeOverride,
  }) {
    final dartName = snakeToDartIdent(attr.name);
    final dartType = typeOverride ?? writeDartType(attr.type);
    final modifier = isRequired ? 'required ' : '';
    final nullSuffix = isRequired ? '' : '?';
    return '${modifier}TfArg<$dartType>$nullSuffix $dartName';
  }

  String _nestedBlockParam(NestedBlockDef nested, {required bool isRequired}) {
    final dartName = snakeToDartIdent(nested.name);
    final innerType = nestedBlockIsObject(nested)
        ? 'Map<String, dynamic>'
        : 'List<Map<String, dynamic>>';
    final modifier = isRequired ? 'required ' : '';
    final nullSuffix = isRequired ? '' : '?';
    return '${modifier}TfArg<$innerType>$nullSuffix $dartName';
  }

  String _argMapEntry(String snakeName, bool isRequired) {
    final camel = snakeToDartIdent(snakeName);
    if (isRequired) {
      return "'$snakeName': $camel,";
    }
    return "'$snakeName': ?$camel,";
  }

  Map<String, dynamic> _requireRawSchema(String terraformType) {
    final raw = rawDataSourceSchemas[terraformType];
    if (raw == null) {
      throw StateError(
        'DataSourceWrapperEmitter: deriveNestedTypes is set for '
        '"$terraformType" but no raw provider-schema block was supplied '
        '(rawDataSourceSchemas has no entry for this type).',
      );
    }
    return raw;
  }
}
