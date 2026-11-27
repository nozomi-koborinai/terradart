import '../references/resolved_reference.dart';

enum WrapperOverrideKind { resource, dataSource }

typedef ByKind<T> = ({T resources, T dataSources});

ByKind<T> byKind<T>(T Function(WrapperOverrideKind kind) value) => (
  resources: value(WrapperOverrideKind.resource),
  dataSources: value(WrapperOverrideKind.dataSource),
);

extension ByKindOf<T> on ByKind<T> {
  T of(WrapperOverrideKind kind) => switch (kind) {
    WrapperOverrideKind.resource => resources,
    WrapperOverrideKind.dataSource => dataSources,
  };
}

enum SchemaStubBodyMode { nosuchmethod, bare }

final class WrapperOverride {
  final List<String>? paramOrder;

  final List<String>? argMapOrder;

  final String? extraGetters;

  final List<String>? requiredParams;

  final Map<String, String>? dartTypeOverrides;

  Map<String, String> get nestedDartTypeOverrides => {
    for (final MapEntry(:key, :value)
        in (dartTypeOverrides ?? const <String, String>{}).entries)
      if (key.contains('.')) key: value,
  };

  final Map<String, String>? deprecatedParams;

  final List<String>? extraImports;

  final List<String>? extraSensitiveFields;

  final String? prelude;

  final bool deriveEnums;

  final bool deriveOutputGetters;

  final bool deriveClassDoc;

  final String? curatedDoc;

  final bool deriveNestedTypes;

  final List<String>? nestedTypeExcludes;

  final bool dedupeNestedTypes;

  final bool deriveExactlyOne;

  final Map<String, String>? sealedNames;

  final Map<String, String>? typeNames;

  final Map<String, List<String>>? enumValues;

  final List<String>? exactlyOneOf;

  final List<String>? atMostOneOf;

  final Map<String, String>? unsealedGroups;

  final Map<String, CustomSlot>? customSlots;

  final List<SealedArgument> sealedArguments;

  Map<String, OverrideSlot> get overrideSlots {
    final folded = {for (final a in sealedArguments) ...a.members};
    return {
      for (final MapEntry(:key, :value)
          in (customSlots ?? const <String, CustomSlot>{}).entries)
        if (!folded.contains(key)) key: value,
      for (final a in sealedArguments) a.concept: a,
    };
  }

  final WrapperOverrideKind kind;

  final String outputDir;

  final SchemaStubBodyMode schemaStubBodyMode;

  final String? fileLeadingComment;

  const WrapperOverride({
    required this.outputDir,
    this.kind = WrapperOverrideKind.resource,
    this.schemaStubBodyMode = SchemaStubBodyMode.nosuchmethod,
    this.fileLeadingComment,
    this.paramOrder,
    this.argMapOrder,
    this.extraGetters,
    this.requiredParams,
    this.dartTypeOverrides,
    this.deprecatedParams,
    this.extraImports,
    this.extraSensitiveFields,
    this.prelude,
    this.customSlots,
    this.deriveEnums = false,
    this.deriveOutputGetters = false,
    this.deriveClassDoc = false,
    this.curatedDoc,
    this.deriveNestedTypes = false,
    this.nestedTypeExcludes,
    this.dedupeNestedTypes = false,
    this.deriveExactlyOne = false,
    this.sealedNames,
    this.typeNames,
    this.enumValues,
    this.exactlyOneOf,
    this.atMostOneOf,
    this.unsealedGroups,
  }) : sealedArguments = const [];

  WrapperOverride._copy(
    WrapperOverride base, {
    List<String>? paramOrder,
    List<String>? argMapOrder,
    Map<String, String>? dartTypeOverrides,
    List<SealedArgument>? sealedArguments,
  }) : outputDir = base.outputDir,
       kind = base.kind,
       schemaStubBodyMode = base.schemaStubBodyMode,
       fileLeadingComment = base.fileLeadingComment,
       paramOrder = paramOrder ?? base.paramOrder,
       argMapOrder = argMapOrder ?? base.argMapOrder,
       extraGetters = base.extraGetters,
       requiredParams = base.requiredParams,
       dartTypeOverrides = dartTypeOverrides ?? base.dartTypeOverrides,
       deprecatedParams = base.deprecatedParams,
       extraImports = base.extraImports,
       extraSensitiveFields = base.extraSensitiveFields,
       prelude = base.prelude,
       customSlots = base.customSlots,
       sealedArguments = sealedArguments ?? base.sealedArguments,
       deriveEnums = base.deriveEnums,
       deriveOutputGetters = base.deriveOutputGetters,
       deriveClassDoc = base.deriveClassDoc,
       curatedDoc = base.curatedDoc,
       deriveNestedTypes = base.deriveNestedTypes,
       nestedTypeExcludes = base.nestedTypeExcludes,
       dedupeNestedTypes = base.dedupeNestedTypes,
       deriveExactlyOne = base.deriveExactlyOne,
       sealedNames = base.sealedNames,
       typeNames = base.typeNames,
       enumValues = base.enumValues,
       exactlyOneOf = base.exactlyOneOf,
       atMostOneOf = base.atMostOneOf,
       unsealedGroups = base.unsealedGroups;

  WrapperOverride withDartTypeOverrides(
    Map<String, String> dartTypeOverrides,
  ) => WrapperOverride._copy(this, dartTypeOverrides: dartTypeOverrides);

  WrapperOverride withSealedArguments({
    required List<String> paramOrder,
    required List<String>? argMapOrder,
    required List<SealedArgument> sealedArguments,
  }) => WrapperOverride._copy(
    this,
    paramOrder: paramOrder,
    argMapOrder: argMapOrder,
    sealedArguments: sealedArguments,
  );
}

sealed class OverrideSlot {
  const OverrideSlot();
}

final class CustomSlot extends OverrideSlot {
  final String paramDeclaration;

  final String argMapEntry;

  final MigrateHint? migrate;

  const CustomSlot({
    required this.paramDeclaration,
    required this.argMapEntry,
    this.migrate,
  });
}

final class MigrateHint {
  final String reason;

  const MigrateHint.manual({required this.reason}) : assert(reason != '');

  String get kind => 'manual';
}

final class SealedArgument extends OverrideSlot {
  const SealedArgument({
    required this.concept,
    required this.sealedClass,
    required this.optional,
    required this.variants,
    this.references = const {},
  });

  final String concept;

  final String sealedClass;

  final bool optional;

  final List<SealedVariant> variants;

  final Map<String, ResolvedReference> references;

  List<String> get variantClasses => [for (final v in variants) v.className];

  List<String> get members => [
    for (final v in variants)
      for (final l in v.leaves) l.tfName,
  ];
}

sealed class SealedVariant {
  const SealedVariant({required this.className});

  final String className;

  String get ident;

  String get blockKey;

  List<ExactlyOneVariant> get leaves;

  List<String> get classes;
}

final class SoloVariant extends SealedVariant {
  const SoloVariant(this.member, {required super.className});

  final ExactlyOneVariant member;

  @override
  String get ident => member.ident;

  @override
  String get blockKey => member.tfName;

  @override
  List<ExactlyOneVariant> get leaves => [member];

  @override
  List<String> get classes => [className];
}

final class JointVariant extends SealedVariant {
  const JointVariant({
    required this.ident,
    required super.className,
    required this.parts,
  });

  @override
  final String ident;

  final List<JointPart> parts;

  @override
  String get blockKey => parts.whereType<MemberPart>().first.member.tfName;

  @override
  List<ExactlyOneVariant> get leaves => [for (final p in parts) ...p.leaves];

  @override
  List<String> get classes => [
    className,
    for (final c in parts.whereType<ChoicePart>()) ...[
      c.sealedClass,
      for (final v in c.variants) v.className,
    ],
  ];

  List<String> get members => [for (final l in leaves) l.tfName];
}

sealed class JointPart {
  const JointPart();

  String get ident;

  List<ExactlyOneVariant> get leaves;
}

final class MemberPart extends JointPart {
  const MemberPart(this.member);

  final ExactlyOneVariant member;

  @override
  String get ident => member.ident;

  @override
  List<ExactlyOneVariant> get leaves => [member];
}

final class ChoicePart extends JointPart {
  const ChoicePart({
    required this.ident,
    required this.sealedClass,
    required this.variants,
  });

  @override
  final String ident;

  final String sealedClass;

  final List<SoloVariant> variants;

  @override
  List<ExactlyOneVariant> get leaves => [for (final v in variants) v.member];

  List<String> get members => [for (final v in variants) v.member.tfName];
}

typedef ExactlyOneVariant = ({
  String tfName,
  String ident,
  String fieldType,
  String encodeExpr,
  String? argMapExpr,
  String? deprecation,
  String? defaultValue,
});
