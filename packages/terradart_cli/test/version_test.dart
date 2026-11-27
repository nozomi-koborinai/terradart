import 'dart:async';
import 'dart:io';

import 'package:terradart_cli/src/assets/skill_md.g.dart';
import 'package:terradart_cli/src/skill/marker.dart';
import 'package:terradart_cli/src/version.dart';
import 'package:terradart_cli/src/cli.dart';
import 'package:terradart_cli/src/workflow.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  test('cliVersion matches pubspec.yaml (lockstep)', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final version = RegExp(
      r'^version:\s*(\S+)',
      multiLine: true,
    ).firstMatch(pubspec)!.group(1);
    expect(cliVersion, version);
  });

  test('the bundled skill records this version and its own hash', () {
    final marker = SkillMarker.parse(bundledSkillMd);
    expect(marker, isNotNull, reason: 'no terradart-version marker');
    expect(marker!.version, cliVersion);
    expect(marker.sha256, skillContentHash(bundledSkillMd));
  });

  group('--version', () {
    Future<({int code, String out, String err})> runOutsideProject(
      List<String> args, {
      FakeRunner? runner,
    }) async {
      final dir = Directory.systemTemp.createTempSync('terradart_version_');
      addTearDown(() => dir.deleteSync(recursive: true));
      final out = StringBuffer();
      final err = StringBuffer();
      final code = await runZoned(
        () => runTerradartWith(
          args,
          runner: runner ?? FakeRunner(),
          console: Console(out: out.writeln, err: err.writeln),
          workingDirectory: dir.path,
          environment: const {},
        ),
        zoneSpecification: ZoneSpecification(
          print: (_, _, _, line) => out.writeln(line),
        ),
      );
      return (code: code, out: '$out', err: '$err');
    }

    test(
      'prints terradart <cliVersion> and exits 0 outside a project',
      () async {
        final runner = FakeRunner();
        final r = await runOutsideProject(['--version'], runner: runner);
        expect(r.code, 0, reason: r.err);
        expect(r.out, 'terradart $cliVersion\n');
        expect(r.err, isEmpty);
        expect(runner.calls, isEmpty);
      },
    );

    for (final args in [
      ['--version', '-q'],
      ['--version', '--quiet'],
      ['--version', '--no-input'],
      ['--no-input', '-q', '--version'],
    ]) {
      test('${args.join(' ')} prints the version and exits 0', () async {
        final r = await runOutsideProject(args);
        expect(r.code, 0, reason: r.err);
        expect(r.out, 'terradart $cliVersion\n');
        expect(r.err, isEmpty);
      });
    }

    test('is listed in --help', () async {
      final r = await runOutsideProject(['--help']);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('--version'));
    });

    test('rejects extra commands or arguments with exit code 64', () async {
      for (final args in [
        ['--version', 'plan'],
        ['plan', '--version'],
        ['--version', 'extra'],
      ]) {
        final r = await runOutsideProject(args);
        expect(r.code, 64, reason: '$args');
        expect(r.out, isEmpty, reason: '$args');
        expect(r.err, contains('--version'), reason: '$args');
      }
    });

    test('does not add a version subcommand', () async {
      final r = await runOutsideProject(['version']);
      expect(r.code, 64);
      expect(r.err, contains('Could not find a command named "version"'));
    });

    test('preserves migrate --version', () async {
      final r = await runOutsideProject(['migrate', '--version']);
      expect(r.code, 0, reason: r.err);
      expect(r.out.trim(), 'terradart migrate $cliVersion');
      expect(r.err, isEmpty);
    });
  });
}
