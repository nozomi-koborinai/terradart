import 'dart:convert';
import 'dart:ffi' show Abi;
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/cli_exception.dart';
import 'package:terradart_cli/src/engine.dart';
import 'package:terradart_cli/src/host.dart';
import 'package:terradart_cli/src/opentofu.dart';
import 'package:terradart_cli/src/tar.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  late Directory temp;

  setUp(() => temp = Directory.systemTemp.createTempSync('opentofu_test_'));
  tearDown(() => temp.deleteSync(recursive: true));

  group('pinned release', () {
    test('has a checksum for every platform the CLI supports', () {
      expect(
        kOpenTofuChecksums.keys,
        unorderedEquals([
          'darwin_amd64',
          'darwin_arm64',
          'linux_amd64',
          'linux_arm64',
          'windows_amd64',
          'windows_arm64',
        ]),
      );
      for (final sum in kOpenTofuChecksums.values) {
        expect(sum, matches(RegExp(r'^[0-9a-f]{64}$')));
      }
    });

    test('names the archive of the running platform', () {
      final host = HostPlatform.current();
      expect(kOpenTofuChecksums, contains(host.toString()));
    });
  });

  group('extractTarGzEntry', () {
    test('writes only the named entry', () async {
      final archive = File(p.join(temp.path, 'a.tar.gz'))
        ..writeAsBytesSync(
          tarGz({
            'LICENSE': utf8.encode('MPL'),
            'tofu': List.filled(70000, 7),
            'README.md': utf8.encode('readme'),
          }),
        );
      final out = File(p.join(temp.path, 'out', 'tofu'));
      expect(await extractTarGzEntry(archive, 'tofu', out), isTrue);
      expect(out.readAsBytesSync(), List.filled(70000, 7));
      expect(File(p.join(temp.path, 'out', 'LICENSE')).existsSync(), isFalse);
    });

    test('follows a PAX path record', () async {
      final long = '${'d' * 120}/tofu';
      final archive = File(p.join(temp.path, 'a.tar.gz'))
        ..writeAsBytesSync(tarGz({long: utf8.encode('binary')}));
      final out = File(p.join(temp.path, 'tofu'));
      expect(await extractTarGzEntry(archive, long, out), isTrue);
      expect(out.readAsStringSync(), 'binary');
    });

    test('reports a missing entry', () async {
      final archive = File(p.join(temp.path, 'a.tar.gz'))
        ..writeAsBytesSync(tarGz({'LICENSE': utf8.encode('MPL')}));
      expect(
        await extractTarGzEntry(archive, 'tofu', File(p.join(temp.path, 't'))),
        isFalse,
      );
    });
  });

  group('OpenTofuInstaller', () {
    const version = '9.9.9';
    final host = HostPlatform.current();
    final binary = utf8.encode('#!/bin/sh\necho tofu\n');
    late HttpServer server;
    late List<int> archive;
    late String sums;
    final requests = <String>[];

    setUp(() async {
      requests.clear();
      archive = tarGz({host.executable('tofu'): binary});
      sums =
          '${sha256.convert(archive)}  tofu_${version}_$host.tar.gz\n'
          '${'0' * 64}  tofu_${version}_plan9_amd64.tar.gz\n';
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      server.listen((request) async {
        requests.add(request.uri.path);
        final name = request.uri.pathSegments.last;
        if (name == 'tofu_${version}_SHA256SUMS') {
          request.response.write(sums);
        } else if (name == 'tofu_${version}_$host.tar.gz') {
          request.response.add(archive);
        } else {
          request.response.statusCode = HttpStatus.notFound;
        }
        await request.response.close();
      });
    });
    tearDown(() => server.close(force: true));

    OpenTofuInstaller installer() => OpenTofuInstaller(
      cacheDir: temp.path,
      platform: host,
      version: version,
      releases: Uri.parse('http://127.0.0.1:${server.port}/'),
    );

    test('downloads, verifies and caches the binary', () async {
      final path = await installer().ensure();
      expect(
        path,
        p.join(
          temp.path,
          'opentofu',
          version,
          '$host',
          host.executable('tofu'),
        ),
      );
      expect(File(path).readAsBytesSync(), binary);
      if (!host.isWindows) {
        expect(File(path).statSync().mode & 0x49, 0x49);
      }
      expect(requests, [
        '/v$version/tofu_${version}_SHA256SUMS',
        '/v$version/tofu_${version}_$host.tar.gz',
      ]);

      requests.clear();
      expect(await installer().ensure(), path);
      expect(requests, isEmpty);
    });

    test('discards an archive whose checksum does not match', () async {
      sums = '${'a' * 64}  tofu_${version}_$host.tar.gz\n';
      await expectLater(
        installer().ensure(),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            contains('Checksum mismatch'),
          ),
        ),
      );
      expect(File(installer().binaryPath).existsSync(), isFalse);
      expect(
        Directory(p.join(temp.path, 'opentofu')).listSync(),
        isEmpty,
        reason: 'the download directory is removed',
      );
    });

    test('reports an HTTP error', () async {
      final missing = OpenTofuInstaller(
        cacheDir: temp.path,
        platform: host,
        version: '0.0.1',
        releases: Uri.parse('http://127.0.0.1:${server.port}/'),
      );
      await expectLater(
        missing.ensure(),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            contains('HTTP 404'),
          ),
        ),
      );
    });

    test('the resolver downloads it when no engine is on PATH', () async {
      final empty = Directory(p.join(temp.path, 'empty'))..createSync();
      final engine = await EngineResolver(
        settings: const EngineSettings(openTofuVersion: version),
        environment: {
          'PATH': empty.path,
          'TERRADART_CACHE_DIR': temp.path,
          'TERRADART_OPENTOFU_MIRROR': 'http://127.0.0.1:${server.port}',
        },
      ).resolve();
      expect(engine.kind, EngineKind.tofu);
      expect(engine.managed, isTrue);
      expect(File(engine.path).readAsBytesSync(), binary);
    });
  });

  group('a platform without a managed OpenTofu', () {
    final host = HostPlatform.unsupported(
      Platform.isWindows ? 'windows' : 'linux',
      Abi.linuxRiscv64,
    );

    test('still runs the engine on PATH', () async {
      final bin = Directory(p.join(temp.path, 'bin'))..createSync();
      final tofu = fakeExecutable(bin.path, 'tofu');
      final engine = await EngineResolver(
        settings: const EngineSettings(),
        environment: {'PATH': bin.path},
        platform: host,
      ).resolve();
      expect(engine.path, tofu);
    });

    test('falls back to terraform when the recorded tofu is gone', () async {
      final bin = Directory(p.join(temp.path, 'bin'))..createSync();
      final terraform = fakeExecutable(bin.path, 'terraform');
      final warnings = <String>[];
      final engine = await EngineResolver(
        settings: const EngineSettings(),
        environment: {'PATH': bin.path},
        platform: host,
        warn: warnings.add,
      ).resolve(recorded: const EngineRecord(EngineKind.tofu, '1.13.1'));
      expect(engine.path, terraform);
      expect(warnings.single, contains('last applied with OpenTofu'));
    });

    test('engine: tofu asks for a tofu on PATH', () async {
      final empty = Directory(p.join(temp.path, 'empty'))..createSync();
      await expectLater(
        EngineResolver(
          settings: const EngineSettings(kind: EngineKind.tofu),
          environment: {'PATH': empty.path},
          platform: host,
        ).resolve(),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            contains('terradart.engine is tofu, but no tofu is on PATH'),
          ),
        ),
      );
    });

    test('fails only when it would download', () async {
      final empty = Directory(p.join(temp.path, 'empty'))..createSync();
      await expectLater(
        EngineResolver(
          settings: const EngineSettings(),
          environment: {'PATH': empty.path},
          platform: host,
        ).resolve(),
        throwsA(
          isA<CliException>().having(
            (e) => e.message,
            'message',
            contains('no managed OpenTofu for linux_riscv64'),
          ),
        ),
      );
    });
  });

  group('versions', () {
    test('compare numerically', () {
      expect(compareVersions('1.13.1', '1.9.0'), 1);
      expect(compareVersions('1.6.0', '1.6.0'), 0);
      expect(compareVersions('1.6.0-beta1', '1.6.1'), -1);
    });

    test('warn on an older engine for the same state', () {
      const recorded = EngineRecord(EngineKind.tofu, '1.13.1');
      expect(engineSwitchWarning(recorded, EngineKind.tofu, '1.13.1'), isNull);
      expect(engineSwitchWarning(recorded, EngineKind.tofu, '1.14.0'), isNull);
      expect(
        engineSwitchWarning(recorded, EngineKind.tofu, '1.12.0'),
        contains('newer than 1.12.0'),
      );
    });
  });

  test('the cache directory follows the platform', () {
    expect(
      cacheDirectory(
        environment: {'HOME': '/home/u'},
        platform: const HostPlatform('linux', 'amd64'),
      ),
      p.join('/home/u', '.cache', 'terradart'),
    );
    expect(
      cacheDirectory(
        environment: {'HOME': '/Users/u'},
        platform: const HostPlatform('darwin', 'arm64'),
      ),
      p.join('/Users/u', 'Library', 'Caches', 'terradart'),
    );
    expect(
      cacheDirectory(
        environment: {'LOCALAPPDATA': r'C:\Users\u\AppData\Local'},
        platform: const HostPlatform('windows', 'amd64'),
      ),
      p.join(r'C:\Users\u\AppData\Local', 'terradart'),
    );
    expect(
      cacheDirectory(
        environment: {'TERRADART_CACHE_DIR': '/cache', 'HOME': '/home/u'},
        platform: const HostPlatform('linux', 'amd64'),
      ),
      '/cache',
    );
  });
}
