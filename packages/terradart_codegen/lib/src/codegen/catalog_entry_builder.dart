import 'package:meta/meta.dart';

import '../ir/resource_def.dart';
import 'catalog_metadata_emitter.dart';
import 'constructor_params.dart';
import 'doc_comment_builder.dart';
import 'naming.dart';
import 'sensitive_set_emitter.dart';
import 'wrapper_overrides/wrapper_override.dart';

CatalogEntryData buildCatalogEntry({
  required String tfType,
  required WrapperOverride override,
  required ResourceDef def,
  required String kind,
  required String emittedSource,
}) {
  final className = kind == 'dataSource'
      ? dataSourceClassName(tfType)
      : snakeToPascal(tfType);
  final docComment = override.deriveClassDoc
      ? _stripDocMarkers(
          buildClassDocComment(def, curatedDoc: override.curatedDoc),
        )
      : (def.description ?? '');
  return CatalogEntryData(
    tfType: tfType,
    className: className,
    barrel: override.outputDir,
    kind: kind,
    summary: firstSentence(docComment),
    docComment: docComment,
    constructorParams: catalogConstructorParams(def, override),
    nestedTypes: scanNestedTypes(emittedSource, mainClass: className),
    sensitiveFields: sensitiveFieldPaths(
      def,
      extraSensitiveFields: override.extraSensitiveFields,
    ),
  );
}

@visibleForTesting
List<String> catalogConstructorParams(
  ResourceDef def,
  WrapperOverride override,
) {
  final slots = override.kind == WrapperOverrideKind.dataSource
      ? orderedDataSourceConstructorParams(def, override.paramOrder)
      : orderedConstructorParams(def, override.paramOrder);
  final overrideSlots = override.overrideSlots;
  final params = <String>['localName'];
  for (final name in slots) {
    params.add(switch (overrideSlots[name]) {
      final CustomSlot custom => paramIdentifier(custom.paramDeclaration),
      _ => snakeToDartIdent(name),
    });
  }
  return params;
}

String paramIdentifier(String paramDeclaration) {
  final matches = RegExp(
    r'[A-Za-z_$][A-Za-z0-9_$]*',
  ).allMatches(paramDeclaration).toList();
  return matches.isEmpty ? paramDeclaration.trim() : matches.last.group(0)!;
}

@visibleForTesting
List<String> scanNestedTypes(String source, {required String mainClass}) {
  final re = RegExp(
    r'^(?:final\s+|sealed\s+|abstract\s+|base\s+|interface\s+|mixin\s+)*'
    r'(?:(?:class|enum|mixin)\s+|extension\s+type\s+(?:const\s+)?)'
    r'([A-Za-z_$][A-Za-z0-9_$]*)',
    multiLine: true,
  );
  final out = <String>[];
  for (final m in re.allMatches(source)) {
    final name = m.group(1)!;
    if (name == mainClass) continue;
    out.add(name);
  }
  return out;
}

String _stripDocMarkers(String doc) {
  final lines = doc.split('\n').map((line) {
    final m = RegExp(r'^\s*///\s?').firstMatch(line);
    return m == null ? line : line.substring(m.end);
  });
  return lines.join('\n').trimRight();
}

const _sentenceAbbreviations = {'e.g', 'i.e', 'etc', 'vs'};

@visibleForTesting
String firstSentence(String doc) {
  final trimmed = doc.trimLeft();
  if (trimmed.isEmpty) return '';

  var searchFrom = 0;
  while (searchFrom < trimmed.length) {
    final dot = trimmed.indexOf('.', searchFrom);
    if (dot < 0) break;
    final atEnd = dot == trimmed.length - 1;
    final followedByWhitespace =
        !atEnd && RegExp(r'\s').hasMatch(trimmed[dot + 1]);
    if (atEnd || followedByWhitespace) {
      if (!_endsWithAbbreviation(trimmed, dot)) {
        return _collapse(trimmed.substring(0, dot + 1));
      }
    }
    searchFrom = dot + 1;
  }
  return _collapse(trimmed);
}

bool _endsWithAbbreviation(String text, int dotIndex) {
  var start = dotIndex;
  while (start > 0 && !RegExp(r'\s').hasMatch(text[start - 1])) {
    start--;
  }
  final token = text.substring(start, dotIndex).toLowerCase();
  return _sentenceAbbreviations.contains(token);
}

String _collapse(String s) => s.replaceAll(RegExp(r'\s+'), ' ').trim();
