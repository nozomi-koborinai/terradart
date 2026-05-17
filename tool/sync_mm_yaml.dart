// tool/sync_mm_yaml.dart
//
// Reads tool/mm_yaml_sources.yaml manifest, fetches each upstream file
// from raw.githubusercontent.com, diffs it against the local fixture,
// overwrites changed files, and reports the result as JSON on stdout.
//
// Usage:
//   dart tool/sync_mm_yaml.dart \
//     --manifest=tool/mm_yaml_sources.yaml \
//     --target-dir=packages/terradart_codegen/test/fixtures/wrap/source/mm
//
// Output (stdout, JSON):
//   {
//     "changed": [{"file": "google_kms_crypto_key.yaml", "upstream_url": "..."}],
//     "failed":  [{"file": "google_xxx.yaml", "reason": "404"}],
//     "unchanged": 12
//   }
//
// Exit codes:
//   0 success (with or without changes)
//   64 usage error
//   65 manifest parse error
//   69 cannot reach any upstream

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

const _exitUsage = 64;
const _exitManifest = 65;
const _exitUpstream = 69;

Future<void> main(List<String> args) async {
  final parsed = _parseArgs(args);
  if (parsed == null) {
    stderr.writeln(
      'Usage: dart tool/sync_mm_yaml.dart '
      '--manifest=<path> --target-dir=<path>',
    );
    exit(_exitUsage);
  }

  final manifestFile = File(parsed.manifestPath);
  if (!manifestFile.existsSync()) {
    stderr.writeln('Manifest not found: ${parsed.manifestPath}');
    exit(_exitManifest);
  }

  final Manifest manifest;
  try {
    manifest = parseManifest(manifestFile.readAsStringSync());
  } catch (e) {
    stderr.writeln('Manifest parse error: $e');
    exit(_exitManifest);
  }

  final changed = <Map<String, String>>[];
  final failed = <Map<String, String>>[];
  var unchanged = 0;

  for (final entry in manifest.files.entries) {
    final localBasename = entry.key;
    final upstreamPath = entry.value;
    if (upstreamPath == null) {
      // synthetic fixture: skip
      continue;
    }
    final url = manifest.urlFor(upstreamPath);
    final localFile = File('${parsed.targetDir}/$localBasename.yaml');

    final response = await _safeGet(url);
    if (response == null || response.statusCode != 200) {
      failed.add({
        'file': '$localBasename.yaml',
        'reason': response == null ? 'network' : 'HTTP ${response.statusCode}',
      });
      continue;
    }

    final remoteBytes = response.bodyBytes;
    final localBytes =
        localFile.existsSync() ? localFile.readAsBytesSync() : <int>[];
    if (_bytesEqual(remoteBytes, localBytes)) {
      unchanged++;
    } else {
      localFile.writeAsBytesSync(remoteBytes);
      changed.add({'file': '$localBasename.yaml', 'upstream_url': url});
    }
  }

  // If every file failed, treat as upstream-down rather than success.
  if (failed.length == manifest.realFileCount && manifest.realFileCount > 0) {
    stderr.writeln('All ${failed.length} upstream fetches failed.');
    stdout.writeln(
      jsonEncode({
        'changed': changed,
        'failed': failed,
        'unchanged': unchanged,
      }),
    );
    exit(_exitUpstream);
  }

  stdout.writeln(
    jsonEncode({
      'changed': changed,
      'failed': failed,
      'unchanged': unchanged,
    }),
  );
}

class _Args {
  _Args(this.manifestPath, this.targetDir);
  final String manifestPath;
  final String targetDir;
}

_Args? _parseArgs(List<String> args) {
  String? manifest;
  String? target;
  for (final a in args) {
    if (a.startsWith('--manifest=')) {
      manifest = a.substring('--manifest='.length);
    } else if (a.startsWith('--target-dir=')) {
      target = a.substring('--target-dir='.length);
    }
  }
  if (manifest == null || target == null) return null;
  return _Args(manifest, target);
}

@visibleForTesting
class Manifest {
  Manifest({
    required this.upstreamRepo,
    required this.upstreamBranch,
    required this.files,
  });

  final String upstreamRepo;
  final String upstreamBranch;
  // Map<localBasename, upstreamPath?>. null = synthetic, skipped.
  final Map<String, String?> files;

  int get realFileCount => files.values.where((v) => v != null).length;

  String urlFor(String upstreamPath) =>
      'https://raw.githubusercontent.com/$upstreamRepo/$upstreamBranch/$upstreamPath';
}

@visibleForTesting
Manifest parseManifest(String yaml) {
  final root = loadYaml(yaml);
  if (root is! YamlMap) {
    throw const FormatException('manifest root must be a YAML map');
  }
  final repo = root['upstream_repo'];
  final branch = root['upstream_branch'];
  final filesNode = root['files'];
  if (repo is! String || branch is! String || filesNode is! YamlMap) {
    throw const FormatException(
      'manifest must define upstream_repo, upstream_branch, and files map',
    );
  }
  final files = <String, String?>{};
  for (final entry in filesNode.entries) {
    final key = entry.key;
    final value = entry.value;
    if (key is! String || value is! YamlMap) {
      throw FormatException('bad file entry: $key');
    }
    final upstream = value['upstream'];
    if (upstream != null && upstream is! String) {
      throw FormatException('files.$key.upstream must be string or null');
    }
    files[key] = upstream as String?;
  }
  return Manifest(
    upstreamRepo: repo,
    upstreamBranch: branch,
    files: files,
  );
}

bool _bytesEqual(List<int> a, List<int> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

Future<http.Response?> _safeGet(String url) async {
  try {
    return await http.get(Uri.parse(url));
  } catch (_) {
    return null;
  }
}
