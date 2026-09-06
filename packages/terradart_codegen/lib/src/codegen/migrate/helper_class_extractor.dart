/// Regex-based extraction of nested helper classes from wrapper Dart source.
///
/// The migration manifest needs, for every helper class a curated factory
/// exposes (`PubsubSubscriptionPushConfig`, `CloudSchedulerJobPubsubTarget`,
/// a `deriveNestedTypes` class, ...), the constructor parameters, their
/// declared types, and the Terraform key each one encodes to. Both the
/// derived and the hand-written helpers follow a small family of
/// curator-disciplined shapes — `const` constructor, `final` fields, an
/// `encode()` / `toArgMap()` map literal whose entries are
/// `'tf_key': field.toTfJson()` and friends — so a focused regex scan
/// recovers the recipe without `package:analyzer`, the same trade-off
/// `universal_invariants/sealed_class_extractor.dart` makes.
///
/// Recognised encodings (all observed in the committed google registry):
///
/// - `encode() => { 'key': field..., if (x != null) 'key': x!..., }` and the
///   list-of-one form `=> [ { ... } ]`, with or without `<String, Object?>`
///   type arguments and `const`.
/// - `blockKey: value` entries, where `blockKey` is the class's own
///   `String get blockKey => '...'` (sealed variants that emit their key).
/// - An entry whose value is itself a map literal (`'google_maps_config':
///   { 'plot_mode': plotMode... }`, or a self-wrapping variant's
///   `{ 'weekly_schedule': { ...fields } }`): the inner fields get dotted
///   keys (`google_maps_config.plot_mode`, `weekly_schedule.day_of_weeks`).
/// - `...field.encode()` / `...field!` spreads: the field is recorded as
///   [ExtractedField.merged] (its keys surface in the enclosing block).
/// - Variants without a `blockKey` getter: their single constant string
///   getter (`tierKey`), the single top-level key their `encode()` writes,
///   or — for multi-key variants — the required key no sibling variant
///   writes (`BigqueryDatasetAccessDomain` → `domain`).
/// - Scalar sealed variants with no `encode()` but a block key plus a
///   `value` field or a `value` / `slotValue` getter over one field: that
///   field encodes under the block key.
/// - `super.x` constructor parameters resolved against the parent class's
///   fields (same file), and `Type name` parameters assigned to a field in
///   the initializer list (`const X(TfArg<String> ip) : value = ip`).
///
/// Anything outside those shapes is not guessed: the helper is returned with
/// [ExtractedHelper.irregularReason] set, and the manifest marks it manual so
/// a migrator keeps such blocks in Terraform.
library;

/// One constructor parameter of a helper class.
final class ExtractedField {
  const ExtractedField({
    required this.name,
    required this.typeSource,
    required this.required,
    required this.positional,
    this.tfKey,
    this.merged = false,
  });

  /// Dart constructor parameter name.
  final String name;

  /// Declared type, whitespace-normalised (`TfArg<Map<String, String>>?`).
  final String typeSource;

  final bool required;
  final bool positional;

  /// Terraform key the field encodes to, relative to the map the class's
  /// `encode()` returns — a dotted path when the entry sits inside a nested
  /// map literal. `null` when the field is [merged] or the class is
  /// irregular.
  final String? tfKey;

  /// True when the field's encoding is spread into the enclosing map
  /// (`...source.encode()`): its own keys — a helper's slot keys, a sealed
  /// variant's block key, or a raw map's entries — appear at this level.
  final bool merged;
}

/// One extracted helper class.
final class ExtractedHelper {
  const ExtractedHelper({
    required this.name,
    required this.fields,
    this.parent,
    this.blockKey,
    this.irregularReason,
  });

  final String name;

  /// Constructor parameters in constructor order.
  final List<ExtractedField> fields;

  /// The class this helper extends, when any (a sealed root for variants).
  final String? parent;

  /// The Terraform key that selects this class among its sealed siblings:
  /// its `String get blockKey => 'x';` getter, or the key inferred from its
  /// `encode()` (see the library doc).
  final String? blockKey;

  /// Non-null when the encoding could not be mapped back to Terraform keys.
  final String? irregularReason;

  bool get isIrregular => irregularReason != null;

  ExtractedHelper _withBlockKey(String key) => ExtractedHelper(
        name: name,
        fields: fields,
        parent: parent,
        blockKey: key,
        irregularReason: irregularReason,
      );
}

/// Everything [HelperClassExtractor.extract] found in one source file.
final class HelperExtraction {
  const HelperExtraction({
    required this.helpers,
    required this.sealedClasses,
  });

  /// Helper class name → extraction (sealed *variants* included, sealed
  /// abstract roots excluded).
  final Map<String, ExtractedHelper> helpers;

  /// Names of `sealed class` declarations.
  final Set<String> sealedClasses;

  /// Package-wide view over several per-file extractions, so a slot typed
  /// with a helper another wrapper file declares (`google_eventarc_pipeline`
  /// reusing `EventarcMessageBusLoggingConfig`) still resolves. The first
  /// declaration of a name wins; the manifest emitter rejects two
  /// declarations of one name with different shapes.
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

  /// Block key → variant class name for [sealedName], or `null` when any
  /// variant lacks a block key (a curator hint is needed to describe the
  /// group).
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

  /// Matches a class header: optional `@immutable` on the previous line,
  /// optional `sealed` / `final` / `abstract`, the name, optional
  /// `extends X` (possibly wrapped onto the next line by `dart_style`),
  /// optional `implements ...`, then the opening brace.
  static final RegExp _classHeader = RegExp(
    r'(?:^|\n)[ \t]*(?:@immutable[ \t]*\n[ \t]*)?'
    r'(?:(sealed|final|abstract)[ \t]+)?class[ \t]+(\w+)'
    r'(?:\s+extends\s+(\w+))?(?:\s+implements\s+[^{]+)?\s*\{',
  );

  static final RegExp _lineComment = RegExp(r'^[ \t]*//.*$', multiLine: true);

  /// An `encode()` / `toArgMap()` *definition* (abstract declarations end
  /// in `;` and stay in the declaration part).
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

  /// `=> {`, `return {`, `=> [ {`, `=> const [<String, Object?>{`, ...
  static final RegExp _literalStart = RegExp(
    r'(?:=>|return)\s*(?:const\s+)?(\[\s*)?(?:<[^{]*?>\s*)?\{',
  );

  /// A nested `[ { ... } ]` / `<String, Object?>{ ... }` value.
  static final RegExp _nestedLiteralStart = RegExp(
    r'^(?:const\s+)?(\[\s*)?(?:<[^{]*?>\s*)?\{',
  );

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
    for (final name in order) {
      final decl = decls[name]!;
      if (decl.modifier == 'sealed') {
        sealed.add(name);
        continue;
      }
      helpers[name] = _extractHelper(decl, decls);
    }

    return HelperExtraction(
      helpers: Map.unmodifiable(_inferDiscriminators(helpers)),
      sealedClasses: Set.unmodifiable(sealed),
    );
  }

  ExtractedHelper _extractHelper(
    _ClassDecl decl,
    Map<String, _ClassDecl> decls,
  ) {
    final getters = <String, String>{
      for (final g in _stringGetter.allMatches(decl.body))
        g.group(1)!: g.group(2)!,
    };
    // A variant's key getter is `blockKey` by convention; a sealed group
    // that names it differently (`tierKey`, `planeKey`) still has exactly
    // one constant string getter per variant.
    final blockKey = getters['blockKey'] ??
        (decl.parent != null && getters.length == 1
            ? getters.values.single
            : null);

    final ctor = _parseConstructor(decl.name, decl.declPart);
    final reasons = <String>[];
    if (ctor.irregularReason != null) reasons.add(ctor.irregularReason!);

    // Field names visible to the encode body: own fields plus inherited
    // ones (a variant's `super.condition`).
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

    final fields = <ExtractedField>[];
    for (final p in ctor.params) {
      final type = fieldTypes[p.field];
      if (type == null) {
        reasons.add('constructor parameter `${p.name}` has no field');
        continue;
      }
      final key = encoding.keys[p.field];
      final merged = encoding.merged.contains(p.field);
      if (key == null && !merged && encodePart != null) {
        reasons.add('field `${p.field}` has no encode entry');
      }
      fields.add(ExtractedField(
        name: p.name,
        typeSource: type,
        required: p.required,
        positional: p.positional,
        tfKey: key,
        merged: merged,
      ));
    }

    // A variant without a `blockKey` getter answers to the one top-level
    // key its encode() writes (`{ 'value': value.toTfJson() }` → `value`,
    // `{ 'weekly_schedule': { ... } }` → `weekly_schedule`); a multi-key
    // variant is resolved against its siblings afterwards
    // (see [_inferDiscriminators]).
    final singleKey = decl.parent != null && encoding.topLevelKeys.length == 1
        ? encoding.topLevelKeys.single
        : null;

    return ExtractedHelper(
      name: decl.name,
      fields: List.unmodifiable(fields),
      parent: decl.parent,
      blockKey: blockKey ?? singleKey,
      irregularReason: reasons.isEmpty ? null : reasons.join('; '),
    );
  }

  /// For sealed variants that still have no block key — several fields,
  /// no getter, no wrapper (`BigqueryDatasetAccessDomain { domain, role,
  /// condition }`) — the discriminating key is the required field no
  /// sibling variant writes. Exactly one such key names the variant;
  /// otherwise it stays keyless and the sealed slot is reported manual.
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

  /// Parses `const Name(...)` (+ optional initializer list) into positional
  /// / named parameters. `this.x` and `super.x` map to field `x`; a plain
  /// `Type name` parameter maps to the field the initializer list assigns
  /// it to (`: value = name`).
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
    final positionalText =
        brace < 0 ? paramsText : paramsText.substring(0, brace);
    final namedText = brace < 0
        ? ''
        : paramsText.substring(brace + 1, paramsText.lastIndexOf('}'));

    void consume(String text, {required bool named}) {
      for (final raw in _splitTopLevel(text, ',')) {
        var piece = _stripAnnotations(raw).trim();
        if (piece.isEmpty) continue;
        final eq = piece.indexOf('=');
        if (eq >= 0) piece = piece.substring(0, eq).trim();
        var required = !named;
        if (piece.startsWith('required ')) {
          required = true;
          piece = piece.substring('required '.length).trim();
        }
        if (piece.startsWith('this.') || piece.startsWith('super.')) {
          final field = piece.substring(piece.indexOf('.') + 1).trim();
          params.add(_Param(
            name: field,
            field: field,
            required: required,
            positional: !named,
          ));
          continue;
        }
        final plain =
            RegExp(r'^(.+?)\s+(\w+)$', dotAll: true).firstMatch(piece);
        final target = plain == null ? null : initializers[plain.group(2)!];
        if (plain == null || target == null) {
          reasons.add('unrecognised constructor parameter `$piece`');
          continue;
        }
        params.add(_Param(
          name: plain.group(2)!,
          field: target,
          required: required,
          positional: !named,
          typeOverride: _collapse(plain.group(1)!),
        ));
      }
    }

    consume(positionalText, named: false);
    consume(namedText, named: true);
    return _Constructor(
      params: params,
      irregularReason: reasons.isEmpty ? null : reasons.join('; '),
    );
  }

  /// `: a = x, b = y` → `{x: a, y: b}` (parameter → field). Asserts and
  /// `super(...)` calls are ignored.
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

  /// Removes `@name` / `@name(...)` annotations (argument lists balanced
  /// and string-aware, so a `@Deprecated('... (see x) ...')` survives).
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

  /// Maps each field referenced by exactly one map entry to that entry's
  /// Terraform key, and collects spread-merged fields. Dynamic keys and
  /// entries that combine several fields are reported through [reasons].
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

      // Nested map literal (`'k': { ... }`, `'k': [ { ... } ]`): the inner
      // entries encode under `k.`.
      final nested = _nestedLiteralStart.firstMatch(value);
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
        keys.addAll(innerKeys.keys);
        continue;
      }

      final refs = _fieldRefs(value, fieldNames);
      if (refs.isEmpty) continue; // constant entry, e.g. 'kind': 'x'
      if (refs.length > 1) {
        reasons.add("entry '$path' combines fields ${refs.join(', ')}");
        continue;
      }
      keys[refs.single] = path;
    }
    return _Encoding(keys: keys, merged: merged, topLevelKeys: topLevelKeys);
  }

  /// `(key, value, quoted)` for a `'key': value` / `identifier: value`
  /// entry.
  static (String, String, bool)? _keyedEntry(String entry) {
    final m = RegExp(r"^(?:'([^']+)'|(\w+))\s*:\s*(.*)$", dotAll: true)
        .firstMatch(entry);
    if (m == null) return null;
    final quoted = m.group(1);
    return (quoted ?? m.group(2)!, m.group(3)!, quoted != null);
  }

  /// A quoted key is itself; a bare identifier resolves through the class's
  /// `String get <name> => '...'` getters (`blockKey` and friends).
  static String? _resolveKey(
    (String, String, bool) keyed,
    Map<String, String> getters,
  ) {
    final (key, _, quoted) = keyed;
    return quoted ? key : getters[key];
  }

  /// Scalar sealed variant: `blockKey` + a `value` field or a `value` /
  /// `slotValue` getter over exactly one field — that field encodes under
  /// the block key.
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

  /// True when, after the map literal that closes at [afterMap], the
  /// enclosing list has no further elements.
  static bool _isSingleElementList(String src, int afterMap) {
    final rest = src.substring(afterMap).trimLeft();
    return rest.startsWith(']') || RegExp(r'^,\s*\]').hasMatch(rest);
  }

  /// Removes a leading `if (...)` guard from a map entry.
  static String _stripGuard(String entry) {
    if (!entry.startsWith('if')) return entry;
    final open = entry.indexOf('(');
    if (open < 0) return entry;
    final cond = _balancedBody(entry, open + 1, open: '(', close: ')');
    return entry.substring(open + 1 + cond.length + 1).trim();
  }

  /// Field names referenced in [expr] as bare identifiers (a `.member`
  /// access does not count).
  static List<String> _fieldRefs(String expr, Set<String> fieldNames) {
    final seen = <String>{};
    for (final m
        in RegExp(r'(?<![.\w$])([a-z_][A-Za-z0-9_]*)\b').allMatches(expr)) {
      final id = m.group(1)!;
      if (fieldNames.contains(id)) seen.add(id);
    }
    return seen.toList();
  }

  /// Returns the text between [start] (just after an opening bracket) and its
  /// matching closing bracket, string literals skipped.
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

  /// Splits [text] on [separator] at bracket depth zero. Angle brackets
  /// count only while a generic is open, and `=>` never counts, so
  /// `xs.map((x) => x.encode())` and `<String, Object?>{` both survive.
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

  /// Index just past the string literal opening at [i].
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

  /// Constructor parameter name (what a caller writes).
  final String name;

  /// Field the parameter initialises.
  final String field;
  final bool required;
  final bool positional;

  /// Declared parameter type for a plain `Type name` parameter.
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
    this.topLevelKeys = const [],
  });

  const _Encoding.empty()
      : keys = const {},
        merged = const {},
        topLevelKeys = const [];

  /// Field → Terraform key path.
  final Map<String, String> keys;

  /// Fields spread into the enclosing map.
  final Set<String> merged;

  /// Every resolved key of the outermost map literal, constant entries
  /// included, in source order.
  final List<String> topLevelKeys;
}
