// tool/sync_mm_yaml.dart
//
// Reads tool/mm_yaml_sources.yaml manifest, fetches each upstream file
// from raw.githubusercontent.com, diffs it against the local fixture,
// overwrites changed files, and reports the result as JSON on stdout.
//
// The manifest's `upstream_ref` pins the fetch to the magic-modules commit
// the fixture's provider release was generated from: the release tag's
// nearest commit carrying `[upstream:<sha>]` (the provider's downstream
// generator stamps every commit with it). `--ref` overrides the pin; a
// manifest with `upstream_branch` instead reads that branch.
//
// Usage:
//   dart tool/sync_mm_yaml.dart \
//     --manifest=tool/mm_yaml_sources.yaml \
//     --target-dir=packages/terradart_codegen/test/fixtures/wrap/source/mm \
//     [--ref=<magic-modules sha or branch>]
//
// Output (stdout, JSON):
//   {
//     "ref": "<magic-modules sha>",
//     "changed": [{"file": "google_kms_crypto_key.yaml", "upstream_url": "..."}],
//     "failed":  [{"file": "google_xxx.yaml", "reason": "404"}],
//     "unchanged": 12
//   }
//
// Exit codes:
//   0 success (with or without changes)
//   64 usage error
//   65 manifest parse error
//   69 cannot reach any upstream, or cannot resolve the pinned ref

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:yaml/yaml.dart';

const _exitUsage = 64;
const _exitManifest = 65;
const _exitUpstream = 69;

Future<void> main(List<String> args) async {
  final parsed = _parseArgs(args);
  if (parsed == null) {
    stderr.writeln(
      'Usage: dart tool/sync_mm_yaml.dart '
      '--manifest=<path> --target-dir=<path> [--ref=<sha|branch>]',
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

  final String ref;
  try {
    ref = await resolveUpstreamRef(manifest, override: parsed.ref);
  } catch (e) {
    stderr.writeln('Cannot resolve the magic-modules ref: $e');
    exit(_exitUpstream);
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
    final url = manifest.urlFor(upstreamPath, ref: ref);
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

  final report = jsonEncode({
    'ref': ref,
    'changed': changed,
    'failed': failed,
    'unchanged': unchanged,
  });

  // If every file failed, treat as upstream-down rather than success.
  if (failed.length == manifest.realFileCount && manifest.realFileCount > 0) {
    stderr.writeln('All ${failed.length} upstream fetches failed.');
    stdout.writeln(report);
    exit(_exitUpstream);
  }

  final refFile = manifest.providerPin?.refFile;
  if (refFile != null) File(refFile).writeAsStringSync('$ref\n');
  stdout.writeln(report);
}

class _Args {
  _Args(this.manifestPath, this.targetDir, this.ref);
  final String manifestPath;
  final String targetDir;
  final String? ref;
}

_Args? _parseArgs(List<String> args) {
  String? manifest;
  String? target;
  String? ref;
  for (final a in args) {
    if (a.startsWith('--manifest=')) {
      manifest = a.substring('--manifest='.length);
    } else if (a.startsWith('--target-dir=')) {
      target = a.substring('--target-dir='.length);
    } else if (a.startsWith('--ref=')) {
      ref = a.substring('--ref='.length);
    }
  }
  if (manifest == null || target == null || ref == '') return null;
  return _Args(manifest, target, ref);
}

/// Where the MM YAML of a provider release comes from: the provider repo
/// whose release tags carry the magic-modules commit, the file recording
/// the fixture's release, and the file recording the resolved commit.
class ProviderPin {
  ProviderPin({
    required this.providerRepo,
    required this.versionFile,
    this.refFile,
  });

  final String providerRepo;
  final String versionFile;
  final String? refFile;
}

/// Commit messages reachable from [ref] in [repo], newest first.
typedef CommitMessages = Future<List<String>> Function(String repo, String ref);

final _upstreamStamp = RegExp(r'\[upstream:([0-9a-f]{40})\]');

/// The magic-modules ref [manifest] reads: [override] when given, the
/// `upstream_branch` of an unpinned manifest, else the commit the pinned
/// provider release was generated from.
Future<String> resolveUpstreamRef(
  Manifest manifest, {
  String? override,
  CommitMessages commitMessages = _githubCommitMessages,
}) async {
  if (override != null) return override;
  final pin = manifest.providerPin;
  if (pin == null) return manifest.upstreamBranch!;
  final version = File(pin.versionFile).readAsStringSync().trim();
  if (version.isEmpty) {
    throw FormatException('${pin.versionFile} records no provider version');
  }
  for (final message in await commitMessages(pin.providerRepo, 'v$version')) {
    final stamp = _upstreamStamp.firstMatch(message);
    if (stamp != null) return stamp.group(1)!;
  }
  throw StateError(
    'no [upstream:<sha>] stamp near ${pin.providerRepo} v$version',
  );
}

/// The magic-modules ref the MM fixtures were last synced at: the pinned
/// manifest's `ref_file`, else its `upstream_branch`.
String recordedUpstreamRef(Manifest manifest) {
  final refFile = manifest.providerPin?.refFile;
  if (refFile != null && File(refFile).existsSync()) {
    final ref = File(refFile).readAsStringSync().trim();
    if (ref.isNotEmpty) return ref;
  }
  if (manifest.upstreamBranch case final branch?) return branch;
  throw StateError(
    'no recorded magic-modules ref; run tool/sync_mm_yaml.dart first',
  );
}

Future<List<String>> _githubCommitMessages(String repo, String ref) async {
  final token =
      Platform.environment['GITHUB_TOKEN'] ?? Platform.environment['GH_TOKEN'];
  final response = await http.get(
    Uri.https('api.github.com', '/repos/$repo/commits', {
      'sha': ref,
      'per_page': '100',
    }),
    headers: {
      'Accept': 'application/vnd.github+json',
      if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
    },
  );
  if (response.statusCode != 200) {
    throw HttpException(
      'GET commits of $repo@$ref: HTTP ${response.statusCode}',
    );
  }
  return [
    for (final c in jsonDecode(response.body) as List)
      ((c as Map)['commit'] as Map)['message'] as String,
  ];
}

/// tool/mm_yaml_sources.yaml, parsed.
class Manifest {
  Manifest({
    required this.upstreamRepo,
    this.upstreamBranch,
    this.providerPin,
    required this.files,
  }) : assert((upstreamBranch == null) != (providerPin == null));

  final String upstreamRepo;
  final String? upstreamBranch;
  final ProviderPin? providerPin;
  // Map<localBasename, upstreamPath?>. null = synthetic, skipped.
  final Map<String, String?> files;

  int get realFileCount => files.values.where((v) => v != null).length;

  /// The raw URL of [upstreamPath] at [ref] (default: `upstream_branch`).
  String urlFor(String upstreamPath, {String? ref}) =>
      'https://raw.githubusercontent.com/$upstreamRepo/${ref ?? upstreamBranch}/$upstreamPath';
}

/// Parses tool/mm_yaml_sources.yaml.
Manifest parseManifest(String yaml) {
  final root = loadYaml(yaml);
  if (root is! YamlMap) {
    throw const FormatException('manifest root must be a YAML map');
  }
  final repo = root['upstream_repo'];
  final branch = root['upstream_branch'];
  final pinNode = root['upstream_ref'];
  final filesNode = root['files'];
  if (repo is! String ||
      (branch is String) == (pinNode != null) ||
      (branch != null && branch is! String) ||
      filesNode is! YamlMap) {
    throw const FormatException(
      'manifest must define upstream_repo, exactly one of upstream_branch / '
      'upstream_ref, and files map',
    );
  }
  ProviderPin? pin;
  if (pinNode != null) {
    if (pinNode
        case {
          'provider_repo': final String providerRepo,
          'provider_version_file': final String versionFile,
        } when pinNode is YamlMap) {
      final refFile = pinNode['ref_file'];
      if (refFile != null && refFile is! String) {
        throw const FormatException('upstream_ref.ref_file must be a string');
      }
      pin = ProviderPin(
        providerRepo: providerRepo,
        versionFile: versionFile,
        refFile: refFile as String?,
      );
    } else {
      throw const FormatException(
        'upstream_ref needs provider_repo and provider_version_file strings',
      );
    }
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
    upstreamBranch: branch as String?,
    providerPin: pin,
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
