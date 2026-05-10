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
  /// Full class-level doc comment, including the leading `///` markers.
  /// Emitted verbatim immediately before the `final class` declaration.
  ///
  /// The string must NOT carry a trailing newline; the emitter writes it
  /// via `writeln`.
  ///
  /// `null` means "no class doc comment".
  final String? classDocComment;

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
  /// [customSlots]. The emitter resolves names by checking [customSlots]
  /// first, then falling back to the IR-derived snippets.
  ///
  /// `localName`, `lifecycle`, and `dependsOn` are super-parameters and
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
  /// shortcuts, etc.) inserted between `$sensitiveFields` and the closing
  /// `}` of the wrapper class.
  ///
  /// The string MUST already carry the proper indent (two spaces for
  /// member declarations) and a trailing newline; the emitter writes it
  /// via `write`, not `writeln`.
  ///
  /// `null` means "no extra getters".
  final String? extraGetters;

  /// Override for the `_<Pascal>SchemaInstance` block's leading comment.
  ///
  /// The hand-written wrappers are inconsistent: `google_pubsub_topic`
  /// carries a 5-line variant ("...keep this stub inline instead of
  /// constructing schemantic's generated concrete class..."), the IAM
  /// member family and other resources carry a 4-line variant ("...keep
  /// this stub inline. `noSuchMethod` satisfies..."). The emitter's
  /// default is the 4-line form (majority); resources that ship the
  /// 5-line form set this field to keep byte-diff parity.
  ///
  /// The string must carry the leading `// ` markers but NOT a trailing
  /// newline; the emitter writes it via `writeln`.
  ///
  /// `null` means "use the emitter's 4-line default".
  final String? schemaStubComment;

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
  final Map<String, String>? dartTypeOverrides;

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
  /// `null` means "no prelude".
  final String? prelude;

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
  /// The emitter resolves [paramOrder] / [argMapOrder] names against
  /// [customSlots] FIRST; if no entry, it falls back to IR-derived
  /// snippets from `_paramsByName` / `_argMapEntriesByName`. Listing a
  /// name in [customSlots] therefore overrides whatever the IR would
  /// have produced for that name.
  ///
  /// `null` means "no custom slots — every paramOrder name is resolved
  /// from the IR".
  final Map<String, CustomSlot>? customSlots;

  const WrapperOverride({
    this.classDocComment,
    this.paramOrder,
    this.argMapOrder,
    this.extraGetters,
    this.schemaStubComment,
    this.requiredParams,
    this.dartTypeOverrides,
    this.deprecatedParams,
    this.extraImports,
    this.prelude,
    this.customSlots,
  });
}

/// One slot's worth of verbatim constructor + argMap snippets.
///
/// Used by [WrapperOverride.customSlots] to inject a hand-curated slot
/// that the IR cannot describe — either because the hand-written wrapper
/// retypes an IR slot (e.g. `BigQueryConfig?` instead of
/// `TfArg<Map<String, dynamic>>?`) or because the slot is virtual (e.g.
/// scheduler_job's sealed `SchedulerTarget`).
final class CustomSlot {
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

  const CustomSlot({
    required this.paramDeclaration,
    required this.argMapEntry,
  });
}
