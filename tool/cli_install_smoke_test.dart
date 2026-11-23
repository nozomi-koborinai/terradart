@Timeout(Duration(minutes: 3))
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// Proves `terradart_cli` works through both Dart 3.12+ global workflows:
///
/// 1. `dart install terradart_cli@{path: ...}` followed by running the
///    installed `terradart` executable and `dart uninstall terradart_cli`.
/// 2. Remote-style `dart run terradart_cli:terradart@{path: ...}` without
///    installing or adding a dependency.
///
/// Both run from a temporary working directory outside the repository so
/// neither relies on the workspace root's `pubspec.yaml`.
void main() {
  final repoRoot = Directory.current.path;
  final cliDir = p.join(repoRoot, 'packages', 'terradart_cli');
  final pathDescriptor = '{path: ${jsonEncode(cliDir)}}';

  Map<String, String> isolatedEnv(String stateDir) {
    final env = Map<String, String>.from(Platform.environment);
    if (Platform.isLinux) {
      env['XDG_STATE_HOME'] = stateDir;
    } else if (Platform.isMacOS) {
      final home = env['HOME'];
      if (home != null && !env.containsKey('PUB_CACHE')) {
        env['PUB_CACHE'] = p.join(home, '.pub-cache');
      }
      env['HOME'] = stateDir;
    } else if (Platform.isWindows) {
      final localAppData = env['LOCALAPPDATA'];
      if (localAppData != null && !env.containsKey('PUB_CACHE')) {
        env['PUB_CACHE'] = p.join(localAppData, 'Pub', 'Cache');
      }
      env['LOCALAPPDATA'] = stateDir;
    }
    return env;
  }

  test('dart install installs and runs terradart from local path', () {
    final workDir = Directory.systemTemp.createTempSync('terradart_install_');
    final stateDir = Directory(p.join(workDir.path, 'state'))..createSync();
    final env = isolatedEnv(stateDir.path);
    addTearDown(() {
      Process.runSync(
        Platform.resolvedExecutable,
        ['uninstall', 'terradart_cli'],
        workingDirectory: workDir.path,
        environment: env,
      );
      if (workDir.existsSync()) {
        workDir.deleteSync(recursive: true);
      }
    });

    final install = Process.runSync(
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

    final help = Process.runSync(
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

    final version = Process.runSync(
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

    final uninstall = Process.runSync(
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
    () {
      final workDir = Directory.systemTemp.createTempSync('terradart_run_');
      final stateDir = Directory(p.join(workDir.path, 'state'))..createSync();
      final env = isolatedEnv(stateDir.path);
      addTearDown(() {
        if (workDir.existsSync()) {
          workDir.deleteSync(recursive: true);
        }
      });

      final help = Process.runSync(
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

      final version = Process.runSync(
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
