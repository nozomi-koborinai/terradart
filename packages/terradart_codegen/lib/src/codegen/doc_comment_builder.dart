import '../ir/resource_def.dart';

/// Builds the class-level doc comment for a [ResourceDef].
///
/// Phase A4: the class doc used to live entirely in each override's
/// hand-written `classDocComment` axis. This builder derives a **minimal**
/// doc from the IR so it converges across agents/models:
///
/// - Line 1: ``/// Factory wrapper for `<terraformType>`.``
/// - The resource summary, rewrapped from [ResourceDef.description] (already
///   merged from the MM YAML `description` by `ir_merger.dart`). Source
///   hard-wraps are collapsed and the words are re-flowed at [_docWidth]
///   columns so the output is independent of how the upstream author wrapped
///   the description. Blank lines delimit paragraphs and are preserved.
/// - [curatedDoc] (③ frozen): artisanal prose the IR cannot derive (ASCII
///   diagrams, variant guidance, worked `Example` blocks), appended verbatim.
///
/// No required-identity list, no field-by-field descriptions, and no generated
/// worked example are produced — those re-introduce per-model divergence and
/// are intentionally out of scope (see the convergent-curation design).
///
/// Returns a string with NO trailing newline; the caller writes it via
/// `writeln` (matching the legacy `classDocComment` contract).
String buildClassDocComment(ResourceDef def, {String? curatedDoc}) {
  final lines = <String>['/// Factory wrapper for `${def.terraformType}`.'];

  final description = def.description?.trim();
  if (description != null && description.isNotEmpty) {
    for (final paragraph in description.split(RegExp(r'\n[ \t]*\n'))) {
      final collapsed = paragraph.trim();
      if (collapsed.isEmpty) continue;
      lines.add('///'); // blank doc line before each paragraph
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

/// Doc-comment text width: 80 columns minus the 4-char `/// ` prefix.
const int _docWidth = 76;

/// Greedily wraps [paragraph] (with all interior whitespace collapsed) into
/// lines no wider than [_docWidth].
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
