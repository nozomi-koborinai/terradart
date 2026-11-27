import 'dart:convert';
import 'dart:io';

List<String> excerptMismatches(
  String path,
  String readme,
  Map<String, dynamic> synth,
) {
  final out = <String>[];
  for (final (:start, :body) in _jsonFences(readme)) {
    final Object? excerpt;
    try {
      excerpt = jsonDecode(body);
    } on FormatException catch (e) {
      out.add('$path:$start: the JSON fence does not parse (${e.message})');
      continue;
    }
    final miss = _mismatch(excerpt, synth, r'$');
    if (miss != null) {
      out.add(
        '$path:$start: $miss; the fence must be an excerpt of '
        'tf-out/main.tf.json',
      );
    }
  }
  return out;
}

final _open = RegExp(r'^( {0,3})(`{3,}|~{3,})(.*)$');
final _quote = RegExp(r'^(?: {0,3}> ?)+');
final _item = RegExp(r'^ {0,3}([-*+]|\d{1,9}[.)]) {1,4}');

List<({int start, String body})> _jsonFences(String md) {
  final out = <({int start, String body})>[];
  final lines = [
    for (final l in md.split('\n'))
      l.replaceFirst(RegExp(r'\r$'), '').replaceFirst(_quote, ''),
  ];
  var list = 0;
  for (var i = 0; i < lines.length; i++) {
    var line = lines[i];
    var base = 0;
    if (_item.firstMatch(line) case final item?) {
      list = base = item.end;
      line = line.substring(base);
    } else if (line.trim().isNotEmpty) {
      final indent = line.length - line.trimLeft().length;
      if (indent < list && (i == 0 || lines[i - 1].trim().isEmpty)) list = 0;
      if (indent >= list) {
        base = list;
        line = line.substring(base);
      }
    }
    final m = _open.firstMatch(line);
    if (m == null) continue;
    final indent = base + m.group(1)!.length;
    final fence = m.group(2)!;
    final info = m.group(3)!.trim();
    if (fence.startsWith('`') && info.contains('`')) continue;
    final close = RegExp(
      '^ {0,3}${RegExp.escape(fence[0])}{${fence.length},}\\s*\$',
    );
    final start = i + 1;
    final body = <String>[];
    String strip(String line) {
      final lead = line.length - line.trimLeft().length;
      return line.substring(lead < indent ? lead : indent);
    }

    for (i++; i < lines.length && !close.hasMatch(strip(lines[i])); i++) {
      body.add(strip(lines[i]));
    }
    if (info.split(RegExp(r'\s')).first.toLowerCase() == 'json') {
      out.add((start: start, body: body.join('\n')));
    }
  }
  return out;
}

String? _mismatch(Object? shown, Object? synth, String at) {
  if (shown is Map) {
    if (synth is! Map) {
      return '$at is ${_kind(synth)} in the synth, not an object';
    }
    for (final MapEntry(:key, :value) in shown.entries) {
      if (!synth.containsKey(key)) return '$at.$key is not in the synth';
      final miss = _mismatch(value, synth[key], '$at.$key');
      if (miss != null) return miss;
    }
    return null;
  }
  if (shown is List) {
    if (synth is! List) {
      return '$at is ${_kind(synth)} in the synth, not a list';
    }
    var j = 0;
    for (var i = 0; i < shown.length; i++) {
      while (j < synth.length && _mismatch(shown[i], synth[j], at) != null) {
        j++;
      }
      if (j == synth.length) {
        return shown.length == 1 && synth.length == 1
            ? _mismatch(shown[i], synth.single, '$at[0]')
            : '$at[$i] matches no synthesized element after the ones before it';
      }
      j++;
    }
    return null;
  }
  if (shown == synth) return null;
  return '$at is ${jsonEncode(synth)} in the synth, not ${jsonEncode(shown)}';
}

String _kind(Object? v) => switch (v) {
  Map() => 'an object',
  List() => 'a list',
  null => 'null',
  _ => jsonEncode(v),
};

void checkReadmeExcerpts(
  String slug,
  Map<String, dynamic> synth,
  List<String> errors,
) {
  final readme = File('examples/$slug/README.md');
  if (!readme.existsSync()) return;
  errors.addAll(
    excerptMismatches(readme.path, readme.readAsStringSync(), synth),
  );
}
