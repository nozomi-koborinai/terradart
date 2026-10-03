import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/terradart_cli.dart';
import 'package:terradart_migrate/terradart_migrate.dart' show packageVersion;
import 'package:test/test.dart';

import 'support.dart';

void main() {
  late String root;

  setUp(() {
    root = p.join(
      Directory.systemTemp.createTempSync('terradart_init_').path,
      'acme',
    );
    Directory(root).createSync();
    addTearDown(() => Directory(p.dirname(root)).deleteSync(recursive: true));
  });

  String read(String rel) => File(p.join(root, rel)).readAsStringSync();
  bool exists(String rel) => File(p.join(root, rel)).existsSync();

  /// Runs `terradart init`; [answers] are typed into the prompts, and
  /// without them nobody can answer.
  Future<
    ({int code, String out, String err, List<String> asked, FakeRunner runner})
  >
  init(List<String> args, {List<String?>? answers, String? failOn}) async {
    final out = StringBuffer();
    final err = StringBuffer();
    final asked = <String>[];
    final queue = [...?answers];
    final runner = FakeRunner(failOn: failOn);
    final code = await runTerradart(
      ['init', ...args],
      runner: runner,
      workingDirectory: root,
      environment: const {},
      dartExecutable: 'dart',
      console: Console(
        out: out.writeln,
        err: err.writeln,
        ask: answers == null
            ? null
            : (question) {
                asked.add(question);
                return queue.isEmpty ? null : queue.removeAt(0);
              },
      ),
    );
    return (code: code, out: '$out', err: '$err', asked: asked, runner: runner);
  }

  test('defaults to infra/, dev and prd, local state', () async {
    final r = await init(['-p', 'google']);
    expect(r.code, 0, reason: r.err);
    final infra = p.join(root, 'infra');
    expect(
      Directory(infra)
          .listSync(recursive: true)
          .whereType<File>()
          .map((f) => p.split(p.relative(f.path, from: infra)).join('/'))
          .toSet(),
      {
        'pubspec.yaml',
        'lib/env.dart',
        'lib/stack.dart',
        'bin/infra.dart',
        '.gitignore',
        'README.md',
        'AGENTS.md',
      },
    );
    final pubspec = read('infra/pubspec.yaml');
    expect(pubspec, contains('name: acme_infra\n'));
    for (final pkg in [
      'terradart_core',
      'terradart_google',
      'terradart_time',
    ]) {
      expect(pubspec, contains('  $pkg: ^$packageVersion\n'));
    }
    expect(pubspec, isNot(contains('terradart_aws')));
    final env = read('infra/lib/env.dart');
    expect(
      env,
      contains(
        "  dev(\n"
        "    // TODO: your Google Cloud project ID.\n"
        "    projectId: 'acme-infra-dev',",
      ),
    );
    expect(env, contains('  prd(\n'));
    final stack = read('infra/lib/stack.dart');
    expect(stack, contains('final class AcmeInfraStack extends Stack'));
    expect(stack, contains('backend: const LocalBackend(),'));
    expect(stack, isNot(contains('appExports')));
    expect(
      read('infra/bin/infra.dart'),
      contains('runEnvironments(args, Env.values, (env) => AcmeInfraStack('),
    );
    expect(read('infra/.gitignore'), contains('tf-out/\n.terradart/\n'));
    expect(read('infra/README.md'), contains('terradart plan --env dev'));
    final agents = read('infra/AGENTS.md');
    expect(
      agents,
      contains('npx skills add nozomi-koborinai/terradart --skill terradart'),
    );
    expect(agents, contains('`terradart plan --env dev`'));

    expect(r.runner.calls.single.args, ['pub', 'get']);
    expect(r.runner.calls.single.workingDirectory, infra);
    expect(r.out, contains('> dart pub get\n'));
    expect(r.out, contains('  cd infra\n  terradart plan --env dev\n'));
    expect(
      r.out,
      contains(
        'Defaults: --env dev,prd, --gcp-project (placeholders marked TODO), '
        '--backend local.\n',
      ),
    );
    expect(r.out, isNot(contains('Re-run with')));
  });

  test('needs --provider without a terminal', () async {
    final r = await init(['--env', 'dev']);
    expect(r.code, 64);
    expect(
      r.err,
      contains(
        'Pass --provider: one or more of google, aws, cloudflare, appwrite',
      ),
    );
    expect(Directory(p.join(root, 'infra')).existsSync(), isFalse);
  });

  test('prints no defaults for what the flags give', () async {
    final r = await init([
      '-p',
      'aws',
      '--env',
      'dev',
      '--backend',
      'local',
      '--no-pub-get',
    ]);
    expect(r.code, 0, reason: r.err);
    expect(r.out, isNot(contains('Defaults:')));
  });

  test('takes providers, environments and a backend from flags', () async {
    final r = await init([
      'stacks',
      '--provider',
      'aws,cloudflare',
      '--env',
      'qa,staging',
      '--env',
      'prd',
      '--backend',
      's3',
      '--no-pub-get',
    ]);
    expect(r.code, 0, reason: r.err);
    expect(r.runner.calls, isEmpty);
    expect(r.out, contains('  cd stacks\n  dart pub get\n'));
    expect(read('stacks/pubspec.yaml'), contains('name: stacks\n'));
    final env = read('stacks/lib/env.dart');
    for (final e in ['qa', 'staging', 'prd']) {
      expect(env, contains('  $e('));
    }
    expect(env, contains('final String region;'));
    expect(env, contains('final String accountId;'));
    expect(env, contains('final String stateBucket;'));
    expect(env, contains('// TODO: create this bucket before the first'));
    expect(env, isNot(contains('stateRegion')));
    final stack = read('stacks/lib/stack.dart');
    expect(stack, contains('AwsProvider(region: env.region)'));
    expect(stack, isNot(contains('GoogleProvider')));
    expect(read('stacks/pubspec.yaml'), isNot(contains('terradart_time')));
  });

  test('takes the IDs of each environment', () async {
    final r = await init([
      '-p',
      'google,cloudflare',
      '--gcp-project',
      'dev=acme-dev',
      '--cloudflare-account',
      '0123abcd',
    ]);
    expect(r.code, 0, reason: r.err);
    final env = read('infra/lib/env.dart');
    expect(env, contains("  dev(projectId: 'acme-dev',"));
    expect(
      env,
      contains('  prd(\n    // TODO: your Google Cloud project ID.\n'),
    );
    expect("'0123abcd'".allMatches(env), hasLength(2));
    expect(env, isNot(contains('TODO: your Cloudflare')));
  });

  test('names the flag an ID is wrong for', () async {
    final google = await init(['-p', 'google', '--gcp-project', 'acme']);
    expect(google.code, 0, reason: google.err);
    final wrong = await init(['x', '-p', 'aws', '--gcp-project', 'acme']);
    expect(wrong.code, 64);
    expect(wrong.err, contains('--gcp-project needs --provider google.'));
    final env = await init(['y', '-p', 'google', '--gcp-project', 'stg=acme']);
    expect(env.code, 64);
    expect(env.err, contains('--gcp-project: no environment "stg"'));
    final quote = await init(['z', '-p', 'google', '--gcp-project', "it's"]);
    expect(quote.code, 64);
    expect(quote.err, contains('--gcp-project: "it\'s" is not an ID'));
  });

  test('names the Appwrite project projectId without google', () async {
    expect((await init(['a', '-p', 'appwrite'])).code, 0);
    expect(read('a/lib/env.dart'), contains('final String projectId;'));
    expect((await init(['b', '-p', 'google,appwrite'])).code, 0);
    expect(read('b/lib/env.dart'), contains('final String appwriteProjectId;'));
  });

  test('S3 state without aws gets a region of its own', () async {
    expect((await init(['a', '-p', 'cloudflare', '--backend', 's3'])).code, 0);
    expect(read('a/lib/env.dart'), contains('final String stateRegion;'));
    expect(read('a/lib/stack.dart'), contains('region: env.stateRegion,'));
  });

  test('asks for what the flags leave out, in order', () async {
    final r = await init(
      ['app'],
      answers: [
        'azure',
        '1,3',
        'Dev',
        'qa,prod',
        'acme-qa',
        '',
        '',
        "it's",
        'cf-prod',
        'gcs',
      ],
    );
    expect(r.code, 0, reason: r.err);
    expect(r.asked, [
      'Providers, comma-separated names or numbers: ',
      'Providers, comma-separated names or numbers: ',
      'Environments [dev,prd]: ',
      'Environments [dev,prd]: ',
      'Google Cloud project ID for qa [skip]: ',
      'Google Cloud project ID for prod [skip]: ',
      'Cloudflare account ID for qa [skip]: ',
      'Cloudflare account ID for prod [skip]: ',
      'Cloudflare account ID for prod [skip]: ',
      'State backend (local, gcs, s3) [local]: ',
    ]);
    expect(r.out, contains('  1) google\n  2) aws\n'));
    expect(r.out, contains('gcs and s3 keep it in a bucket that must already'));
    expect(r.err, contains('Pick from google, aws, cloudflare, appwrite'));
    expect(r.err, contains('Environment "Dev" is not a lowerCamelCase'));
    final env = read('app/lib/env.dart');
    expect(env, contains("projectId: 'acme-qa'"));
    expect(env, contains("accountId: 'cf-prod'"));
    expect(read('app/lib/stack.dart'), contains('GcsBackend('));
    expect(
      r.out,
      contains(
        'Re-run with: terradart init app --provider google,cloudflare '
        '--env qa,prod --gcp-project qa=acme-qa --cloudflare-account '
        'prod=cf-prod --backend gcs\n',
      ),
    );
  });

  test('an empty answer or end of input takes the default', () async {
    final r = await init(['app'], answers: ['', 'google', '', null]);
    expect(r.code, 0, reason: r.err);
    expect(r.asked, hasLength(6));
    expect(r.err, contains('Pick at least one.'));
    expect(read('app/pubspec.yaml'), contains('terradart_google'));
    expect(read('app/lib/env.dart'), contains('  prd(\n'));
    expect(read('app/lib/stack.dart'), contains('LocalBackend'));
    expect(
      r.out,
      contains(
        'Re-run with: terradart init app --provider google --env dev,prd '
        '--backend local\n',
      ),
    );
  });

  test('end of input before a provider names the flag', () async {
    final r = await init(['app'], answers: []);
    expect(r.code, 64);
    expect(r.err, contains('Pass --provider'));
    expect(Directory(p.join(root, 'app')).existsSync(), isFalse);
  });

  group('next to existing Terraform', () {
    setUp(() {
      File(p.join(root, 'main.tf')).writeAsStringSync(
        'resource "google_pubsub_topic" "t" {\n'
        '  name = "orders"\n}\n',
      );
    });

    test('points at terradart migrate without a terminal', () async {
      final r = await init([]);
      expect(r.code, 1);
      expect(r.err, contains('Found Terraform in . (the current directory).'));
      expect(r.err, contains('terradart migrate --report --dir .'));
      expect(r.err, contains('terradart migrate --dir . --out infra'));
      expect(r.err, contains('Pass --force'));
      expect(Directory(p.join(root, 'infra')).existsSync(), isFalse);

      final forced = await init(['--force', '-p', 'google']);
      expect(forced.code, 0, reason: forced.err);
      expect(exists('infra/lib/stack.dart'), isTrue);
    });

    test('offers the migration report in a terminal', () async {
      final r = await init([], answers: ['y']);
      expect(r.code, 0, reason: r.err);
      expect(r.asked, ['Run the migration report now? [Y/n] ']);
      expect(r.out, contains('google_pubsub_topic'));
      expect(Directory(p.join(root, 'infra')).existsSync(), isFalse);
    });

    test('scaffolds anyway when asked to, as --force', () async {
      final declined = await init([], answers: ['n', '']);
      expect(declined.code, 1);
      expect(declined.err, contains('Pass --force'));

      final r = await init(['-p', 'aws'], answers: ['n', 'y']);
      expect(r.code, 0, reason: r.err);
      expect(exists('infra/lib/stack.dart'), isTrue);
      expect(r.out, contains('--backend local --force\n'));
    });
  });

  test('finds Terraform in subdirectories, past the ones it skips', () async {
    void touch(String rel) => File(p.join(root, rel))
      ..parent.createSync(recursive: true)
      ..writeAsStringSync('{}\n');
    for (final skipped in [
      'ios/Flutter/x.tf',
      'build/x.tf',
      'tf-out/dev/main.tf.json',
      'infra/.terraform/modules/m/main.tf',
      'node_modules/m/main.tf',
    ]) {
      touch(skipped);
    }
    expect((await init(['-p', 'google', '--dry-run'])).code, 0);

    touch('envs/dev/main.tf');
    touch('modules/net/net.tf.json');
    final r = await init(['-p', 'google']);
    expect(r.code, 1);
    expect(
      r.err,
      contains(
        'Found Terraform in envs/dev, modules/net. Migrate it to TerraDart',
      ),
    );
    expect(r.err, contains('terradart migrate --report --dir .'));
  });

  test('finds Terraform in a target outside the working directory', () async {
    final other = p.join(p.dirname(root), 'old');
    File(p.join(other, 'stacks', 'main.tf'))
      ..parent.createSync(recursive: true)
      ..writeAsStringSync('');
    final r = await init(['../old', '-p', 'google']);
    expect(r.code, 1);
    expect(r.err, contains('Found Terraform in ../old/stacks.'));
    expect(r.err, contains('terradart migrate --dir ../old --out ../old_dart'));
  });

  test('refuses to overwrite a file unless --force', () async {
    File(p.join(root, 'pubspec.yaml')).writeAsStringSync('name: mine\n');
    final r = await init(['.', '-p', 'google']);
    expect(r.code, 1);
    expect(
      r.err,
      contains('the current directory already has pubspec.yaml; pass --force'),
    );
    expect(read('pubspec.yaml'), 'name: mine\n');
    expect(exists('lib/env.dart'), isFalse);

    final forced = await init(['.', '-p', 'google', '--force']);
    expect(forced.code, 0, reason: forced.err);
    expect(read('pubspec.yaml'), contains('name: acme\n'));
    expect(forced.out, isNot(contains('  cd ')));
  });

  test('--dry-run lists the files and writes nothing', () async {
    final r = await init(['--dry-run', '-p', 'aws']);
    expect(r.code, 0, reason: r.err);
    expect(r.out, contains('Would write acme_infra in infra'));
    expect(r.out, contains('  lib/stack.dart\n'));
    expect(r.out, contains('  AGENTS.md\n'));
    expect(Directory(p.join(root, 'infra')).existsSync(), isFalse);
    expect(r.runner.calls, isEmpty);

    File(p.join(root, 'README.md')).writeAsStringSync('mine\n');
    expect((await init(['.', '--dry-run', '-p', 'aws'])).code, 1);
    final forced = await init(['.', '--dry-run', '-p', 'aws', '--force']);
    expect(forced.out, contains('  README.md (overwrite)\n'));
    expect(read('README.md'), 'mine\n');
  });

  test('a failing dart pub get keeps the files and says so', () async {
    final r = await init(['-p', 'google'], failOn: 'pub');
    expect(r.code, 1);
    expect(r.err, contains('dart pub get failed in infra (exit 1)'));
    expect(exists('infra/pubspec.yaml'), isTrue);
  });

  test('rejects an environment an enum member cannot be named', () async {
    for (final bad in ['prd-eu', '1st', 'values', 'dev,dev', 'projectId']) {
      final r = await init(['-p', 'google', '--env', bad]);
      expect(r.code, 64, reason: bad);
      expect(r.err, contains('--env: '), reason: bad);
    }
    expect(Directory(p.join(root, 'infra')).existsSync(), isFalse);
  });

  test('--help shows examples', () async {
    final printed = StringBuffer();
    final r = await runZoned(
      () => init(['--help']),
      zoneSpecification: ZoneSpecification(
        print: (_, _, _, line) => printed.writeln(line),
      ),
    );
    expect(r.code, 0);
    expect('$printed', contains('Examples:'));
    expect(
      '$printed',
      contains('terradart init --dry-run --provider appwrite'),
    );
    expect('$printed', contains('terradart migrate --report --dir <dir>'));
  });

  group('inside a Flutter app', () {
    setUp(() {
      File(p.join(root, 'pubspec.yaml')).writeAsStringSync(
        'name: shop\ndependencies:\n  flutter:\n    sdk: flutter\n',
      );
    });

    test('scaffolds infra/ wired to the app', () async {
      final r = await init(['-p', 'google']);
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('--backend local, --flutter.\n'));
      expect(read('infra/pubspec.yaml'), contains('name: shop_infra\n'));
      final stack = read('infra/lib/stack.dart');
      expect(
        stack,
        contains("appExports: AppExports('../lib/generated/infra.g.dart'),"),
      );
      expect(stack, contains('addDartDefineOutput();'));
      expect(
        r.out,
        contains(
          '  cd infra\n'
          '  terradart apply --env dev\n'
          '  cd ..\n'
          '  flutter run '
          '--dart-define-from-file=infra/.terradart/dart_defines.dev.json\n',
        ),
      );
      expect(read('infra/README.md'), contains('ShopInfraStackOutputs'));
      expect(read('pubspec.yaml'), contains('name: shop'));
    });

    test('asks before wiring, and --no-flutter leaves it out', () async {
      final r = await init(['a'], answers: ['google', '', '', '', '', 'n']);
      expect(r.code, 0, reason: r.err);
      expect(r.asked.last, startsWith('Flutter app "shop" found'));
      expect(read('a/lib/stack.dart'), isNot(contains('appExports')));
      expect(r.out, contains('--backend local --no-flutter\n'));

      expect((await init(['b', '-p', 'google', '--no-flutter'])).code, 0);
      expect(read('b/lib/stack.dart'), isNot(contains('appExports')));
    });
  });

  test('--flutter outside a Flutter app is a usage error', () async {
    final r = await init(['--flutter']);
    expect(r.code, 64);
    expect(r.err, contains('--flutter: no Flutter app'));
  });

  test('writes formatted Dart', () async {
    final r = await init([
      '-p',
      'google,aws,cloudflare,appwrite',
      '--backend',
      's3',
      '--env',
      'dev,staging,prd',
    ]);
    expect(r.code, 0, reason: r.err);
    final format = await Process.run(Platform.resolvedExecutable, [
      'format',
      '--output=none',
      '--set-exit-if-changed',
      p.join(root, 'infra'),
    ]);
    expect(format.exitCode, 0, reason: '${format.stdout}${format.stderr}');
    for (final line in [
      ...read('infra/lib/env.dart').split('\n'),
      ...read('infra/lib/stack.dart').split('\n'),
    ]) {
      expect(line.length, lessThanOrEqualTo(80), reason: line);
    }
  });
}
