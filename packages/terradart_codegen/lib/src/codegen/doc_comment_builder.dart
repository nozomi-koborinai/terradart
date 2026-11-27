import '../ir/resource_def.dart';

String buildClassDocComment(ResourceDef def, {String? curatedDoc}) {
  final lines = <String>['/// Factory wrapper for `${def.terraformType}`.'];

  final description = def.description?.trim();
  if (description != null && description.isNotEmpty) {
    for (final paragraph in description.split(RegExp(r'\n[ \t]*\n'))) {
      final collapsed = paragraph.trim();
      if (collapsed.isEmpty) continue;
      lines.add('///');
      for (final line in _wrapParagraph(collapsed)) {
        lines.add('/// $line');
      }
    }
  }

  final curated = curatedDoc?.trimRight();
  if (curated != null && curated.isNotEmpty) {
    lines
      ..add('///')
      ..add(curated);
  }

  return lines.join('\n');
}

const int _docWidth = 76;

Iterable<String> _wrapParagraph(String paragraph) sync* {
  final words = paragraph.split(RegExp(r'\s+')).where((w) => w.isNotEmpty);
  var line = StringBuffer();
  for (final word in words) {
    if (line.isEmpty) {
      line.write(word);
    } else if (line.length + 1 + word.length <= _docWidth) {
      line
        ..write(' ')
        ..write(word);
    } else {
      yield line.toString();
      line = StringBuffer(word);
    }
  }
  if (line.isNotEmpty) yield line.toString();
}
