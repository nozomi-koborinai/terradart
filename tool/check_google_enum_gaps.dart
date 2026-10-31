// ignore_for_file: avoid_print
//
// google lane gate: in the GA `hashicorp/google` overrides,
// schema-documented finite values must not surface as TfArg<String> or
// TfArg<List<String>> when the wrapper override lacks dartTypeOverrides /
// prelude enum coverage. Resources and data sources are both checked.
// Only that lane needs it — google-beta derives its enums from MM YAML
// (--mm-hints), and aws / cloudflare / appwrite from provider hints
// (--provider-enums).
//
// Top-level gaps (THIN / PARTIAL) and NESTED_PARTIAL (customSlot helpers
// still using TfArg<String> or TfArg<List<String>> for schema enums) fail
// CI by default.
// NESTED_THIN (whole block still TfArg<Map>) prints as advisory unless
// --strict-nested is passed.
//
// An input's value set is its Magic Modules `enum_values` (top-level or
// nested), else the one its schema description lists: the order and the
// parsers `wrap` types inputs with. A description neither of those reads is
// still read by [cueValues], a looser reader that does not share the
// parser's grammar, so a wording the parser skips fails here instead of
// passing unseen. Its gaps end in `\tcue`; one that is prose, not a value
// set, needs a reasoned line in tool/enum_gap_cue_prose.yaml.
//
// Usage:
//   dart tool/check_google_enum_gaps.dart
//   dart tool/check_google_enum_gaps.dart --strict-nested
//   dart tool/check_google_enum_gaps.dart --generated-root <dir>

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/enum_value_parser.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:yaml/yaml.dart';

final _root = Directory.current;

final _schema =
    jsonDecode(
          File(
            p.join(
              _root.path,
              'packages/terradart_codegen/test/fixtures/wrap/source/schema.json',
            ),
          ).readAsStringSync(),
        )
        as Map<String, dynamic>;

final _resources =
    (_schema['provider_schemas']
            as Map<String, dynamic>)['registry.terraform.io/hashicorp/google']
        as Map<String, dynamic>;

final _resourceSchemas = _resources['resource_schemas'] as Map<String, dynamic>;

final _dataSourceSchemas =
    _resources['data_source_schemas'] as Map<String, dynamic>;

final _overrideDir = Directory(
  p.join(
    _root.path,
    'packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml',
  ),
);

final _mmDir = Directory(
  p.join(_root.path, 'packages/terradart_codegen/test/fixtures/wrap/source/mm'),
);

/// `--generated-root <dir>` reads the wrappers from another tree, so a test
/// can seed a gap without touching the package.
late final Directory _genDir;

typedef NestedEnumSite = ({
  List<String> blockPath,
  String attr,
  List<String> values,
  bool cueOnly,
});

Map<String, dynamic> _loadOverride(String tfType) {
  final file = File(p.join(_overrideDir.path, '$tfType.yaml'));
  return Map<String, dynamic>.from(
    loadYaml(file.readAsStringSync()) as YamlMap,
  );
}

bool _isThin(Map<String, dynamic> ov) {
  const rich = {
    'prelude',
    'dartTypeOverrides',
    'deriveEnums',
    'customSlots',
    'curatedDoc',
    'classDocComment',
  };
  return !ov.keys.any(rich.contains);
}

String _camel(String snake) {
  final parts = snake.split('_');
  return parts.first +
      parts.skip(1).map((p) => p[0].toUpperCase() + p.substring(1)).join();
}

String _blockPathLabel(List<String> blockPath, String attr) =>
    '${blockPath.join('.')}.$attr';

final _ctorStart = RegExp(r'\(\s*super\.localName\s*,\s*\{');
final _ctorEnd = RegExp(r'\}\s*\)\s*:\s*super\s*\(');
final _rawCtorField = RegExp(
  r'(?:required\s+)?TfArg\s*<\s*(?:String|List\s*<\s*String\s*>)\s*>\s*\??\s+(\w+)',
);

/// Constructor inputs still typed `TfArg<String>` or `TfArg<List<String>>`.
///
/// `dart format` splits `(super.localName, {` and `}) : super(` across
/// lines, and it can wrap inside `TfArg<List<String>>`. Matching through
/// whitespace keeps a formatted factory in the check.
Set<String> ctorRawStringFields(String source) {
  final start = _ctorStart.firstMatch(source);
  if (start == null) return {};
  final end = _ctorEnd.firstMatch(source.substring(start.end));
  if (end == null) return {};
  final ctor = source.substring(start.start, start.end + end.start);
  return {for (final match in _rawCtorField.allMatches(ctor)) match.group(1)!};
}

final _factoryStart = RegExp(r'const\s+factory\s+[A-Za-z0-9_.]+\s*\(');

/// `TfArg<String>` and `TfArg<List<String>>` parameters of sealed variant
/// factories. A value set moved into a sealed argument is not on the
/// resource constructor (`appEngineBundledServices(...)`).
Set<String> sealedVariantRawStringFields(String source) {
  final fields = <String>{};
  for (final match in _factoryStart.allMatches(source)) {
    final open = match.end - 1;
    final close = _matchingParen(source, open);
    if (close < 0) continue;
    final params = source.substring(open + 1, close);
    for (final field in _rawCtorField.allMatches(params)) {
      fields.add(field.group(1)!);
    }
  }
  return fields;
}

int _matchingParen(String source, int open) {
  var depth = 0;
  var quote = '';
  for (var i = open; i < source.length; i++) {
    final char = source[i];
    if (quote.isNotEmpty) {
      if (char == '\\' && i + 1 < source.length) {
        i++;
        continue;
      }
      if (char == quote) quote = '';
      continue;
    }
    if (char == "'" || char == '"') {
      quote = char;
      continue;
    }
    if (char == '(') {
      depth++;
    } else if (char == ')') {
      depth--;
      if (depth == 0) return i;
    }
  }
  return -1;
}

/// Output-only attribute: computed, and neither optional nor required.
///
/// Same meaning as `Constraints.computedOnly`. An optional computed input
/// is still a constructor parameter.
bool schemaAttrIsComputedOnly(Map<String, dynamic> meta) =>
    meta['computed'] == true &&
    meta['optional'] != true &&
    meta['required'] != true;

typedef _GapTarget = ({String terraformType, Map<String, dynamic>? schema});

/// Schema block for an override file. Data-source files are
/// `data_<type>.yaml` (legacy `google_project.yaml` stays unprefixed).
_GapTarget _gapTarget({
  required String stem,
  required Map<String, dynamic> override,
  required Map<String, dynamic> resourceSchemas,
  required Map<String, dynamic> dataSourceSchemas,
}) {
  final kind = override['kind'] == 'data_source'
      ? WrapperOverrideKind.dataSource
      : WrapperOverrideKind.resource;
  final terraformType = terraformTypeFromOverrideStem(stem, kind);
  final schemas = kind == WrapperOverrideKind.dataSource
      ? dataSourceSchemas
      : resourceSchemas;
  final raw = schemas[terraformType];
  return (
    terraformType: terraformType,
    schema: raw is Map<String, dynamic> ? raw : null,
  );
}

final _cue = RegExp(
  r'\b(?:(?:possible|allowed|supported|valid|accepted|acceptable)\s+'
  r'(?:values|options)|one\s+of|either)\b',
  caseSensitive: false,
);
final _sentenceEnd = RegExp(r'\.(?:\s|$)');
final _cueToken = RegExp(
  r'''"[^"\s]+"|'[^'\s]+'|\b[A-Z][A-Z0-9]*(?:[_-][A-Z0-9]+)*[A-Z0-9]\b|'''
  r'\b[A-Z][a-z0-9]+(?:[A-Z][a-z0-9]*)+\b|'
  r'\b[a-z][a-z0-9_]*\([^()\s]*\)',
);

/// The values a description names after a value-set cue, read without
/// `parseEnumValuesFromDescription`, so a wording the parser skips still
/// reaches the gap report. Deliberately looser than the parser: it takes
/// every quoted, upper-case or PascalCase word, and every call-shaped
/// word (`deny(403)`, `deny(STATUS)`), between a cue (`Possible values`,
/// `Valid options`, `One of`, `either`) and the end of its sentence.
List<String>? cueValues(String? description) {
  if (description == null) return null;
  for (final m in _cue.allMatches(description)) {
    final rest = description.substring(m.end);
    final end = _sentenceEnd.firstMatch(rest)?.start ?? rest.length;
    final values = <String>{
      for (final t in _cueToken.allMatches(rest.substring(0, end)))
        t.group(0)!.replaceAll(RegExp('^["\']|["\']\$'), ''),
    }.toList();
    if (values.length >= 2) return values;
  }
  return null;
}

final _enumLink = RegExp(
  r'https?://\S*/reference/rest/\S*#[A-Z][A-Za-z0-9]*\b',
);

/// Whether [description] carries a value-set cue (`Possible values`, `Valid
/// options`, `One of`, `either`) or links a REST reference anchor that may
/// name a canonical enum, whatever tokens follow it. The tokens decide
/// nothing: every such string input is typed or has a reasoned line in
/// tool/enum_gap_cue_prose.yaml.
bool hasValueSetCue(String? description) =>
    description != null &&
    (_cue.hasMatch(description) || _enumLink.hasMatch(description));

/// The value set the gap report holds an input to: Magic Modules
/// `enum_values`, else the parser's reading, else [cueValues] (`cueOnly`).
/// None for a description the parser's [describesOpenSet] calls partial:
/// the same rule keeps that input a string in `wrap`.
({List<String> values, bool cueOnly})? describedValues(
  String? description,
  List<String>? mm,
) {
  final known = mm ?? parseEnumValuesFromDescription(description);
  if (known != null) return (values: known, cueOnly: false);
  if (description != null && describesOpenSet(description)) return null;
  final cue =
      cueValues(description) ??
      (hasValueSetCue(description) ? const <String>[] : null);
  return cue == null ? null : (values: cue, cueOnly: true);
}

String _cueTag(bool cueOnly) => cueOnly ? '\tcue' : '';

/// Top-level `THIN` / `PARTIAL` lines for one override.
///
/// [stem] is the override file name without `.yaml`. An input's value set
/// is its Magic Modules `enum_values` in [mmValues] ([mmEnumValues]), else
/// the one its schema description lists, the order `wrap` reads them in.
List<String> topLevelEnumGaps({
  required String stem,
  required Map<String, dynamic> override,
  required Map<String, dynamic> resourceSchemas,
  required Map<String, dynamic> dataSourceSchemas,
  required String? generatedSource,
  Map<String, List<String>> mmValues = const {},
}) {
  final target = _gapTarget(
    stem: stem,
    override: override,
    resourceSchemas: resourceSchemas,
    dataSourceSchemas: dataSourceSchemas,
  );
  final schema = target.schema;
  if (schema == null || generatedSource == null) return const [];
  final fields = {
    ...ctorRawStringFields(generatedSource),
    ...sealedVariantRawStringFields(generatedSource),
  };
  final thin = _isThin(override);
  final gaps = <String>[];
  final attrs =
      ((schema)['block'] as Map)['attributes'] as Map<String, dynamic>;
  for (final entry in attrs.entries) {
    final attr = entry.key;
    final meta = Map<String, dynamic>.from(entry.value as Map);
    if (schemaAttrIsComputedOnly(meta)) continue;
    final found = describedValues(
      meta['description'] as String?,
      mmValues[attr],
    );
    if (found == null) continue;
    final camel = _camel(attr);
    if (!fields.contains(camel)) continue;
    gaps.add(
      '${thin ? "THIN" : "PARTIAL"}\t${target.terraformType}.$attr\t'
      '${found.values.join(", ")}${_cueTag(found.cueOnly)}',
    );
  }
  return gaps;
}

/// The `enum_values` of every Magic Modules input in [mmYaml], keyed by
/// dotted Terraform path: the table `wrap --mm-groups` types inputs from
/// ([MmResourceOverrides.enumValuesByPath]).
Map<String, List<String>> mmEnumValues(String mmYaml) =>
    const MmYamlParser().parseString(mmYaml).enumValuesByPath;

Map<String, List<String>> _mmValues(String tfType) {
  final file = File(p.join(_mmDir.path, '$tfType.yaml'));
  if (!file.existsSync()) return const {};
  return mmEnumValues(file.readAsStringSync());
}

String? _generatedSource(String tfType, Map<String, dynamic> ov) {
  final outDir = ov['outputDir'] as String?;
  if (outDir == null) return null;
  final genFile = File(p.join(_genDir.path, outDir, '$tfType.dart'));
  if (!genFile.existsSync()) return null;
  return genFile.readAsStringSync();
}

Set<String> _customSlotTerraformKeys(Map<String, dynamic> ov) {
  final slots = Map<String, dynamic>.from(ov['customSlots'] as YamlMap? ?? {});
  final keys = <String>{};
  for (final entry in slots.entries) {
    keys.add(entry.key);
    final slot = Map<String, dynamic>.from(entry.value as Map);
    final argMapEntry = slot['argMapEntry'] as String? ?? '';
    for (final m in RegExp("'([^']+)'\\s*:").allMatches(argMapEntry)) {
      keys.add(m.group(1)!);
    }
  }
  return keys;
}

bool _customSlotCoversBlock(Map<String, dynamic> ov, List<String> blockPath) {
  if (blockPath.isEmpty) return false;
  final slotKeys = _customSlotTerraformKeys(ov);
  // A top-level customSlot (e.g. `rules` → schema `rule`) types the subtree.
  for (var i = blockPath.length; i > 0; i--) {
    if (slotKeys.contains(blockPath[i - 1])) return true;
  }
  return false;
}

/// Generated source of the helper a custom slot uses for [blockPath], when
/// that helper is a class in this package. A slot can point at a class in
/// another file (`EventarcMessageBusLoggingConfig`), so the resource file
/// alone does not show the field's type.
String? _helperTextForBlock(Map<String, dynamic> ov, List<String> blockPath) {
  final slots = ov['customSlots'];
  if (slots is! Map) return null;
  for (var i = blockPath.length; i > 0; i--) {
    final slot = slots[blockPath[i - 1]];
    if (slot is! Map) continue;
    final declaration = slot['paramDeclaration'];
    if (declaration is! String) continue;
    final className = _helperClassName(declaration);
    if (className == null) continue;
    final text = _classSource(className);
    if (text != null) return text;
  }
  return null;
}

const _helperClassSkip = {'List', 'Map', 'Set', 'TfArg', 'String', 'Object'};

String? _helperClassName(String declaration) {
  final names = [
    for (final match in RegExp(
      r'\b[A-Z][A-Za-z0-9]*\b',
    ).allMatches(declaration))
      if (!_helperClassSkip.contains(match.group(0))) match.group(0)!,
  ];
  if (names.isEmpty) return null;
  return names.last;
}

Map<String, String>? _classSources;

String? _classSource(String className) {
  final index = _classSources ??= _indexClassSources();
  return index[className];
}

Map<String, String> _indexClassSources() {
  final out = <String, String>{};
  if (!_genDir.existsSync()) return out;
  final className = RegExp(r'\bclass ([A-Z][A-Za-z0-9]*)\b');
  for (final file in _genDir.listSync(recursive: true).whereType<File>()) {
    if (!file.path.endsWith('.dart')) continue;
    final text = file.readAsStringSync();
    for (final match in className.allMatches(text)) {
      out.putIfAbsent(match.group(1)!, () => text);
    }
  }
  return out;
}

/// Collapses runs of whitespace (including newlines) to a single space.
///
/// `dart_style` wraps a field declaration across multiple lines once its
/// type name is long enough (routine for `deriveNestedTypes` classes, whose
/// names are `ResourcePrefix + full block path + attr name` chains) — e.g.
/// `final TfArg<\n  VeryLongEnumClassName\n>?\n  fieldName;`, sometimes with
/// the wrap landing INSIDE the generic's angle brackets (`TfArg<\n  Foo\n>?`,
/// three whitespace-separated tokens even after normalizing). The field
/// -detection regexes below (`[^;]+?` for the type, not `\S+`) tolerate an
/// arbitrarily-wrapped type as long as it contains no literal semicolon
/// (true of every Dart type), so normalizing first just keeps the captured
/// type text comparable to its un-wrapped form (see `_declaredFieldType`).
String _normalizeWhitespace(String s) => s.replaceAll(RegExp(r'\s+'), ' ');

/// The declared type(s) of every `final <type> <camel>;` field named [camel]
/// in [genText] (already whitespace-normalized), with internal whitespace
/// stripped so a wrap-then-normalize round trip (`TfArg< Foo >?`) reads the
/// same as the never-wrapped form (`TfArg<Foo>?`). Empty when no such field
/// exists. More than one entry is possible — and INTENTIONALLY not resolved
/// to "the right one" — when an unrelated block reuses the same attr name
/// (e.g. top-level `type` vs a nested block's own `type`); see
/// [nestedEnumFieldIsGap] for why that's the accepted heuristic.
Iterable<String> _declaredFieldTypes(String genText, String camel) sync* {
  for (final m in RegExp('final ([^;]+?)\\s+$camel\\s*;').allMatches(genText)) {
    yield m.group(1)!.replaceAll(' ', '');
  }
}

bool _nestedFieldDeclared(String genText, String camel) {
  return _declaredFieldTypes(genText, camel).isNotEmpty;
}

const _rawGapTypes = {
  'TfArg<String>',
  'TfArg<String>?',
  'TfArg<List<String>>',
  'TfArg<List<String>>?',
};

/// Whether [genText] encodes [attr] as one of [values] in a literal, the
/// way a hand-written variant pins a single-value input
/// (`'array_config': 'CONTAINS'`): the caller never passes a string.
bool encodesFixedValue(String genText, String attr, List<String> values) =>
    RegExp(
      "'${RegExp.escape(attr)}': '(?:${values.map(RegExp.escape).join('|')})'",
    ).hasMatch(genText);

/// The generated helper class for [blockPath] in [genText], found by the
/// "Typed helper for the block" doc comment `wrap` writes on it, or
/// null when the block has no class of its own (a shared, sealed or
/// hand-written helper). A field name repeats across helpers
/// (`boot_disk.interface`, `scratch_disk.interface`), so only the block's own
/// class says how its field is typed.
String? helperClassText(String genText, List<String> blockPath) {
  final start = genText.indexOf(
    '/// Typed helper for the `${blockPath.join('.')}` block of',
  );
  if (start < 0) return null;
  final end = genText.indexOf('\n}\n', start);
  return genText.substring(start, end < 0 ? genText.length : end + 2);
}

/// The classes that hold [blockPath]'s fields in [genText]: the block's
/// class, found by following field types from the resource class down
/// (else by the doc comment [helperClassText] finds), plus the variants of
/// any sealed field it holds. Null when neither reaches a class (a
/// hand-written helper), never the whole file: a field name repeats across
/// helpers, and another block's field says nothing about this one.
String? blockClassText(String genText, List<String> blockPath) {
  var text = _classText(
    genText,
    RegExp(
      r'^(?:final\s+)?class\s+\w+\s+extends\s+(?:Resource|Data)\b',
      multiLine: true,
    ),
  );
  for (final segment in blockPath) {
    if (text == null) break;
    text = _childClassText(genText, text, segment);
  }
  text ??= helperClassText(genText, blockPath);
  return text == null ? null : _withSealedFields(genText, text);
}

String? _namedClassText(String genText, String name) => _classText(
  genText,
  RegExp(
    '^(?:(?:final|sealed|abstract|base|interface)\\s+)*class\\s+'
    '${RegExp.escape(name)}\\b',
    multiLine: true,
  ),
);

/// The helper type names of [parent]'s field or constructor parameter
/// [field].
Iterable<String> _fieldTypeNames(String parent, String field) sync* {
  for (final type in [
    ..._declaredFieldTypes(parent, field),
    for (final m in RegExp(
      '([A-Z][A-Za-z0-9_<>?]*)\\s+$field\\s*[,)]',
    ).allMatches(parent))
      m.group(1)!,
  ]) {
    if (_helperTypeName(type) case final name?) yield name;
  }
}

/// The class of [parent]'s `segment` block: the type of the field its
/// encode map writes under that key (`'boot_disk': ?bootDisk?.encode()`)
/// or of the field named after it; a variant of a sealed field of
/// [parent] whose `blockKey` is [segment] (a block a sealed argument
/// holds); else the one variant in the file with that `blockKey`.
String? _childClassText(String genText, String parent, String segment) {
  final keyed = RegExp(
    "'${RegExp.escape(segment)}':\\s*(?:TfArg\\.literal\\()?"
    "\\??\\[?\\s*\\??(\\w+)",
  ).firstMatch(parent)?.group(1);
  for (final field in [?keyed, _camel(segment)]) {
    for (final name in _fieldTypeNames(parent, field)) {
      final found = _namedClassText(genText, name);
      if (found == null) continue;
      if (!found.startsWith('sealed')) {
        return _unwrapped(genText, found, segment);
      }
      final variant = _variantClassText(genText, segment, of: name);
      if (variant != null) return _unwrapped(genText, variant, segment);
      return _sealedFamilyText(genText, name, found);
    }
  }
  for (final name in _sealedFieldTypes(genText, parent)) {
    final variant = _variantClassText(genText, segment, of: name);
    if (variant != null) return _unwrapped(genText, variant, segment);
  }
  final variant = _variantClassText(genText, segment);
  return variant == null ? null : _unwrapped(genText, variant, segment);
}

/// The sealed classes [parent]'s fields and parameters are typed with.
List<String> _sealedFieldTypes(String genText, String parent) => [
  for (final m in RegExp(
    r'(?:final\s+|^\s*(?:required\s+)?)([A-Z][A-Za-z0-9_<>?]*)\s+\w+\s*[;,)]',
    multiLine: true,
  ).allMatches(parent))
    if (_helperTypeName(m.group(1)!) case final name?)
      if (_namedClassText(genText, name)?.startsWith('sealed') ?? false) name,
];

/// [text] plus the variants of every sealed field it holds, whose classes
/// set the block's own fields (`...mode.encode()`).
String _withSealedFields(String genText, String text) {
  final out = StringBuffer(text);
  for (final name in _sealedFieldTypes(genText, text).toSet()) {
    if (text.startsWith('sealed class $name')) continue;
    out.write(_sealedFamilyText(genText, name, ''));
  }
  return out.toString();
}

String? _classText(String genText, RegExp start) {
  final m = start.firstMatch(genText);
  if (m == null) return null;
  final end = genText.indexOf('\n}\n', m.start);
  return genText.substring(m.start, end < 0 ? genText.length : end + 2);
}

/// `List<FooBar>?` → `FooBar`; null for a `TfArg` or other non-helper type.
String? _helperTypeName(String type) {
  if (type.startsWith('TfArg<')) return null;
  final names = RegExp(r'[A-Z][A-Za-z0-9_]*')
      .allMatches(type)
      .map((m) => m.group(0)!)
      .where((n) => n != 'List' && n != 'Map' && n != 'String');
  return names.isEmpty ? null : names.last;
}

/// A variant that holds its block in its one field (`final BigqueryJobCopy
/// copy;`) stands for that field's class.
String _unwrapped(String genText, String found, String segment) {
  if (!found.contains("blockKey => '$segment'")) return found;
  final fields = RegExp(r'final ([^;]+?)\s+\w+\s*;').allMatches(found).toList();
  if (fields.length != 1) return found;
  final name = _helperTypeName(fields.single.group(1)!.replaceAll(' ', ''));
  if (name == null) return found;
  final inner = _namedClassText(genText, name);
  if (inner == null) return found;
  return inner.startsWith('sealed')
      ? _sealedFamilyText(genText, name, inner)
      : inner;
}

/// A block that is one sealed choice of its fields: the sealed class and
/// every variant class that extends it, each variant setting one field.
String _sealedFamilyText(String genText, String name, String sealed) {
  final out = StringBuffer(sealed);
  for (final m in _variantStarts(genText, name)) {
    final end = genText.indexOf('\n}\n', m.start);
    out.write(genText.substring(m.start, end < 0 ? genText.length : end + 2));
  }
  return out.toString();
}

Iterable<RegExpMatch> _variantStarts(String genText, String? of) => RegExp(
  '^(?:final\\s+)?class\\s+\\w+\\s+extends\\s+'
  '${of == null ? '\\w+' : RegExp.escape(of)}\\b',
  multiLine: true,
).allMatches(genText);

/// The variant whose `blockKey` is [segment]: among [of]'s variants, or
/// the one such class in the file.
String? _variantClassText(String genText, String segment, {String? of}) {
  final found = <String>[];
  for (final m in _variantStarts(genText, of)) {
    final end = genText.indexOf('\n}\n', m.start);
    final text = genText.substring(m.start, end < 0 ? genText.length : end + 2);
    if (text.contains("String get blockKey => '$segment';")) found.add(text);
  }
  return found.length == 1 ? found.single : null;
}

bool nestedEnumFieldIsGap(String genText, String camel) {
  var sawRaw = false;
  for (final type in _declaredFieldTypes(genText, camel)) {
    if (!_rawGapTypes.contains(type)) {
      // An enum or helper with this name means covered, even when another
      // raw string field shares the name (top-level `type` vs nested `type`).
      return false;
    }
    sawRaw = true;
  }
  return sawRaw;
}

/// Whether [blockPath] (or an ancestor of it) is one of [ov]'s
/// `nestedTypeExcludes` entries — i.e. a NESTED_THIN site the maintainer
/// deliberately froze when flipping `deriveNestedTypes: true`, rather than
/// one nobody has migrated yet. Only meaningful when [ov] actually sets
/// `deriveNestedTypes: true`; an override that never turned the gate on has
/// no "frozen" sites, only not-yet-migrated ones.
bool _isFrozenByExclude(Map<String, dynamic> ov, List<String> blockPath) {
  if (ov['deriveNestedTypes'] != true) return false;
  final excludesRaw = ov['nestedTypeExcludes'] as YamlList?;
  if (excludesRaw == null || excludesRaw.isEmpty) return false;
  final excludes = excludesRaw.map((e) => e.toString()).toSet();
  for (var i = blockPath.length; i > 0; i--) {
    if (excludes.contains(blockPath.sublist(0, i).join('.'))) return true;
  }
  return false;
}

List<NestedEnumSite> collectNestedEnumSites(
  Map<String, dynamic> block, {
  Map<String, List<String>> mmValues = const {},
}) {
  final sites = <NestedEnumSite>[];

  void walk(Map<String, dynamic> node, List<String> path) {
    final blockTypes = node['block_types'] as Map<String, dynamic>? ?? {};
    for (final entry in blockTypes.entries) {
      final name = entry.key;
      final nested = Map<String, dynamic>.from(
        (entry.value as Map)['block'] as Map,
      );
      final nextPath = [...path, name];

      final attrs = nested['attributes'] as Map<String, dynamic>? ?? {};
      for (final attrEntry in attrs.entries) {
        final meta = Map<String, dynamic>.from(attrEntry.value as Map);
        if (schemaAttrIsComputedOnly(meta)) continue;
        final found = describedValues(
          meta['description'] as String?,
          mmValues[[...nextPath, attrEntry.key].join('.')],
        );
        if (found == null) continue;
        sites.add((
          blockPath: nextPath,
          attr: attrEntry.key,
          values: found.values,
          cueOnly: found.cueOnly,
        ));
      }

      walk(nested, nextPath);
    }
  }

  walk(block, []);
  return sites;
}

void main(List<String> args) {
  final strictNested = args.contains('--strict-nested');
  final rootAt = args.indexOf('--generated-root');
  _genDir = Directory(
    rootAt >= 0 && rootAt + 1 < args.length
        ? args[rootAt + 1]
        : p.join(_root.path, 'packages/terradart_google/lib/src'),
  );

  final topLevelGaps = <String>[];
  final nestedPartialGaps = <String>[];
  final nestedThinGaps = <String>[];
  final frozenByExcludeGaps = <String>[];
  final cueInputs = <String>{};
  final checkedTypes = <String>{};

  for (final ent in _overrideDir.listSync().whereType<File>()) {
    if (!ent.path.endsWith('.yaml')) continue;
    final stem = p.basenameWithoutExtension(ent.path);
    final ov = _loadOverride(stem);
    final target = _gapTarget(
      stem: stem,
      override: ov,
      resourceSchemas: _resourceSchemas,
      dataSourceSchemas: _dataSourceSchemas,
    );
    final schema = target.schema;
    if (schema == null) continue;
    final tfType = target.terraformType;

    final genTextRaw = _generatedSource(tfType, ov);
    final fileText = genTextRaw == null
        ? null
        : _normalizeWhitespace(genTextRaw);
    topLevelGaps.addAll(
      topLevelEnumGaps(
        stem: stem,
        override: ov,
        resourceSchemas: _resourceSchemas,
        dataSourceSchemas: _dataSourceSchemas,
        generatedSource: genTextRaw,
        mmValues: _mmValues(tfType),
      ),
    );

    final attrs =
        ((schema as Map)['block'] as Map)['attributes'] as Map<String, dynamic>;
    final mm = _mmValues(tfType);
    for (final attr in attrs.entries) {
      final description = (attr.value as Map)['description'] as String?;
      if (describedValues(description, mm[attr.key])?.cueOnly ?? false) {
        cueInputs.add('$tfType.${attr.key}');
      }
    }
    final block = Map<String, dynamic>.from((schema['block'] as Map));
    final sites = collectNestedEnumSites(block, mmValues: mm);
    for (final site in sites) {
      if (site.cueOnly) {
        cueInputs.add('$tfType.${_blockPathLabel(site.blockPath, site.attr)}');
      }
    }

    if (fileText == null) continue;
    checkedTypes.add(tfType);

    for (final site in sites) {
      final label = _blockPathLabel(site.blockPath, site.attr);
      final camel = _camel(site.attr);
      final frozen = _isFrozenByExclude(ov, site.blockPath);
      final ownClass = blockClassText(genTextRaw!, site.blockPath);
      final genText = ownClass == null ? '' : _normalizeWhitespace(ownClass);

      if (!_nestedFieldDeclared(genText, camel)) {
        if (encodesFixedValue(genText, site.attr, site.values)) continue;
        final helper = _helperTextForBlock(ov, site.blockPath);
        if (helper != null) {
          final helperText = _normalizeWhitespace(helper);
          if (_nestedFieldDeclared(helperText, camel)) {
            if (nestedEnumFieldIsGap(helperText, camel)) {
              nestedPartialGaps.add(
                'NESTED_PARTIAL\t$tfType.$label\t${site.values.join(", ")}${_cueTag(site.cueOnly)}',
              );
            }
            continue;
          }
        }
        final gap =
            'NESTED_THIN\t$tfType.$label\t${site.values.join(", ")}${_cueTag(site.cueOnly)}';
        (frozen ? frozenByExcludeGaps : nestedThinGaps).add(gap);
        continue;
      }

      if (!nestedEnumFieldIsGap(genText, camel)) {
        continue;
      }

      if (_customSlotCoversBlock(ov, site.blockPath)) {
        nestedPartialGaps.add(
          'NESTED_PARTIAL\t$tfType.$label\t${site.values.join(", ")}${_cueTag(site.cueOnly)}',
        );
      } else {
        final gap =
            'NESTED_THIN\t$tfType.$label\t${site.values.join(", ")}${_cueTag(site.cueOnly)}';
        (frozen ? frozenByExcludeGaps : nestedThinGaps).add(gap);
      }
    }
  }

  // tool/enum_gap_cue_prose.yaml names the inputs whose value-set cue only
  // [cueValues] reads and a reviewer found to be prose (a format, an
  // example, a mutual-exclusion note), each with a reason. It can only
  // excuse a `cue` gap: an input the parser or Magic Modules reads is a
  // value set, and a line naming one is stale.
  final prose = _ledger('enum_gap_cue_prose.yaml');
  String keyOf(String gap) => gap.split('\t')[1];
  final cueKeys = {
    for (final g in [
      ...topLevelGaps,
      ...nestedPartialGaps,
      ...nestedThinGaps,
      ...frozenByExcludeGaps,
    ])
      if (g.endsWith('\tcue')) keyOf(g),
  };
  final staleProse = prose.keys
      .where(
        (k) =>
            !cueInputs.contains(k) ||
            (checkedTypes.contains(k.split('.').first) && !cueKeys.contains(k)),
      )
      .toList();
  if (staleProse.isNotEmpty) {
    print(
      'check_google_enum_gaps: stale tool/enum_gap_cue_prose.yaml entries '
      '(not a cue-only gap: remove the lines):',
    );
    for (final k in staleProse) {
      print('  $k');
    }
    exit(1);
  }
  bool unreviewed(String g) => !prose.containsKey(keyOf(g));
  topLevelGaps.retainWhere(unreviewed);
  nestedPartialGaps.retainWhere(unreviewed);
  nestedThinGaps.retainWhere(unreviewed);
  frozenByExcludeGaps.retainWhere(unreviewed);

  final nestedThinAdvisory = nestedThinGaps;
  final failing = [
    ...topLevelGaps,
    ...nestedPartialGaps,
    if (strictNested) ...nestedThinAdvisory,
  ];

  // tool/enum_gap_debt.yaml suppresses KNOWN gaps with a reviewed reason
  // (e.g. typed-enum narrowing is a breaking change, so paying a top-level
  // gap down waits for a breaking minor). Same ledger contract as
  // example_debt.yaml: adding a line is a reviewed decision, and a stale
  // line (no longer matching any reported gap) fails so it cannot rot.
  final debt = _ledger('enum_gap_debt.yaml');
  final allGapKeys = {
    ...failing.map(keyOf),
    ...nestedThinAdvisory.map(keyOf),
    ...frozenByExcludeGaps.map(keyOf),
  };
  final staleDebt = debt.keys.where((k) => !allGapKeys.contains(k)).toList();
  if (staleDebt.isNotEmpty) {
    print(
      'check_google_enum_gaps: stale tool/enum_gap_debt.yaml entries '
      '(no longer a gap — remove the lines):',
    );
    for (final k in staleDebt) {
      print('  $k');
    }
    exit(1);
  }
  final suppressed = failing.where((g) => debt.containsKey(keyOf(g))).length;
  final effective = failing.where((g) => !debt.containsKey(keyOf(g))).toList();
  final debtNote =
      '${suppressed == 0 ? '' : '; $suppressed in tool/enum_gap_debt.yaml'}'
      '${prose.isEmpty ? '' : '; ${prose.length} reviewed prose in '
                'tool/enum_gap_cue_prose.yaml'}';

  // `frozenByExcludeGaps` never fails, even under --strict-nested — it's a
  // maintainer's reviewed `nestedTypeExcludes` decision (recorded on the
  // override, not this ledger), not migration debt to chase down. Still
  // printed in every branch so "why is this one still a Map" is one command
  // away, matching the advisory list's visibility.
  void printFrozen() {
    if (frozenByExcludeGaps.isEmpty) return;
    print(
      '  (${frozenByExcludeGaps.length} frozen-by-exclude — nestedTypeExcludes, never fails)',
    );
    for (final g in frozenByExcludeGaps) {
      print('  [frozen-by-exclude] $g');
    }
  }

  if (effective.isEmpty && nestedThinAdvisory.isEmpty) {
    print(
      'check_google_enum_gaps: OK (0 top-level, 0 nested partial, '
      '0 nested thin$debtNote; ${frozenByExcludeGaps.length} frozen-by-exclude)',
    );
    printFrozen();
    exit(0);
  }

  if (effective.isEmpty) {
    print(
      'check_google_enum_gaps: OK (0 failing$debtNote; '
      '${nestedThinAdvisory.length} nested thin advisory; '
      '${frozenByExcludeGaps.length} frozen-by-exclude)',
    );
    for (final g in nestedThinAdvisory) {
      print('  [advisory] $g');
    }
    printFrozen();
    exit(0);
  }

  print('check_google_enum_gaps: ${effective.length} gap(s)$debtNote:');
  for (final g in effective) {
    print('  $g');
  }
  if (!strictNested && nestedThinAdvisory.isNotEmpty) {
    print(
      '  (${nestedThinAdvisory.length} NESTED_THIN advisory — pass --strict-nested to fail)',
    );
    for (final g in nestedThinAdvisory) {
      print('  [advisory] $g');
    }
  }
  printFrozen();
  exit(1);
}

/// Parses a `tool/<name>` ledger (`<tfType>.<attrPath>: <reason>` lines).
Map<String, String> _ledger(String name) {
  final file = File(p.join(_root.path, 'tool', name));
  if (!file.existsSync()) return const {};
  final entries = <String, String>{};
  for (final raw in file.readAsLinesSync()) {
    final line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    final sep = line.indexOf(': ');
    if (sep <= 0) {
      print('tool/$name: unparsable line "$raw"');
      exit(1);
    }
    final key = line.substring(0, sep).trim();
    final reason = line.substring(sep + 2).trim();
    if (reason.isEmpty) {
      print('tool/$name: $key needs a reason');
      exit(1);
    }
    entries[key] = reason;
  }
  return entries;
}
