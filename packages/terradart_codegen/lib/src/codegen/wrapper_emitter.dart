import '../ir/resource_def.dart';
import 'constructor_params.dart';
import 'constructor_slots.dart';
import 'doc_comment_builder.dart';
import 'enum_emitter.dart';
import 'exactly_one_types.dart';
import 'getter_emitter.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_emitter.dart';
import 'provider_enums.dart';
import 'references/reference_targets.dart';
import 'sensitive_set_emitter.dart';
import 'wrapper_overrides/wrapper_override.dart';

class WrapperEmitter {
  WrapperEmitter({
    required this.overrides,
    this.rawResourceSchemas = const {},
    this.resourceProvider,
    this.providerEnums = ProviderEnums.off,
    this.references = const {},
    this.laneInputs = const {},
    this.principals = const {},
    this.principal,
  });

  final Set<String> principals;
  final ResolvedReference? principal;
  final ProviderEnums providerEnums;
  final Map<String, Map<String, ResolvedReference>> references;
  final Map<String, Set<String>> laneInputs;
  final List<String> typedReferences = [];
  final List<String> unreachableHelpers = [];
  final List<String> unreachableReferences = [];
  final Map<String, WrapperOverride> overrides;
  final String? resourceProvider;
  final Map<String, Map<String, dynamic>> rawResourceSchemas;

  String emit(
    ResourceDef def, {
    required String providerSource,
    List<String>? extraSensitiveFields,
  }) {
    final buf = StringBuffer();

    final pascal = snakeToPascal(def.terraformType);
    final sensitiveConst = filePrivateSensitiveConstName(def.terraformType);

    final override = overrides[def.terraformType];
    final requiredOverrides = (override?.requiredParams ?? const <String>[])
        .toSet();
    final overrideSlots =
        override?.overrideSlots ?? const <String, OverrideSlot>{};
    final refs = references[def.terraformType] ?? const {};

    var nestedTypeSpecs = const <NestedBlockSpec>[];
    if (override != null && override.deriveNestedTypes) {
      final hints = providerEnums.nestedHints(def.terraformType, override);
      nestedTypeSpecs = collectNestedTypes(
        resourceBlock: _requireRawSchema(def.terraformType),
        resourcePrefix: override.kind.typeStem(def.terraformType),
        customSlotKeys: overrideSlots.keys.toSet(),
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
        typeNames: override.typeNames,
      );
    }
    if (override != null) {
      checkTypeNames(def, override, nestedTypeSpecs, laneInputs: laneInputs);
    }
    final nestedTypeKeys = {...?override?.nestedDartTypeOverrides.keys};
    if (nestedTypeKeys.isNotEmpty) {
      void typed(NestedBlockSpec spec, List<String> at) {
        for (final attr in spec.attrs) {
          nestedTypeKeys.remove([...at, attr.tfName].join('.'));
        }
        for (final child in spec.children) {
          typed(child, [...at, child.tfName]);
        }
      }

      for (final spec in nestedTypeSpecs) {
        typed(spec, [spec.tfName]);
      }
      if (nestedTypeKeys.isNotEmpty) {
        throw StateError(
          '${def.terraformType}: dartTypeOverrides ${nestedTypeKeys.join(', ')} '
          'names no input of a derived nested helper',
        );
      }
    }

    final paramOrder = orderedConstructorParams(def, override?.paramOrder);
    final dartTypeOverrides =
        override?.dartTypeOverrides ?? const <String, String>{};
    final topLevelRefs = <String, ResolvedReference>{
      for (final name in paramOrder)
        if (refs[name] case final ref?)
          if (!overrideSlots.containsKey(name) &&
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

    final prelude = emittedPrelude(override, def.terraformType);
    final preludeSource = prelude ?? '';
    unreachableHelpers.clear();
    for (final spec in nestedTypeSpecs) {
      collectNestedRefs(spec, [spec.tfName]);
      if (!paramOrder.contains(spec.tfName) &&
          !RegExp(
            '\\b${RegExp.escape(spec.className)}\\b',
          ).hasMatch(preludeSource)) {
        unreachableHelpers.add(spec.tfName);
      }
    }
    final typedRefs = {
      ...topLevelRefs,
      ...preludeReferences(override, refs),
      ...nestedRefs,
    };
    typedReferences.clear();
    unreachableReferences.clear();
    for (final path in typedRefs.keys) {
      (unreachableHelpers.contains(path.split('.').first)
              ? unreachableReferences
              : typedReferences)
          .add('${def.terraformType}.$path');
    }

    final extraImports = override?.extraImports ?? const <String>[];
    final nestedTypes = nestedTypeSpecs.isEmpty
        ? ''
        : renderNestedTypes(
            nestedTypeSpecs,
            resourceTerraformType: def.terraformType,
          );
    final needsMeta =
        _metaAnnotation.hasMatch('$nestedTypes${prelude ?? ''}') &&
        !extraImports.any((i) => i.contains('package:meta/meta.dart'));
    if (needsMeta) {
      buf.writeln("import 'package:meta/meta.dart';");
    }
    for (final imp in extraImports) {
      buf.writeln(imp);
    }
    buf.writeln("import 'package:terradart_core/terradart_core.dart';");
    final refImports = referenceImports([
      for (final ref in [
        ...typedRefs.values,
        if (principals.contains(def.terraformType)) ?principal,
      ])
        if (ref.target != def.terraformType) ref,
    ]);
    if (refImports.isNotEmpty) {
      buf.writeln();
      refImports.forEach(buf.writeln);
    }
    buf.writeln();

    final mergedExtras = <String>{
      ...?extraSensitiveFields,
      ...?override?.extraSensitiveFields,
    }.toList()..sort();
    buf.writeln(
      emitFilePrivateSensitiveSet(
        def,
        extraSensitiveFields: mergedExtras.isEmpty ? null : mergedExtras,
      ),
    );
    buf.writeln();

    if (override != null) {
      for (final en in topLevelEnums(
        def,
        override,
        laneInputs: laneInputs,
      ).values) {
        buf.writeln(emitEnumDeclaration(en));
      }
    }

    if (prelude != null) {
      buf.write(prelude);
      buf.writeln();
    }

    if (nestedTypes.isNotEmpty) {
      buf.write(nestedTypes);
      buf.writeln();
    }

    if (override?.deriveClassDoc ?? false) {
      buf.writeln(buildClassDocComment(def, curatedDoc: override?.curatedDoc));
    }

    buf.writeln('final class $pascal extends Resource {');
    buf.writeln("  static const String tfType = '${def.terraformType}';");
    buf.writeln();

    final argMapOrder = override?.argMapOrder ?? paramOrder;
    final slots = ConstructorSlots.wrapper(
      def: def,
      kind: WrapperOverrideKind.resource,
      skipAttribute: skipAttribute,
      requiredOverrides: requiredOverrides,
      typeOverrides: dartTypeOverrides,
      deprecations: override?.deprecatedParams ?? const {},
      references: topLevelRefs,
      paramOrder: paramOrder,
      overrideSlots: overrideSlots,
      nestedTypeSpecs: nestedTypeSpecs,
    );

    buf.writeln('  $pascal(super.localName, {');
    for (final name in paramOrder) {
      final snippet = slots.parameter(name);
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
    buf.writeln('    super.provider,');
    buf.writeln('    super.timeouts,');
    buf.writeln('  }) : super(');
    buf.writeln('         terraformType: tfType,');
    buf.writeln('         argMap: {');
    for (final name in argMapOrder) {
      final snippet = slots.argMapEntry(name);
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

    buf.writeln('  @override');
    buf.writeln('  Set<String> get sensitiveFields => $sensitiveConst;');

    if (resourceProvider != null) {
      buf.writeln();
      buf.writeln('  @override');
      buf.writeln("  String get defaultProvider => '$resourceProvider';");
    }

    final hasDeletionProtection = def.root.attributes.any(
      (a) => a.name == 'deletion_protection',
    );
    if (hasDeletionProtection) {
      buf.writeln();
      buf.writeln('  @override');
      buf.writeln('  bool get supportsDeletionProtection => true;');
    }

    final handGetters = extraGetterNames(override?.extraGetters);
    final derived = (override?.deriveOutputGetters ?? false)
        ? emitDerivedOutputGetters(
            def,
            excludeNames: handGetters,
            principal: principals.contains(def.terraformType),
          )
        : '';
    if (!handGetters.contains('ref') &&
        !RegExp(r'\bget ref\b').hasMatch(derived)) {
      buf
        ..writeln()
        ..write(emitResourceRefGetter(pascal));
    }

    if (override?.deriveOutputGetters ?? false) {
      if (derived.isNotEmpty) {
        buf.writeln();
        buf.write(derived);
      }
    }

    if (principals.contains(def.terraformType)) {
      buf
        ..writeln()
        ..write(emitPrincipalGetter(data: false));
    }

    final extraGetters = override?.extraGetters;
    if (extraGetters != null) {
      buf.writeln();
      buf.write(extraGetters);
    }

    buf.writeln('}');

    return buf.toString();
  }

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

final RegExp _metaAnnotation = RegExp(r'@(?:immutable|internal)\b');
