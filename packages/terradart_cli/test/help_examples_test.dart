import 'dart:convert';
import 'dart:async';

import 'package:terradart_cli/src/assets/help_topics.g.dart';
import 'package:terradart_cli/terradart_cli.dart';
import 'package:test/test.dart';

import 'support.dart';

/// Runs `terradart <args>` and returns its code and output; `--help` prints
/// its usage with `print`.
Future<({int code, String out, String err})> terradart(
  List<String> args,
) async {
  final out = StringBuffer();
  final err = StringBuffer();
  final code = await runZoned(
    () => runTerradart(
      args,
      runner: FakeRunner(),
      console: Console(out: out.writeln, err: err.writeln),
      environment: const {},
    ),
    zoneSpecification: ZoneSpecification(
      print: (_, _, _, line) => out.writeln(line),
    ),
  );
  return (code: code, out: '$out', err: '$err');
}

/// The command lines a help text shows: indented lines that start with
/// `terradart `, with each `<placeholder>` as a value.
List<List<String>> exampleLines(String text) => [
  for (final line in text.split('\n'))
    if (line.startsWith('  ') && line.trimLeft().startsWith('terradart '))
      line
          .trim()
          .replaceAll(RegExp(r'<[^>]*>'), 'x')
          .split(RegExp(r'\s+'))
          .skip(1)
          .toList(),
];

void main() {
  late final Map<String, String> usages;
  setUpAll(() async {
    final top = await terradart(['--help']);
    final section = top.out.split('Available commands:\n').last;
    final commands = [
      for (final m in RegExp(r'^  (\w+) ', multiLine: true).allMatches(section))
        m.group(1)!,
    ]..remove('help');
    usages = {'terradart': top.out};
    for (final c in commands) {
      usages[c] = (await terradart([c, '--help'])).out;
    }
    usages['state migrate'] = (await terradart([
      'state',
      'migrate',
      '--help',
    ])).out;
  });

  test('every command has examples, the agent form last', () {
    for (final MapEntry(key: name, value: usage) in usages.entries) {
      if (name == 'terradart' || name == 'state') continue;
      final section = usage.split('\nExamples:\n').last.split('\n');
      final examples = exampleLines(
        section.takeWhile((l) => l.isEmpty || l.startsWith(' ')).join('\n'),
      );
      expect(examples, isNotEmpty, reason: name);
      expect(
        examples.last,
        contains('--json'),
        reason: '$name: the last example is the one an agent runs',
      );
    }
  });

  test('every example in the help and the topics parses', () async {
    final texts = {
      for (final MapEntry(:key, :value) in usages.entries) '$key --help': value,
      for (final MapEntry(:key, :value) in helpTopics.entries)
        'help $key': value,
    };
    var checked = 0;
    for (final MapEntry(key: where, value: text) in texts.entries) {
      for (final words in exampleLines(text)) {
        final dash = words.indexOf('--');
        final args = dash < 0
            ? [...words, '--help']
            : [...words.sublist(0, dash), '--help', ...words.sublist(dash)];
        final r = words.firstOrNull == 'help'
            ? await terradart(words)
            : await terradart(args);
        expect(
          r.code,
          0,
          reason: '$where: terradart ${words.join(' ')}\n${r.err}',
        );
        checked++;
      }
    }
    expect(checked, greaterThan(40));
  });

  test('every "terradart help <name>" names a topic or a command', () {
    final all = [...usages.values, ...helpTopics.values].join('\n');
    for (final m in RegExp(r'terradart help ([a-z][a-z-]*)').allMatches(all)) {
      final name = m.group(1)!;
      expect(
        helpTopics.containsKey(name) || usages.containsKey(name),
        isTrue,
        reason: 'terradart help $name',
      );
    }
  });

  group('terradart help', () {
    test('--list names every topic with its first line', () async {
      final r = await terradart(['help', '--list']);
      expect(r.code, 0);
      for (final MapEntry(key: name, value: text) in helpTopics.entries) {
        expect(
          r.out,
          contains(RegExp('  $name +${RegExp.escape(text.split('\n').first)}')),
        );
      }
    });

    test('<topic> prints the topic', () async {
      final r = await terradart(['help', 'exit-codes']);
      expect(r.code, 0);
      expect(r.out, contains('66  no_project'));
      expect(r.out.trim(), endsWith('#json-and-exit-codes'));
    });

    test(
      'takes the global flags; with --json the topic is on stderr',
      () async {
        for (final args in [
          ['help', 'exit-codes', '--no-input', '-q'],
          ['--no-input', 'help', 'exit-codes'],
        ]) {
          final r = await terradart(args);
          expect(r.code, 0, reason: '$args');
          expect(r.out, contains('66  no_project'), reason: '$args');
        }
        for (final args in [
          ['help', 'exit-codes', '--no-input', '--json'],
          ['--json', 'help', '--list'],
        ]) {
          final r = await terradart(args);
          expect(r.code, 0, reason: '$args');
          expect(r.err, isNotEmpty, reason: '$args');
          expect(jsonDecode(r.out.trim()), {
            'schemaVersion': 1,
            'command': 'help',
            'ok': true,
            'exitCode': 0,
            'notices': <Object?>[],
            'next': <Object?>[],
          });
        }
      },
    );

    test('migrate is the command usage, then the topic as the guide', () async {
      final r = await terradart(['help', 'migrate']);
      expect(r.code, 0);
      expect(r.out, startsWith('Migrate a Terraform tree'));
      expect(r.out, contains('\nGuide:\n  From a Terraform tree'));
    });

    test('a command is its usage, as before', () async {
      final r = await terradart(['help', 'plan']);
      expect(r.code, 0);
      expect(r.out, contains('--detailed-exitcode'));
      expect(r.out, contains('Examples:'));
    });

    test('neither a topic nor a command is a usage error', () async {
      final r = await terradart(['help', 'nope']);
      expect(r.code, 64);
    });

    test('the usage lists the topics', () async {
      final r = await terradart(['--help']);
      expect(r.out, contains('Topics: ${helpTopics.keys.join(', ')}'));
    });
  });
}
