import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'cli_exception.dart';

/// Writes the regular file [entry] of the gzip-compressed tar [archive] to
/// [destination], streaming, and returns whether the archive held it.
///
/// Reads ustar and GNU headers, PAX `path` records and GNU long names, which
/// covers the archives goreleaser writes for OpenTofu.
Future<bool> extractTarGzEntry(
  File archive,
  String entry,
  File destination,
) async {
  final reader = _TarReader(entry, destination);
  try {
    await for (final chunk in archive.openRead().transform(gzip.decoder)) {
      if (await reader.add(chunk)) break;
    }
  } on FormatException catch (e) {
    throw CliException('${archive.path} is not a gzip archive: ${e.message}');
  } finally {
    await reader.close();
  }
  return reader.found;
}

final class _TarReader {
  _TarReader(this._entry, this._destination);

  final String _entry;
  final File _destination;

  final _header = BytesBuilder(copy: true);
  int _remaining = 0;
  int _padding = 0;
  _Body _body = _Body.skip;
  final _meta = BytesBuilder(copy: true);
  String? _longName;
  IOSink? _sink;
  bool found = false;
  bool _done = false;

  /// Consumes [chunk]; true once the entry was written or the archive ended.
  Future<bool> add(List<int> chunk) async {
    var i = 0;
    while (i < chunk.length && !_done) {
      if (_remaining > 0) {
        final n = _min(_remaining, chunk.length - i);
        final part = chunk.sublist(i, i + n);
        switch (_body) {
          case _Body.write:
            _sink!.add(part);
          case _Body.pax || _Body.longName:
            _meta.add(part);
          case _Body.skip:
            break;
        }
        _remaining -= n;
        i += n;
        if (_remaining == 0) await _endBody();
        continue;
      }
      if (_padding > 0) {
        final n = _min(_padding, chunk.length - i);
        _padding -= n;
        i += n;
        continue;
      }
      final n = _min(512 - _header.length, chunk.length - i);
      _header.add(chunk.sublist(i, i + n));
      i += n;
      if (_header.length == 512) await _startEntry(_header.takeBytes());
    }
    return _done;
  }

  Future<void> _startEntry(Uint8List h) async {
    if (h.every((b) => b == 0)) {
      _done = true;
      return;
    }
    final size = _octal(h, 124, 12);
    final type = h[156];
    final name = _longName ?? _name(h);
    _longName = null;
    _remaining = size;
    _padding = (512 - size % 512) % 512;
    _body = _Body.skip;
    if (type == 0x78 /* x */ ) {
      _body = _Body.pax;
    } else if (type == 0x4c /* L */ ) {
      _body = _Body.longName;
    } else if ((type == 0x30 /* 0 */ || type == 0) &&
        _stripDot(name) == _entry) {
      _body = _Body.write;
      found = true;
      await _destination.parent.create(recursive: true);
      _sink = _destination.openWrite();
    }
    if (_remaining == 0) await _endBody();
  }

  Future<void> _endBody() async {
    switch (_body) {
      case _Body.write:
        await _sink!.close();
        _sink = null;
        _done = true;
      case _Body.pax:
        _longName = _paxPath(_meta.takeBytes());
      case _Body.longName:
        _longName = _cString(_meta.takeBytes(), 0, null);
      case _Body.skip:
        break;
    }
    _body = _Body.skip;
  }

  Future<void> close() async {
    await _sink?.close();
  }

  static String _name(Uint8List h) {
    final name = _cString(h, 0, 100);
    final magic = ascii.decode(h.sublist(257, 262), allowInvalid: true);
    final prefix = magic == 'ustar' ? _cString(h, 345, 155) : '';
    return prefix.isEmpty ? name : '$prefix/$name';
  }

  static String _stripDot(String name) =>
      name.startsWith('./') ? name.substring(2) : name;

  static String? _paxPath(Uint8List records) {
    final text = utf8.decode(records, allowMalformed: true);
    for (final line in const LineSplitter().convert(text)) {
      final space = line.indexOf(' ');
      if (space < 0) continue;
      final record = line.substring(space + 1);
      if (record.startsWith('path=')) return record.substring(5);
    }
    return null;
  }

  static String _cString(Uint8List bytes, int start, int? length) {
    final end = length == null ? bytes.length : start + length;
    var stop = start;
    while (stop < end && bytes[stop] != 0) {
      stop++;
    }
    return utf8.decode(bytes.sublist(start, stop), allowMalformed: true);
  }

  static int _octal(Uint8List bytes, int start, int length) {
    if (bytes[start] & 0x80 != 0) {
      var value = 0;
      for (var i = start + 1; i < start + length; i++) {
        value = (value << 8) | bytes[i];
      }
      return value;
    }
    final text = _cString(bytes, start, length).trim();
    return text.isEmpty ? 0 : int.parse(text, radix: 8);
  }

  static int _min(int a, int b) => a < b ? a : b;
}

enum _Body { skip, write, pax, longName }
