import '../../ir/nested_block.dart';
import '../../ir/resource_def.dart';
import '../naming.dart';

/// Emits curator-facing comment hints suggesting `assert(<slot>.length >= N)`
/// for every list-shaped nested block with `min_items >= 1 && max_items != 1`.
///
/// Output is comment-only — the curator must copy the suggested assert into
/// the helper class they author in their yaml's `prelude:` block. The emitter
/// cannot name the helper class itself because that's a curator-authored
/// abstraction (e.g. `AppHostingTrafficTarget` vs. `TrafficSplitBundle` are
/// both legitimate names for the same schema slot).
///
/// Scope per Plan 5.D-codegen PR 4:
/// - `nested_block.nesting in {list, set}`
/// - `nested_block.minItems != null && nested_block.minItems >= 1`
/// - `nested_block.maxItems != 1` (max_items==1 is already encoded as a
///   non-nullable `required SingleObj` parameter — an assert there is noise)
///
/// Scalar attribute constraints (`min_length`, `max_length`, `min`, `max`,
/// `regex`) are NOT covered here — they are handled at the schemantic layer
/// via `@StringField` and similar annotations.
class MinItemsAssertEmitter {
  const MinItemsAssertEmitter();

  /// Returns a multi-line comment block of assert hints, or empty string when
  /// the resource has no qualifying nested blocks. The result is intended to
  /// be appended verbatim inside the wrap-promote marker section.
  String emit(ResourceDef def) {
    final hints = <String>[];
    for (final nb in def.root.nestedBlocks) {
      if (nb.nesting != NestingMode.list && nb.nesting != NestingMode.set) {
        continue;
      }
      if (nb.minItems == null || nb.minItems! < 1) continue;
      if (nb.maxItems == 1) continue;
      hints.add(_hintFor(nb));
    }
    if (hints.isEmpty) return '';
    final buf = StringBuffer()
      ..writeln('# Assert hints (curator: integrate into helper class '
          'constructors):')
      ..writeln('# ');
    for (final hint in hints) {
      buf.write(hint);
    }
    return buf.toString();
  }

  String _hintFor(NestedBlockDef nb) {
    final camel = snakeToCamel(nb.name);
    final min = nb.minItems!;
    final entries = min == 1 ? 'entry' : 'entries';
    return '# class <HelperClassName> {\n'
        '#   const <HelperClassName>({required this.$camel})\n'
        '#     : assert($camel.length >= $min,\n'
        "#             '<HelperClassName>.$camel must have at least $min $entries '\n"
        "#             '(schema enforces min_items=$min)');\n"
        '# }\n'
        '# \n';
  }
}
