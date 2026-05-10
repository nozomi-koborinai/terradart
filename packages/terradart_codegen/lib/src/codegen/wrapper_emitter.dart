import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'dart_type_writer.dart';
import 'naming.dart';
import 'sensitive_set_emitter.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// Default text for the schema-stub class's leading comment block.
///
/// Phase 2.2 chose the 4-line form because the majority of hand-written
/// wrappers (the IAM-member family, project_service, secret_version, etc.)
/// carry it. Resources whose hand-written reference uses the 5-line
/// variant (currently only `google_pubsub_topic`) override this via
/// `WrapperOverride.schemaStubComment`.
///
/// String must carry NO trailing newline — the emitter writes it via
/// `writeln`.
const String _defaultSchemaStubComment =
    '// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only\n'
    '// consumed by `ResourceRef<S>.placeholder` (a future surface). We\n'
    '// keep this stub inline. `noSuchMethod` satisfies the abstract field\n'
    '// getters; they are never invoked in v0.0.x.';

/// Emits a Factory Wrapper class (`final class GoogleFoo extends Resource<$GoogleFoo>`)
/// for a [ResourceDef].
///
/// Output is **unformatted** Dart source; consumers feed it through
/// `dart_style.DartFormatter`.
///
/// Hand-curated deltas (class doc comment, parameter ordering, extra TfRef
/// getters, schema-stub comment, required-param tighten) live under
/// `wrapper_overrides/` and are passed in via [overrides] keyed by Terraform
/// type. Resources without an entry fall back to IR-natural defaults.
///
/// Phase 2.3: the registry is no longer a `const` map — `loadWrapperOverrides`
/// builds it from `wrapper_overrides/yaml/*.yaml` at startup, so the emitter
/// receives the resolved map via constructor DI rather than referencing a
/// global symbol.
class WrapperEmitter {
  WrapperEmitter({required this.overrides});

  final Map<String, WrapperOverride> overrides;

  String emit(ResourceDef def, {required String providerSource}) {
    final buf = StringBuffer();

    final pascal = snakeToPascal(def.terraformType); // GooglePubsubTopic
    final abstractName = '\$$pascal'; // $GooglePubsubTopic
    final schemaStubName = '_${pascal}SchemaInstance';
    final sensitiveConst =
        sensitiveConstName(def.terraformType); // googlePubsubTopicSensitive
    final schemaImportPath =
        'package:terradart_google/src/generated/${def.terraformType}.schema.dart';

    final override = overrides[def.terraformType];
    final requiredOverrides =
        (override?.requiredParams ?? const <String>[]).toSet();

    // Imports. `extraImports` is emitted FIRST so that `package:meta` (the
    // common case for hand-written helper classes that decorate themselves
    // with `@immutable`) sorts above `package:terradart_core` — both live
    // in the `package:` group and the project convention is alphabetical
    // within the group. The blank line separates the `package:` group from
    // the local schema import.
    final extraImports = override?.extraImports ?? const <String>[];
    for (final imp in extraImports) {
      buf.writeln(imp);
    }
    buf.writeln("import 'package:terradart_core/terradart_core.dart';");
    buf.writeln();
    buf.writeln("import '$schemaImportPath'");
    buf.writeln('    show $abstractName, $sensitiveConst;');
    buf.writeln();

    // Inline schema stub class. Resource<S>.schema needs *some* S to satisfy
    // the type system, but in v0.0.x synth never invokes any field on it —
    // the only future consumer is ResourceRef<S>.placeholder. The stub
    // comment text comes from the override (5-line variant for
    // google_pubsub_topic) or the 4-line default (every other resource).
    buf.writeln(override?.schemaStubComment ?? _defaultSchemaStubComment);
    buf.writeln('class $schemaStubName implements $abstractName {');
    buf.writeln('  const $schemaStubName();');
    buf.writeln();
    buf.writeln('  @override');
    buf.writeln('  // ignore: non_constant_identifier_names');
    buf.writeln(
      '  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);',
    );
    buf.writeln('}');
    buf.writeln();

    // Prelude (sealed types + helper classes the hand-written wrapper
    // ships inline). Sits between the schema-stub class and the wrapper
    // class doc comment. The override's prelude string is verbatim and
    // must already end with a single `\n`; the emitter brackets it with
    // one blank line on each side. `dart_style` later collapses any
    // double-blank-lines the override accidentally introduces.
    final prelude = override?.prelude;
    if (prelude != null) {
      buf.write(prelude);
      buf.writeln();
    }

    // Class-level doc comment from the override (if any). Hand-curated
    // because the comment carries per-resource specifics (Example block,
    // provider version range, etc.) the IR cannot infer.
    final docComment = override?.classDocComment;
    if (docComment != null) {
      buf.writeln(docComment);
    }

    // Wrapper class header.
    buf.writeln('final class $pascal extends Resource<$abstractName> {');
    buf.writeln('  // ignore: constant_identifier_names');
    buf.writeln("  static const String \$tfType = '${def.terraformType}';");
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
    final paramOrder = override?.paramOrder ?? _naturalOrderNames(def);
    final argMapOrder = override?.argMapOrder ?? paramOrder;
    final customSlots = override?.customSlots ?? const <String, CustomSlot>{};
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
    buf.writeln('         terraformType: \$tfType,');
    buf.writeln('         schema: const $schemaStubName(),');
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

    // `$sensitiveFields` getter delegates to the const Set generated by
    // `sensitive_set_emitter` (imported in the file header). The override
    // is annotated `non_constant_identifier_names` because the field name
    // begins with `$`, which Dart style normally rejects.
    buf.writeln('  @override');
    buf.writeln('  // ignore: non_constant_identifier_names');
    buf.writeln('  Set<String> get \$sensitiveFields => $sensitiveConst;');

    // Extra getters (TfRef shortcuts, etc.) inserted from the override.
    // The override snippet already carries indent and trailing newline, so
    // we use `write`, not `writeln`. A blank line separates them from the
    // sensitive-fields getter.
    final extraGetters = override?.extraGetters;
    if (extraGetters != null) {
      buf.writeln();
      buf.write(extraGetters);
    }

    // Close wrapper class.
    buf.writeln('}');

    return buf.toString();
  }

  // ---------------------------------------------------------------------
  // Slot-name helpers. The wrapper has three "slot" surfaces (constructor
  // params, argMap entries, and the override's paramOrder list) that all
  // address the same set of inputs by snake-case name. We build a name →
  // snippet map once per emit and look up snippets in whatever order the
  // override (or IR default) specifies.
  // ---------------------------------------------------------------------

  /// Returns input slot names in IR-natural order: attributes first
  /// (alphabetical, since Terraform emits the JSON `attributes` map
  /// alphabetically and the parser preserves that), then nested blocks
  /// (also alphabetical). Filtering rules match [_paramsByName].
  List<String> _naturalOrderNames(ResourceDef def) {
    final out = <String>[];
    for (final attr in def.root.attributes) {
      if (_skipAttribute(attr)) continue;
      out.add(attr.name);
    }
    for (final nested in def.root.nestedBlocks) {
      if (_skipNestedBlock(nested)) continue;
      out.add(nested.name);
    }
    return out;
  }

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
      if (_skipAttribute(attr)) continue;
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
      if (_skipNestedBlock(nested)) continue;
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
      if (_skipAttribute(attr)) continue;
      final isRequired =
          attr.constraints.required || requiredOverrides.contains(attr.name);
      out[attr.name] = _argMapEntry(attr.name, isRequired);
    }
    for (final nested in def.root.nestedBlocks) {
      if (_skipNestedBlock(nested)) continue;
      final isRequired = nested.constraints.required ||
          requiredOverrides.contains(nested.name);
      out[nested.name] = _argMapEntry(nested.name, isRequired);
    }
    return out;
  }

  // ---------------------------------------------------------------------
  // Filtering. These rules apply uniformly to constructor params, argMap
  // entries, and (transitively) the IR-natural ordering.
  // ---------------------------------------------------------------------

  /// Skips computed-only attributes (no input role) and the synthetic `id`
  /// identity field (exposed via a TfRef getter, not as a constructor arg).
  bool _skipAttribute(Attribute attr) {
    final c = attr.constraints;
    final isComputedOnly = c.computed && !c.optional && !c.required;
    final isIdAttribute = attr.name == 'id';
    return isComputedOnly || isIdAttribute;
  }

  /// Skips the Terraform-internal `timeouts` block, which is metadata for
  /// the SDK rather than a user-facing input.
  bool _skipNestedBlock(NestedBlockDef nested) {
    return nested.name == 'timeouts';
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
}
