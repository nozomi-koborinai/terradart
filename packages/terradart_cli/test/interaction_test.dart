import 'package:terradart_cli/src/output/interaction.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  group('noInputReason', () {
    test('--no-input, TERRADART_NO_INPUT, CI and agent shells', () {
      expect(noInputReason({}), isNull);
      expect(noInputReason({}, noInputFlag: true), '--no-input');
      expect(noInputReason({'TERRADART_NO_INPUT': '1'}), 'TERRADART_NO_INPUT');
      expect(noInputReason({'CI': 'true'}), 'CI');
      expect(noInputReason({'CURSOR_AGENT': '1'}), 'CURSOR_AGENT');
      expect(noInputReason({'CLAUDECODE': '1'}), 'CLAUDECODE');
    });

    test('an empty, 0 or false value says nothing', () {
      expect(noInputReason({'CI': 'false', 'TERRADART_NO_INPUT': '0'}), isNull);
      expect(noInputReason({'CLAUDECODE': ''}), isNull);
    });
  });

  group('commandLine', () {
    test('adds the arguments before --, quoting what a shell would split', () {
      expect(
        commandLine(['plan', '--', '-target=a.b'], ['--env', 'dev']),
        'terradart plan --env dev -- -target=a.b',
      );
      expect(
        commandLine(['plan', '-C', 'my infra', "it's"]),
        "terradart plan -C 'my infra' 'it'\\''s'",
      );
    });
  });

  group('the environment question', () {
    const envs = ['dev', 'stg', 'prod'];
    FakeRunner runner() =>
        FakeRunner(synth: (args) => runEnvironmentsEntry(args, envs));

    test('a terminal picks the environment by number', () async {
      final project = TestProject.create();
      final fake = runner();
      final r = await project.run(['plan'], fake, input: ['2']);
      expect(r.code, 0, reason: r.err);
      expect(
        r.out,
        contains(
          'Environment? (1) dev  (2) stg  (3) prod  '
          '(non-interactive: --env <name>)',
        ),
      );
      expect(r.out, contains('env: stg (prompt)'));
      expect(fake.calls.last.workingDirectory, project.path('tf-out/stg'));
    });

    test('a name works too, and a wrong answer asks again', () async {
      final project = TestProject.create();
      final r = await project.run(['plan'], runner(), input: ['qa', 'prod']);
      expect(r.code, 0, reason: r.err);
      expect(r.err, contains('Answer a number from 1 to 3, or a name.'));
      expect(r.out, contains('env: prod (prompt)'));
    });

    test('apply does not ask "yes" again for the env it was given', () async {
      final project = TestProject.create();
      final fake = FakeRunner(
        synth: (args) => runEnvironmentsEntry(args, envs),
        outputs: {
          'dart_defines': {'API_URL': 'https://api.example.com'},
        },
      );
      final r = await project.run(['apply'], fake, input: ['1']);
      expect(r.code, 0, reason: r.err);
      expect(r.out, isNot(contains('Only "yes" is accepted')));
    });

    test('no answer stops with the flag and the next command', () async {
      final project = TestProject.create();
      final r = await project.run(['plan'], runner(), input: const []);
      expect(r.code, 64);
      expect(r.err, contains('  Next: terradart plan --env dev'));
    });

    for (final (name, args, env) in [
      ('--no-input', ['plan', '--no-input'], <String, String>{}),
      ('TERRADART_NO_INPUT', ['plan'], {'TERRADART_NO_INPUT': '1'}),
      ('CI', ['plan'], {'CI': 'true'}),
      ('an agent shell', ['plan'], {'CLAUDECODE': '1'}),
    ]) {
      test('$name never asks, even on a terminal', () async {
        final project = TestProject.create();
        final r = await project.run(args, runner(), env: env, input: ['1']);
        expect(r.code, 64);
        expect(r.out, isNot(contains('Environment?')));
        expect(r.err, contains('  Choices: dev, stg, prod'));
      });
    }
  });

  test('apply on a terminal with --no-input needs --auto-approve', () async {
    final project = TestProject.create();
    final fake = FakeRunner(synth: (_) => runStackEntry());
    final r = await project.run(['apply', '--no-input'], fake, input: ['y']);
    expect(r.code, 3);
    expect(
      r.err,
      contains(
        'terradart: apply needs --auto-approve when it cannot ask '
        '(--no-input).\n'
        '  Next: terradart apply --no-input --auto-approve\n',
      ),
    );
    expect(fake.engineCalls, isEmpty);
  });

  test('--quiet leaves out the values terradart picked', () async {
    final project = TestProject.create();
    final fake = FakeRunner(
      synth: (args) => runEnvironmentsEntry(args, ['dev'], defaultEnv: 'dev'),
    );
    final loud = await project.run(['plan'], fake);
    expect(loud.out, contains('env: dev (default)'));
    expect(loud.out, contains('Using OpenTofu'));
    final quiet = await project.run(['plan', '--quiet'], fake);
    expect(quiet.code, 0, reason: quiet.err);
    expect(quiet.out, isNot(contains('env: dev')));
    expect(quiet.out, isNot(contains('Using OpenTofu')));
  });
}
