import '../ir/resource_def.dart';
import 'constructor_params.dart'
    show orderedDataSourceConstructorParams, skipDataSourceAttribute;
import 'constructor_slots.dart';
import 'doc_comment_builder.dart';
import 'enum_emitter.dart';
import 'getter_emitter.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_emitter.dart';
import 'provider_enums.dart';
import 'references/reference_targets.dart';
import 'sensitive_set_emitter.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// Emits a Factory Wrapper class for **data source** entries
/// (`final class DataGoogleProject extends Data`).
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
    final customSlots = override.customSlots ?? const <String, CustomSlot>{};
    final hints = providerEnums.nestedHints(def.terraformType, override);
    final nestedTypeSpecs = override.deriveNestedTypes
        ? collectNestedTypes(
            resourceBlock: _requireRawSchema(def.terraformType),
            resourcePrefix: override.kind.typeStem(def.terraformType),
            customSlotKeys: customSlots.keys.toSet(),
            excludedPaths: (override.nestedTypeExcludes ?? const <String>[])
                .toSet(),
            shareIdenticalShapes: override.dedupeNestedTypes,
            enumValues: hints.enumValues,
            exactlyOneGroups: hints.exactlyOneGroups,
            atMostOneGroups: hints.atMostOneGroups,
            sealedNames: override.sealedNames,
            references: (path) => refs[path.join('.')],
            typeOverrides: override.nestedDartTypeOverrides,
            reserved: hints.reserved,
            laneInputs: laneInputs,
          )
        : const <NestedBlockSpec>[];
    final dartTypeOverrides =
        override.dartTypeOverrides ?? const <String, String>{};
    final paramOrder = orderedDataSourceConstructorParams(
      def,
      override.paramOrder,
    );
    final topLevelRefs = <String, ResolvedReference>{
      for (final name in paramOrder)
        if (refs[name] case final ref?)
          if (!customSlots.containsKey(name) &&
              !dartTypeOverrides.containsKey(name))
            name: ref,
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
        _metaAnnotation.hasMatch('$nestedTypes${override.prelude ?? ''}') &&
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
        ...preludeReferences(refs, override.prelude),
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

    for (final en in topLevelEnums(
      def,
      override,
      laneInputs: laneInputs,
    ).values) {
      buf.writeln(emitEnumDeclaration(en));
    }

    final prelude = override.prelude;
    if (prelude != null) {
      buf.write(prelude);
      buf.writeln();
    }

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

    final argMapOrder = override.argMapOrder ?? paramOrder;
    final slots = ConstructorSlots.wrapper(
      def: def,
      kind: WrapperOverrideKind.dataSource,
      skipAttribute: skipDataSourceAttribute,
      requiredOverrides: requiredOverrides,
      typeOverrides: dartTypeOverrides,
      references: topLevelRefs,
      paramOrder: paramOrder,
      customSlots: customSlots,
      nestedTypeSpecs: nestedTypeSpecs,
    );

    buf.writeln('  $pascal(super.localName, {');
    for (final name in paramOrder) {
      final snippet = slots.parameter(name);
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
      final snippet = slots.argMapEntry(name);
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

final RegExp _metaAnnotation = RegExp(r'@(?:immutable|internal)\b');
