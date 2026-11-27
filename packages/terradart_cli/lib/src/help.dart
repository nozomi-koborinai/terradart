import 'package:args/command_runner.dart';

import 'assets/help_topics.g.dart';

String commandFooter(List<String> examples, {List<String> seeAlso = const []}) {
  final b = StringBuffer('\nExamples:\n');
  for (final e in examples) {
    b.writeln('  $e');
  }
  if (seeAlso.isNotEmpty) {
    b.write(
      'See also: ${[for (final t in seeAlso) 'terradart help $t'].join(', ')}',
    );
  }
  return '$b'.trimRight();
}

final class TerradartRunner extends CommandRunner<int> {
  TerradartRunner()
    : super(
        'terradart',
        'Create, synthesize, validate, plan and apply a TerraDart Stack with '
            'OpenTofu or Terraform, and migrate an existing Terraform tree.',
      );

  @override
  String get usageFooter =>
      '\nTopics: ${helpTopics.keys.join(', ')}\n'
      'Run "terradart help <topic>" to read one, "terradart help --list" for '
      'what each covers.';
}

String? topicHelp(List<String> rest, CommandRunner<int> runner) {
  if (rest case ['--list']) {
    final width = helpTopics.keys.fold(
      0,
      (w, k) => k.length > w ? k.length : w,
    );
    return [
      'Help topics (terradart help <topic>):',
      for (final MapEntry(key: name, value: text) in helpTopics.entries)
        '  ${name.padRight(width)}  ${text.split('\n').first}',
    ].join('\n');
  }
  if (rest case [final name]) {
    final topic = helpTopics[name];
    if (topic == null) return null;
    final command = runner.commands[name];
    if (command == null) return topic.trimRight();
    final guide = [
      for (final line in topic.trimRight().split('\n'))
        line.isEmpty ? '' : '  $line',
    ];
    return '${command.usage}\n\nGuide:\n${guide.join('\n')}';
  }
  return null;
}
