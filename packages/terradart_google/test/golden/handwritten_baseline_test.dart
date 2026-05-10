import 'dart:io';
import 'package:test/test.dart';
import 'package:path/path.dart' as p;

void main() {
  group('handwritten_baseline', () {
    test('13 files exist', () {
      final dir = Directory(p.join('test', 'golden', 'handwritten_baseline'));
      expect(dir.existsSync(), isTrue);
      final files = dir.listSync().whereType<File>().toList();
      expect(files, hasLength(13));
    });

    test('all files have GENERATED FILE header (line 1)', () {
      final dir = Directory(p.join('test', 'golden', 'handwritten_baseline'));
      for (final f in dir.listSync().whereType<File>()) {
        final firstLine = f.readAsLinesSync().first;
        expect(
          firstLine,
          '// GENERATED FILE - DO NOT EDIT',
          reason: 'missing header in ${f.path}',
        );
      }
    });

    test('all imports use package:terradart_google/... (no relative)', () {
      final dir = Directory(p.join('test', 'golden', 'handwritten_baseline'));
      for (final f in dir.listSync().whereType<File>()) {
        final src = f.readAsStringSync();
        expect(
          src,
          isNot(contains("import '../generated/")),
          reason: 'relative import in ${f.path}',
        );
        expect(
          src,
          isNot(contains("import './")),
          reason: 'relative import in ${f.path}',
        );
      }
    });
  });
}
