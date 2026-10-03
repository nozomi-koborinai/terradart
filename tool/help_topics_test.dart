import 'package:test/test.dart';

import 'sync_help_topics.dart';

void main() {
  const root = '.';
  final topics = readHelpTopics(root);

  test('the CLI carries packages/terradart_cli/help/*.md as they are', () {
    expect(
      syncHelpTopics(root),
      isEmpty,
      reason: 'run `dart tool/sync_help_topics.dart --fix`',
    );
  });

  test('every topic fits a terminal and ends with its page', () {
    expect(topics, isNotEmpty);
    for (final MapEntry(key: name, value: text) in topics.entries) {
      expect(name, matches(RegExp(r'^[a-z]+(-[a-z]+)*$')), reason: name);
      final lines = text.trimRight().split('\n');
      expect(lines.length, lessThanOrEqualTo(60), reason: name);
      expect(lines.first, isNot(startsWith('#')), reason: name);
      expect(
        lines.last,
        startsWith('More: https://terradart.dev/docs/'),
        reason: name,
      );
      for (final (i, line) in lines.indexed) {
        expect(
          line.length,
          lessThanOrEqualTo(100),
          reason: '$name.md:${i + 1} is wider than a terminal',
        );
      }
    }
  });
}
