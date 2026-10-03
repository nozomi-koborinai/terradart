import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;

/// The version and content hash a terradart agent skill records under
/// `metadata:` in its front matter:
///
/// ```yaml
/// metadata:
///   terradart-version: "0.34.0"
///   terradart-sha256: "<sha256>"
/// ```
///
/// `terradart-sha256` is [skillContentHash] of the file, which leaves these
/// two lines out, so a release that changes only the version keeps the hash.
final class SkillMarker {
  const SkillMarker({required this.version, required this.sha256});

  final String version;
  final String sha256;

  /// The marker in [text]'s front matter; `null` when either line is
  /// missing.
  static SkillMarker? parse(String text) {
    final front = _frontMatter(_lf(text));
    if (front == null) return null;
    final version = _versionLine.firstMatch(front.body)?.group(1);
    final sha256 = _shaLine.firstMatch(front.body)?.group(1);
    if (version == null || sha256 == null) return null;
    return SkillMarker(version: version, sha256: sha256);
  }
}

final _versionLine = RegExp(
  r'^[ \t]*terradart-version:[ \t]*"([^"\n]*)"[ \t]*$',
  multiLine: true,
);
final _shaLine = RegExp(
  r'^[ \t]*terradart-sha256:[ \t]*"([^"\n]*)"[ \t]*$',
  multiLine: true,
);
final _markerLine = RegExp(
  r'^[ \t]*terradart-(?:version|sha256):[^\n]*\n',
  multiLine: true,
);

/// The SHA-256 (hex) of [text] without its two marker lines, after turning
/// CRLF line endings into LF.
String skillContentHash(String text) {
  final lf = _lf(text);
  final front = _frontMatter(lf);
  final unmarked = front == null
      ? lf
      : '${lf.substring(0, front.start)}'
            '${front.body.replaceAll(_markerLine, '')}'
            '${lf.substring(front.end)}';
  return crypto.sha256.convert(utf8.encode(unmarked)).toString();
}

/// [text] with its marker set to [version] and the hash of its content,
/// adding the `metadata:` lines when the front matter has none.
String withSkillMarker(String text, String version) {
  final front = _frontMatter(text);
  if (front == null) {
    throw const FormatException('the skill has no --- front matter');
  }
  String marked(String hash) {
    final body = front.body.replaceAll(_markerLine, '');
    final lines =
        '  terradart-version: "$version"\n'
        '  terradart-sha256: "$hash"\n';
    final metadata = RegExp(r'^metadata:[ \t]*\n', multiLine: true);
    final withLines = metadata.hasMatch(body)
        ? body.replaceFirstMapped(metadata, (m) => '${m[0]}$lines')
        : '${body}metadata:\n$lines';
    return '${text.substring(0, front.start)}$withLines'
        '${text.substring(front.end)}';
  }

  return marked(skillContentHash(marked('')));
}

String _lf(String text) => text.replaceAll('\r\n', '\n');

/// The front matter of [text]: the lines between the opening `---` line and
/// the next `---` line, each ending in `\n`; [start] and [end] are its
/// offsets in [text].
({int start, int end, String body})? _frontMatter(String text) {
  if (!text.startsWith('---\n')) return null;
  const start = 4;
  final close = text.indexOf('\n---\n', start - 1);
  if (close < 0) return null;
  final end = close + 1;
  return (start: start, end: end, body: text.substring(start, end));
}

/// Compares two SemVer versions (`X.Y.Z` with an optional `-prerelease`);
/// `null` when either does not parse.
int? compareVersions(String a, String b) {
  final x = _semver.firstMatch(a);
  final y = _semver.firstMatch(b);
  if (x == null || y == null) return null;
  for (var i = 1; i <= 3; i++) {
    final c = int.parse(x[i]!).compareTo(int.parse(y[i]!));
    if (c != 0) return c;
  }
  final (pa, pb) = (x[4], y[4]);
  if (pa == null || pb == null) {
    return pa == pb ? 0 : (pa == null ? 1 : -1);
  }
  final ia = pa.split('.');
  final ib = pb.split('.');
  for (var i = 0; i < ia.length && i < ib.length; i++) {
    final na = int.tryParse(ia[i]);
    final nb = int.tryParse(ib[i]);
    final c = na != null && nb != null
        ? na.compareTo(nb)
        : na != null
        ? -1
        : nb != null
        ? 1
        : ia[i].compareTo(ib[i]);
    if (c != 0) return c;
  }
  return ia.length.compareTo(ib.length);
}

final _semver = RegExp(
  r'^(\d+)\.(\d+)\.(\d+)(?:-([0-9A-Za-z.-]+))?(?:\+[0-9A-Za-z.-]+)?$',
);
