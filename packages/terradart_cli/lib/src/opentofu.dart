import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'host.dart';
import 'output/exit_codes.dart';
import 'tar.dart';

/// The OpenTofu release terradart downloads when neither `tofu` nor
/// `terraform` is on `PATH`.
const kOpenTofuVersion = '1.13.1';

/// The SHA-256 of each `tofu_<version>_<os>_<arch>.tar.gz` of
/// [kOpenTofuVersion], copied from the release's `SHA256SUMS` after its GPG
/// signature verified against the OpenTofu signing key
/// (`E3E6 E43D 84CB 852E ADB0 051D 0C0A F313 E5FD 9F80`). Pinning them here
/// means a replaced release asset fails the check instead of matching a
/// checksum file replaced with it.
const kOpenTofuChecksums = <String, String>{
  'darwin_amd64':
      'a73720443ba38712d7d96dc1e857add02c15a790919c653ad07492e9952f8c27',
  'darwin_arm64':
      'be78f659f04ef06a9dbd9b3934d46af95d787a3aa38396d459dea395261816a9',
  'linux_amd64':
      '378ada19d4bc70c43732004e8159be771b23b9a5afdf059e5f8a2b3fa2c70a69',
  'linux_arm64':
      '9c1ef375aa1852db0b2888aa921b640c71f8140d4682aa4fec99378a64fa7dc3',
  'windows_amd64':
      '6825ae311e9a15747ce2ede7b7e97c8bb744a4d271fa8113259eeeee3d09438c',
  'windows_arm64':
      'cc189b6f7ecba6c80924ddff72b4d086d5f727a0c31180421cfb821a3e5c7587',
};

/// Where OpenTofu releases are downloaded from, unless
/// `TERRADART_OPENTOFU_MIRROR` names another base URL with the same layout.
final kOpenTofuReleases = Uri.parse(
  'https://github.com/opentofu/opentofu/releases/download/',
);

/// Downloads, verifies and caches one OpenTofu release for one platform.
final class OpenTofuInstaller {
  OpenTofuInstaller({
    required this.cacheDir,
    required this.platform,
    this.version = kOpenTofuVersion,
    Uri? releases,
    this.log = _noLog,
  }) : releases = releases ?? kOpenTofuReleases;

  final String cacheDir;
  final HostPlatform platform;
  final String version;
  final Uri releases;
  final void Function(String message) log;

  /// The binary's path once installed.
  String get binaryPath => p.join(
    cacheDir,
    'opentofu',
    version,
    platform.toString(),
    platform.executable('tofu'),
  );

  String get _asset => 'tofu_${version}_$platform.tar.gz';

  Uri _url(String file) => releases.resolve('v$version/$file');

  /// The installed binary, downloading it first when the cache lacks it.
  Future<String> ensure() async {
    if (File(binaryPath).existsSync()) return binaryPath;
    final expected = await _expectedChecksum();
    final root = Directory(p.join(cacheDir, 'opentofu'));
    await root.create(recursive: true);
    final temp = await root.createTemp(
      'download-${pid}_${Random().nextInt(1 << 32)}-',
    );
    final client = _client();
    try {
      final archive = File(p.join(temp.path, _asset));
      log('Downloading OpenTofu $version ($platform) from ${_url(_asset)}');
      final actual = await _download(client, _url(_asset), archive);
      if (actual != expected) {
        throw CliException(
          'Checksum mismatch for $_asset: expected $expected, got $actual. '
          'The download was discarded.',
          kind: ExitCode.engineUnavailable,
        );
      }
      final staged = File(
        p.join(temp.path, platform.toString(), platform.executable('tofu')),
      );
      final found = await extractTarGzEntry(
        archive,
        platform.executable('tofu'),
        staged,
      );
      if (!found) {
        throw CliException(
          '$_asset holds no ${platform.executable('tofu')}.',
          kind: ExitCode.engineUnavailable,
        );
      }
      if (!platform.isWindows) {
        final chmod = await Process.run('chmod', ['755', staged.path]);
        if (chmod.exitCode != 0) {
          throw CliException(
            'chmod ${staged.path} failed: ${chmod.stderr}',
            kind: ExitCode.engineUnavailable,
          );
        }
      }
      final target = Directory(p.dirname(binaryPath));
      await target.parent.create(recursive: true);
      try {
        await staged.parent.rename(target.path);
      } on FileSystemException {
        // Another terradart process installed the same release first.
        if (!File(binaryPath).existsSync()) rethrow;
      }
      log('Installed OpenTofu $version at $binaryPath');
      return binaryPath;
    } finally {
      client.close(force: true);
      await temp.delete(recursive: true);
    }
  }

  Future<String> _expectedChecksum() async {
    if (version == kOpenTofuVersion) {
      final pinned = kOpenTofuChecksums[platform.toString()];
      if (pinned == null) {
        throw CliException(
          'OpenTofu $version has no build for $platform.',
          kind: ExitCode.engineUnavailable,
        );
      }
      return pinned;
    }
    final sums = 'tofu_${version}_SHA256SUMS';
    log(
      'OpenTofu $version is not the version this terradart pins '
      '($kOpenTofuVersion); verifying against the release\'s $sums.',
    );
    final client = _client();
    try {
      final text = await _getText(client, _url(sums));
      for (final line in const LineSplitter().convert(text)) {
        final parts = line.trim().split(RegExp(r'\s+'));
        if (parts.length == 2 && parts[1] == _asset) return parts[0];
      }
      throw CliException(
        '$sums lists no $_asset.',
        kind: ExitCode.engineUnavailable,
      );
    } finally {
      client.close(force: true);
    }
  }

  HttpClient _client() => HttpClient()
    ..userAgent = 'terradart_cli'
    ..findProxy = HttpClient.findProxyFromEnvironment;

  Future<HttpClientResponse> _get(HttpClient client, Uri url) async {
    try {
      final response = await (await client.getUrl(url)).close();
      if (response.statusCode != HttpStatus.ok) {
        await response.drain<void>();
        throw CliException(
          'GET $url returned HTTP ${response.statusCode}.',
          kind: ExitCode.engineUnavailable,
        );
      }
      return response;
    } on IOException catch (e) {
      throw CliException(
        'Cannot download $url ($e). The first run needs network access; '
        'or put tofu or terraform on PATH.',
        kind: ExitCode.engineUnavailable,
      );
    }
  }

  Future<String> _getText(HttpClient client, Uri url) async =>
      (await _get(client, url)).transform(utf8.decoder).join();

  /// Writes [url] to [file] and returns its SHA-256 in hex.
  Future<String> _download(HttpClient client, Uri url, File file) async {
    final response = await _get(client, url);
    final digest = _DigestSink();
    final hasher = sha256.startChunkedConversion(digest);
    final sink = file.openWrite();
    try {
      await for (final chunk in response) {
        hasher.add(chunk);
        sink.add(chunk);
      }
    } on IOException catch (e) {
      throw CliException(
        'Download of $url failed: $e',
        kind: ExitCode.engineUnavailable,
      );
    } finally {
      await sink.close();
    }
    hasher.close();
    return digest.value.toString();
  }
}

void _noLog(String _) {}

final class _DigestSink implements Sink<Digest> {
  late Digest value;

  @override
  void add(Digest data) => value = data;

  @override
  void close() {}
}
