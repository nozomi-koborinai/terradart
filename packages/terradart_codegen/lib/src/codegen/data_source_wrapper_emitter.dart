import '../ir/resource_def.dart';
import 'constructor_params.dart'
    show orderedDataSourceConstructorParams, skipDataSourceAttribute;
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

  final Set<String> principals;
  final ResolvedReference? principal;
  final Map<String, Set<String>> laneInputs;
  final Map<String, Map<String, ResolvedReference>> references;
  final List<String> typedReferences = [];
  final ProviderEnums providerEnums;
  final Map<String, String> resourceDirs;
  final Map<String, WrapperOverride> overrides;
  final Map<String, Map<String, dynamic>> rawDataSourceSchemas;

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
    final sensitiveConst = filePrivateSensitiveConstName(def.terraformType);
    final requiredOverrides = (override.requiredParams ?? const <String>[])
        .toSet();

    final refs = references[def.terraformType] ?? const {};
    final overrideSlots = override.overrideSlots;
    final hints = providerEnums.nestedHints(def.terraformType, override);
    final nestedTypeSpecs = override.deriveNestedTypes
        ? collectNestedTypes(
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
          )
        : const <NestedBlockSpec>[];
    checkTypeNames(def, override, nestedTypeSpecs, laneInputs: laneInputs);
    final dartTypeOverrides =
        override.dartTypeOverrides ?? const <String, String>{};
    final paramOrder = orderedDataSourceConstructorParams(
      def,
      override.paramOrder,
    );
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

    for (final spec in nestedTypeSpecs) {
      collectNestedRefs(spec, [spec.tfName]);
    }
    final typedRefs = {
      ...topLevelRefs,
      ...preludeReferences(override, refs),
      ...nestedRefs,
    };
    typedReferences
      ..clear()
      ..addAll([
        for (final path in typedRefs.keys) 'data.${def.terraformType}.$path',
      ]);

    final extraImports = override.extraImports ?? const <String>[];
    final nestedTypes = nestedTypeSpecs.isEmpty
        ? ''
        : renderNestedTypes(
            nestedTypeSpecs,
            resourceTerraformType: def.terraformType,
          );
    final prelude = emittedPrelude(override, def.terraformType);
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
        ...typedRefs.values,
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

    if (prelude != null) {
      buf.write(prelude);
      buf.writeln();
    }

    if (nestedTypes.isNotEmpty) {
      buf.write(nestedTypes);
      buf.writeln();
    }

    if (override.deriveClassDoc) {
      buf.writeln(buildClassDocComment(def, curatedDoc: override.curatedDoc));
    }

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
      overrideSlots: overrideSlots,
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

    buf.writeln('  @override');
    buf.writeln('  Set<String> get sensitiveFields => $sensitiveConst;');

    if (emitsRef) {
      buf
        ..writeln()
        ..write(emitDataSourceRefGetter(def.terraformType, twinClass));
    }

    if (derivedGetters.isNotEmpty) {
      buf.writeln();
      buf.write(derivedGetters);
    }

    if (principals.contains(def.terraformType)) {
      buf
        ..writeln()
        ..write(emitPrincipalGetter(data: true));
    }

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
