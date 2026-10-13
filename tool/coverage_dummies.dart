/// One lane's dummy-value ledger, `tool/coverage_dummies/<lane>.yaml`: every
/// literal a coverage stack (`examples/<slug>_quickstart`) passes to a
/// factory argument.
///
/// Generators read it by Dart owner and parameter ([CoverageDummies.valueFor]).
/// The key scheme (`Owner.param`, bare `param`, `*` globs of either) is
/// private to this file, so no caller builds a key.
library;

import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:yaml/yaml.dart';

/// A dummy as the ledger holds it.
sealed class DummyValue {
  const DummyValue();

  /// The Dart expression the stack writes: `'d-1234567890'`, `64512`,
  /// `['WebsiteInteract']`, `arn`, `'projects/$projectId/global/networks/x'`.
  String get dart;

  /// Whether the value is one string, the payload of a `String`, `RefTo` or
  /// enum slot.
  bool get isString;
}

/// A JSON scalar or a list of scalars: the only kind a provider diagnostic
/// can teach, because it patches straight into `main.tf.json`.
final class LiteralDummy extends DummyValue {
  LiteralDummy(this.json) : assert(_isLiteral(json));

  /// `String`, `num`, `bool`, or a `List` of those.
  final Object json;

  @override
  String get dart => switch (json) {
    final List<Object?> list =>
      '[${list.map((e) => _dartScalar(e!)).join(', ')}]',
    final scalar => _dartScalar(scalar),
  };

  @override
  bool get isString => json is String;

  @override
  bool operator ==(Object other) =>
      other is LiteralDummy && _yamlValue(other.json) == _yamlValue(json);

  @override
  int get hashCode => _yamlValue(json).hashCode;
}

/// A string, or list of strings and scalars, reading names the stack
/// declares (`${projectId}`). Hand-written only.
final class BoundDummy extends DummyValue {
  BoundDummy(this.template);

  /// `String`, or a `List` of strings and scalars.
  final Object template;

  @override
  String get dart => switch (template) {
    final List<Object?> list =>
      '[${list.map((e) => _dartBound(e!)).join(', ')}]',
    final scalar => _dartBound(scalar),
  };

  @override
  bool get isString => template is String;
}

/// Dart source the stack writes as it stands: a helper construction, a map,
/// an expression over declared names. For values no literal can state.
final class DartDummy extends DummyValue {
  DartDummy(this.source);

  final String source;

  @override
  String get dart => source;

  @override
  bool get isString => false;
}

/// One lane's ledger, parsed and validated.
final class CoverageDummies {
  CoverageDummies._(this.path, this._header, this._entries, this._manifest)
    : _exact = {
        for (final e in _entries)
          if (e.key case _ExactKey(:final owner, :final param))
            '$owner.$param': e,
      },
      _bare = {
        for (final e in _entries)
          if (e.key case _BareKey(:final param)) param: e,
      },
      _globs = [
        for (final e in _entries)
          if (e.key is _GlobKey) e,
      ];

  /// Reads `tool/coverage_dummies/<lane>.yaml` against the lane's [manifest].
  /// A `${name}` outside [bindings] is a [FormatException].
  static CoverageDummies load(
    String lane, {
    required MigrateManifest manifest,
    required Set<String> bindings,
  }) {
    final path = 'tool/coverage_dummies/$lane.yaml';
    return parse(
      File(path).readAsStringSync(),
      path: path,
      manifest: manifest,
      bindings: bindings,
    );
  }

  /// Parses ledger [source], named [path] in errors and by [save].
  static CoverageDummies parse(
    String source, {
    required String path,
    required MigrateManifest manifest,
    required Set<String> bindings,
  }) {
    final doc = loadYaml(source, sourceUrl: Uri.file(path));
    if (doc is! YamlMap) {
      throw FormatException('$path: expected a mapping of keys to values');
    }
    final entries = <_Entry>[];
    for (final MapEntry(:key, :value) in doc.entries) {
      if (key is! String) throw FormatException('$path: key $key is not text');
      entries.add(_parseEntry(path, key, value, bindings));
    }
    return CoverageDummies._(path, _headerOf(source), entries, manifest);
  }

  /// Where [save] writes.
  final String path;
  final String _header;
  final List<_Entry> _entries;
  final MigrateManifest _manifest;
  final Map<String, _Entry> _exact;
  final Map<String, _Entry> _bare;
  final List<_Entry> _globs;

  /// The value for [param] of [owner], or null so the generator writes its
  /// type default. An exact `Owner.param` wins, then a bare `param`, then the
  /// first glob in file order.
  DummyValue? valueFor(String owner, String param) =>
      (_exact['$owner.$param'] ??
              _bare[param] ??
              _globs
                  .where((e) => (e.key as _GlobKey).matches(owner, param))
                  .firstOrNull)
          ?.value;

  /// Whether [owner] itself names [param]: an `Owner.param` entry, not a bare
  /// key or glob that would match any owner.
  bool ownsValue(String owner, String param) =>
      _exact.containsKey('$owner.$param');

  /// Exact keys whose owner class the lane's manifest knows but whose
  /// parameter it does not: a renamed or removed slot. A key whose owner the
  /// manifest never names (a sealed type) is not judged.
  Set<DummyKey> get stale {
    final params = _paramsByOwner(_manifest);
    return {
      for (final e in _entries)
        if (e.key case _ExactKey(:final owner, :final param))
          if (params[owner] case final known? when !known.contains(param))
            DummyKey._(e.key.text),
    };
  }

  /// Writes the file: the header comment, globs in their order (which is
  /// their precedence), then bare and exact keys, each sorted. A temp file
  /// plus rename, so a crash leaves the old file or the new one.
  void save() {
    final out = StringBuffer(_header);
    final bare = _entries.where((e) => e.key is _BareKey).toList()
      ..sort((a, b) => a.key.text.compareTo(b.key.text));
    final exact = _entries.where((e) => e.key is _ExactKey).toList()
      ..sort((a, b) => a.key.text.compareTo(b.key.text));
    var first = true;
    for (final section in [_globs, bare, exact]) {
      if (section.isEmpty) continue;
      if (!first || _header.isNotEmpty) out.writeln();
      first = false;
      for (final e in section) {
        out.write(e.yaml);
      }
    }
    final tmp = File('$path.tmp')..writeAsStringSync(out.toString());
    tmp.renameSync(path);
  }
}

/// A ledger key: `Owner.param`, a bare `param`, or a glob of either. Only
/// this library makes one.
extension type const DummyKey._(String value) {}

sealed class _Key {
  const _Key(this.text);
  final String text;
}

final class _ExactKey extends _Key {
  _ExactKey(super.text, this.owner, this.param);
  final String owner;
  final String param;
}

final class _BareKey extends _Key {
  _BareKey(super.text, this.param);
  final String param;
}

final class _GlobKey extends _Key {
  _GlobKey(super.text, this.owner, this.param);

  /// Null when the glob names no owner, so any owner matches.
  final RegExp? owner;
  final RegExp param;

  bool matches(String owner, String param) =>
      (this.owner?.hasMatch(owner) ?? true) && this.param.hasMatch(param);
}

final class _Entry {
  _Entry(this.key, this.value, this.why);
  final _Key key;
  final DummyValue value;
  final String? why;

  String get yaml {
    final key = _yamlKey(this.key.text);
    final value = this.value;
    if (value is DartDummy || why != null) {
      return [
        '$key:\n',
        if (value is DartDummy)
          '  dart: ${_yamlString(value.source)}\n'
        else
          '  value: ${_yamlValueOf(value)}\n',
        if (why != null) '  why: ${_yamlString(why!)}\n',
      ].join();
    }
    return '$key: ${_yamlValueOf(value)}\n';
  }
}

final _keyPart = RegExp(r'^[A-Za-z0-9_*]+$');
final _binding = RegExp(r'\$\{(\w+)\}');

_Entry _parseEntry(
  String path,
  String text,
  Object? raw,
  Set<String> bindings,
) {
  Never fail(String why) => throw FormatException('$path: $text: $why');
  final parts = text.split('.');
  if (parts.length > 2 || !parts.every(_keyPart.hasMatch)) {
    fail('a key is `Owner.param`, `param`, or a `*` glob of either');
  }
  final _Key key;
  if (text.contains('*')) {
    key = parts.length == 2
        ? _GlobKey(text, _glob(parts[0]), _glob(parts[1]))
        : _GlobKey(text, null, _glob(parts[0]));
  } else {
    key = parts.length == 2
        ? _ExactKey(text, parts[0], parts[1])
        : _BareKey(text, parts[0]);
  }
  String? why;
  DummyValue value;
  if (raw is YamlMap) {
    final fields = raw.keys.cast<Object?>().toSet();
    if (!(fields.length == 1 ||
            (fields.length == 2 && fields.contains('why'))) ||
        !(fields.contains('value') ^ fields.contains('dart'))) {
      fail('the map form is `value:` or `dart:`, with an optional `why:`');
    }
    final w = raw['why'];
    if (w != null && w is! String) fail('`why:` is text');
    why = w as String?;
    final dart = raw['dart'];
    if (fields.contains('dart')) {
      if (dart is! String || dart.trim().isEmpty) {
        fail('`dart:` is Dart source');
      }
      return _Entry(key, DartDummy(dart), why);
    }
    raw = raw['value'];
  }
  final plain =
      _plain(raw) ?? fail('a value is a string, number, bool or list');
  final names = [
    for (final s in plain is List ? plain : [plain])
      if (s is String) ..._binding.allMatches(s).map((m) => m[1]!),
  ];
  for (final n in names) {
    if (!bindings.contains(n)) {
      fail('\${$n} is not a name the stack declares (${bindings.join(', ')})');
    }
  }
  value = names.isEmpty ? LiteralDummy(plain) : BoundDummy(plain);
  return _Entry(key, value, why);
}

Object? _plain(Object? raw) => switch (raw) {
  String() || num() || bool() => raw,
  YamlList() when raw.every((e) => e is String || e is num || e is bool) =>
    List<Object>.unmodifiable(raw.cast<Object>()),
  _ => null,
};

RegExp _glob(String pattern) =>
    RegExp('^${pattern.split('*').map(RegExp.escape).join('.*')}\$');

String _headerOf(String source) {
  final lines = <String>[];
  for (final line in source.split('\n')) {
    if (!line.startsWith('#')) break;
    lines.add(line);
  }
  return lines.isEmpty ? '' : '${lines.join('\n')}\n';
}

/// The parameters a key may name under each owner: its own slots, and the
/// member of each variant of its sealed slots, which a generator writes
/// under the owner that holds the sealed slot.
Map<String, Set<String>> _paramsByOwner(MigrateManifest manifest) {
  Set<String> params(List<MigrateSlot> slots) => {
    for (final s in slots) ...[
      s.dartName,
      for (final variant in s.variants?.values ?? const <String>[])
        for (final v
            in manifest.helpers[variant]?.slots ?? const <MigrateSlot>[])
          v.dartName,
    ],
  };
  return {
    for (final e in manifest.entries) e.className: params(e.slots),
    for (final h in manifest.helpers.values) h.className: params(h.slots),
  };
}

bool _isLiteral(Object json) =>
    json is String ||
    json is num ||
    json is bool ||
    (json is List && json.every((e) => e is String || e is num || e is bool));

String _dartScalar(Object v) => v is String ? _dartString(v) : '$v';

String _dartString(String s) =>
    "'${s.replaceAll(r'\', r'\\').replaceAll("'", r"\'").replaceAll(r'$', r'\$').replaceAll('\n', r'\n')}'";

String _dartBound(Object v) {
  if (v is! String) return '$v';
  final whole = _binding.matchAsPrefix(v);
  if (whole != null && whole.end == v.length) return whole[1]!;
  final out = StringBuffer("'");
  var i = 0;
  for (final m in _binding.allMatches(v)) {
    final lit = _dartString(v.substring(i, m.start));
    out.write(lit.substring(1, lit.length - 1));
    final next = m.end < v.length ? v[m.end] : '';
    out.write(
      RegExp(r'[A-Za-z0-9_]').hasMatch(next) ? '\${${m[1]}}' : '\$${m[1]}',
    );
    i = m.end;
  }
  final tail = _dartString(v.substring(i));
  out
    ..write(tail.substring(1, tail.length - 1))
    ..write("'");
  return out.toString();
}

const _yamlWords = {
  'true',
  'false',
  'null',
  'yes',
  'no',
  'on',
  'off',
  'y',
  'n',
  '~',
};

String _yamlKey(String key) =>
    RegExp(r'^[A-Za-z_][A-Za-z0-9_.]*$').hasMatch(key) &&
        !_yamlWords.contains(key.toLowerCase())
    ? key
    : _yamlString(key);

String _yamlString(String s) => "'${s.replaceAll("'", "''")}'";

String _yamlScalar(Object v) => v is String ? _yamlString(v) : '$v';

String _yamlValue(Object v) => v is List
    ? '[${v.map((e) => _yamlScalar(e as Object)).join(', ')}]'
    : _yamlScalar(v);

String _yamlValueOf(DummyValue v) => switch (v) {
  LiteralDummy(:final json) => _yamlValue(json),
  BoundDummy(:final template) => _yamlValue(template),
  DartDummy() => throw StateError('a Dart value has the map form'),
};
