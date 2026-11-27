import 'dart:ffi' show Abi;
import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'output/exit_codes.dart';

final class HostPlatform {
  const HostPlatform(this.os, this.arch) : _unsupported = null;

  const HostPlatform.unsupported(this.os, Abi abi)
    : arch = '$abi',
      _unsupported = abi;

  factory HostPlatform.current() => switch (Abi.current()) {
    Abi.linuxX64 => const HostPlatform('linux', 'amd64'),
    Abi.linuxArm64 => const HostPlatform('linux', 'arm64'),
    Abi.macosX64 => const HostPlatform('darwin', 'amd64'),
    Abi.macosArm64 => const HostPlatform('darwin', 'arm64'),
    Abi.windowsX64 => const HostPlatform('windows', 'amd64'),
    Abi.windowsArm64 => const HostPlatform('windows', 'arm64'),
    final abi => HostPlatform.unsupported(
      Platform.isWindows ? 'windows' : Platform.operatingSystem,
      abi,
    ),
  };

  final Abi? _unsupported;

  bool get hasManaged => _unsupported == null;

  void checkManaged() {
    if (_unsupported case final abi?) {
      throw CliException(
        'terradart has no managed OpenTofu for $abi. Install tofu or '
        'terraform on PATH, or set terradart.engine_path in pubspec.yaml.',
        kind: ExitCode.engineUnavailable,
      );
    }
  }

  final String os;

  final String arch;

  bool get isWindows => os == 'windows';

  String executable(String name) => isWindows ? '$name.exe' : name;

  @override
  String toString() => '${os}_$arch';
}

String cacheDirectory({
  Map<String, String>? environment,
  HostPlatform? platform,
}) {
  final env = environment ?? Platform.environment;
  final host = platform ?? HostPlatform.current();
  final explicit = env['TERRADART_CACHE_DIR'];
  if (explicit != null && explicit.isNotEmpty) return explicit;
  String? home() => env['HOME'] ?? env['USERPROFILE'];
  final String? base = switch (host.os) {
    'windows' => env['LOCALAPPDATA'] ?? env['APPDATA'],
    'darwin' => switch (home()) {
      final h? => p.join(h, 'Library', 'Caches'),
      null => null,
    },
    _ =>
      env['XDG_CACHE_HOME'] ??
          switch (home()) {
            final h? => p.join(h, '.cache'),
            null => null,
          },
  };
  if (base == null) {
    throw const CliException(
      'Cannot find a cache directory for the managed OpenTofu; set '
      'TERRADART_CACHE_DIR.',
      kind: ExitCode.engineUnavailable,
    );
  }
  return p.join(base, 'terradart');
}

String? findOnPath(
  String name, {
  Map<String, String>? environment,
  HostPlatform? platform,
}) {
  final env = environment ?? Platform.environment;
  final host = platform ?? HostPlatform.current();
  final path = env['PATH'] ?? env['Path'] ?? '';
  final separator = host.isWindows ? ';' : ':';
  final extensions = host.isWindows
      ? [
          '',
          ...(env['PATHEXT'] ?? '.COM;.EXE;.BAT;.CMD')
              .split(';')
              .where((e) => e.isNotEmpty)
              .map((e) => e.toLowerCase()),
        ]
      : [''];
  for (final dir in path.split(separator)) {
    if (dir.isEmpty) continue;
    for (final ext in extensions) {
      if (host.isWindows && ext.isEmpty) continue;
      final candidate = p.join(dir, '$name$ext');
      if (_isExecutableFile(candidate, host)) return candidate;
    }
  }
  return null;
}

bool _isExecutableFile(String path, HostPlatform host) {
  final stat = FileStat.statSync(path);
  if (stat.type != FileSystemEntityType.file) return false;
  if (host.isWindows) return true;
  return stat.mode & 0x49 != 0;
}
