import '../../ir/resource_def.dart';
import '../../parser/mm_yaml_parser.dart';
import '../wrap_init/clock.dart';
import 'exactly_one_of_emitter.dart';
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

    // 2. validValues (enum_values) per field → Dart enum + dartTypeOverrides.
    mm.fieldOverrides.forEach((field, constraints) {
      final ev = constraints.enumValues;
      if (ev == null || ev.length < 2) return;
      body.write(validEmitter.emit(
        fieldName: field,
        enumValues: ev,
        resourcePascal: resourcePascal,
      ));
      body.writeln();
    });

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
