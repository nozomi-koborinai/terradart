/// Intermediate representation between axis-extraction (Generator) and
/// YAML emission (Emitter). Pure data; no I/O.
///
/// Phase 4.3's future `wrap-promote` subcommand will (a) parse an existing
/// `<resource>.yaml` back into a `WrapInitDraft`, (b) inject `customSlots` /
/// `prelude` axes from MM YAML `exactly_one_of` / `conflicts_with`, and
/// (c) re-emit via the unchanged `WrapInitEmitter`. The Draft is the
/// symmetric contract between the two subcommands.
class WrapInitDraft {
  const WrapInitDraft({
    required this.terraformType,
    required this.axes,
    required this.bannerDate,
  });

  /// e.g. `google_pubsub_topic`. Used in the banner comment.
  final String terraformType;

  /// Ordered list of axes. Emitted by `WrapInitEmitter` in this order.
  final List<WrapInitAxis> axes;

  /// Banner timestamp source. Set by Generator via injected Clock so L2
  /// goldens can be deterministic with `FixedClock`.
  final DateTime bannerDate;
}

/// One axis entry in a draft. Sealed so Phase 4.3 can add variants
/// (e.g. `CustomSlotsAxis`) and force exhaustive emit handling.
sealed class WrapInitAxis {
  const WrapInitAxis(this.key);

  /// The wrapper-override YAML key for this axis (e.g. `outputDir`,
  /// `classDocComment`).
  final String key;
}

/// Axis appears uncommented in the emitted YAML: `key: value`.
final class FilledAxis extends WrapInitAxis {
  const FilledAxis(super.key, this.value);

  /// `String` | `List<String>` | `Map<String, Object>` — emitter pattern-matches.
  final Object value;
}

/// Axis appears entirely commented-out in the emitted YAML, optionally
/// preceded by a banner explaining when to uncomment.
final class CommentedAxis extends WrapInitAxis {
  const CommentedAxis(super.key, {required this.value, this.banner});

  final Object value;
  final String? banner;
}

/// Axis is preceded by a `# TODO(wrap-init): ...` line. May carry a `seed`
/// (a recommended starting value the reviewer expands) or a `skeleton`
/// (commented placeholder showing the expected shape).
final class TodoAxis extends WrapInitAxis {
  const TodoAxis(
    super.key, {
    required this.todoMessage,
    this.seed,
    this.skeleton,
  });

  final String todoMessage;
  final Object? seed;
  final Object? skeleton;
}

/// Axis emits a comment block only, with no actual key-value pair. Reserved
/// for Phase 4.3 hooks. Phase 4.2 generator does NOT emit any of these.
final class BannerOnlyAxis extends WrapInitAxis {
  const BannerOnlyAxis(super.key, this.banner);

  final String banner;
}
