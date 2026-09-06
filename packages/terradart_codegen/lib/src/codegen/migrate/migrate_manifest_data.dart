/// Plain data carriers for the migration manifest `terradart wrap
/// --migrate-manifest` renders into `_migrate_manifest.g.dart`.
///
/// These mirror the hand-written runtime types in
/// `packages/terradart_google/lib/src/migrate_manifest_entry.dart`
/// (`MigrateSlot`, `MigrateHelper`, `MigrateGetter`, `MigrateEnum`,
/// `MigrateEntry`, `MigrateManifest`) field for field; the emitter renders
/// each carrier as a `const` constructor call of its runtime twin.
library;

/// Mirrors the runtime `MigrateSlotKind` enum (rendered by name).
enum MigrateSlotKind { scalar, enumValue, helper, sealed, passthrough, manual }

final class MigrateSlotData {
  const MigrateSlotData({
    required this.tfName,
    required this.dartName,
    required this.kind,
    required this.required,
    this.repeated = false,
    this.wrapped = true,
    this.positional = false,
    this.merged = false,
    this.dartType,
    this.helper,
    this.variants,
    this.reason,
  });

  final String tfName;
  final String dartName;
  final MigrateSlotKind kind;
  final bool required;
  final bool repeated;
  final bool wrapped;
  final bool positional;
  final bool merged;
  final String? dartType;
  final String? helper;
  final Map<String, String>? variants;
  final String? reason;
}

final class MigrateHelperData {
  const MigrateHelperData({
    required this.className,
    required this.slots,
    this.reason,
  });

  final String className;
  final List<MigrateSlotData> slots;
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

  /// Raw Terraform value → Dart member name.
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
  });

  final String tfType;
  final String className;
  final String barrel;

  /// `'resource'` or `'dataSource'` — rendered as `CatalogKind.<kind>`.
  final String kind;
  final List<MigrateSlotData> slots;
  final List<MigrateGetterData> getters;
}

/// One factory's contribution to the manifest: its entry plus the helper
/// classes and enums declared in its wrapper file. The emitter merges the
/// per-factory helper / enum lists into the package-wide tables.
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
