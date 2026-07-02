import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'constructor_params.dart';
import 'dart_type_writer.dart';
import 'doc_comment_builder.dart';
import 'enum_emitter.dart';
import 'getter_emitter.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_emitter.dart';
import 'sensitive_set_emitter.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// Emits a Factory Wrapper class (`final class GoogleFoo extends Resource`)
/// for a [ResourceDef].
///
/// Output is **unformatted** Dart source; consumers feed it through
/// `dart_style.DartFormatter`.
///
/// Hand-curated deltas (class doc comment, parameter ordering, extra TfRef
/// getters, required-param tighten) live under `wrapper_overrides/` and are
/// passed in via [overrides] keyed by Terraform type. Resources without an
/// entry fall back to IR-natural defaults.
///
/// Phase 2.3: the registry is no longer a `const` map — `loadWrapperOverrides`
/// builds it from `wrapper_overrides/yaml/*.yaml` at startup, so the emitter
/// receives the resolved map via constructor DI rather than referencing a
/// global symbol.
///
/// Plan 5.X (v0.5.0-dev): the schemantic chain (`$<R>` abstract +
/// `_<R>SchemaInstance` stub + `Resource<S>` generic) is retired. The
/// emitted wrapper now:
///
/// - Does NOT emit the `_<R>SchemaInstance` stub class or any reference to
///   `$<R>` abstract types.
/// - Does NOT import `package:terradart_google/src/generated/<r>.schema.dart`
///   (the file is being deleted in Wave B).
/// - Does NOT import `package:terradart_annotations`.
/// - Extends `Resource` (no `<S>` generic).
/// - Does NOT pass `schema:` to the `super()` initializer (the field is gone
///   from `Resource`).
/// - Emits a file-private `_<r>Sensitive` const at the top of the file (with
///   schema-derived sensitive paths + [WrapperOverride.extraSensitiveFields]
///   merged in) — replacing the previous import of the public `<r>Sensitive`
///   const from `.schema.dart`.
/// - The `sensitiveFields` getter references the new file-private const.
class WrapperEmitter {
  WrapperEmitter({required this.overrides, this.rawResourceSchemas = const {}});

  final Map<String, WrapperOverride> overrides;

  /// Raw provider-schema JSON `block` maps, keyed by Terraform type — the
  /// shape `collectNestedTypes` consumes (`block_types` / `nesting_mode` /
  /// `min_items`, etc.), which the parsed [ResourceDef] IR no longer carries
  /// once `SchemaJsonParser` has flattened it into [Attribute] /
  /// [NestedBlockDef]. Only consulted when an override sets
  /// `deriveNestedTypes: true`; `wrap_command.dart` builds this lazily (only
  /// decoding schema.json a second time when at least one loaded override
  /// needs it), so callers that never flip the gate — every committed
  /// override today — can omit this entirely.
  final Map<String, Map<String, dynamic>> rawResourceSchemas;

  /// Emits the wrapper file source.
  ///
  /// [extraSensitiveFields] (optional) lists additional field paths to add
  /// to the emitted `_<r>Sensitive` const, on top of the schema-derived set.
  /// This used to be threaded through the Layer 1 abstract-class emitter
  /// (the public const lived in `<r>.schema.dart`); Plan 5.X moves the
  /// const inline into the wrapper file, so the parameter is consumed here.
  String emit(
    ResourceDef def, {
    required String providerSource,
    List<String>? extraSensitiveFields,
  }) {
    final buf = StringBuffer();

    final pascal = snakeToPascal(def.terraformType); // GooglePubsubTopic
    final sensitiveConst = filePrivateSensitiveConstName(
      def.terraformType,
    ); // _googlePubsubTopicSensitive

    final override = overrides[def.terraformType];
    final requiredOverrides =
        (override?.requiredParams ?? const <String>[]).toSet();
    // Hoisted ahead of its historical position (immediately before the
    // constructor section) because the `deriveNestedTypes` gate below needs
    // `customSlotKeys` before it renders the prelude section — customSlots
    // itself doesn't depend on anything emitted in between.
    final customSlots = override?.customSlots ?? const <String, CustomSlot>{};

    // Imports. `extraImports` is emitted FIRST so that `package:meta` (the
    // common case for hand-written helper classes that decorate themselves
    // with `@immutable`) sorts above `package:terradart_core` — both live
    // in the `package:` group and the project convention is alphabetical
    // within the group.
    //
    // Plan 5.X: no `.schema.dart` import (deleted) and no
    // `package:terradart_annotations` import (package deleted). Only
    // `package:terradart_core` + override-supplied `extraImports`.
    final extraImports = override?.extraImports ?? const <String>[];
    for (final imp in extraImports) {
      buf.writeln(imp);
    }
    buf.writeln("import 'package:terradart_core/terradart_core.dart';");
    buf.writeln();

    // File-private sensitive const, emitted inline (replacing the previous
    // public `<r>Sensitive` const that lived in `.schema.dart`). The const
    // is computed identically by `sensitive_set_emitter` — only the name
    // changes (file-private leading underscore) and the location moves from
    // a sibling Layer 1 file into the wrapper itself.
    //
    // `extraSensitiveFields` is the union of:
    //   - Wave-B-time `extraSensitiveFields` parameter (forwarded from
    //     `wrap_command.dart`, sourced from the override's yaml axis).
    //   - The override's own `extraSensitiveFields` field, which the
    //     wrap command also reads from the same yaml axis.
    // Plan 5.X consolidates both into the inline const so the masking
    // behavior is unchanged.
    final mergedExtras = <String>{
      ...?extraSensitiveFields,
      ...?override?.extraSensitiveFields,
    }.toList()
      ..sort();
    buf.writeln(
      emitFilePrivateSensitiveSet(
        def,
        extraSensitiveFields: mergedExtras.isEmpty ? null : mergedExtras,
      ),
    );
    buf.writeln();

    // Phase A1: derive top-level `TerraformEnum` declarations from the
    // MM-enriched IR when the override opts in via `deriveEnums: true`. Each
    // top-level attribute carrying `enumValues` becomes a generated enum,
    // replacing the hand-written `prelude` enum block. Nested-block enums are
    // out of scope for A1 (top-level attributes only).
    if (override?.deriveEnums ?? false) {
      for (final attr in def.root.attributes) {
        final values = attr.constraints.enumValues;
        if (values == null || values.isEmpty) continue;
        final en = enumName(
          resourceType: def.terraformType,
          fieldPath: attr.name,
          members: values,
        );
        buf.writeln(emitEnumDeclaration(en));
      }
    }

    // Prelude (sealed types + helper classes the hand-written wrapper
    // ships inline). Plan 5.X: the schema-stub class is gone, so the
    // prelude now sits directly between the sensitive const and the
    // wrapper class doc comment. The override's prelude string is
    // verbatim and must already end with a single `\n`; the emitter
    // brackets it with one blank line on each side. `dart_style` later
    // collapses any double-blank-lines the override accidentally
    // introduces.
    final prelude = override?.prelude;
    if (prelude != null) {
      buf.write(prelude);
      buf.writeln();
    }

    // `deriveNestedTypes` gate: derive a typed `@immutable` helper class
    // (plus any attribute `TerraformEnum`s) for each of this resource's
    // TOP-LEVEL nested blocks from the RAW provider-schema JSON —
    // `collectNestedTypes` needs `block_types` / `nesting_mode` / etc., which
    // the parsed IR no longer carries. `customSlots.keys` marks subtrees the
    // hand-written override already owns (the collector skips them
    // entirely, at any depth); `nestedTypeExcludes` marks additional
    // subtrees left as the generic passthrough. Dark by construction: no
    // committed override sets `deriveNestedTypes`, so `nestedTypeSpecs` is
    // always `const []` today and this whole block is a no-op.
    final nestedTypeSpecs = (override?.deriveNestedTypes ?? false)
        ? collectNestedTypes(
            resourceBlock: _requireRawSchema(def.terraformType),
            resourcePrefix: shortResourcePascal(def.terraformType),
            customSlotKeys: customSlots.keys.toSet(),
            excludedPaths:
                (override?.nestedTypeExcludes ?? const <String>[]).toSet(),
          )
        : const <NestedBlockSpec>[];
    if (nestedTypeSpecs.isNotEmpty) {
      buf.write(renderNestedTypes(
        nestedTypeSpecs,
        resourceTerraformType: def.terraformType,
      ));
      buf.writeln();
    }

    // Class-level doc comment. Phase A4: derived deterministically from the
    // IR when `deriveClassDoc: true` — `Factory wrapper for <type>`, then the
    // resource summary rewrapped from `ResourceDef.description` (merged from
    // the MM YAML), then any artisanal `curatedDoc` (③ frozen) verbatim.
    // The hand-written `classDocComment` fallback was retired with the
    // 2026-07 doc wave; a gate-off override emits no class doc.
    if (override?.deriveClassDoc ?? false) {
      buf.writeln(buildClassDocComment(def, curatedDoc: override?.curatedDoc));
    }

    // Wrapper class header. Plan 5.X: `extends Resource` (no `<S>` generic).
    // v0.11.0 (ADR-0016): the dollar-prefix sigil on the tfType identifier
    // is retired — name is plain `tfType`, no `// ignore` directive required.
    buf.writeln('final class $pascal extends Resource {');
    buf.writeln("  static const String tfType = '${def.terraformType}';");
    buf.writeln();

    // Constructor signature + super initializer. Parameter ordering and
    // requiredness come from the override when present, otherwise
    // IR-natural (alphabetical, schema-derived required flag).
    //
    // Slot resolution layers customSlots ON TOP of IR-derived snippets,
    // so a customSlot named after an IR slot replaces the IR rendering
    // (e.g. `bigquery_config` → helper-typed `BigQueryConfig?`), and a
    // customSlot named after a *virtual* slot adds it (e.g.
    // scheduler_job's `target`). IR slots that the override omits from
    // paramOrder are silently skipped — this is how virtual-fan-out
    // suppresses the schema's individual `pubsub_target` /
    // `http_target` / `app_engine_http_target` blocks.
    final paramOrder = orderedConstructorParams(def, override?.paramOrder);
    final argMapOrder = override?.argMapOrder ?? paramOrder;
    final dartTypeOverrides =
        override?.dartTypeOverrides ?? const <String, String>{};
    final deprecations = override?.deprecatedParams ?? const <String, String>{};
    final paramsByName = _paramsByName(
      def,
      requiredOverrides,
      dartTypeOverrides,
      deprecations,
    );
    final argMapByName = _argMapEntriesByName(def, requiredOverrides);
    for (final entry in customSlots.entries) {
      paramsByName[entry.key] = entry.value.paramDeclaration;
      argMapByName[entry.key] = entry.value.argMapEntry;
    }
    // Replace the generic passthrough for every TOP-LEVEL `deriveNestedTypes`
    // spec with its typed rendering. Keys never collide with the customSlots
    // loop above: `collectNestedTypes` skips any subtree rooted at a
    // `customSlots` key entirely (see `customSlotKeys` above), so a spec can
    // never share a `tfName` with a customSlot entry.
    for (final spec in nestedTypeSpecs) {
      final isRequired =
          spec.required || requiredOverrides.contains(spec.tfName);
      final slot = _nestedTypeSlot(spec, isRequired: isRequired);
      paramsByName[spec.tfName] = slot.param;
      argMapByName[spec.tfName] = slot.argMapEntry;
    }

    buf.writeln('  $pascal({');
    buf.writeln('    required super.localName,');
    for (final name in paramOrder) {
      final snippet = paramsByName[name];
      if (snippet == null) {
        throw StateError(
          'WrapperEmitter: paramOrder references unknown slot "$name" for '
          'resource "${def.terraformType}". Names must come from the IR or '
          'be defined in customSlots.',
        );
      }
      buf.writeln('    $snippet,');
    }
    buf.writeln('    super.lifecycle,');
    buf.writeln('    super.dependsOn,');
    buf.writeln('  }) : super(');
    buf.writeln('         terraformType: tfType,');
    buf.writeln('         argMap: {');
    for (final name in argMapOrder) {
      final snippet = argMapByName[name];
      if (snippet == null) {
        throw StateError(
          'WrapperEmitter: argMapOrder references unknown slot "$name" for '
          'resource "${def.terraformType}". Names must come from the IR or '
          'be defined in customSlots.',
        );
      }
      buf.writeln('           $snippet');
    }
    buf.writeln('         },');
    buf.writeln('       );');
    buf.writeln();

    // `sensitiveFields` getter delegates to the const Set generated by
    // `sensitive_set_emitter` (imported in the file header).
    // v0.11.0 (ADR-0016): the `$`-prefix sigil is retired — getter is
    // plain `sensitiveFields`, no `// ignore` directive required. The
    // base class declares it `@protected`, so the override does not
    // restate the annotation (per package:meta convention, `@protected`
    // propagates to overrides automatically).
    buf.writeln('  @override');
    buf.writeln('  Set<String> get sensitiveFields => $sensitiveConst;');

    // `supportsDeletionProtection` override. Emitted only when the resource
    // schema exposes a top-level `deletion_protection` attribute, indicating
    // the Terraform provider honours the soft-delete guard at runtime. The
    // base class defaults to `false`; this override opts the wrapper in.
    final hasDeletionProtection =
        def.root.attributes.any((a) => a.name == 'deletion_protection');
    if (hasDeletionProtection) {
      buf.writeln();
      buf.writeln('  @override');
      buf.writeln('  bool get supportsDeletionProtection => true;');
    }

    // Phase A3: derive output-attribute getters (nameRef, id, pure
    // computed-only) from the IR when the override opts in via
    // `deriveOutputGetters: true`. Hand-written `extraGetters` remain for
    // genuine exceptions (e.g. semantic renames like `member` -> `iamMember`,
    // or a kept narrower type like `TfRef<int> get executionCount`) and are
    // emitted after this derived block. Any getter name already hand-written
    // in `extraGetters` is excluded from derivation so the hand-written one
    // wins (no `duplicate_definition`).
    if (override?.deriveOutputGetters ?? false) {
      final derived = emitDerivedOutputGetters(
        def,
        excludeNames: _extraGetterNames(override?.extraGetters),
      );
      if (derived.isNotEmpty) {
        buf.writeln();
        buf.write(derived);
      }
    }

    // Extra getters (TfRef shortcuts, etc.) inserted from the override.
    // The override snippet already carries indent and trailing newline, so
    // we use `write`, not `writeln`. A blank line separator is emitted before
    // this block.
    final extraGetters = override?.extraGetters;
    if (extraGetters != null) {
      buf.writeln();
      buf.write(extraGetters);
    }

    // Close wrapper class.
    buf.writeln('}');

    return buf.toString();
  }

  /// Extracts the Dart getter names declared in a hand-written `extraGetters`
  /// snippet (e.g. `executionCount` from `TfRef<int> get executionCount =>`).
  /// These are excluded from output-getter derivation so a hand-written getter
  /// (kept for a semantic rename or a narrower type) shadows the derived one
  /// instead of colliding with it.
  static Set<String> _extraGetterNames(String? extraGetters) {
    if (extraGetters == null) return const {};
    return RegExp(r'\bget (\w+)')
        .allMatches(extraGetters)
        .map((m) => m.group(1)!)
        .toSet();
  }

  // ---------------------------------------------------------------------
  // Slot-name helpers. The wrapper has three "slot" surfaces (constructor
  // params, argMap entries, and the override's paramOrder list) that all
  // address the same set of inputs by snake-case name. We build a name →
  // snippet map once per emit and look up snippets in whatever order the
  // override (or IR default) specifies.
  // ---------------------------------------------------------------------

  /// Builds a snake-case-name → constructor-param-snippet map.
  ///
  /// `requiredOverrides` lists slot names the override wants to force
  /// `required` regardless of the schema's `required` flag (Phase 2.2 use
  /// case: `google_cloud_tasks_queue_iam_member` makes `location`
  /// required even though Terraform marks it `optional + computed`).
  Map<String, String> _paramsByName(
    ResourceDef def,
    Set<String> requiredOverrides,
    Map<String, String> dartTypeOverrides,
    Map<String, String> deprecations,
  ) {
    final out = <String, String>{};
    for (final attr in def.root.attributes) {
      if (skipAttribute(attr)) continue;
      final isRequired =
          attr.constraints.required || requiredOverrides.contains(attr.name);
      out[attr.name] = _attributeParam(
        attr,
        isRequired: isRequired,
        typeOverride: dartTypeOverrides[attr.name],
        deprecation: deprecations[attr.name],
      );
    }
    for (final nested in def.root.nestedBlocks) {
      if (skipNestedBlock(nested)) continue;
      final isRequired = nested.constraints.required ||
          requiredOverrides.contains(nested.name);
      out[nested.name] = _nestedBlockParam(nested, isRequired: isRequired);
    }
    return out;
  }

  /// Builds a snake-case-name → argMap-entry-snippet map. The required /
  /// optional shape mirrors [_paramsByName] so the two are always in sync.
  Map<String, String> _argMapEntriesByName(
    ResourceDef def,
    Set<String> requiredOverrides,
  ) {
    final out = <String, String>{};
    for (final attr in def.root.attributes) {
      if (skipAttribute(attr)) continue;
      final isRequired =
          attr.constraints.required || requiredOverrides.contains(attr.name);
      out[attr.name] = _argMapEntry(attr.name, isRequired);
    }
    for (final nested in def.root.nestedBlocks) {
      if (skipNestedBlock(nested)) continue;
      final isRequired = nested.constraints.required ||
          requiredOverrides.contains(nested.name);
      out[nested.name] = _argMapEntry(nested.name, isRequired);
    }
    return out;
  }

  // ---------------------------------------------------------------------
  // Snippet builders.
  // ---------------------------------------------------------------------

  /// Renders `[required] TfArg<DartType>[?] camelName` for a scalar
  /// attribute. The Dart type comes from `writeDartType` (the same
  /// renderer abstract class getters use).
  String _attributeParam(
    Attribute attr, {
    required bool isRequired,
    String? typeOverride,
    String? deprecation,
  }) {
    final dartName = snakeToCamel(attr.name);
    final dartType = typeOverride ?? writeDartType(attr.type);
    final modifier = isRequired ? 'required ' : '';
    final nullSuffix = isRequired ? '' : '?';
    final base = '${modifier}TfArg<$dartType>$nullSuffix $dartName';
    if (deprecation == null) return base;
    final escaped = deprecation.replaceAll(r'\', r'\\').replaceAll("'", r"\'");
    return "@Deprecated('$escaped') $base";
  }

  /// Renders `[required] TfArg<Map|List<Map>>[?] camelName` for a nested
  /// block, collapsing single-valued nestings (`single` or
  /// `list && maxItems == 1`) to `Map<String, dynamic>` and the rest to
  /// `List<Map<String, dynamic>>`.
  String _nestedBlockParam(
    NestedBlockDef nested, {
    required bool isRequired,
  }) {
    final dartName = snakeToCamel(nested.name);
    final isSingle = nested.nesting == NestingMode.single ||
        (nested.nesting == NestingMode.list && nested.maxItems == 1);
    final innerType =
        isSingle ? 'Map<String, dynamic>' : 'List<Map<String, dynamic>>';
    final modifier = isRequired ? 'required ' : '';
    final nullSuffix = isRequired ? '' : '?';
    return '${modifier}TfArg<$innerType>$nullSuffix $dartName';
  }

  /// Renders the matching argMap entry. Required slots are unconditional;
  /// optional ones are `if`-guarded so the synth pass distinguishes
  /// "unset" from "explicit null".
  String _argMapEntry(String snakeName, bool isRequired) {
    final camel = snakeToCamel(snakeName);
    if (isRequired) {
      return "'$snakeName': $camel,";
    }
    return "if ($camel != null) '$snakeName': $camel,";
  }

  /// Builds the constructor-param and argMap-entry snippets for one
  /// TOP-LEVEL `deriveNestedTypes` spec, replacing [_nestedBlockParam] /
  /// [_argMapEntry]'s generic `TfArg<Map<String, dynamic>>?` passthrough for
  /// that slot.
  ///
  /// Mirrors the hand-written idiom [CustomSlot]'s doc comment describes
  /// (e.g. `google_pubsub_subscription.bigquery_config`): the constructor
  /// exposes a bare (non-`TfArg`) helper-class reference —
  /// [nestedParamType]'s shape, required-ness stripped per its own
  /// documented contract ("a caller rendering a required slot strips the
  /// trailing `?` itself") — and the argMap entry wraps its `.encode()`
  /// output in `TfArg.literal(...)` so it satisfies `Resource.argMap`'s
  /// `Map<String, TfArg<dynamic>?>` contract.
  ({String param, String argMapEntry}) _nestedTypeSlot(
    NestedBlockSpec spec, {
    required bool isRequired,
  }) {
    final dartName = snakeToCamel(spec.tfName);
    final nullableType = nestedParamType(spec);
    final bareType = nullableType.substring(0, nullableType.length - 1);
    final param =
        isRequired ? 'required $bareType $dartName' : '$nullableType $dartName';

    final String encodeExpr;
    if (spec.repeated) {
      encodeExpr = isRequired
          ? '[for (final e in $dartName) e.encode()]'
          : '[for (final e in $dartName!) e.encode()]';
    } else {
      encodeExpr = isRequired ? '$dartName.encode()' : '$dartName!.encode()';
    }
    final entry = "'${spec.tfName}': TfArg.literal($encodeExpr),";
    final argMapEntry = isRequired ? entry : 'if ($dartName != null) $entry';
    return (param: param, argMapEntry: argMapEntry);
  }

  /// Looks up [terraformType]'s raw provider-schema `block` map in
  /// [rawResourceSchemas], failing loudly when it's missing — this only
  /// happens when a caller sets `deriveNestedTypes: true` without also
  /// supplying the matching raw schema (a wiring bug, not a data problem;
  /// `wrap_command.dart` always supplies it once any loaded override needs
  /// it).
  Map<String, dynamic> _requireRawSchema(String terraformType) {
    final raw = rawResourceSchemas[terraformType];
    if (raw == null) {
      throw StateError(
        'WrapperEmitter: deriveNestedTypes is set for "$terraformType" but '
        'no raw provider-schema block was supplied (rawResourceSchemas has '
        'no entry for this type).',
      );
    }
    return raw;
  }
}
