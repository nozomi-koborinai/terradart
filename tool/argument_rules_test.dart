import 'dart:io';

import 'package:test/test.dart';

import 'sync_argument_rules.dart';

void main() {
  test('every copy of the argument-writing rules matches the source', () {
    expect(
      syncArgumentRules(Directory.current.path),
      isEmpty,
      reason: 'run `dart tool/sync_argument_rules.dart --fix`',
    );
  });

  group('withArgumentRules', () {
    const block = ['| a | b |', '', '```dart', 'x();', '```'];

    test('prefixes every line like the start marker', () {
      const text =
          'library doc\n'
          '  /// <!-- argument-rules:start -->\n'
          '  /// stale\n'
          '  /// <!-- argument-rules:end -->\n'
          'after\n';
      expect(
        withArgumentRules(text, 'x.yaml', block),
        'library doc\n'
        '  /// <!-- argument-rules:start -->\n'
        '  /// | a | b |\n'
        '  ///\n'
        '  /// ```dart\n'
        '  /// x();\n'
        '  /// ```\n'
        '  /// <!-- argument-rules:end -->\n'
        'after\n',
      );
    });

    test('reads MDX markers', () {
      const text =
          '{/* argument-rules:start */}\n'
          'old\n'
          '{/* argument-rules:end */}\n';
      expect(
        argumentRulesBlock(withArgumentRules(text, 'x.mdx', block), 'x.mdx'),
        block,
      );
    });

    test('fails on a file without one pair of markers', () {
      expect(
        () => withArgumentRules('no markers', 'x.md', block),
        throwsFormatException,
      );
      expect(
        () => withArgumentRules(
          '<!-- argument-rules:end -->\n<!-- argument-rules:start -->',
          'x.md',
          block,
        ),
        throwsFormatException,
      );
    });
  });
}
