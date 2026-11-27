import 'migrate_shape_analyzer.dart' show encodedAttribute;

final class ExtractedField {
  const ExtractedField({
    required this.name,
    required this.typeSource,
    required this.required,
    required this.positional,
    this.tfKey,
    this.merged = false,
    this.keyedEncoding = false,
    this.encodedAttribute,
  });

  final String name;

  final String typeSource;

  final bool required;
  final bool positional;

  final String? tfKey;

  final bool merged;

  final bool keyedEncoding;

  final String? encodedAttribute;
}

bool isKeyedHelperEncoding(String expr) => _keyedHelperEncoding.hasMatch(expr);

final RegExp _keyedHelperEncoding = RegExp(
  r'\{\s*for\s*\(\s*final\s+(\w+)\s+in\s+\w+!?\.entries\s*\)\s*'
  r'\1\.key\s*:\s*\1\.value\.encode\(\)\s*,?\s*\}',
);

final class ExtractedHelper {
  const ExtractedHelper({
    required this.name,
    required this.fields,
    this.parent,
    this.blockKey,
    this.shorthand,
    this.irregularReason,
  });

  final String name;

  final List<ExtractedField> fields;

  final String? parent;

  final String? blockKey;

  final String? shorthand;

  final String? irregularReason;

  bool get isIrregular => irregularReason != null;

  ExtractedHelper _withBlockKey(String key) => ExtractedHelper(
    name: name,
    fields: fields,
    parent: parent,
    blockKey: key,
    shorthand: shorthand,
    irregularReason: irregularReason,
  );
}

final class HelperExtraction {
  const HelperExtraction({required this.helpers, required this.sealedClasses});

  final Map<String, ExtractedHelper> helpers;

  final Set<String> sealedClasses;

  factory HelperExtraction.merge(Iterable<HelperExtraction> parts) {
    final helpers = <String, ExtractedHelper>{};
    final sealed = <String>{};
    for (final part in parts) {
      for (final e in part.helpers.entries) {
        helpers.putIfAbsent(e.key, () => e.value);
      }
      sealed.addAll(part.sealedClasses);
    }
    return HelperExtraction(
      helpers: Map.unmodifiable(helpers),
      sealedClasses: Set.unmodifiable(sealed),
    );
  }

  Map<String, String>? variantsOf(String sealedName) {
    final out = <String, String>{};
    for (final h in helpers.values) {
      if (h.parent != sealedName) continue;
      final key = h.blockKey;
      if (key == null) return null;
      out[key] = h.name;
    }
    if (out.isEmpty) return null;
    return Map.unmodifiable(out);
  }
}

class HelperClassExtractor {
  const HelperClassExtractor();

  static final RegExp _classHeader = RegExp(
    r'(?:^|\n)[ \t]*(?:@immutable[ \t]*\n[ \t]*)?'
    r'(?:(sealed|final|abstract)[ \t]+)?class[ \t]+(\w+)'
    r'(?:\s+extends\s+(\w+))?(?:\s+implements\s+[^{]+)?\s*\{',
  );

  static final RegExp _lineComment = RegExp(r'^[ \t]*//.*$', multiLine: true);

  static final RegExp _encodeDefinition = RegExp(
    r'\b(?:encode|toArgMap)\(\)\s*(?:=>|\{)',
  );

  static final RegExp _fieldDecl = RegExp(
    r'\bfinal\s+(.+?)\s+(\w+)\s*(?:=\s*[^;]+)?;',
    dotAll: true,
  );

  static final RegExp _stringGetter = RegExp(
    r"String\s+get\s+(\w+)\s*=>\s*'([^']+)'",
  );

  static final RegExp _valueGetter = RegExp(
    r'\bget\s+(value|slotValue)\s*=>\s*([^;]+);',
    dotAll: true,
  );

  static final RegExp _literalStart = RegExp(
    r'(?:=>|return)\s*(?:const\s+)?(\[\s*)?(?:<[^{]*?>\s*)?\{',
  );

  static final RegExp _nestedLiteralStart = RegExp(
    r'^(?:const\s+)?(\[\s*)?(?:<[^{]*?>\s*)?\{',
  );

  static final RegExp _mapComprehension = RegExp(r'^\{\s*for\s*\(');

  HelperExtraction extract(String source) {
    final src = source.replaceAll(_lineComment, '');
    final decls = <String, _ClassDecl>{};
    final order = <String>[];

    for (final m in _classHeader.allMatches(src)) {
      final modifier = m.group(1);
      final name = m.group(2)!;
      final parent = m.group(3);
      if (parent == 'Resource' || parent == 'Data') continue;
      final body = _balancedBody(src, m.end);
      final encodeAt = _encodeDefinition.firstMatch(body)?.start;
      final declPart = encodeAt == null ? body : body.substring(0, encodeAt);
      final fieldTypes = <String, String>{};
      for (final f in _fieldDecl.allMatches(declPart)) {
        fieldTypes[f.group(2)!] = _collapse(f.group(1)!);
      }
      decls[name] = _ClassDecl(
        name: name,
        modifier: modifier,
        parent: parent,
        body: body,
        declPart: declPart,
        encodePart: encodeAt == null ? null : body.substring(encodeAt),
        fieldTypes: fieldTypes,
      );
      order.add(name);
    }

    final helpers = <String, ExtractedHelper>{};
    final sealed = <String>{};
    final shorthands = <String, String>{};
    for (final name in order) {
      final decl = decls[name]!;
      if (decl.modifier == 'sealed') {
        sealed.add(name);
        shorthands.addAll(_redirectingFactories(name, decl.declPart));
      }
    }
    for (final name in order) {
      final decl = decls[name]!;
      if (decl.modifier == 'sealed') continue;
      helpers[name] = _extractHelper(
        decl,
        decls,
        shorthand: decl.parent == null ? null : shorthands[name],
      );
    }

    return HelperExtraction(
      helpers: Map.unmodifiable(_inferDiscriminators(helpers)),
      sealedClasses: Set.unmodifiable(sealed),
    );
  }

  static Map<String, String> _redirectingFactories(
    String sealedName,
    String declPart,
  ) {
    final out = <String, String>{};
    final head = RegExp(
      r'\bfactory\s+' + RegExp.escape(sealedName) + r'\.(\w+)\s*\(',
    );
    for (final m in head.allMatches(declPart)) {
      final params = _balancedBody(declPart, m.end, open: '(', close: ')');
      final rest = declPart.substring(m.end + params.length + 1);
      final target = RegExp(r'^\s*=\s*(\w+)\s*;').firstMatch(rest);
      if (target != null) out[target.group(1)!] = m.group(1)!;
    }
    return out;
  }

  ExtractedHelper _extractHelper(
    _ClassDecl decl,
    Map<String, _ClassDecl> decls, {
    String? shorthand,
  }) {
    final getters = <String, String>{
      for (final g in _stringGetter.allMatches(decl.body))
        g.group(1)!: g.group(2)!,
    };
    final blockKey =
        getters['blockKey'] ??
        (decl.parent != null && getters.length == 1
            ? getters.values.single
            : null);

    final ctor = _parseConstructor(decl.name, decl.declPart);
    final reasons = <String>[];
    if (ctor.irregularReason != null) reasons.add(ctor.irregularReason!);

    final fieldTypes = <String, String>{};
    for (var p = decl.parent; p != null; p = decls[p]?.parent) {
      final parentDecl = decls[p];
      if (parentDecl == null) break;
      fieldTypes.addAll(parentDecl.fieldTypes);
    }
    fieldTypes.addAll(decl.fieldTypes);
    for (final p in ctor.params) {
      final override = p.typeOverride;
      if (override != null) fieldTypes[p.field] = override;
    }
    final fieldNames = fieldTypes.keys.toSet();

    final _Encoding encoding;
    final encodePart = decl.encodePart;
    if (encodePart != null) {
      encoding = _encodeKeys(encodePart, fieldNames, getters, reasons);
    } else {
      encoding = _valueVariantKeys(decl, fieldNames, blockKey);
      if (encoding.keys.isEmpty && ctor.params.isNotEmpty) {
        reasons.add('no encode()/toArgMap() method');
      }
    }

    final hasEncoding = encodePart != null || encoding.keys.isNotEmpty;
    final fields = <ExtractedField>[];
    for (final p in ctor.params) {
      final type = fieldTypes[p.field];
      if (type == null) {
        reasons.add('constructor parameter `${p.name}` has no field');
        continue;
      }
      final key = encoding.keys[p.field];
      final merged = encoding.merged.contains(p.field);
      final keyedEncoding = encoding.keyed.contains(p.field);
      if (key == null && !merged && hasEncoding) {
        reasons.add('field `${p.field}` has no encode entry');
      }
      fields.add(
        ExtractedField(
          name: p.name,
          typeSource: type,
          required: p.required,
          positional: p.positional,
          tfKey: key,
          merged: merged,
          keyedEncoding: keyedEncoding,
          encodedAttribute: encoding.attributes[p.field],
        ),
      );
    }

    final singleKey = decl.parent != null && encoding.topLevelKeys.length == 1
        ? encoding.topLevelKeys.single
        : null;

    return ExtractedHelper(
      name: decl.name,
      fields: List.unmodifiable(fields),
      parent: decl.parent,
      blockKey: blockKey ?? singleKey,
      shorthand: shorthand,
      irregularReason: reasons.isEmpty ? null : reasons.join('; '),
    );
  }

  static Map<String, ExtractedHelper> _inferDiscriminators(
    Map<String, ExtractedHelper> helpers,
  ) {
    final byParent = <String, List<ExtractedHelper>>{};
    for (final h in helpers.values) {
      final parent = h.parent;
      if (parent != null) (byParent[parent] ??= []).add(h);
    }
    final out = Map<String, ExtractedHelper>.of(helpers);
    for (final siblings in byParent.values) {
      for (final h in siblings) {
        if (h.blockKey != null || h.isIrregular) continue;
        final others = <String>{
          for (final s in siblings)
            if (s.name != h.name) ...[
              for (final f in s.fields)
                if (f.tfKey != null) f.tfKey!,
              if (s.blockKey != null) s.blockKey!,
            ],
        };
        final candidates = [
          for (final f in h.fields)
            if (f.required && f.tfKey != null && !others.contains(f.tfKey))
              f.tfKey!,
        ];
        if (candidates.length != 1) continue;
        out[h.name] = h._withBlockKey(candidates.single);
      }
    }
    return out;
  }

  _Constructor _parseConstructor(String name, String declPart) {
    final ctor = RegExp(
      r'\bconst\s+' + RegExp.escape(name) + r'\s*\(',
    ).firstMatch(declPart);
    if (ctor == null) return const _Constructor(params: []);
    final paramsText = _balancedBody(declPart, ctor.end, open: '(', close: ')');
    final afterParams = declPart.substring(ctor.end + paramsText.length + 1);
    final initializers = _parseInitializers(afterParams);
    final params = <_Param>[];
    final reasons = <String>[];

    final brace = paramsText.indexOf('{');
    final bracket = paramsText.indexOf('[');
    final positionalText = brace < 0
        ? paramsText
        : paramsText.substring(0, brace);
    final namedText = brace < 0
        ? ''
        : paramsText.substring(brace + 1, paramsText.lastIndexOf('}'));
    final optionalStart = brace < 0 && bracket >= 0 ? bracket : -1;

    void consume(String text, {required bool named, bool optional = false}) {
      for (final raw in _splitTopLevel(text, ',')) {
        var piece = _stripAnnotations(raw).trim();
        if (piece.isEmpty) continue;
        final eq = piece.indexOf('=');
        if (eq >= 0) piece = piece.substring(0, eq).trim();
        var required = !named && !optional;
        if (piece.startsWith('required ')) {
          required = true;
          piece = piece.substring('required '.length).trim();
        }
        if (piece.startsWith('this.') || piece.startsWith('super.')) {
          final field = piece.substring(piece.indexOf('.') + 1).trim();
          params.add(
            _Param(
              name: field,
              field: field,
              required: required,
              positional: !named,
            ),
          );
          continue;
        }
        final plain = RegExp(
          r'^(.+?)\s+(\w+)$',
          dotAll: true,
        ).firstMatch(piece);
        final target = plain == null ? null : initializers[plain.group(2)!];
        if (plain == null || target == null) {
          reasons.add('unrecognised constructor parameter `$piece`');
          continue;
        }
        params.add(
          _Param(
            name: plain.group(2)!,
            field: target,
            required: required,
            positional: !named,
            typeOverride: _collapse(plain.group(1)!),
          ),
        );
      }
    }

    if (optionalStart < 0) {
      consume(positionalText, named: false);
    } else {
      consume(paramsText.substring(0, optionalStart), named: false);
      consume(
        paramsText.substring(optionalStart + 1, paramsText.lastIndexOf(']')),
        named: false,
        optional: true,
      );
    }
    consume(namedText, named: true);
    return _Constructor(
      params: params,
      irregularReason: reasons.isEmpty ? null : reasons.join('; '),
    );
  }

  static Map<String, String> _parseInitializers(String afterParams) {
    final text = afterParams.trimLeft();
    if (!text.startsWith(':')) return const {};
    final end = RegExp(r'[;{]').firstMatch(text)?.start ?? text.length;
    final out = <String, String>{};
    for (final raw in _splitTopLevel(text.substring(1, end), ',')) {
      final m = RegExp(r'^\s*(\w+)\s*=\s*(\w+)\s*$').firstMatch(raw);
      if (m != null) out[m.group(2)!] = m.group(1)!;
    }
    return out;
  }

  static String _stripAnnotations(String text) {
    final out = StringBuffer();
    var i = 0;
    while (i < text.length) {
      if (text[i] == '@') {
        var j = i + 1;
        while (j < text.length && RegExp(r'\w').hasMatch(text[j])) {
          j++;
        }
        if (j < text.length && text[j] == '(') {
          final args = _balancedBody(text, j + 1, open: '(', close: ')');
          j += args.length + 2;
        }
        i = j;
        continue;
      }
      out.write(text[i]);
      i++;
    }
    return out.toString();
  }

  _Encoding _encodeKeys(
    String encodePart,
    Set<String> fieldNames,
    Map<String, String> getters,
    List<String> reasons,
  ) {
    final start = _literalStart.firstMatch(encodePart);
    if (start == null) {
      reasons.add('encode() body is not a map literal');
      return const _Encoding.empty();
    }
    final literal = _balancedBody(encodePart, start.end);
    if (start.group(1) != null &&
        !_isSingleElementList(encodePart, start.end + literal.length + 1)) {
      reasons.add('encode() returns a list with more than one map');
      return const _Encoding.empty();
    }
    return _literalKeys(literal, fieldNames, getters, reasons, prefix: '');
  }

  _Encoding _literalKeys(
    String literal,
    Set<String> fieldNames,
    Map<String, String> getters,
    List<String> reasons, {
    required String prefix,
  }) {
    final keys = <String, String>{};
    final merged = <String>{};
    final keyedFields = <String>{};
    final attributes = <String, String>{};
    final topLevelKeys = <String>[];
    for (final raw in _splitTopLevel(literal, ',')) {
      if (raw.trim().isEmpty) continue;
      final entry = _stripGuard(raw.trim());
      if (entry.startsWith('...')) {
        final ids = _fieldRefs(
          entry.replaceFirst(RegExp(r'^\.\.\.\??'), ''),
          fieldNames,
        );
        if (ids.length != 1) {
          reasons.add(
            'spread entry `${_collapse(entry)}` references '
            '${ids.isEmpty ? 'no field' : 'several fields'}',
          );
          continue;
        }
        if (prefix.isNotEmpty) {
          reasons.add('spread entry `${_collapse(entry)}` inside a nested map');
          continue;
        }
        merged.add(ids.single);
        continue;
      }
      final keyed = _keyedEntry(entry);
      if (keyed == null) {
        reasons.add('unrecognised encode entry `${_collapse(entry)}`');
        continue;
      }
      final key = _resolveKey(keyed, getters);
      if (key == null) {
        reasons.add('dynamic key `${keyed.$1}`');
        continue;
      }
      topLevelKeys.add(key);
      final path = prefix.isEmpty ? key : '$prefix.$key';
      final value = keyed.$2.trim();

      final nested = _mapComprehension.hasMatch(value)
          ? null
          : _nestedLiteralStart.firstMatch(value);
      if (nested != null) {
        final inner = _balancedBody(value, nested.end);
        if (nested.group(1) != null &&
            !_isSingleElementList(value, nested.end + inner.length + 1)) {
          reasons.add("entry '$path' is a list of several maps");
          continue;
        }
        final innerKeys = _literalKeys(
          inner,
          fieldNames,
          getters,
          reasons,
          prefix: path,
        );
        for (final e in innerKeys.keys.entries) {
          _recordKey(keys, e.key, e.value, reasons);
        }
        keyedFields.addAll(innerKeys.keyed);
        attributes.addAll(innerKeys.attributes);
        continue;
      }

      final refs = _fieldRefs(value, fieldNames);
      if (refs.isEmpty) continue;
      if (refs.length > 1) {
        reasons.add("entry '$path' combines fields ${refs.join(', ')}");
        continue;
      }
      _recordKey(keys, refs.single, path, reasons);
      if (isKeyedHelperEncoding(value)) keyedFields.add(refs.single);
      if (encodedAttribute(value) case final a?) attributes[refs.single] = a;
    }
    return _Encoding(
      keys: keys,
      merged: merged,
      keyed: keyedFields,
      attributes: attributes,
      topLevelKeys: topLevelKeys,
    );
  }

  static void _recordKey(
    Map<String, String> keys,
    String field,
    String path,
    List<String> reasons,
  ) {
    final existing = keys[field];
    if (existing != null && existing != path) {
      reasons.add(
        'field `$field` is written under several keys (`$existing`, `$path`)',
      );
      return;
    }
    keys[field] = path;
  }

  static (String, String, bool)? _keyedEntry(String entry) {
    final m = RegExp(
      r"^(?:'([^']+)'|(\w+))\s*:\s*(.*)$",
      dotAll: true,
    ).firstMatch(entry);
    if (m == null) return null;
    final quoted = m.group(1);
    return (quoted ?? m.group(2)!, m.group(3)!, quoted != null);
  }

  static String? _resolveKey(
    (String, String, bool) keyed,
    Map<String, String> getters,
  ) {
    final (key, _, quoted) = keyed;
    return quoted ? key : getters[key];
  }

  _Encoding _valueVariantKeys(
    _ClassDecl decl,
    Set<String> fieldNames,
    String? blockKey,
  ) {
    if (blockKey == null) return const _Encoding.empty();
    if (fieldNames.contains('value')) {
      return _Encoding(
        keys: {'value': blockKey},
        merged: const {},
        topLevelKeys: [blockKey],
      );
    }
    final getter = _valueGetter.firstMatch(decl.body);
    if (getter == null) return const _Encoding.empty();
    final refs = _fieldRefs(getter.group(2)!, fieldNames);
    if (refs.length != 1) return const _Encoding.empty();
    return _Encoding(
      keys: {refs.single: blockKey},
      merged: const {},
      topLevelKeys: [blockKey],
    );
  }

  static bool _isSingleElementList(String src, int afterMap) {
    final rest = src.substring(afterMap).trimLeft();
    return rest.startsWith(']') || RegExp(r'^,\s*\]').hasMatch(rest);
  }

  static String _stripGuard(String entry) {
    if (!entry.startsWith('if')) return entry;
    final open = entry.indexOf('(');
    if (open < 0) return entry;
    final cond = _balancedBody(entry, open + 1, open: '(', close: ')');
    return entry.substring(open + 1 + cond.length + 1).trim();
  }

  static List<String> _fieldRefs(String expr, Set<String> fieldNames) {
    final code = expr.replaceAll(RegExp(r"'[^'$\\]*'"), "''");
    final seen = <String>{};
    for (final m in RegExp(
      r'(?<![.\w$])([a-z_][A-Za-z0-9_]*)\b',
    ).allMatches(code)) {
      final id = m.group(1)!;
      if (fieldNames.contains(id)) seen.add(id);
    }
    return seen.toList();
  }

  static String _balancedBody(
    String src,
    int start, {
    String open = '{',
    String close = '}',
  }) {
    var depth = 1;
    var i = start;
    while (i < src.length) {
      final ch = src[i];
      if (ch == "'" || ch == '"') {
        i = _skipString(src, i);
        continue;
      }
      if (ch == open) depth++;
      if (ch == close) {
        depth--;
        if (depth == 0) return src.substring(start, i);
      }
      i++;
    }
    return src.substring(start);
  }

  static List<String> _splitTopLevel(String text, String separator) {
    final out = <String>[];
    var depth = 0;
    var angle = 0;
    var last = 0;
    var i = 0;
    while (i < text.length) {
      final ch = text[i];
      if (ch == "'" || ch == '"') {
        i = _skipString(text, i);
        continue;
      }
      if (ch == '=' && i + 1 < text.length && text[i + 1] == '>') {
        i += 2;
        continue;
      }
      if (ch == '(' || ch == '[' || ch == '{') depth++;
      if (ch == ')' || ch == ']' || ch == '}') depth--;
      if (ch == '<') angle++;
      if (ch == '>' && angle > 0) angle--;
      if (depth == 0 && angle == 0 && ch == separator) {
        out.add(text.substring(last, i));
        last = i + 1;
      }
      i++;
    }
    out.add(text.substring(last));
    return out;
  }

  static int _skipString(String src, int i) {
    final quote = src[i];
    var j = i + 1;
    while (j < src.length) {
      if (src[j] == r'\') {
        j += 2;
        continue;
      }
      if (src[j] == quote) return j + 1;
      j++;
    }
    return j;
  }

  static String _collapse(String s) => s.replaceAll(RegExp(r'\s+'), ' ').trim();
}

final class _ClassDecl {
  const _ClassDecl({
    required this.name,
    required this.modifier,
    required this.parent,
    required this.body,
    required this.declPart,
    required this.encodePart,
    required this.fieldTypes,
  });

  final String name;
  final String? modifier;
  final String? parent;
  final String body;
  final String declPart;
  final String? encodePart;
  final Map<String, String> fieldTypes;
}

final class _Param {
  const _Param({
    required this.name,
    required this.field,
    required this.required,
    required this.positional,
    this.typeOverride,
  });

  final String name;

  final String field;
  final bool required;
  final bool positional;

  final String? typeOverride;
}

final class _Constructor {
  const _Constructor({required this.params, this.irregularReason});

  final List<_Param> params;
  final String? irregularReason;
}

final class _Encoding {
  const _Encoding({
    required this.keys,
    required this.merged,
    this.keyed = const {},
    this.attributes = const {},
    this.topLevelKeys = const [],
  });

  const _Encoding.empty()
    : keys = const {},
      merged = const {},
      keyed = const {},
      attributes = const {},
      topLevelKeys = const [];

  final Map<String, String> keys;

  final Set<String> merged;

  final Set<String> keyed;

  final Map<String, String> attributes;

  final List<String> topLevelKeys;
}
