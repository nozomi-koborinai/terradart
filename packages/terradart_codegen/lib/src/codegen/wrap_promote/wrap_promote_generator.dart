import '../../ir/resource_def.dart';
import '../../parser/mm_yaml_parser.dart';
import '../wrap_init/clock.dart';
import 'exactly_one_of_emitter.dart';
import 'min_items_assert_emitter.dart';
import 'prose_enum_extractor.dart';
import 'valid_values_emitter.dart';
import 'wrap_promote_marker.dart';

class WrapPromoteGenerator {
  WrapPromoteGenerator({required this.clock});

  final Clock clock;

  String generate({
    required String terraformType,
    required ResourceDef def,
    required MmResourceOverrides mm,
  }) {
    final resourcePascal = _snakeToPascal(terraformType);
    const exactlyEmitter = ExactlyOneOfEmitter();
    const validEmitter = ValidValuesEmitter();

    final body = StringBuffer();

    for (final group in mm.exactlyOneOfGroups) {
      body.write(
        exactlyEmitter.emit(
          groupMembers: group,
          resourcePascal: resourcePascal,
          def: def,
        ),
      );
      body.writeln();
    }

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
      enumBodies.add(
        validEmitter.emit(
          fieldName: field,
          enumValues: ev,
          resourcePascal: resourcePascal,
        ),
      );
      final leaf = validEmitter.leafFieldName(field);
      final enumName = validEmitter.enumNameFor(
        fieldName: field,
        resourcePascal: resourcePascal,
      );
      dartTypeOverrideEntries.add('#   $leaf: $enumName');
    });
    if (enumBodies.isNotEmpty) {
      body.writeln('prelude: |');
      body.write(enumBodies.join('\n'));
      body.writeln();
      body.writeln(
        '# dartTypeOverrides entry (uncomment + integrate into the main yaml):',
      );
      body.writeln('# dartTypeOverrides:');
      for (final entry in dartTypeOverrideEntries) {
        body.writeln(entry);
      }
      body.writeln();
    }

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
