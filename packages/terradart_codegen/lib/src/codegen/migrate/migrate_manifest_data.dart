enum MigrateSlotKind {
  scalar,
  enumValue,
  reference,
  principal,
  helper,
  sealed,
  passthrough,
  manual,
}

final class MigrateSlotData {
  const MigrateSlotData({
    required this.tfName,
    required this.dartName,
    required this.kind,
    required this.required,
    this.repeated = false,
    this.keyed = false,
    this.wrapped = true,
    this.positional = false,
    this.merged = false,
    this.dartType,
    this.helper,
    this.variants,
    this.attribute,
    this.defaultsFrom,
    this.reason,
  });

  final String tfName;
  final String dartName;
  final MigrateSlotKind kind;
  final bool required;
  final bool repeated;
  final bool keyed;
  final bool wrapped;
  final bool positional;
  final bool merged;
  final String? dartType;
  final String? helper;
  final Map<String, String>? variants;
  final String? attribute;
  final String? defaultsFrom;
  final String? reason;
}

final class MigrateHelperData {
  const MigrateHelperData({
    required this.className,
    required this.slots,
    this.shorthand,
    this.reason,
  });

  final String className;
  final List<MigrateSlotData> slots;
  final String? shorthand;
  final String? reason;
}

final class MigrateGetterData {
  const MigrateGetterData({
    required this.tfName,
    required this.dartName,
    required this.dartType,
  });

  final String tfName;
  final String dartName;
  final String dartType;
}

final class MigrateEnumData {
  const MigrateEnumData({required this.name, required this.members});

  final String name;

  final Map<String, String> members;
}

final class MigrateEntryData {
  const MigrateEntryData({
    required this.tfType,
    required this.className,
    required this.barrel,
    required this.kind,
    required this.slots,
    required this.getters,
    this.principal = false,
  });

  final String tfType;
  final String className;
  final String barrel;

  final String kind;
  final List<MigrateSlotData> slots;
  final List<MigrateGetterData> getters;
  final bool principal;
}

final class MigrateEntryBuild {
  const MigrateEntryBuild({
    required this.entry,
    required this.helpers,
    required this.enums,
  });

  final MigrateEntryData entry;
  final List<MigrateHelperData> helpers;
  final List<MigrateEnumData> enums;
}
