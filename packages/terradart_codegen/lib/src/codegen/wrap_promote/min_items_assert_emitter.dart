import '../../ir/nested_block.dart';
import '../../ir/resource_def.dart';
import '../naming.dart';

class MinItemsAssertEmitter {
  const MinItemsAssertEmitter();

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
      ..writeln(
        '# Assert hints (curator: integrate into helper class '
        'constructors):',
      )
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
