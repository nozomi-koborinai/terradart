import 'catalog_entry.dart' show CatalogKind;

/// How one constructor parameter of a curated factory — or one field of a
/// nested helper class — accepts its value.
///
/// The migration manifest (`migrate_manifest.dart` in each provider package)
/// is the machine-readable recipe `terradart migrate` follows to construct a
/// curated factory from Terraform JSON values. Each [MigrateSlot] tells the
/// migrator which Dart expression shape a Terraform argument maps to.
///
/// The member docs below spell `Map<String; String>` with a semicolon on
/// purpose: the Gate 8 enum scanner splits enum bodies on commas before it
/// drops doc lines, so a comma inside a member doc would read as a member.
enum MigrateSlotKind {
  /// A `TfArg<T>` (or bare `T` when [MigrateSlot.wrapped] is false) scalar
  /// or collection payload. [MigrateSlot.dartType] is `T`: `String` /
  /// `int` / `num` / `bool` / `List<String>` / `Map<String; String>` ...
  scalar,

  /// A `TerraformEnum` payload. [MigrateSlot.dartType] names the enum;
  /// [MigrateManifest.enums] maps each raw Terraform value to its member.
  enumValue,

  /// A typed nested helper class passed bare (never `TfArg`-wrapped).
  /// [MigrateSlot.helper] names it; [MigrateManifest.helpers] holds its
  /// own slots.
  helper,

  /// A sealed exactly-one-of choice. [MigrateSlot.variants] maps each
  /// Terraform block key to the helper class that encodes it.
  sealed,

  /// An opaque `TfArg<Map<String; dynamic>>` or
  /// `TfArg<List<Map<String; dynamic>>>` passthrough for a nested block that
  /// has no typed helper yet. [MigrateSlot.dartType] is the payload type.
  passthrough,

  /// Not machine-derivable. [MigrateSlot.reason] says why; a migrator must
  /// keep any resource that sets this slot in Terraform.
  manual,
}

/// One constructor parameter of a curated factory, or one constructor
/// parameter of a nested helper class.
final class MigrateSlot {
  const MigrateSlot({
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

  /// Terraform argument / block name this slot encodes to, relative to the
  /// block that holds the enclosing factory's arguments or the enclosing
  /// helper's payload. A dotted path (`google_maps_config.plot_mode`) when
  /// the helper's `encode()` nests the entry inside an inline map literal.
  /// Empty for a [merged] slot.
  final String tfName;

  /// Dart parameter name (`ackDeadlineSeconds`, `pushConfig`, ...).
  final String dartName;

  final MigrateSlotKind kind;

  /// Whether the Dart parameter is `required`.
  final bool required;

  /// Whether the Dart parameter is a `List<...>` of the element described by
  /// [kind] (a repeated nested block, or a list of enum members).
  final bool repeated;

  /// Whether a [MigrateSlotKind.scalar] / [MigrateSlotKind.enumValue] element
  /// is `TfArg`-wrapped (the norm) or a bare Dart value (a curator-flagged
  /// exception, e.g. a Dart-side discriminant enum).
  final bool wrapped;

  /// Whether the parameter is positional rather than named (rare; only a
  /// handful of hand-written helper classes).
  final bool positional;

  /// Whether the value's encoding lands in the enclosing block instead of
  /// under a key of its own — a `...source.encode()` field, or a virtual
  /// `<slot>.blockKey:` custom slot. A merged [MigrateSlotKind.helper]
  /// contributes its own slots' keys at this level, a merged
  /// [MigrateSlotKind.sealed] contributes the chosen variant's key (see
  /// [variants]), and a merged [MigrateSlotKind.passthrough] map takes any
  /// keys no other slot claims. [tfName] is empty for a merged slot.
  final bool merged;

  /// Scalar payload type, enum name, or passthrough payload type.
  final String? dartType;

  /// Helper class name for [MigrateSlotKind.helper].
  final String? helper;

  /// Terraform block key → helper class name for [MigrateSlotKind.sealed].
  ///
  /// A migrator looks for exactly one of these keys at the *candidate
  /// level* — the block under [tfName], or the enclosing level itself when
  /// the slot is [merged] (a virtual `<slot>.blockKey:` slot, or a
  /// `...source.encode()` field). Having picked the variant, it reads the
  /// variant's slots either from the candidate level, when the variant's
  /// own `encode()` wrote the key — visible as a slot whose [tfName] is the
  /// key or starts with `<key>.` — or otherwise from the block under the
  /// key, which the parent's argMap put there.
  final Map<String, String>? variants;

  /// Why the slot is [MigrateSlotKind.manual].
  final String? reason;
}

/// A nested helper class (`PubsubSubscriptionPushConfig`,
/// `CloudSchedulerJobPubsubTarget`, ...): its constructor slots and, when
/// its Terraform encoding could not be derived, the reason.
final class MigrateHelper {
  const MigrateHelper({
    required this.className,
    required this.slots,
    this.reason,
  });

  final String className;

  /// Constructor parameters in declaration order. Each slot's
  /// [MigrateSlot.tfName] is relative to the map this class's `encode()`
  /// returns; a self-wrapping variant (`{ 'weekly_schedule': { ...fields }
  /// }`) therefore carries `weekly_schedule.`-prefixed paths.
  final List<MigrateSlot> slots;

  /// Non-null when the class encodes its fields in a way the generator could
  /// not map back to Terraform keys (a spread-merged sealed field, a dynamic
  /// key, ...). A migrator must treat such a helper as manual.
  final String? reason;
}

/// One output-attribute getter on a factory (`nameRef`, `id`, `selfLink`).
final class MigrateGetter {
  const MigrateGetter({
    required this.tfName,
    required this.dartName,
    required this.dartType,
  });

  /// Terraform attribute the getter references.
  final String tfName;

  /// Dart getter name.
  final String dartName;

  /// `T` of the getter's `TfRef<T>`.
  final String dartType;
}

/// A `TerraformEnum` and its raw-value → member-name map.
final class MigrateEnum {
  const MigrateEnum({required this.name, required this.members});

  final String name;

  /// Raw Terraform value (`'PROTOCOL_BUFFER'`) → Dart member (`protocolBuffer`).
  final Map<String, String> members;
}

/// The migration recipe for one curated factory.
final class MigrateEntry {
  const MigrateEntry({
    required this.tfType,
    required this.className,
    required this.barrel,
    required this.kind,
    required this.slots,
    required this.getters,
  });

  /// Terraform type string, e.g. `google_pubsub_topic`.
  final String tfType;

  /// Dart wrapper class name, e.g. `GooglePubsubTopic`.
  final String className;

  /// Per-service barrel (outputDir), e.g. `pubsub`.
  final String barrel;

  /// Resource vs data source.
  final CatalogKind kind;

  /// Constructor parameters in declared order, excluding the universal
  /// `localName` / `lifecycle` / `dependsOn` bookends.
  final List<MigrateSlot> slots;

  /// Output-attribute getters, keyed by Terraform attribute in [MigrateGetter].
  final List<MigrateGetter> getters;
}

/// The whole manifest: one [MigrateEntry] per curated factory plus the
/// package-wide helper and enum tables the entries refer to by name.
///
/// This type is **hand-written**; only the `terradartMigrateManifest` value
/// in the generated `_migrate_manifest.g.dart` is produced by `terradart
/// wrap --migrate-manifest`. Edit this type by hand; never hand-edit the
/// generated value.
final class MigrateManifest {
  const MigrateManifest({
    required this.entries,
    required this.helpers,
    required this.enums,
  });

  final List<MigrateEntry> entries;

  /// Helper class name → recipe. Helper names are unique per package.
  final Map<String, MigrateHelper> helpers;

  /// Enum name → raw-value map. Enum names are unique per package.
  final Map<String, MigrateEnum> enums;
}
