// tool/fetch_schema.dart
//
// Detects the latest terraform-provider-google v7 release on GitHub and
// reports whether it differs from the version recorded in
// packages/terradart_google/lib/src/_provider_meta.dart.
//
// Also reports the max major version available, used by the workflow for
// v8+ availability banner (no auto-bump).
//
// Usage:
//   dart tool/fetch_schema.dart \
//     --current-version=7.31.0 \
//     --provider-meta-path=packages/terradart_google/lib/src/_provider_meta.dart
//
// Output (stdout, JSON):
//   {"v7_latest": "7.32.1", "v7_current": "7.31.0", "max_major_version": "7",
//    "bump_needed": true, "v8_available": false}
//
// Exit codes:
//   0 success
//   64 usage error (missing/malformed args)
//   69 upstream unavailable (GitHub API failure)

import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:pub_semver/pub_semver.dart';

const _exitUsage = 64;
const _exitUpstream = 69;

Future<void> main(List<String> args) async {
  final parsed = _parseArgs(args);
  if (parsed == null) {
    stderr.writeln(
      'Usage: dart tool/fetch_schema.dart '
      '--current-version=X.Y.Z [--provider-meta-path=<path>]',
    );
    exit(_exitUsage);
  }

  final releases = await _fetchReleases();
  if (releases == null) {
    stderr.writeln('Failed to fetch terraform-provider-google releases.');
    exit(_exitUpstream);
  }

  final v7Latest = findLatestV7(releases);
  final maxMajor = findMaxMajor(releases);
  final current = Version.parse(parsed.currentVersion);

  final bumpNeeded = v7Latest != null && v7Latest > current;
  final v8Available = maxMajor != null && maxMajor.major > 7;

  stdout.writeln(
    jsonEncode({
      'v7_latest': v7Latest?.toString(),
      'v7_current': current.toString(),
      'max_major_version': maxMajor?.major.toString(),
      'bump_needed': bumpNeeded,
      'v8_available': v8Available,
    }),
  );
}

class _Args {
  _Args(this.currentVersion, this.providerMetaPath);
  final String currentVersion;
  final String? providerMetaPath;
}

_Args? _parseArgs(List<String> args) {
  String? current;
  String? metaPath;
  for (final a in args) {
    if (a.startsWith('--current-version=')) {
      current = a.substring('--current-version='.length);
    } else if (a.startsWith('--provider-meta-path=')) {
      metaPath = a.substring('--provider-meta-path='.length);
    }
  }
  if (current == null) return null;
  return _Args(current, metaPath);
}

Future<List<Map<String, dynamic>>?> _fetchReleases() async {
  final uri = Uri.parse(
    'https://api.github.com/repos/hashicorp/terraform-provider-google/releases?per_page=100',
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

@visibleForTesting
Version? findLatestV7(List<Map<String, dynamic>> releases) {
  Version? best;
  for (final r in releases) {
    if (r['draft'] == true || r['prerelease'] == true) continue;
    final tag = (r['tag_name'] as String?)?.replaceFirst('v', '');
    if (tag == null) continue;
    final v = tryParseVersion(tag);
    if (v == null || v.major != 7) continue;
    if (best == null || v > best) best = v;
  }
  return best;
}

@visibleForTesting
Version? findMaxMajor(List<Map<String, dynamic>> releases) {
  Version? best;
  for (final r in releases) {
    if (r['draft'] == true || r['prerelease'] == true) continue;
    final tag = (r['tag_name'] as String?)?.replaceFirst('v', '');
    if (tag == null) continue;
    final v = tryParseVersion(tag);
    if (v == null) continue;
    if (best == null || v > best) best = v;
  }
  return best;
}

@visibleForTesting
Version? tryParseVersion(String s) {
  try {
    return Version.parse(s);
  } catch (_) {
    return null;
  }
}
