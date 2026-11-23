@Timeout(Duration(minutes: 3))
library;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

/// Proves `terradart_cli` works through both Dart 3.12+ global workflows:
///
/// 1. `dart install terradart_cli@{path: ...}` followed by running the
///    installed `terradart` executable and `dart uninstall terradart_cli`.
/// 2. Remote-style `dart run terradart_cli:terradart@{path: ...}` without
///    installing or adding a dependency.
///
/// Both run from a temporary working directory outside the repository against a
/// loopback pub proxy that serves the workspace's `terradart_*` packages at
/// their current (possibly unpublished) versions and forwards everything else
/// to `https://pub.dev`.
void main() {
  final repoRoot = Directory.current.path;
  final cliDir = p.join(repoRoot, 'packages', 'terradart_cli');
  final pathDescriptor = '{path: ${jsonEncode(cliDir)}}';

  late _WorkspacePubProxy pubProxy;
  late Directory sharedPubCache;
  late String workspaceVersion;

  setUpAll(() async {
    final cliPubspec =
        loadYaml(File(p.join(cliDir, 'pubspec.yaml')).readAsStringSync())
            as YamlMap;
    workspaceVersion = cliPubspec['version'] as String;
    pubProxy = await _WorkspacePubProxy.start(repoRoot);
    sharedPubCache = Directory.systemTemp.createTempSync(
      'terradart_install_pub_cache_',
    );
  });

  tearDownAll(() async {
    await pubProxy.close();
    if (sharedPubCache.existsSync()) {
      sharedPubCache.deleteSync(recursive: true);
    }
  });

  Map<String, String> isolatedEnv(String stateDir) {
    final env = Map<String, String>.from(Platform.environment);
    env['PUB_HOSTED_URL'] = pubProxy.url;
    env['PUB_CACHE'] = sharedPubCache.path;
    if (Platform.isLinux) {
      env['XDG_STATE_HOME'] = stateDir;
    } else if (Platform.isMacOS) {
      env['HOME'] = stateDir;
    } else if (Platform.isWindows) {
      env['LOCALAPPDATA'] = stateDir;
    }
    return env;
  }

  test('dart install installs and runs terradart from local path', () async {
    final workDir = Directory.systemTemp.createTempSync('terradart_install_');
    final stateDir = Directory(p.join(workDir.path, 'state'))..createSync();
    final env = isolatedEnv(stateDir.path);
    addTearDown(() async {
      await Process.run(
        Platform.resolvedExecutable,
        ['uninstall', 'terradart_cli'],
        workingDirectory: workDir.path,
        environment: env,
      );
      if (workDir.existsSync()) {
        workDir.deleteSync(recursive: true);
      }
    });

    final install = await Process.run(
      Platform.resolvedExecutable,
      ['install', 'terradart_cli@$pathDescriptor'],
      workingDirectory: workDir.path,
      environment: env,
    );
    expect(
      install.exitCode,
      0,
      reason: 'dart install failed:\n${install.stdout}\n${install.stderr}',
    );

    final installOutput = '${install.stdout}\n${install.stderr}';
    final match = RegExp(
      r'^Installed:\s*(.+)$',
      multiLine: true,
    ).firstMatch(installOutput);
    expect(
      match,
      isNotNull,
      reason: 'Expected "Installed: <path>" in output:\n$installOutput',
    );
    final executable = match!.group(1)!.trim();
    expect(
      File(executable).existsSync(),
      isTrue,
      reason: 'Installed executable not found at $executable',
    );

    final help = await Process.run(
      executable,
      ['--help'],
      workingDirectory: workDir.path,
      environment: env,
    );
    expect(
      help.exitCode,
      0,
      reason: 'terradart --help failed:\n${help.stdout}\n${help.stderr}',
    );
    expect(help.stdout, contains('Usage: terradart <command>'));

    final cliVersion = await Process.run(
      executable,
      ['--version'],
      workingDirectory: workDir.path,
      environment: env,
    );
    expect(
      cliVersion.exitCode,
      0,
      reason:
          'terradart --version failed:\n'
          '${cliVersion.stdout}\n${cliVersion.stderr}',
    );
    expect('${cliVersion.stdout}'.trim(), 'terradart $workspaceVersion');

    final version = await Process.run(
      executable,
      ['migrate', '--version'],
      workingDirectory: workDir.path,
      environment: env,
    );
    expect(
      version.exitCode,
      0,
      reason:
          'terradart migrate --version failed:\n'
          '${version.stdout}\n${version.stderr}',
    );
    expect(version.stdout, contains('terradart migrate'));

    final uninstall = await Process.run(
      Platform.resolvedExecutable,
      ['uninstall', 'terradart_cli'],
      workingDirectory: workDir.path,
      environment: env,
    );
    expect(
      uninstall.exitCode,
      0,
      reason:
          'dart uninstall failed:\n${uninstall.stdout}\n${uninstall.stderr}',
    );
    expect(File(executable).existsSync(), isFalse);
  });

  test(
    'remote-style dart run executes terradart_cli:terradart@ from local path',
    () async {
      final workDir = Directory.systemTemp.createTempSync('terradart_run_');
      final stateDir = Directory(p.join(workDir.path, 'state'))..createSync();
      final env = isolatedEnv(stateDir.path);
      addTearDown(() {
        if (workDir.existsSync()) {
          workDir.deleteSync(recursive: true);
        }
      });

      final help = await Process.run(
        Platform.resolvedExecutable,
        ['run', 'terradart_cli:terradart@$pathDescriptor', '--help'],
        workingDirectory: workDir.path,
        environment: env,
      );
      expect(
        help.exitCode,
        0,
        reason:
            'remote dart run --help failed:\n${help.stdout}\n${help.stderr}',
      );
      expect(help.stdout, contains('Usage: terradart <command>'));

      final version = await Process.run(
        Platform.resolvedExecutable,
        [
          'run',
          'terradart_cli:terradart@$pathDescriptor',
          'migrate',
          '--version',
        ],
        workingDirectory: workDir.path,
        environment: env,
      );
      expect(
        version.exitCode,
        0,
        reason:
            'remote dart run migrate --version failed:\n'
            '${version.stdout}\n${version.stderr}',
      );
      expect(version.stdout, contains('terradart migrate'));
    },
  );
}

/// Minimal pub repository v2 proxy that serves the workspace's `packages/*`
/// packages directly from disk and forwards every other package to `pub.dev`.
///
/// Needed whenever the workspace holds a lockstep version not yet published on
/// pub.dev (such as in a release PR), and ensures `dart install` exercises the
/// workspace's own `terradart_*` dependencies rather than older published ones.
final class _WorkspacePubProxy {
  _WorkspacePubProxy._(this._server, this._packageDirs);

  final HttpServer _server;
  final Map<String, Directory> _packageDirs;
  final HttpClient _upstream = HttpClient();
  final Map<String, _PackedPackage> _cache = {};

  String get url => 'http://127.0.0.1:${_server.port}';

  static Future<_WorkspacePubProxy> start(String repoRoot) async {
    final packagesDir = Directory(p.join(repoRoot, 'packages'));
    final dirs = <String, Directory>{};
    for (final entity in packagesDir.listSync()) {
      if (entity is! Directory) continue;
      final pubspecFile = File(p.join(entity.path, 'pubspec.yaml'));
      if (!pubspecFile.existsSync()) continue;
      final parsed = loadYaml(pubspecFile.readAsStringSync()) as YamlMap;
      final name = parsed['name'] as String?;
      if (name != null) dirs[name] = entity;
    }

    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final proxy = _WorkspacePubProxy._(server, dirs);
    server.listen(proxy._handle);
    return proxy;
  }

  Future<void> close() async {
    _upstream.close(force: true);
    await _server.close(force: true);
  }

  Future<void> _handle(HttpRequest request) async {
    final segments = request.uri.pathSegments;
    if (segments.length == 3 &&
        segments[0] == 'api' &&
        segments[1] == 'packages' &&
        _packageDirs.containsKey(segments[2])) {
      final pkg = _pack(segments[2]);
      final archiveUrl =
          '$url/packages/${pkg.name}/versions/${pkg.version}.tar.gz';
      final versionEntry = {
        'version': pkg.version,
        'pubspec': pkg.pubspec,
        'archive_url': archiveUrl,
        'archive_sha256': pkg.sha256,
      };
      final body = utf8.encode(
        jsonEncode({
          'name': pkg.name,
          'latest': versionEntry,
          'versions': [versionEntry],
        }),
      );
      request.response
        ..statusCode = HttpStatus.ok
        ..headers.set(
          HttpHeaders.contentTypeHeader,
          'application/vnd.pub.v2+json; charset=utf-8',
        )
        ..add(body);
      await request.response.close();
      return;
    }

    if (segments.length == 4 &&
        segments[0] == 'packages' &&
        segments[2] == 'versions' &&
        _packageDirs.containsKey(segments[1])) {
      final pkg = _pack(segments[1]);
      request.response
        ..statusCode = HttpStatus.ok
        ..headers.set(HttpHeaders.contentTypeHeader, 'application/octet-stream')
        ..add(pkg.tarGz);
      await request.response.close();
      return;
    }

    final upstreamUri = Uri.https('pub.dev', request.uri.path, {
      if (request.uri.hasQuery) ...request.uri.queryParameters,
    });
    final upstreamReq = await _upstream.getUrl(upstreamUri);
    final accept = request.headers.value(HttpHeaders.acceptHeader);
    if (accept != null) {
      upstreamReq.headers.set(HttpHeaders.acceptHeader, accept);
    }
    final upstreamRes = await upstreamReq.close();
    request.response.statusCode = upstreamRes.statusCode;
    final contentType = upstreamRes.headers.value(
      HttpHeaders.contentTypeHeader,
    );
    if (contentType != null) {
      request.response.headers.set(HttpHeaders.contentTypeHeader, contentType);
    }
    await upstreamRes.pipe(request.response);
  }

  _PackedPackage _pack(String name) => _cache.putIfAbsent(name, () {
    final dir = _packageDirs[name]!;
    final rawPubspec = File(
      p.join(dir.path, 'pubspec.yaml'),
    ).readAsStringSync();
    final cleanedPubspec = _stripWorkspaceFields(rawPubspec);
    final pubspecMap = _toPlainJson(loadYaml(cleanedPubspec)) as Map;
    final version = pubspecMap['version'] as String;

    final entries = <(String, Uint8List)>[
      ('pubspec.yaml', Uint8List.fromList(utf8.encode(cleanedPubspec))),
    ];
    for (final sub in ['lib', 'bin']) {
      final subDir = Directory(p.join(dir.path, sub));
      if (!subDir.existsSync()) continue;
      final files = subDir.listSync(recursive: true).whereType<File>().toList()
        ..sort((a, b) => a.path.compareTo(b.path));
      for (final file in files) {
        final rel = p.relative(file.path, from: dir.path).replaceAll(r'\', '/');
        entries.add((rel, file.readAsBytesSync()));
      }
    }

    final tarGz = Uint8List.fromList(gzip.encode(_buildUstarTar(entries)));
    final digest = sha256.convert(tarGz).toString();
    return _PackedPackage(
      name: name,
      version: version,
      pubspec: pubspecMap.cast<String, Object?>(),
      tarGz: tarGz,
      sha256: digest,
    );
  });
}

final class _PackedPackage {
  const _PackedPackage({
    required this.name,
    required this.version,
    required this.pubspec,
    required this.tarGz,
    required this.sha256,
  });

  final String name;
  final String version;
  final Map<String, Object?> pubspec;
  final Uint8List tarGz;
  final String sha256;
}

String _stripWorkspaceFields(String pubspecYaml) => pubspecYaml
    .split('\n')
    .where(
      (line) =>
          !line.startsWith('resolution:') && !line.startsWith('publish_to:'),
    )
    .join('\n');

Object? _toPlainJson(Object? value) => switch (value) {
  YamlMap m => {for (final e in m.entries) '${e.key}': _toPlainJson(e.value)},
  YamlList l => [for (final item in l) _toPlainJson(item)],
  _ => value,
};

Uint8List _buildUstarTar(List<(String, Uint8List)> entries) {
  final out = BytesBuilder(copy: false);
  for (final (path, content) in entries) {
    final header = Uint8List(512);
    String name = path;
    String prefix = '';
    if (utf8.encode(path).length > 100) {
      final split = path.lastIndexOf('/');
      if (split <= 0) {
        throw StateError('Tar entry path exceeds 100 bytes without "/": $path');
      }
      prefix = path.substring(0, split);
      name = path.substring(split + 1);
    }
    _writeAscii(header, 0, 100, name);
    _writeAscii(header, 100, 8, '0000644\x00');
    _writeAscii(header, 108, 8, '0000000\x00');
    _writeAscii(header, 116, 8, '0000000\x00');
    _writeAscii(
      header,
      124,
      12,
      '${content.length.toRadixString(8).padLeft(11, '0')}\x00',
    );
    _writeAscii(header, 136, 12, '00000000000\x00');
    for (var i = 148; i < 156; i++) {
      header[i] = 0x20;
    }
    header[156] = 0x30;
    _writeAscii(header, 257, 6, 'ustar\x00');
    _writeAscii(header, 263, 2, '00');
    if (prefix.isNotEmpty) {
      _writeAscii(header, 345, 155, prefix);
    }

    var checksum = 0;
    for (final b in header) {
      checksum += b;
    }
    _writeAscii(
      header,
      148,
      8,
      '${checksum.toRadixString(8).padLeft(6, '0')}\x00 ',
    );

    out.add(header);
    out.add(content);
    final pad = (512 - (content.length % 512)) % 512;
    if (pad > 0) out.add(Uint8List(pad));
  }
  out.add(Uint8List(1024));
  return out.takeBytes();
}

void _writeAscii(Uint8List target, int offset, int maxLen, String value) {
  final bytes = utf8.encode(value);
  if (bytes.length > maxLen) {
    throw StateError(
      'Tar header field overflow (${bytes.length} > $maxLen): $value',
    );
  }
  target.setRange(offset, offset + bytes.length, bytes);
}
