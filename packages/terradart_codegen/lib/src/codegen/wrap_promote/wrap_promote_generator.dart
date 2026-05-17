import '../../ir/resource_def.dart';
import '../../parser/mm_yaml_parser.dart';
import '../wrap_init/clock.dart';
import 'exactly_one_of_emitter.dart';
import 'min_items_assert_emitter.dart';
import 'prose_enum_extractor.dart';
import 'valid_values_emitter.dart';
import 'wrap_promote_marker.dart';

/// Pure orchestrator for `terradart wrap-promote`. No I/O.
///
/// Takes parsed inputs (IR + MM overrides + Clock) and returns the FULL
/// additions block (marker delimiters + banner + content). The caller is
/// responsible for stripping any existing marker section from the on-disk
/// yaml and appending this string.
class WrapPromoteGenerator {
  WrapPromoteGenerator({required this.clock});

  final Clock clock;

  /// Generates the wrap-promote additions block string for one resource.
  ///
  /// Returns the empty string when there are no MM-derived hints to add
  /// (no exactly_one_of groups + no field has enum_values).
  String generate({
    required String terraformType,
    required ResourceDef def,
    required MmResourceOverrides mm,
  }) {
    final resourcePascal = _snakeToPascal(terraformType);
    const exactlyEmitter = ExactlyOneOfEmitter();
    const validEmitter = ValidValuesEmitter();

    final body = StringBuffer();

    // 1. exactly_one_of groups → sealed class skeletons + customSlots.
    for (final group in mm.exactlyOneOfGroups) {
      body.write(exactlyEmitter.emit(
        groupMembers: group,
        resourcePascal: resourcePascal,
        def: def,
      ));
      body.writeln();
    }

    // 2. validValues per field → single prelude block containing all
    //    enums, followed by a commented dartTypeOverrides snippet.
    //    Phase 4.5.1 aggregates here (was per-enum prelude in Phase 4.3,
    //    which produced YAML duplicate-key violations).
    //
    //    Two enum sources, merged with MM yaml winning on conflict:
    //    - MM yaml's structured `enum_values:` blocks (`mm.fieldOverrides`).
    //    - The IR descriptions' "Possible values: A, B, C" prose
    //      (Phase 4.5.2 fallback). Conservative — see
    //      `prose_enum_extractor.dart`.
    const proseExtractor = ProseEnumExtractor();
    final proseEnums = proseExtractor.extract(def);
    final allEnums = <String, List<String>>{
      ...proseEnums,
      for (final e in mm.fieldOverrides.entries)
        if (e.value.enumValues != null && e.value.enumValues!.length >= 2)
          e.key: e.value.enumValues!,
    };

    final enumBodies = <String>[];
    final dartTypeOverrideEntries = <String>[];
    allEnums.forEach((field, ev) {
      enumBodies.add(validEmitter.emit(
        fieldName: field,
        enumValues: ev,
        resourcePascal: resourcePascal,
      ));
      final leaf = validEmitter.leafFieldName(field);
      final enumName = validEmitter.enumNameFor(
        fieldName: field,
        resourcePascal: resourcePascal,
      );
      dartTypeOverrideEntries.add('#   $leaf: $enumName');
    });
    if (enumBodies.isNotEmpty) {
      body.writeln('prelude: |');
      // Each enum body is already 2-space indented (`prelude: |2` shape).
      // Separate enums by a blank line.
      body.write(enumBodies.join('\n'));
      body.writeln();
      body.writeln(
          '# dartTypeOverrides entry (uncomment + integrate into the main yaml):');
      body.writeln('# dartTypeOverrides:');
      for (final entry in dartTypeOverrideEntries) {
        body.writeln(entry);
      }
      body.writeln();
    }

    // 3. min_items >= 1 list-shape nested blocks → assert hints.
    //    Curator-facing scaffold only — copies into hand-authored helper
    //    class. See `min_items_assert_emitter.dart` for scope rules.
    const minItemsEmitter = MinItemsAssertEmitter();
    final assertHints = minItemsEmitter.emit(def);
    if (assertHints.isNotEmpty) {
      body.write(assertHints);
      body.writeln();
    }

    if (body.isEmpty) return '';
    return WrapPromoteMarker.wrapWithMarkers(body.toString(), clock.now());
  }

  String _snakeToPascal(String snake) {
    final parts = snake.split('_');
    return parts
        .map((s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1))
        .join();
  }
}
