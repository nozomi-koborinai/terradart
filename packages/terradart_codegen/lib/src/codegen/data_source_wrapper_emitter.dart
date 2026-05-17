import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'dart_type_writer.dart';
import 'naming.dart';
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
/// - `$sensitiveFields` getter references the file-private const.
class DataSourceWrapperEmitter {
  DataSourceWrapperEmitter({required this.overrides});

  /// `Map<terraformType, override>` for data source entries.
  /// Keys must match [ResourceDef.terraformType].
  final Map<String, WrapperOverride> overrides;

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

    final pascal = snakeToPascal(def.terraformType); // GoogleProject
    final sensitiveConst = filePrivateSensitiveConstName(
      def.terraformType,
    ); // _googleProjectSensitive
    final requiredOverrides =
        (override.requiredParams ?? const <String>[]).toSet();

    // Imports. Same alphabetical-within-`package:`-group convention as the
    // resource emitter; `extraImports` come first so consumers can sort
    // `package:meta` above `package:terradart_core`.
    //
    // Plan 5.X: no `.schema.dart` import (data source Layer 1 retired
    // alongside the resource Layer 1) and no `package:terradart_annotations`
    // import (package deleted).
    final extraImports = override.extraImports ?? const <String>[];
    for (final imp in extraImports) {
      buf.writeln(imp);
    }
    buf.writeln("import 'package:terradart_core/terradart_core.dart';");
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
    // wrapper so the synth pipeline's `$sensitiveFields` lookup is
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

    // Class-level doc comment (verbatim). Hand-curated because the comment
    // carries the per-resource example block + composition note.
    final docComment = override.classDocComment;
    if (docComment != null) {
      buf.writeln(docComment);
    }

    // Wrapper class header — Plan 5.X: `extends Data` (no `<S>` generic).
    buf.writeln('final class $pascal extends Data {');
    buf.writeln('  // ignore: constant_identifier_names');
    buf.writeln("  static const String \$tfType = '${def.terraformType}';");
    buf.writeln();

    // Constructor + super initializer. The slot machinery mirrors
    // WrapperEmitter (paramOrder drives both the param list and the
    // argMap), minus the customSlots / dartTypeOverrides / deprecations /
    // virtual-fan-out machinery — data source overrides don't need any
    // of that (no fan-outs, no `BigQueryConfig` helpers, no deprecation
    // policy). We still respect dartTypeOverrides and requiredOverrides
    // for parity with the resource path; they're cheap.
    final paramOrder = override.paramOrder ?? _naturalOrderNames(def);
    final argMapOrder = override.argMapOrder ?? paramOrder;
    final dartTypeOverrides =
        override.dartTypeOverrides ?? const <String, String>{};
    final paramsByName = _paramsByName(
      def,
      requiredOverrides,
      dartTypeOverrides,
    );
    final argMapByName = _argMapEntriesByName(def, requiredOverrides);

    buf.writeln('  $pascal({');
    buf.writeln('    required super.localName,');
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
    buf.writeln('  }) : super(');
    buf.writeln('         terraformType: \$tfType,');
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

    // `$sensitiveFields` getter. The const is the inline one we emitted
    // above (not imported), so the getter expression is identical to the
    // resource path's.
    buf.writeln('  @override');
    buf.writeln('  // ignore: non_constant_identifier_names');
    buf.writeln('  Set<String> get \$sensitiveFields => $sensitiveConst;');

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

  /// IR-natural order: attributes first (alphabetical), then nested blocks.
  /// Computed-only attributes and `timeouts` blocks are filtered out (data
  /// sources rarely carry either, but the rules match WrapperEmitter for
  /// symmetry).
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

  Map<String, String> _paramsByName(
    ResourceDef def,
    Set<String> requiredOverrides,
    Map<String, String> dartTypeOverrides,
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

  /// Skip computed-only attributes and the synthetic `id` field. Data
  /// source attributes almost always carry `computed: true`, so most
  /// attributes get filtered here; the override's `paramOrder` lists the
  /// input-shaped attributes (the ones that are also `optional`).
  bool _skipAttribute(Attribute attr) {
    final c = attr.constraints;
    final isComputedOnly = c.computed && !c.optional && !c.required;
    final isIdAttribute = attr.name == 'id';
    return isComputedOnly || isIdAttribute;
  }

  bool _skipNestedBlock(NestedBlockDef nested) {
    return nested.name == 'timeouts';
  }

  String _attributeParam(
    Attribute attr, {
    required bool isRequired,
    String? typeOverride,
  }) {
    final dartName = snakeToCamel(attr.name);
    final dartType = typeOverride ?? writeDartType(attr.type);
    final modifier = isRequired ? 'required ' : '';
    final nullSuffix = isRequired ? '' : '?';
    return '${modifier}TfArg<$dartType>$nullSuffix $dartName';
  }

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

  String _argMapEntry(String snakeName, bool isRequired) {
    final camel = snakeToCamel(snakeName);
    if (isRequired) {
      return "'$snakeName': $camel,";
    }
    return "if ($camel != null) '$snakeName': $camel,";
  }
}
