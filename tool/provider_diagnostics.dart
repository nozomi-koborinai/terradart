/// What `tofu validate -json` says about a synthesized `main.tf.json`, and
/// which values a provider's messages name.
///
/// Positions come from each diagnostic's byte range, never from the message
/// text: OpenTofu 1.13.1 highlights exactly the rejected JSON value, quotes
/// included, list elements as well.
library;

import 'dart:convert';
import 'dart:typed_data';

import 'coverage_dummies.dart';

/// A block of a synthesized `main.tf.json`: `aws_x.name` or `data.aws_x.name`.
final class TfAddress {
  const TfAddress({
    required this.dataSource,
    required this.type,
    required this.name,
  });

  /// Parses a diagnostic's `address`. Null for a module or indexed address,
  /// which a coverage stack never has.
  static TfAddress? parse(String address) {
    final m = _address.firstMatch(address);
    if (m == null) return null;
    return TfAddress(dataSource: m[1] != null, type: m[2]!, name: m[3]!);
  }

  final bool dataSource;
  final String type;
  final String name;

  /// Where the block sits in `main.tf.json`.
  List<String> get jsonPath => [dataSource ? 'data' : 'resource', type, name];

  @override
  bool operator ==(Object other) =>
      other is TfAddress &&
      other.dataSource == dataSource &&
      other.type == type &&
      other.name == name;

  @override
  int get hashCode => Object.hash(dataSource, type, name);

  @override
  String toString() => dataSource ? 'data.$type.$name' : '$type.$name';
}

final _address = RegExp(
  r'^(data\.)?([A-Za-z_][A-Za-z0-9_-]*)\.([A-Za-z_][A-Za-z0-9_-]*)$',
);

/// The attribute below a block: names and list indices (`config[0].mode`).
extension type const AttrPath(List<Object> segments) {
  String get text {
    final out = StringBuffer();
    for (final s in segments) {
      if (s is int) {
        out.write('[$s]');
      } else {
        if (out.isNotEmpty) out.write('.');
        out.write(s);
      }
    }
    return out.toString();
  }
}

/// One error required CI would print for the coverage stack. Warnings pass
/// CI and are dropped at parse time.
sealed class Rejection {
  const Rejection(this.summary, this.detail);

  final String summary;
  final String detail;

  /// The text a message family reads: `detail`, or `summary` when the
  /// provider left `detail` empty (SDKv2 validators do).
  String get message => detail.isNotEmpty ? detail : summary;
}

/// The provider rejected a value the stack wrote: a scalar or a list element.
final class ValueRejection extends Rejection {
  ValueRejection(
    this.address,
    this.path,
    this.rejected,
    super.summary,
    super.detail,
  );

  final TfAddress address;

  /// Never empty.
  final AttrPath path;

  /// `String`, `num` or `bool`.
  final Object rejected;

  /// `aws_directory_service_ip_route.route.directory_id`.
  String get at => '$address.${path.text}';

  /// Where the value sits in `main.tf.json`.
  List<Object> get jsonPath => [...address.jsonPath, ...path.segments];
}

/// The block is wrong as a whole: a missing or conflicting argument, a
/// diagnostic whose range is the block or a key, or a rejected object or
/// list. Nothing in it can be learned.
final class BlockRejection extends Rejection {
  BlockRejection(this.address, super.summary, super.detail);

  final TfAddress address;
}

/// Not attributable to one block: provider configuration, an unparsable
/// address, a range outside the block it names or in another file.
final class StackRejection extends Rejection {
  StackRejection(super.summary, super.detail);
}

/// Parses `tofu validate -json` [stdout] against the [mainTfJson] it
/// validated. Throws a [FormatException] when [stdout] is not that report.
List<Rejection> parseValidateJson(String stdout, String mainTfJson) {
  final report = jsonDecode(stdout);
  if (report is! Map<String, Object?> || report['diagnostics'] is! List) {
    throw const FormatException('not a `validate -json` report');
  }
  final spans = _spans(mainTfJson);
  final out = <Rejection>[];
  for (final d
      in (report['diagnostics'] as List).cast<Map<String, Object?>>()) {
    if (d['severity'] != 'error') continue;
    final summary = d['summary'] as String? ?? '';
    final detail = d['detail'] as String? ?? '';
    final address = TfAddress.parse(d['address'] as String? ?? '');
    if (address == null) {
      out.add(StackRejection(summary, detail));
      continue;
    }
    final range = d['range'] as Map<String, Object?>?;
    if (range == null) {
      out.add(BlockRejection(address, summary, detail));
      continue;
    }
    if (range['filename'] != 'main.tf.json') {
      out.add(StackRejection(summary, detail));
      continue;
    }
    final start = (range['start'] as Map<String, Object?>)['byte'] as int;
    final end = (range['end'] as Map<String, Object?>)['byte'] as int;
    final block = address.jsonPath;
    final exact = spans
        .where((s) => s.start == start && s.end == end)
        .firstOrNull;
    if (exact == null) {
      final inBlock = spans.any(
        (s) => _samePath(s.path, block) && s.start <= start && end <= s.end,
      );
      out.add(
        inBlock
            ? BlockRejection(address, summary, detail)
            : StackRejection(summary, detail),
      );
    } else if (!_startsWith(exact.path, block)) {
      out.add(StackRejection(summary, detail));
    } else if (exact.path.length == block.length || exact.value == null) {
      out.add(BlockRejection(address, summary, detail));
    } else {
      out.add(
        ValueRejection(
          address,
          AttrPath(exact.path.sublist(block.length)),
          exact.value!,
          summary,
          detail,
        ),
      );
    }
  }
  return out;
}

/// The JSON path of the value spanning UTF-8 bytes `[start, end)` of
/// [source], or null when no value spans exactly that range.
List<Object>? jsonPathAt(String source, int start, int end) {
  final exact = _spans(
    source,
  ).where((s) => s.start == start && s.end == end).lastOrNull;
  return exact?.path;
}

/// [source] with the value at each path of [values] replaced by its JSON
/// encoding; everything else, layout included, is kept. Throws an
/// [ArgumentError] for a path [source] has no value at.
String patchJson(String source, Map<List<Object>, Object> values) {
  final bytes = utf8.encode(source);
  final spans = _spans(source);
  final edits = <(_Span, List<int>)>[];
  for (final MapEntry(key: path, value: value) in values.entries) {
    final span = spans.where((s) => _samePath(s.path, path)).firstOrNull;
    if (span == null) throw ArgumentError.value(path, 'path', 'no value at');
    edits.add((span, utf8.encode(jsonEncode(value))));
  }
  edits.sort((a, b) => a.$1.start.compareTo(b.$1.start));
  final out = BytesBuilder(copy: false);
  var cursor = 0;
  for (final (span, replacement) in edits) {
    if (span.start < cursor) {
      throw ArgumentError.value(span.path, 'path', 'overlaps another path');
    }
    out
      ..add(bytes.sublist(cursor, span.start))
      ..add(replacement);
    cursor = span.end;
  }
  out.add(bytes.sublist(cursor));
  return utf8.decode(out.takeBytes());
}

/// One family of provider validator messages and the values it names. Keyed
/// by message, never by attribute: one row serves every attribute any
/// provider guards with that validator.
final class DiagnosticFamily {
  const DiagnosticFamily(this.name, this.message, this.shapes);

  final String name;
  final RegExp message;
  final List<LiteralDummy> Function(RegExpMatch match) shapes;
}

/// The message families, from the messages the bumps have met.
///
/// `url-host`: SDKv2 `IsURLWithHTTPorHTTPS` ("to have a host") and the
/// framework URL validators ("contains no host"). `one-of`: "must be one of:
/// [..]" and "to be one of [..]", giving the first member.
/// `regex`: "match regular expression '..'" (or Go-quoted), giving
/// [sampleRegex] of it.
final List<DiagnosticFamily> kDiagnosticFamilies = [
  DiagnosticFamily(
    'url-host',
    RegExp(r'to have a host|contains no host'),
    (_) => [LiteralDummy('https://example.com/leftover')],
  ),
  DiagnosticFamily(
    'one-of',
    RegExp(r'(?:must be one of:?|to be one of)\s*\[([^\]]*)\]'),
    (m) => [
      if (_oneOfMembers(m[1]!).firstOrNull case final first?)
        LiteralDummy(_oneOfLiteral(m[1]!, first)),
    ],
  ),
  DiagnosticFamily(
    'azure-resource-id',
    RegExp(r'>\s*(/\S+)'),
    (m) => [LiteralDummy(m[1]!)],
  ),
  DiagnosticFamily(
    'management-group-id',
    RegExp('Management Group ID|ManagementGroup ID'),
    (_) => [
      LiteralDummy('/providers/Microsoft.Management/managementGroups/leftover'),
    ],
  ),
  DiagnosticFamily(
    'uuid',
    RegExp('valid UUID'),
    (_) => [LiteralDummy('11111111-1111-1111-1111-111111111111')],
  ),
  DiagnosticFamily(
    'iso8601-duration',
    RegExp("expected 'P' period mark"),
    (_) => [LiteralDummy('P1D')],
  ),
  DiagnosticFamily(
    'rfc3339',
    RegExp('valid RFC3339|invalid ISO8601 date'),
    (_) => [LiteralDummy('2024-01-01T00:00:00Z')],
  ),
  DiagnosticFamily(
    'cidr',
    RegExp('valid CIDR'),
    (_) => [LiteralDummy('10.0.0.0/24')],
  ),
  DiagnosticFamily(
    'ipv4',
    RegExp(r'valid IPv4|valid IP(?!v)'),
    (_) => [LiteralDummy('10.0.0.1')],
  ),
  DiagnosticFamily(
    'int-range',
    RegExp(r'in the range \((\d+) - (\d+)\)'),
    (m) => m.input.contains('length')
        ? const []
        : [LiteralDummy(int.parse(m[1]!))],
  ),
  DiagnosticFamily(
    'azure-id-uri',
    RegExp('invalid URI for request'),
    (_) => [
      LiteralDummy(
        '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
      ),
    ],
  ),
  DiagnosticFamily(
    'key-vault-nested-item',
    RegExp('expected 2 or 3 path segments'),
    (_) => [
      LiteralDummy('https://example.com/keys/leftover'),
      LiteralDummy('https://example.com/keys/leftover/v'),
      LiteralDummy('https://example.com/secrets/leftover'),
      LiteralDummy('https://example.com/certificates/leftover'),
      LiteralDummy('https://example.com/secrets/leftover/v'),
      LiteralDummy('https://example.com/certificates/leftover/v'),
    ],
  ),
  DiagnosticFamily(
    'alphanumeric-token',
    RegExp('alphanumeric characters, underscores and dashes'),
    (_) => [LiteralDummy('leftover')],
  ),
  DiagnosticFamily(
    'dotted-version',
    RegExp(r'must be a version in the format `([a-z](?:\.[a-z])*)`'),
    (m) => [LiteralDummy(m[1]!.replaceAll(RegExp('[a-z]'), '1'))],
  ),
  DiagnosticFamily(
    'regex',
    RegExp(
      r"""match(?:es)? (?:the )?regular expression (?:'(.*?)'(?=,|$)|"((?:[^"\\]|\\.)*)")""",
    ),
    (m) {
      final pattern = m[1] ?? _unquoteGo(m[2]!);
      final sample = sampleRegex(pattern);
      return [if (sample != null) LiteralDummy(sample)];
    },
  ),
];

/// Values the families name for [message], best first, each with the
/// family that named it.
List<Candidate> shapesNamedBy(String message) => [
  for (final family in kDiagnosticFamilies)
    for (final m in family.message.allMatches(message))
      for (final shape in family.shapes(m))
        Candidate(shape, 'family ${family.name}'),
];

/// A string matching [pattern], or null outside the subset this samples:
/// literals, escapes, character classes, `\d` `\w` `\s`, `.`, groups,
/// `{n}` `{n,}` `{n,m}` `?` `+` `*`, anchors, and the first branch of an
/// alternation. A sample is returned only when [pattern] matches it.
String? sampleRegex(String pattern) {
  try {
    final sampler = _RegexSampler(pattern);
    final sample = sampler.alternation();
    if (sampler.i != pattern.length) return null;
    return RegExp(pattern).hasMatch(sample) ? sample : null;
  } on FormatException {
    return null;
  }
}

final class _RegexSampler {
  _RegexSampler(this.p);

  final String p;
  var i = 0;

  static const _alphabet =
      '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_.';

  Never _unsupported() => throw const FormatException('unsupported regex');

  String alternation() {
    final first = _sequence();
    while (i < p.length && p[i] == '|') {
      i++;
      _sequence();
    }
    return first;
  }

  String _sequence() {
    final out = StringBuffer();
    while (i < p.length && p[i] != '|' && p[i] != ')') {
      final atom = _atom();
      out.write(atom * _repeat());
    }
    return out.toString();
  }

  String _atom() {
    final c = p[i++];
    switch (c) {
      case '^' || r'$':
        return '';
      case '.':
        return 'a';
      case '(':
        if (p.startsWith('?:', i)) {
          i += 2;
        } else if (i < p.length && p[i] == '?') {
          _unsupported();
        }
        final inner = alternation();
        if (i >= p.length || p[i] != ')') _unsupported();
        i++;
        return inner;
      case '[':
        return _class();
      case r'\':
        return _escape();
      case '*' || '+' || '?' || '{' || ')':
        _unsupported();
      default:
        return c;
    }
  }

  String _escape() {
    if (i >= p.length) _unsupported();
    final c = p[i++];
    return switch (c) {
      'd' => '0',
      'w' => 'a',
      's' => ' ',
      'D' || 'W' || 'S' => _pick(RegExp('\\$c')),
      'A' || 'z' || 'b' => '',
      _ when RegExp(r'[A-Za-z0-9]').hasMatch(c) => _unsupported(),
      _ => c,
    };
  }

  String _class() {
    final start = i - 1;
    if (i < p.length && p[i] == '^') i++;
    if (i < p.length && p[i] == ']') i++;
    while (i < p.length && p[i] != ']') {
      if (p[i] == r'\') i++;
      i++;
    }
    if (i >= p.length) _unsupported();
    i++;
    return _pick(RegExp(p.substring(start, i)));
  }

  String _pick(RegExp oneChar) {
    for (final c in _alphabet.split('')) {
      if (oneChar.matchAsPrefix(c)?.end == 1) return c;
    }
    _unsupported();
  }

  /// How many times to write the atom before `i`: its quantifier's minimum,
  /// but at least once where the quantifier allows it, since providers often
  /// reject an empty string.
  int _repeat() {
    if (i >= p.length) return 1;
    var count = 1;
    switch (p[i]) {
      case '?' || '*' || '+':
        i++;
      case '{':
        final m = RegExp(r'\{(\d+)(,(\d*))?\}').matchAsPrefix(p, i);
        if (m == null) return 1;
        i = m.end;
        final min = int.parse(m[1]!);
        final max = m[2] == null ? min : int.tryParse(m[3]!);
        count = min > 0 ? min : (max == 0 ? 0 : 1);
      default:
        return 1;
    }
    if (i < p.length && p[i] == '?') i++;
    return count;
  }
}

Object _oneOfLiteral(String list, String member) {
  if (list.contains('"')) return member;
  if (RegExp(r'^-?\d+$').hasMatch(member)) return int.parse(member);
  return member;
}

List<String> _oneOfMembers(String list) {
  final quoted = RegExp(
    r'"((?:[^"\\]|\\.)*)"',
  ).allMatches(list).map((m) => _unquoteGo(m[1]!)).toList();
  final members = quoted.isNotEmpty
      ? quoted
      : list.split(RegExp(r'[\s,]+')).where((s) => s.isNotEmpty).toList();
  return [
    for (final m in members)
      if (m.length >= 2 && m.startsWith('"') && m.endsWith('"'))
        m.substring(1, m.length - 1)
      else
        m,
  ].where((m) => m.isNotEmpty).toList();
}

String _unquoteGo(String s) =>
    s.replaceAllMapped(RegExp(r'\\(.)'), (m) => m[1]!);

bool _startsWith(List<Object> path, List<Object> prefix) =>
    path.length >= prefix.length &&
    _samePath(path.sublist(0, prefix.length), prefix);

bool _samePath(List<Object> a, List<Object> b) {
  if (a.length != b.length) return false;
  for (var k = 0; k < a.length; k++) {
    if (a[k] != b[k]) return false;
  }
  return true;
}

final class _Span {
  _Span(this.start, this.end, this.path, this.value);

  final int start;
  final int end;
  final List<Object> path;

  /// The scalar, or null for an object or array (and for JSON `null`).
  final Object? value;
}

/// Every value of [source] with its UTF-8 byte range and path.
List<_Span> _spans(String source) {
  final bytes = utf8.encode(source);
  final spans = <_Span>[];
  var i = 0;

  void ws() {
    while (i < bytes.length &&
        const [0x20, 0x09, 0x0a, 0x0d].contains(bytes[i])) {
      i++;
    }
  }

  Never bad() => throw FormatException('invalid JSON', source, i);

  String string() {
    final start = i;
    i++;
    while (i < bytes.length && bytes[i] != 0x22) {
      if (bytes[i] == 0x5c) i++;
      i++;
    }
    if (i >= bytes.length) bad();
    i++;
    return jsonDecode(utf8.decode(bytes.sublist(start, i))) as String;
  }

  void value(List<Object> path) {
    ws();
    if (i >= bytes.length) bad();
    final start = i;
    switch (bytes[i]) {
      case 0x7b:
        i++;
        ws();
        if (bytes[i] == 0x7d) {
          i++;
        } else {
          while (true) {
            ws();
            if (bytes[i] != 0x22) bad();
            final key = string();
            ws();
            if (bytes[i] != 0x3a) bad();
            i++;
            value([...path, key]);
            ws();
            if (bytes[i] == 0x2c) {
              i++;
              continue;
            }
            if (bytes[i] != 0x7d) bad();
            i++;
            break;
          }
        }
        spans.add(_Span(start, i, path, null));
      case 0x5b:
        i++;
        ws();
        if (bytes[i] == 0x5d) {
          i++;
        } else {
          for (var index = 0; ; index++) {
            value([...path, index]);
            ws();
            if (bytes[i] == 0x2c) {
              i++;
              continue;
            }
            if (bytes[i] != 0x5d) bad();
            i++;
            break;
          }
        }
        spans.add(_Span(start, i, path, null));
      case 0x22:
        final s = string();
        spans.add(_Span(start, i, path, s));
      default:
        while (i < bytes.length &&
            !const [
              0x2c,
              0x7d,
              0x5d,
              0x20,
              0x09,
              0x0a,
              0x0d,
            ].contains(bytes[i])) {
          i++;
        }
        final scalar = jsonDecode(utf8.decode(bytes.sublist(start, i)));
        spans.add(_Span(start, i, path, scalar));
    }
  }

  value(const []);
  ws();
  if (i != bytes.length) bad();
  return spans;
}
