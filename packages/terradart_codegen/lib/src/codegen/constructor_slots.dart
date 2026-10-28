import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import 'constructor_params.dart' as schema;
import 'dart_type_writer.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'provider_enums.dart';
import 'references/reference_targets.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// [param] has no trailing comma. The wrapper printer adds one.
/// [argMapEntry] includes its trailing comma.
typedef WrapperSlot = ({String param, String argMapEntry});

typedef HelperMember = ({
  String ctorParam,
  String fieldDecl,
  String encodeEntry,
});

typedef VariantParameter = ({
  String fieldType,
  String ident,
  String? defaultValue,
});

final class ConstructorSlots {
  ConstructorSlots._(this._byName);

  final Map<String, WrapperSlot> _byName;

  factory ConstructorSlots.wrapper({
    required ResourceDef def,
    required WrapperOverrideKind kind,
    required bool Function(Attribute attr) skipAttribute,
    required Set<String> requiredOverrides,
    required Map<String, String> typeOverrides,
    Map<String, String> deprecations = const {},
    Map<String, ResolvedReference> references = const {},
    required List<String> paramOrder,
    Map<String, OverrideSlot> overrideSlots = const {},
    List<NestedBlockSpec> nestedTypeSpecs = const [],
  }) {
    final resource = kind == WrapperOverrideKind.resource;
    final appliedDeprecations = resource
        ? deprecations
        : const <String, String>{};
    final byName = <String, WrapperSlot>{};

    for (final attr in def.root.attributes) {
      if (skipAttribute(attr)) continue;
      final isRequired =
          attr.constraints.required || requiredOverrides.contains(attr.name);
      final typeOverride = typeOverrides[attr.name];
      byName[attr.name] = (
        param: _deprecated(
          _attributeParam(
            attr,
            isRequired: isRequired,
            typeOverride: typeOverride,
          ),
          appliedDeprecations[attr.name],
        ),
        argMapEntry: isEnumListType(typeOverride ?? '')
            ? schema.elementwiseArgMapEntry(attr.name, isRequired: isRequired)
            : _argMapEntry(attr.name, isRequired),
      );
    }
    for (final nested in def.root.nestedBlocks) {
      if (schema.skipNestedBlock(nested)) continue;
      final isRequired =
          nested.constraints.required ||
          requiredOverrides.contains(nested.name);
      byName[nested.name] = (
        param: _nestedBlockParam(nested, isRequired: isRequired),
        argMapEntry: _argMapEntry(nested.name, isRequired),
      );
    }

    for (final MapEntry(key: name, value: ref) in references.entries) {
      final attr = def.root.attributes.firstWhere((a) => a.name == name);
      final isRequired =
          attr.constraints.required || requiredOverrides.contains(name);
      final dartName = resource
          ? (ref.dartName ?? snakeToDartIdent(name))
          : snakeToDartIdent(name);
      final slot = _referenceSlot(
        tfName: name,
        dartName: dartName,
        reference: ref,
        required: isRequired,
      );
      byName[name] = (
        param: _deprecated(slot.param, appliedDeprecations[name]),
        argMapEntry: slot.argMapEntry,
      );
      if (!resource) continue;
      for (final key in ref.absorbed) {
        if (!paramOrder.contains(key) ||
            overrideSlots.containsKey(key) ||
            typeOverrides.containsKey(key)) {
          continue;
        }
        final fill = _absorbedSlot(
          tfName: key,
          dartName: snakeToDartIdent(key),
          from: dartName,
          fromRequired: isRequired,
        );
        byName[key] = (
          param: _deprecated(fill.param, appliedDeprecations[key]),
          argMapEntry: fill.argMapEntry,
        );
      }
    }

    for (final MapEntry(key: name, value: slot) in overrideSlots.entries) {
      byName[name] = switch (slot) {
        CustomSlot() => (
          param: slot.paramDeclaration,
          argMapEntry: slot.argMapEntry,
        ),
        SealedArgument() => _sealedArgumentSlot(slot),
      };
    }
    for (final spec in nestedTypeSpecs) {
      final isRequired =
          spec.required || requiredOverrides.contains(spec.tfName);
      byName[spec.tfName] = nestedTypeConstructorSlot(
        spec,
        isRequired: isRequired,
      );
    }

    return ConstructorSlots._(byName);
  }

  String? parameter(String tfName) => _byName[tfName]?.param;

  String? argMapEntry(String tfName) => _byName[tfName]?.argMapEntry;

  static HelperMember nestedAttribute(NestedAttrSpec attr) =>
      switch (attr.reference) {
        final reference? => _referenceMember(
          tfName: attr.tfName,
          dartName: attr.dartName,
          reference: reference,
          required: attr.required,
        ),
        null => _helperMember(
          dartName: attr.dartName,
          tfName: attr.tfName,
          elementType: attr.dartType,
          required: attr.required,
          repeated: attr.repeated,
          keyed: false,
          wrapInTfArg: true,
          sensitive: attr.sensitive,
        ),
      };

  static HelperMember nestedChild(NestedBlockSpec child) => _helperMember(
    dartName: snakeToCamel(child.tfName),
    tfName: child.tfName,
    elementType: child.className,
    required: child.required,
    repeated: child.repeated,
    keyed: child.keyed,
    wrapInTfArg: false,
  );

  static HelperMember excludedBlock(ExcludedNestedBlock excluded) {
    final dartName = safeDartIdentifier(snakeToCamel(excluded.tfName));
    final innerType = excluded.repeated
        ? 'List<Map<String, dynamic>>'
        : 'Map<String, dynamic>';
    final fieldType = excluded.required
        ? 'TfArg<$innerType>'
        : 'TfArg<$innerType>?';
    final ctorParam = excluded.required
        ? 'required this.$dartName,'
        : 'this.$dartName,';
    final fieldDecl = 'final $fieldType $dartName;';
    final encodeEntry = excluded.required
        ? "'${excluded.tfName}': $dartName.toTfJson(),"
        : "'${excluded.tfName}': ?$dartName?.toTfJson(),";
    return (
      ctorParam: ctorParam,
      fieldDecl: fieldDecl,
      encodeEntry: encodeEntry,
    );
  }

  static HelperMember sealedMember({
    required String ident,
    required String type,
    required bool optional,
  }) => optional
      ? (
          ctorParam: 'this.$ident,',
          fieldDecl: 'final $type? $ident;',
          encodeEntry: '...?$ident?.encode(),',
        )
      : (
          ctorParam: 'required this.$ident,',
          fieldDecl: 'final $type $ident;',
          encodeEntry: '...$ident.encode(),',
        );

  static ({String factoryParameters, String variantParameters})
  variantConstructor(VariantParameter parameter) {
    final fieldType = parameter.fieldType;
    final ident = parameter.ident;
    final defaultValue = parameter.defaultValue;
    if (defaultValue == null) {
      return (
        factoryParameters: '$fieldType $ident',
        variantParameters: 'this.$ident',
      );
    }
    return (
      factoryParameters: '[$fieldType $ident]',
      variantParameters: '[this.$ident = $defaultValue]',
    );
  }

  static String nestedParamType(NestedBlockSpec spec) {
    final bare = spec.repeated
        ? 'List<${spec.className}>'
        : spec.keyed
        ? 'Map<String, ${spec.className}>'
        : spec.className;
    return '$bare?';
  }

  static WrapperSlot nestedTypeConstructorSlot(
    NestedBlockSpec spec, {
    required bool isRequired,
  }) {
    final dartName = snakeToDartIdent(spec.tfName);
    final nullableType = nestedParamType(spec);
    final bareType = nullableType.substring(0, nullableType.length - 1);
    final param = isRequired
        ? 'required $bareType $dartName'
        : '$nullableType $dartName';
    final encodeExpr = spec.repeated
        ? '[for (final e in $dartName) e.encode()]'
        : spec.keyed
        ? '{for (final e in $dartName.entries) e.key: e.value.encode()}'
        : '$dartName.encode()';
    final entry = "'${spec.tfName}': TfArg.literal($encodeExpr),";
    final argMapEntry = isRequired ? entry : 'if ($dartName != null) $entry';
    return (param: param, argMapEntry: argMapEntry);
  }
}

HelperMember _helperMember({
  required String dartName,
  required String tfName,
  required String elementType,
  required bool required,
  required bool repeated,
  required bool keyed,
  required bool wrapInTfArg,
  bool sensitive = false,
}) {
  final ident = safeDartIdentifier(dartName);
  final accessor = wrapInTfArg ? '.toTfJson()' : '.encode()';
  final elementDartType = wrapInTfArg
      ? argTypeFor(elementType, sensitive: sensitive)
      : elementType;
  final bareFieldType = repeated
      ? 'List<$elementDartType>'
      : keyed
      ? 'Map<String, $elementDartType>'
      : elementDartType;
  final fieldType = required ? bareFieldType : '$bareFieldType?';
  final ctorParam = required ? 'required this.$ident,' : 'this.$ident,';
  final fieldDecl = 'final $fieldType $ident;';

  final String valueExpr;
  if (repeated) {
    final source = required ? ident : '$ident!';
    valueExpr = '[for (final e in $source) e$accessor]';
  } else if (keyed) {
    final source = required ? ident : '$ident!';
    valueExpr = '{for (final e in $source.entries) e.key: e.value$accessor}';
  } else {
    valueExpr = required ? '$ident$accessor' : '?$ident?$accessor';
  }
  final entry = "'$tfName': $valueExpr,";
  final encodeEntry = required || !(repeated || keyed)
      ? entry
      : 'if ($ident != null) $entry';
  return (ctorParam: ctorParam, fieldDecl: fieldDecl, encodeEntry: encodeEntry);
}

HelperMember _referenceMember({
  required String tfName,
  required String dartName,
  required ResolvedReference reference,
  required bool required,
}) {
  final ident = safeDartIdentifier(dartName);
  final encode = '${reference.encode}.toTfJson()';
  return required
      ? (
          ctorParam: 'required this.$ident,',
          fieldDecl: 'final ${reference.dartType} $ident;',
          encodeEntry: "'$tfName': $ident$encode,",
        )
      : (
          ctorParam: 'this.$ident,',
          fieldDecl: 'final ${reference.dartType}? $ident;',
          encodeEntry: "'$tfName': ?$ident?$encode,",
        );
}

String _attributeParam(
  Attribute attr, {
  required bool isRequired,
  String? typeOverride,
}) {
  final dartName = snakeToDartIdent(attr.name);
  final dartType = typeOverride ?? writeDartType(attr.type);
  final modifier = isRequired ? 'required ' : '';
  final nullSuffix = isRequired ? '' : '?';
  return '$modifier${argTypeFor(dartType, sensitive: takesSensitive(attr))}$nullSuffix $dartName';
}

String _nestedBlockParam(NestedBlockDef nested, {required bool isRequired}) {
  final dartName = snakeToDartIdent(nested.name);
  final innerType = schema.nestedBlockIsObject(nested)
      ? 'Map<String, dynamic>'
      : 'List<Map<String, dynamic>>';
  final modifier = isRequired ? 'required ' : '';
  final nullSuffix = isRequired ? '' : '?';
  return '${modifier}TfArg<$innerType>$nullSuffix $dartName';
}

String _argMapEntry(String snakeName, bool isRequired) {
  final camel = snakeToDartIdent(snakeName);
  if (isRequired) return "'$snakeName': $camel,";
  return "'$snakeName': ?$camel,";
}

String _deprecated(String param, String? deprecation) {
  if (deprecation == null) return param;
  final escaped = deprecation.replaceAll(r'\', r'\\').replaceAll("'", r"\'");
  return "@Deprecated('$escaped') $param";
}

WrapperSlot _referenceSlot({
  required String tfName,
  required String dartName,
  required ResolvedReference reference,
  required bool required,
}) {
  final encode = reference.encode;
  return required
      ? (
          param: 'required ${reference.dartType} $dartName',
          argMapEntry: "'$tfName': $dartName$encode,",
        )
      : (
          param: '${reference.dartType}? $dartName',
          argMapEntry: encode.isEmpty
              ? "'$tfName': ?$dartName,"
              : "'$tfName': ?$dartName?$encode,",
        );
}

WrapperSlot _sealedArgumentSlot(SealedArgument argument) {
  final ident = snakeToDartIdent(argument.concept);
  final sealed = argument.sealedClass;
  return argument.optional
      ? (param: '$sealed? $ident', argMapEntry: '...?$ident?.argMap,')
      : (param: 'required $sealed $ident', argMapEntry: '...$ident.argMap,');
}

WrapperSlot _absorbedSlot({
  required String tfName,
  required String dartName,
  required String from,
  required bool fromRequired,
}) => (
  param: 'TfArg<String>? $dartName',
  argMapEntry:
      "'$tfName': ?($dartName ?? $from${fromRequired ? '' : '?'}"
      ".alsoAs('$tfName')),",
);
