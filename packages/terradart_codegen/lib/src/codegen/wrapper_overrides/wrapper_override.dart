/// Kind of override entry. Determines which emitter consumes it.
///
/// - [resource]: Consumed by `WrapperEmitter` to render a Terraform resource
///   wrapper under `<output>/<outputDir>/`.
/// - [dataSource]: Consumed by `DataSourceWrapperEmitter` to render a
///   Terraform data source wrapper under `<output>/data/`.
enum WrapperOverrideKind { resource, dataSource }

/// A value per override kind. Selecting one is always [ByKindOf.of].
typedef ByKind<T> = ({T resources, T dataSources});

/// [ByKind] with each kind's value built by [value].
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

/// Schema-stub class body shape.
///
/// - [nosuchmethod]: 5-line variant with `noSuchMethod` (existing 12 resource
///   pattern, keeps abstract member dispatch live).
/// - [bare]: 3-line variant without `noSuchMethod` (data source pattern,
///   reproduces `_GoogleProjectSchemaInstance` exactly).
enum SchemaStubBodyMode { nosuchmethod, bare }

/// Hand-curated overrides applied by `WrapperEmitter` on top of the
/// IR-derived defaults.
///
/// Overrides are sourced from `wrapper_overrides/yaml/<terraform_type>.yaml`
/// and loaded via `YamlOverrideLoader` (see `yaml_loader.dart`). This struct
/// stays unchanged when YAML schema evolves; the loader keeps the data shape
/// stable for the emitter.
///
/// Only the fields we currently need to reach Level A (byte-diff parity
/// with the hand-written wrappers) are modeled. New axes get added as new
/// resources reveal them — the YAML schema validates against the current
/// axis set on load.
final class WrapperOverride {
  /// Snake-case parameter names in the order the constructor (and the
  /// matching argMap entries) should emit them.
  ///
  /// Slots not listed here are skipped. Overrides MUST list every input
  /// slot (required attributes, optional attributes, and nested blocks)
  /// that should appear in the wrapper — the emitter does not infer
  /// missing entries.
  ///
  /// Names listed here may refer to either an IR-derived slot
  /// (attribute / nested block) or a virtual slot defined in
  /// [overrideSlots]. The emitter resolves names by checking [overrideSlots]
  /// first, then falling back to the IR-derived snippets.
  ///
  /// `localName`, `lifecycle`, `dependsOn`, and `provider` are super-parameters and
  /// always frame the override-ordered slots; do not include them here.
  ///
  /// `null` means "use IR-natural order" (alphabetical, since the parser
  /// preserves Terraform's JSON ordering, which is alphabetical).
  final List<String>? paramOrder;

  /// Snake-case parameter names in the order the argMap entries should be
  /// emitted, when this differs from [paramOrder].
  ///
  /// Use this only when the hand-written wrapper places a slot at a
  /// different constructor-vs-argMap position. The canonical case is
  /// `google_cloud_scheduler_job`'s virtual `target` slot, which sits at
  /// constructor position 3 (right after `region`) but appears at the very
  /// end of `argMap` because its key is dynamic
  /// (`target.blockKey: TfArg.literal(target.encode())`) and the
  /// hand-written author kept the static keys above the dynamic one.
  ///
  /// When set, this list MUST be a permutation of [paramOrder].
  ///
  /// `null` means "argMap order matches paramOrder" — the common case.
  final List<String>? argMapOrder;

  /// Verbatim Dart source for any extra getters (TfRef, computed
  /// shortcuts, etc.) inserted between `sensitiveFields` and the closing
  /// `}` of the wrapper class.
  ///
  /// The string MUST already carry the proper indent (two spaces for
  /// member declarations) and a trailing newline; the emitter writes it
  /// via `write`, not `writeln`.
  ///
  /// `null` means "no extra getters".
  final String? extraGetters;

  /// Snake-case parameter names that the override forces to be `required`
  /// in the constructor and unconditional in argMap, regardless of what
  /// the v7 schema says.
  ///
  /// Use this when the hand-written wrapper tightens an
  /// `optional + computed` schema slot into a required identity (e.g.
  /// `google_cloud_tasks_queue_iam_member` makes `location` required even
  /// though Terraform marks it optional). Names not listed here keep
  /// their schema-derived requiredness.
  ///
  /// `null` means "respect the v7 schema's required flag for every slot".
  final List<String>? requiredParams;

  /// Snake-case parameter names → Dart type override.
  ///
  /// Use this when the hand-written wrapper renders a slot with a Dart
  /// type narrower than what the schema's IR-derived type would produce.
  /// Example: Terraform schemas type counters as `number`, which
  /// `dart_type_writer` maps to `num`. Some hand-written wrappers tighten
  /// these to `int` for ergonomics
  /// (`google_secret_manager_secret_version.secret_data_wo_version`,
  /// `google_pubsub_subscription.ack_deadline_seconds`).
  ///
  /// The override replaces the entire `TfArg<...>` payload type. If the
  /// override value is `'int'`, the emitter renders `TfArg<int>` (or
  /// `TfArg<int>?` for optional slots).
  ///
  /// `null` means "use writeDartType(attr.type) for every slot".
  ///
  /// A dotted key (`network_interface.nic_type`) types that input of a
  /// derived nested helper instead ([nestedDartTypeOverrides]), so an
  /// override under `deriveNestedTypes` keeps a hand-written enum for a
  /// value set the schema does not state.
  final Map<String, String>? dartTypeOverrides;

  /// The [dartTypeOverrides] entries for nested inputs (dotted keys).
  Map<String, String> get nestedDartTypeOverrides => {
    for (final MapEntry(:key, :value)
        in (dartTypeOverrides ?? const <String, String>{}).entries)
      if (key.contains('.')) key: value,
  };

  /// Snake-case parameter names → `@Deprecated(...)` message.
  ///
  /// Adds a parameter-level `@Deprecated('<message>')` annotation in the
  /// constructor (and only there — argMap entries stay clean). Use when
  /// hand-written wrappers attach project-policy deprecations not encoded
  /// in the Terraform schema (e.g.
  /// `google_secret_manager_secret_version.secret_data` is marked
  /// deprecated by terradart guidance, not by the provider).
  ///
  /// The emitter wraps the message in single quotes and escapes embedded
  /// `'` and `\\`. Multi-line messages are not supported.
  ///
  /// `null` means "no deprecation annotations".
  final Map<String, String>? deprecatedParams;

  /// Verbatim `import` statements inserted between
  /// `package:terradart_core/...` and the local schema import.
  ///
  /// Each entry is a full single-line `import` statement *including* the
  /// trailing `;`, and *excluding* trailing newline. Example:
  /// `"import 'package:meta/meta.dart';"`. The emitter writes each entry
  /// via `writeln` so each appears on its own line. Order is preserved
  /// verbatim — the override author is responsible for any sort order
  /// the project convention demands (terradart_google convention is
  /// alphabetical within the `package:` group, with `package:meta` before
  /// `package:terradart_core` because m < t).
  ///
  /// Use this when the prelude or customSlot snippets reference symbols
  /// from a package the emitter does not import by default — currently
  /// only `package:meta/meta.dart` for `@immutable` annotations on
  /// hand-written helper classes.
  ///
  /// `null` means "no extra imports beyond `package:terradart_core`".
  final List<String>? extraImports;

  /// Optional additional field paths to inject into the emitted
  /// `<terraformTypeCamelCase>Sensitive` const, on top of the paths the
  /// emitter derives from `@Sensitive` annotations on the IR.
  ///
  /// Use this when the provider schema does not flag a field as sensitive
  /// but the curator considers it sensitive in practice (e.g.
  /// `metadata_startup_script` on `google_compute_instance` — frequently
  /// holds credentials in production but is not schema-flagged as
  /// sensitive).
  ///
  /// Each entry is a Terraform JSON snake_case path; nested fields use
  /// dotted notation (e.g. `'startup_options.boot_token'`). Paths are
  /// merged into the schema-derived set and the result is alphabetically
  /// sorted for deterministic output.
  ///
  /// `null` (the default) means "use the schema-derived set verbatim".
  final List<String>? extraSensitiveFields;

  /// Verbatim Dart source inserted between the closing `}` of the
  /// `_<Pascal>SchemaInstance` stub class and the wrapper class's doc
  /// comment (or, when no doc comment is set, the `final class` header
  /// line).
  ///
  /// Use this to inject sealed type hierarchies and helper classes that
  /// hand-written wrappers ship inline (e.g.
  /// `sealed class SchedulerTarget` plus its three subclasses for
  /// `google_cloud_scheduler_job`, or the seven `BigQueryConfig` /
  /// `PushConfig` / etc. helpers for `google_pubsub_subscription`). The
  /// emitter writes the prelude after a one-blank-line gap from the stub
  /// class and follows it with another blank line before the class doc
  /// comment, so the override author should NOT pad with leading or
  /// trailing blank lines themselves.
  ///
  /// Format requirements:
  /// - Starts at column 0 with the first content character (no leading
  ///   whitespace, no leading newline).
  /// - Ends with a single trailing `\n` after the last content line.
  /// - May contain interior blank lines between top-level declarations
  ///   (preserved verbatim; `dart_style` will normalize multiples to one).
  ///
  /// The emitter writes the string via `write` (not `writeln`) so the
  /// trailing `\n` is the prelude's responsibility.
  ///
  /// Hand-written only: the YAML loader is its one writer, and it rejects
  /// the axis on a data source (E201).
  ///
  /// `null` means "no prelude".
  final String? prelude;

  /// Phase A1 migration gate. When `true`, the emitter derives enum
  /// declarations for this resource's enum-valued attributes from the
  /// MM-enriched IR, and the hand-written enum block must be removed from
  /// [prelude]. Defaults to `false` so un-migrated resources are unaffected.
  final bool deriveEnums;

  /// Phase A3 migration gate. When `true`, the emitter derives output-attribute
  /// `TfRef` getters (`name`, `id`, and pure computed-only attributes) for
  /// this resource from the IR, and the corresponding hand-written getters must
  /// be removed from [extraGetters] (genuine exceptions may remain). Defaults to
  /// `false` so un-migrated resources are unaffected.
  final bool deriveOutputGetters;

  /// Phase A4 gate. When `true`, the emitter derives the class-level doc
  /// comment from the IR via `buildClassDocComment` (a
  /// `Factory wrapper for <type>` line, then the resource summary rewrapped
  /// from `ResourceDef.description`, then [curatedDoc] verbatim). When
  /// `false` no class doc is emitted — the hand-written `classDocComment`
  /// axis was retired after the 2026-07 doc wave migrated the last
  /// overrides (all 381 committed overrides set this gate).
  final bool deriveClassDoc;

  /// Phase A4 ③ frozen asset: artisanal doc prose (ASCII diagrams, variant
  /// guidance, worked `Example` blocks) that the IR cannot derive. Appended
  /// verbatim after the generated summary when [deriveClassDoc] is `true`.
  ///
  /// Each line MUST already start with `///` (it is emitted verbatim). The
  /// string MUST NOT carry a leading `///` separator line or a trailing
  /// newline — the builder inserts the blank `///` separator before it.
  ///
  /// `null` means "no curated doc fragment".
  final String? curatedDoc;

  /// `deriveNestedTypes` migration gate. When `true`, the emitter derives a
  /// typed `@immutable` helper class (plus any attribute enums)
  /// for each of this resource's TOP-LEVEL nested blocks from the provider
  /// schema — see `nested_types/nested_type_collector.dart` and
  /// `nested_type_emitter.dart` — replacing the generic
  /// `TfArg<Map<String, dynamic>>?` passthrough the IR would otherwise
  /// produce for that slot. A block already covered by an [overrideSlots]
  /// entry is left untouched (the collector skips any subtree rooted at an
  /// [overrideSlots] key). Defaults to `false` so un-migrated resources are
  /// unaffected — mirrors [deriveEnums] / [deriveOutputGetters] / [deriveClassDoc].
  final bool deriveNestedTypes;

  /// Dotted provider-schema block paths (e.g. `'basic.conditions'`) to
  /// exclude from [deriveNestedTypes] derivation, relative to the resource
  /// root. An excluded block (and everything under it) is rendered as the
  /// generic `TfArg<Map<String, dynamic>>?` passthrough instead of a derived
  /// class — use this for a subtree that still needs hand-curation (e.g. a
  /// shape the collector cannot represent, or one earmarked for a future
  /// customSlot). A TOP-LEVEL path (no dot) simply omits that slot from
  /// derivation entirely; the constructor still emits it via the ordinary
  /// `paramOrder`-driven passthrough.
  ///
  /// Only meaningful when [deriveNestedTypes] is `true` — the loader rejects
  /// a yaml file that sets this without the gate (`FormatException` at load
  /// time), and `lintOverride`'s `nested-excludes-without-derive` rule flags
  /// the same condition for an override constructed some other way.
  ///
  /// `null` means "derive every nested block reachable from the resource
  /// root" (subject only to the [overrideSlots] skip).
  final List<String>? nestedTypeExcludes;

  /// Opt-in: blocks whose [deriveNestedTypes] classes would be structurally
  /// identical share one helper class, named after the shallowest such
  /// block (`collectNestedTypes`'s `shareIdenticalShapes`). Off by default
  /// because turning it on renames the helpers of the deeper occurrences,
  /// which breaks callers of an already published wrapper.
  ///
  /// Only meaningful when [deriveNestedTypes] is `true`; the loader rejects
  /// it otherwise.
  final bool dedupeNestedTypes;

  /// Gate for the `--provider-enums` hints' `exactly_one_of_groups`: each
  /// set of inputs the provider requires exactly one of becomes one
  /// required sealed slot (a top-level group) or sealed helper field (a
  /// group inside a [deriveNestedTypes] block) whose variants each carry
  /// one member (`exactly_one_derivation.dart`). The same gate seals the
  /// hints' `at_most_one_of_groups` — mutually exclusive inputs the provider
  /// also accepts none of — into nullable sealed slots and fields. Defaults
  /// to `false`.
  final bool deriveExactlyOne;

  /// Human concept names for the sealed slots [deriveExactlyOne] derives,
  /// like a protobuf `oneof` name: group key → snake_case concept
  /// (`filename, image_uri, s3_bucket: code`). The key lists the group's
  /// members as dotted paths from the resource root, comma-separated, in
  /// any order (`settings.x, settings.y` for a group inside the `settings`
  /// block). The slot or field takes the concept's camelCase name and the
  /// sealed type is `<prefix><Concept>` (`LambdaFunctionCode`).
  ///
  /// A name wins over the derived one (`sealedConceptName`); `wrap` fails
  /// on an entry that matches no sealed group, repeats the derived name, or
  /// collides with another slot or class.
  final Map<String, String>? sealedNames;

  /// Groups of inputs the provider accepts exactly one of that no group
  /// source declares (the API enforces them, or the provider checks them
  /// outside its validators). Each entry lists the members as dotted paths
  /// from the resource root, comma-separated, like a [sealedNames] key;
  /// [deriveExactlyOne] seals them as it seals the source's groups. `wrap`
  /// fails on an entry that names no input or that the source declares too.
  final List<String>? exactlyOneOf;

  /// The same as [exactlyOneOf] for inputs the provider accepts at most one
  /// of: each becomes a nullable sealed slot or field.
  final List<String>? atMostOneOf;

  /// Snake-case slot name → custom constructor / argMap snippets.
  ///
  /// Two use cases:
  ///
  /// 1. **Helper-typed override of an existing IR slot.** The IR has the
  ///    nested block / attribute, but the hand-written wrapper renders it
  ///    with a custom Dart type and a custom argMap encoding. Example:
  ///    `google_pubsub_subscription.bigquery_config` — IR carries it as a
  ///    nested block, hand-written exposes `BigQueryConfig? bigqueryConfig`
  ///    and encodes via `TfArg.literal(bigqueryConfig.encode())`.
  ///
  /// 2. **Virtual slot.** No corresponding IR entry exists; the slot is
  ///    a hand-curated abstraction over multiple IR slots. Example:
  ///    `google_cloud_scheduler_job.target` — sealed
  ///    `SchedulerTarget` (`PubsubTarget` | `HttpTarget` |
  ///    `AppEngineHttpTarget`) replaces the IR's three separate nested
  ///    blocks (`pubsub_target`, `http_target`, `app_engine_http_target`).
  ///    The IR slots get suppressed by being absent from `paramOrder`,
  ///    and the customSlot fan-outs to a single argMap entry whose key
  ///    is dynamic (`target.blockKey`).
  ///
  /// A name in [customSlots] replaces the schema slot for that name.
  ///
  /// Hand-written only: the YAML loader is its one writer, and it rejects
  /// the axis on a data source (E201).
  ///
  /// `null` means "no custom slots — every paramOrder name is resolved
  /// from the IR".
  final Map<String, CustomSlot>? customSlots;

  /// The sealed arguments `deriveExactlyOneSlots` derives from the
  /// provider's exactly-one and at-most-one groups, in the order it sealed
  /// them. Derived only, through [withSealedArguments]; no YAML axis sets
  /// it.
  final List<SealedArgument> sealedArguments;

  /// Every slot the override supplies in place of the IR's, by snake-case
  /// name: each [customSlots] entry no sealed argument folded into a
  /// variant, then each sealed argument under its concept.
  Map<String, OverrideSlot> get overrideSlots {
    final folded = {for (final a in sealedArguments) ...a.members};
    return {
      for (final MapEntry(:key, :value)
          in (customSlots ?? const <String, CustomSlot>{}).entries)
        if (!folded.contains(key)) key: value,
      for (final a in sealedArguments) a.concept: a,
    };
  }

  /// Override entry kind. Default: [WrapperOverrideKind.resource].
  ///
  /// Determines which emitter consumes the override entry — `WrapperEmitter`
  /// for [WrapperOverrideKind.resource], `DataSourceWrapperEmitter` for
  /// [WrapperOverrideKind.dataSource].
  final WrapperOverrideKind kind;

  /// Output directory under `<output>/`. Required (no inference).
  ///
  /// For [WrapperOverrideKind.dataSource], must be exactly `'data'`
  /// (validated at load time).
  final String outputDir;

  /// Schema-stub body mode. Default: [SchemaStubBodyMode.nosuchmethod].
  ///
  /// The 12 resource yaml entries keep the default; the `google_project`
  /// data source yaml selects [SchemaStubBodyMode.bare] to reproduce the
  /// hand-written `_GoogleProjectSchemaInstance` exactly.
  final SchemaStubBodyMode schemaStubBodyMode;

  /// Optional file-leading comment placed after the import block and before
  /// the schema-stub class.
  ///
  /// Each line of the source string is prefixed with `// ` by the emitter.
  /// Used for operational notes (e.g. `data/google_project.dart` l.3-12
  /// explains why the file is exempt from `tool/regen_curated.dart`).
  ///
  /// `null` means "no file-leading comment".
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
    this.exactlyOneOf,
    this.atMostOneOf,
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
       exactlyOneOf = base.exactlyOneOf,
       atMostOneOf = base.atMostOneOf;

  /// This override with [dartTypeOverrides] replaced.
  WrapperOverride withDartTypeOverrides(
    Map<String, String> dartTypeOverrides,
  ) => WrapperOverride._copy(this, dartTypeOverrides: dartTypeOverrides);

  /// This override with the [sealedArguments] `deriveExactlyOne` derives,
  /// and the constructor and argMap orders that name each one's concept in
  /// place of its members.
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

/// A constructor slot an override supplies in place of the IR's: a
/// hand-written [CustomSlot] or a derived [SealedArgument].
sealed class OverrideSlot {
  const OverrideSlot();
}

/// One slot's worth of verbatim constructor + argMap snippets.
///
/// Used by [WrapperOverride.customSlots] to inject a hand-curated slot
/// that the IR cannot describe — either because the hand-written wrapper
/// retypes an IR slot (e.g. `BigQueryConfig?` instead of
/// `TfArg<Map<String, dynamic>>?`) or because the slot is virtual (e.g.
/// scheduler_job's sealed `SchedulerTarget`).
final class CustomSlot extends OverrideSlot {
  /// Verbatim constructor parameter declaration.
  ///
  /// Examples:
  /// - `'required SchedulerTarget target'` (required virtual slot)
  /// - `'BigQueryConfig? bigqueryConfig'` (optional helper-typed slot)
  /// - `'List<SecretTopic>? topics'` (optional list-of-helpers slot)
  ///
  /// The emitter wraps each entry with `'    '` indent and `,\n` so the
  /// declaration MUST NOT include either. It also MUST NOT include the
  /// `super.` prefix — those super-parameters are emitted separately by
  /// the emitter.
  final String paramDeclaration;

  /// Verbatim argMap entry text (one or more lines).
  ///
  /// Examples:
  /// - `"target.blockKey: TfArg.literal(target.encode()),"`
  ///   (required, dynamic-key entry)
  /// - `"if (bigqueryConfig != null) 'bigquery_config': TfArg.literal(bigqueryConfig.encode()),"`
  ///   (optional, guarded entry)
  /// - `"if (topics != null) 'topics': TfArg.literal(topics.map((t) => t.encode()).toList()),"`
  ///   (optional, list-of-helpers entry)
  ///
  /// The emitter wraps each entry with the appropriate indent and a
  /// trailing newline, so the value MUST NOT include leading whitespace.
  /// `dart_style` will rewrap long lines automatically; emit on a single
  /// line and trust the formatter.
  ///
  /// MUST end with a trailing `,` so multiple consecutive entries
  /// concatenate cleanly inside the argMap literal.
  final String argMapEntry;

  /// Optional migration hint (the `migrate:` sub-key).
  ///
  /// `terradart wrap --migrate-manifest` derives a slot's migration recipe
  /// from [paramDeclaration] / [argMapEntry] and the helper classes in the
  /// emitted file. When that derivation cannot describe the slot (an
  /// argMap entry with a computed key, a helper whose `encode()` is not
  /// field-per-key, ...), the curator records the slot as `manual` here
  /// with a reason instead of leaving the migrator to guess. The reason is
  /// surfaced verbatim in the manifest so `terradart migrate` can print it
  /// next to the untranslated HCL.
  final MigrateHint? migrate;

  const CustomSlot({
    required this.paramDeclaration,
    required this.argMapEntry,
    this.migrate,
  });
}

/// A curator's `migrate:` hint on one custom slot.
///
/// Phase 1 (#659) only knows one kind — `manual` — which pins the slot to
/// `MigrateSlotKind.manual` with a human-readable [reason]. The class is a
/// carrier (not a bare string) so later phases can add derivable kinds
/// without changing the YAML shape.
final class MigrateHint {
  /// Why the slot cannot be migrated mechanically. Non-empty.
  final String reason;

  const MigrateHint.manual({required this.reason});

  /// The `kind:` value this hint was declared with.
  String get kind => 'manual';
}

/// One exactly-one or at-most-one group of top-level inputs sealed into a
/// single constructor argument, or overlapping exactly-one groups joined
/// into one: a [SoloVariant] per shared member, one [JointVariant] for the
/// rest.
final class SealedArgument extends OverrideSlot {
  const SealedArgument({
    required this.concept,
    required this.sealedClass,
    required this.optional,
    required this.variants,
  });

  /// Snake-case slot name in `paramOrder` and `argMapOrder`. It may equal
  /// a member (`name` for `[name, name_prefix]`).
  final String concept;

  /// The sealed type the argument takes.
  final String sealedClass;

  /// Whether the group is at-most-one: the argument is nullable and spreads
  /// nothing when null. An exactly-one group's argument is required.
  final bool optional;

  /// The variants, in the order the sealed type declares them.
  final List<SealedVariant> variants;

  /// Each variant's class, in [variants] order.
  List<String> get variantClasses => [for (final v in variants) v.className];

  /// Every member the argument covers, in variant order.
  List<String> get members => [
    for (final v in variants)
      for (final l in v.leaves) l.tfName,
  ];
}

/// One variant of a sealed type: a [SoloVariant] sets one member, a
/// [JointVariant] one input of each part.
sealed class SealedVariant {
  const SealedVariant({required this.className});

  final String className;

  /// The factory constructor's name.
  String get ident;

  /// A Terraform argument the variant always sets.
  String get blockKey;

  /// Every member the variant can set, as it holds them.
  List<ExactlyOneVariant> get leaves;

  /// The classes the variant declares: its own, then any nested choice's
  /// type and variants.
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

/// The variant of overlapping exactly-one groups that sets one input of
/// each group's leftover part.
final class JointVariant extends SealedVariant {
  const JointVariant({
    required this.ident,
    required super.className,
    required this.parts,
  });

  @override
  final String ident;

  /// One per joined group, in group order. At least one is a [MemberPart].
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

  /// The members the variant sets, in part order.
  List<String> get members => [for (final l in leaves) l.tfName];
}

/// One required field of a [JointVariant].
sealed class JointPart {
  const JointPart();

  /// The field's Dart name.
  String get ident;

  /// Every member the field can set.
  List<ExactlyOneVariant> get leaves;
}

/// A part of one member: a plain field.
final class MemberPart extends JointPart {
  const MemberPart(this.member);

  final ExactlyOneVariant member;

  @override
  String get ident => member.ident;

  @override
  List<ExactlyOneVariant> get leaves => [member];
}

/// A part of several members, of which the variant sets exactly one: a
/// nested sealed choice.
final class ChoicePart extends JointPart {
  const ChoicePart({
    required this.ident,
    required this.sealedClass,
    required this.variants,
  });

  @override
  final String ident;

  final String sealedClass;

  /// One per member, in part order.
  final List<SoloVariant> variants;

  @override
  List<ExactlyOneVariant> get leaves => [for (final v in variants) v.member];

  /// The members, in part order.
  List<String> get members => [for (final v in variants) v.member.tfName];
}

/// One member of an exactly-one group as its sealed variant holds it.
typedef ExactlyOneVariant = ({
  /// The Terraform argument it sets, which is a solo variant's `blockKey`.
  String tfName,

  /// Dart field name.
  String ident,

  /// Non-nullable Dart field type.
  String fieldType,

  /// The wire value `encode()` writes under [tfName].
  String encodeExpr,

  /// The `TfArg` a resource's `argMap` holds under [tfName]; null for a
  /// variant inside a nested helper, which only encodes.
  String? argMapExpr,

  /// `@Deprecated` message of the member, if any.
  String? deprecation,

  /// The value the variant takes when the caller passes none — the empty
  /// helper of a block with no fields (`.avroFormat()`) — or null when the
  /// variant requires one.
  String? defaultValue,
});
