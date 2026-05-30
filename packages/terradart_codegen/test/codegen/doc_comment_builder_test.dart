import 'package:terradart_codegen/src/codegen/doc_comment_builder.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:test/test.dart';

ResourceDef _def({String? description}) => ResourceDef(
      terraformType: 'google_pubsub_schema',
      description: description,
      root: const BlockDef(attributes: []),
    );

void main() {
  group('buildClassDocComment', () {
    test('emits only the factory line when there is no description', () {
      final doc = buildClassDocComment(_def());
      expect(doc, '/// Factory wrapper for `google_pubsub_schema`.');
    });

    test('appends the resource summary after a blank doc line', () {
      final doc = buildClassDocComment(_def(
        description: 'A schema is a format that messages must follow, '
            'creating a contract between publisher and subscriber that '
            'Pub/Sub will enforce.',
      ));
      expect(
        doc,
        startsWith('/// Factory wrapper for `google_pubsub_schema`.\n///\n'),
      );
      expect(doc, contains('/// A schema is a format'));
    });

    test('rewraps the summary so every line fits within 80 columns', () {
      final doc = buildClassDocComment(_def(description: 'word ' * 60));
      for (final line in doc.split('\n')) {
        expect(line.length, lessThanOrEqualTo(80), reason: 'line: "$line"');
        expect(line, startsWith('///'));
      }
    });

    test('preserves paragraph breaks as blank doc lines', () {
      final doc = buildClassDocComment(_def(
        description: 'First paragraph.\n\nSecond paragraph.',
      ));
      expect(
        doc,
        contains('/// First paragraph.\n///\n/// Second paragraph.'),
      );
    });

    test('collapses the source hard-wraps within a paragraph', () {
      final doc = buildClassDocComment(_def(description: 'one\ntwo\nthree'));
      expect(doc, contains('/// one two three'));
    });

    test('trims a trailing newline from the merged MM description', () {
      final doc = buildClassDocComment(_def(description: 'Summary.\n'));
      expect(
        doc,
        '/// Factory wrapper for `google_pubsub_schema`.\n'
        '///\n'
        '/// Summary.',
      );
    });

    test('appends curatedDoc verbatim after the summary', () {
      final doc = buildClassDocComment(
        _def(description: 'Summary.'),
        curatedDoc: '/// Example:\n/// ```dart\n/// x();\n/// ```',
      );
      expect(
        doc,
        '/// Factory wrapper for `google_pubsub_schema`.\n'
        '///\n'
        '/// Summary.\n'
        '///\n'
        '/// Example:\n/// ```dart\n/// x();\n/// ```',
      );
    });

    test('places curatedDoc after the factory line when no description', () {
      final doc = buildClassDocComment(_def(), curatedDoc: '/// Curated only.');
      expect(
        doc,
        '/// Factory wrapper for `google_pubsub_schema`.\n'
        '///\n'
        '/// Curated only.',
      );
    });

    test('greedily fills lines rather than one word per line', () {
      final doc = buildClassDocComment(_def(description: 'word ' * 60));
      // At least one wrapped body line should pack close to the 76-col target,
      // proving words are packed greedily (not emitted one per line).
      final bodyLines =
          doc.split('\n').where((l) => l.startsWith('/// word')).toList();
      expect(bodyLines, isNotEmpty);
      expect(
        bodyLines.any((l) => l.length > 70),
        isTrue,
        reason: 'expected at least one densely packed line near 76 cols',
      );
    });

    test('keeps a word longer than the wrap width intact on its own line', () {
      final longWord = 'x' * 100;
      final doc = buildClassDocComment(_def(description: longWord));
      expect(doc, contains('/// $longWord'));
    });
  });
}
