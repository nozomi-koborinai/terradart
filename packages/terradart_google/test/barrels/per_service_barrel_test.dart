import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

class _ExportDirective {
  const _ExportDirective({required this.sourcePath, required this.shownNames});
  final String sourcePath;
  final List<String> shownNames;
}

List<_ExportDirective> _parseExports(String dartSource) {
  final regex = RegExp(r"export\s+'([^']+)'\s+show\s+([^;]+);", dotAll: true);
  final results = <_ExportDirective>[];
  for (final match in regex.allMatches(dartSource)) {
    final sourcePath = match.group(1)!;
    final namesRaw = match.group(2)!;
    final names = namesRaw
        .split(',')
        .map((n) => n.trim())
        .where((n) => n.isNotEmpty)
        .toList();
    results.add(_ExportDirective(sourcePath: sourcePath, shownNames: names));
  }
  return results;
}

Set<String> _topLevelDeclarations(String source) {
  final typeDeclRegex = RegExp(
    r'^(?:abstract\s+|sealed\s+|base\s+|interface\s+|final\s+|mixin\s+)*'
    r'(?:class|enum|mixin|typedef)\s+(\w+)',
    multiLine: true,
  );
  final namedExtensionRegex = RegExp(
    r'^extension\s+(?:type\s+(?:const\s+)?(\w+)|(\w+)\s+on\b)',
    multiLine: true,
  );
  final constRegex = RegExp(
    r"^const\s+\w+(?:<[^>]*>)?\s+(\w+)\s*=",
    multiLine: true,
  );
  final functionRegex = RegExp(
    r'^\w+(?:<[^>]*>)?\??\s+(\w+)\s*\(',
    multiLine: true,
  );
  final names = <String>{};
  for (final m in functionRegex.allMatches(source)) {
    names.add(m.group(1)!);
  }
  for (final m in typeDeclRegex.allMatches(source)) {
    names.add(m.group(1)!);
  }
  for (final m in namedExtensionRegex.allMatches(source)) {
    names.add((m.group(1) ?? m.group(2))!);
  }
  for (final m in constRegex.allMatches(source)) {
    names.add(m.group(1)!);
  }
  return names;
}

void main() {
  test(
    '_topLevelDeclarations captures named declarations and skips unnamed extensions',
    () {
      final names = _topLevelDeclarations('''
class Foo {}
extension NamedExt on String {}
extension on String {}
extension type const Wrapper(int value) {}
const String kBar = 'bar';
String? lookup(String key) => null;
''');
      expect(names, equals({'Foo', 'NamedExt', 'Wrapper', 'kBar', 'lookup'}));
    },
  );

  group('Per-service barrels: show entries resolve to source declarations', () {
    final libDir = Directory('lib');

    final barrels = libDir.existsSync()
        ? libDir
              .listSync()
              .whereType<File>()
              .where((f) => f.path.endsWith('.dart'))
              .where((f) => p.basename(f.path) != 'terradart_google.dart')
              .toList()
        : <File>[];

    test('discovered at least 1 per-service barrel under lib/', () {
      expect(
        libDir.existsSync(),
        isTrue,
        reason: 'lib/ not found from terradart_google working dir',
      );
      expect(barrels, isNotEmpty);
    });

    for (final barrel in barrels) {
      final barrelName = p.basenameWithoutExtension(barrel.path);
      test('$barrelName.dart: every show entry resolves', () {
        final barrelSource = barrel.readAsStringSync();
        final exports = _parseExports(barrelSource);

        for (final directive in exports) {
          final sourceFile = File(p.join('lib', directive.sourcePath));
          expect(
            sourceFile.existsSync(),
            isTrue,
            reason:
                '$barrelName.dart exports from "${directive.sourcePath}" '
                'but lib/${directive.sourcePath} does not exist',
          );
          final declarations = _topLevelDeclarations(
            sourceFile.readAsStringSync(),
          );
          for (final shownName in directive.shownNames) {
            expect(
              declarations.contains(shownName),
              isTrue,
              reason:
                  '$barrelName.dart show entry "$shownName" '
                  '(from ${directive.sourcePath}) has no matching top-level '
                  'declaration. Either drop the show entry or add the '
                  'declaration to the source file.',
            );
          }
        }
      });
    }
  });

  group('Per-service barrels: generated files are exported completely', () {
    final libDir = Directory('lib');
    final barrels = libDir.existsSync()
        ? libDir
              .listSync()
              .whereType<File>()
              .where((f) => f.path.endsWith('.dart'))
              .where((f) => p.basename(f.path) != 'terradart_google.dart')
              .toList()
        : <File>[];

    for (final barrel in barrels) {
      final barrelName = p.basenameWithoutExtension(barrel.path);
      test('$barrelName.dart: every generated public type is shown', () {
        final exports = _parseExports(barrel.readAsStringSync());
        for (final directive in exports) {
          final sourceFile = File(p.join('lib', directive.sourcePath));
          if (!sourceFile.existsSync()) continue;
          final source = sourceFile.readAsStringSync();
          if (!source.startsWith('// GENERATED FILE')) continue;
          final public = _topLevelDeclarations(
            source,
          ).where((n) => !n.startsWith('_')).toSet();
          final shown = directive.shownNames.toSet();
          expect(
            public.difference(shown),
            isEmpty,
            reason:
                '$barrelName.dart hides public types of generated '
                '${directive.sourcePath}. The catalog advertises every '
                'nested type, so add the missing names to the show clause.',
          );
        }
      });
    }
  });
}
