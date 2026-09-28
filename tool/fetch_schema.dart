// tool/fetch_schema.dart
//
// Detects the latest release of a provider inside the major version its
// lane tracks and reports whether it is newer than --current-version (the
// lane fixture's provider_version.txt, which the bump rewrites whenever it
// refreshes the fixture).
//
// Also reports the max major version available, used by the workflow for
// the new-major banner (the bump never crosses a major on its own).
//
// Usage:
//   dart tool/fetch_schema.dart --lane=aws \
//     --current-version=$(cat packages/terradart_codegen/test/fixtures/wrap/source_aws/provider_version.txt)
//
// --lane reads `bump.repo` (GitHub releases) and `bump.major` from the
// tool/providers.yaml entry; --repo / --major override them. Without
// either, the GA google defaults apply (hashicorp/terraform-provider-google,
// major 7). Releases of other majors never count as "latest": cloudflare's
// v4 maintenance releases, published alongside v5, are ignored.
//
// Output (stdout, JSON):
//   {"repo": "hashicorp/terraform-provider-aws", "major": 6,
//    "latest": "6.67.0", "current": "6.66.0", "max_major_version": "6",
//    "bump_needed": true, "new_major_available": false}
//
// Exit codes:
//   0 success
//   64 usage error (missing/malformed args, unknown lane)
//   69 upstream unavailable (GitHub API failure)

import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

const _exitUsage = 64;
const _exitUpstream = 69;

const _defaultRepo = 'hashicorp/terraform-provider-google';
const _defaultMajor = 7;

Future<void> main(List<String> args) async {
  final _Args parsed;
  try {
    parsed = _parseArgs(args);
  } on FormatException catch (e) {
    stderr.writeln('fetch_schema: ${e.message}');
    stderr.writeln(
      'Usage: dart tool/fetch_schema.dart --current-version=X.Y.Z '
      '[--lane=<providers.yaml lane>] [--repo=owner/name] [--major=N]',
    );
    exit(_exitUsage);
  }

  final releases = await _fetchReleases(parsed.repo);
  if (releases == null) {
    stderr.writeln('Failed to fetch ${parsed.repo} releases.');
    exit(_exitUpstream);
  }

  stdout.writeln(
    jsonEncode(
      bumpState(
        releases,
        repo: parsed.repo,
        major: parsed.major,
        current: Version.parse(parsed.currentVersion),
      ),
    ),
  );
}

/// The state the workflow and the drift report read for one lane.
@visibleForTesting
Map<String, Object?> bumpState(
  List<Map<String, dynamic>> releases, {
  required String repo,
  required int major,
  required Version current,
}) {
  final latest = findLatestInMajor(releases, major);
  final maxMajor = findMaxMajor(releases);
  return {
    'repo': repo,
    'major': major,
    'latest': latest?.toString(),
    'current': current.toString(),
    'max_major_version': maxMajor?.major.toString(),
    'bump_needed': latest != null && latest > current,
    'new_major_available': maxMajor != null && maxMajor.major > major,
  };
}

class _Args {
  _Args(this.currentVersion, this.repo, this.major);
  final String currentVersion;
  final String repo;
  final int major;
}

_Args _parseArgs(List<String> args) {
  String? current;
  String? lane;
  String? repo;
  String? major;
  for (final a in args) {
    if (a.startsWith('--current-version=')) {
      current = a.substring('--current-version='.length);
    } else if (a.startsWith('--lane=')) {
      lane = a.substring('--lane='.length);
    } else if (a.startsWith('--repo=')) {
      repo = a.substring('--repo='.length);
    } else if (a.startsWith('--major=')) {
      major = a.substring('--major='.length);
    }
  }
  if (current == null || current.isEmpty) {
    throw const FormatException('--current-version is required');
  }
  if (tryParseVersion(current) == null) {
    throw FormatException('--current-version "$current" is not a version');
  }
  final fromLane = lane == null
      ? null
      : laneBumpCoordinates(
          File('tool/providers.yaml').readAsStringSync(),
          lane,
        );
  final majorValue = major == null ? fromLane?.major : int.tryParse(major);
  if (major != null && majorValue == null) {
    throw FormatException('--major must be an integer, got "$major"');
  }
  return _Args(
    current,
    repo ?? fromLane?.repo ?? _defaultRepo,
    majorValue ?? _defaultMajor,
  );
}

/// `bump.repo` / `bump.major` of [lane] in tool/providers.yaml.
@visibleForTesting
({String repo, int major}) laneBumpCoordinates(String yamlText, String lane) {
  final providers = (loadYaml(yamlText) as YamlMap)['providers'] as YamlMap;
  final entry = providers[lane];
  if (entry is! YamlMap) {
    throw FormatException('unknown lane "$lane" in tool/providers.yaml');
  }
  final bump = entry['bump'];
  if (bump is! YamlMap || bump['repo'] is! String || bump['major'] is! int) {
    throw FormatException(
      'lane "$lane" has no bump.repo / bump.major in tool/providers.yaml',
    );
  }
  return (repo: bump['repo'] as String, major: bump['major'] as int);
}

Future<List<Map<String, dynamic>>?> _fetchReleases(String repo) async {
  final uri = Uri.parse(
    'https://api.github.com/repos/$repo/releases?per_page=100',
  );
  final client = HttpClient();
  try {
    final req = await client.getUrl(uri);
    req.headers.set('User-Agent', 'terradart-schema-bump');
    req.headers.set('Accept', 'application/vnd.github+json');
    final token = Platform.environment['GITHUB_TOKEN'];
    if (token != null && token.isNotEmpty) {
      req.headers.set('Authorization', 'Bearer $token');
    }
    final resp = await req.close();
    if (resp.statusCode != 200) return null;
    final body = await resp.transform(utf8.decoder).join();
    final decoded = jsonDecode(body);
    if (decoded is List) {
      return decoded.cast<Map<String, dynamic>>();
    }
    return null;
  } catch (_) {
    return null;
  } finally {
    client.close();
  }
}

/// Highest non-draft, non-prerelease release whose major is [major].
@visibleForTesting
Version? findLatestInMajor(List<Map<String, dynamic>> releases, int major) {
  Version? best;
  for (final v in _stableVersions(releases)) {
    if (v.major != major) continue;
    if (best == null || v > best) best = v;
  }
  return best;
}

@visibleForTesting
Version? findMaxMajor(List<Map<String, dynamic>> releases) {
  Version? best;
  for (final v in _stableVersions(releases)) {
    if (best == null || v > best) best = v;
  }
  return best;
}

Iterable<Version> _stableVersions(List<Map<String, dynamic>> releases) sync* {
  for (final r in releases) {
    if (r['draft'] == true || r['prerelease'] == true) continue;
    final tag = (r['tag_name'] as String?)?.replaceFirst('v', '');
    if (tag == null) continue;
    final v = tryParseVersion(tag);
    // A tag GitHub does not flag as a prerelease can still carry a
    // prerelease suffix (cloudflare's 5.19.0-beta.N).
    if (v == null || v.isPreRelease) continue;
    yield v;
  }
}

@visibleForTesting
Version? tryParseVersion(String s) {
  try {
    return Version.parse(s);
  } catch (_) {
    return null;
  }
}
