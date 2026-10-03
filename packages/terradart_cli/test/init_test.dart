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
    final r = await init(['-p', 'google', '--defaults']);
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
    final entry = read('infra/bin/infra.dart');
    expect(entry, contains('(env) => AcmeInfraStack('));
    expect(entry, contains('defaultEnv: Env.dev'));
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

  test('without a terminal, names every missing flag and a command', () async {
    final none = await init([]);
    expect(none.code, 64);
    expect(
      none.err,
      contains('needs --provider, --env, --backend. Choose them (providers: '),
    );
    expect(
      none.err,
      contains(
        '  terradart init --provider google --env dev,prd --backend local\n'
        '--state-bucket <name> instead of --backend keeps the state in a '
        'bucket that exists; --defaults stands for --env dev,prd --backend '
        'local.',
      ),
    );

    final some = await init(['app', '-p', 'aws', '--env', 'qa']);
    expect(some.code, 64);
    expect(some.err, contains('needs --backend.'));
    expect(
      some.err,
      contains(
        '  terradart init app --provider aws --env qa --backend local\n',
      ),
    );

    final defaults = await init(['--defaults']);
    expect(defaults.code, 64);
    expect(defaults.err, contains('needs --provider.'));
    expect(
      defaults.err,
      contains('  terradart init --provider google --defaults\n'),
    );
    expect(Directory(p.join(root, 'infra')).existsSync(), isFalse);
    expect(Directory(p.join(root, 'app')).existsSync(), isFalse);
  });

  test('--defaults in a terminal asks only for the providers', () async {
    final r = await init(['--defaults'], answers: ['aws']);
    expect(r.code, 0, reason: r.err);
    expect(r.asked, ['Providers, comma-separated names or numbers: ']);
    expect(read('infra/lib/stack.dart'), contains('LocalBackend'));
    expect(
      r.out,
      contains(
        'Defaults: --env dev,prd, --aws-region (placeholders marked TODO), '
        '--backend local.\n',
      ),
    );
    expect(
      r.out,
      contains(
        'Re-run with: terradart init infra --provider aws --env dev,prd '
        '--backend local\n',
      ),
    );
  });

  test('prints no defaults for what the flags give', () async {
    final r = await init([
      '-p',
      'aws',
      '--env',
      'dev',
      '--aws-region',
      'eu-west-1',
      '--backend',
      'local',
      '--no-pub-get',
    ]);
    expect(r.code, 0, reason: r.err);
    expect(r.out, isNot(contains('Defaults:')));
    expect(r.out, contains('Next:\n'));
    expect(read('infra/lib/env.dart'), contains("  dev(region: 'eu-west-1');"));
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
      '--defaults',
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
    final google = await init([
      '-p',
      'google',
      '--gcp-project',
      'acme',
      '--defaults',
    ]);
    expect(google.code, 0, reason: google.err);
    final wrong = await init([
      'x',
      '-p',
      'aws',
      '--gcp-project',
      'acme',
      '--defaults',
    ]);
    expect(wrong.code, 64);
    expect(wrong.err, contains('--gcp-project needs --provider google.'));
    final env = await init([
      'y',
      '-p',
      'google',
      '--gcp-project',
      'stg=acme',
      '--defaults',
    ]);
    expect(env.code, 64);
    expect(env.err, contains('--gcp-project: no environment "stg"'));
    final quote = await init([
      'z',
      '-p',
      'google',
      '--gcp-project',
      "it's",
      '--defaults',
    ]);
    expect(quote.code, 64);
    expect(quote.err, contains('--gcp-project: "it\'s" is not an ID'));
  });

  test('names the Appwrite project projectId without google', () async {
    expect((await init(['a', '-p', 'appwrite', '--defaults'])).code, 0);
    expect(read('a/lib/env.dart'), contains('final String projectId;'));
    expect((await init(['b', '-p', 'google,appwrite', '--defaults'])).code, 0);
    expect(read('b/lib/env.dart'), contains('final String appwriteProjectId;'));
  });

  test('S3 state without aws gets a region of its own', () async {
    expect(
      (await init(['a', '-p', 'cloudflare', '--backend', 's3', '--defaults']))
          .code,
      0,
    );
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
        "it's",
        'cf-1',
        'y',
        'r2',
        'qa=acme-qa-state,prod=acme-state',
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
      'Cloudflare account ID [skip]: ',
      'Cloudflare account ID [skip]: ',
      'Do you already have a bucket for Terraform state? [y/N] ',
      'Which kind of bucket (gcs, r2) [gcs]: ',
      'Bucket name, one for every environment or env=name pairs: ',
    ]);
    expect(r.out, contains('  1) google\n  2) aws\n'));
    expect(r.out, contains('without a bucket it is a local file'));
    expect(r.err, contains('Pick from google, aws, cloudflare, appwrite'));
    expect(r.err, contains('Environment "Dev" is not a lowerCamelCase'));
    final env = read('app/lib/env.dart');
    expect(env, contains("projectId: 'acme-qa'"));
    expect("accountId: 'cf-1'".allMatches(env), hasLength(2));
    expect(env, contains("stateBucket: 'acme-state'"));
    expect(env, isNot(contains('TODO: create this bucket')));
    final stack = read('app/lib/stack.dart');
    expect(stack, contains('S3Backend.r2('));
    expect(stack, contains('accountId: env.accountId,'));
    expect(stack, contains(r"key: 'app/${env.name}/terraform.tfstate',"));
    expect(
      r.out,
      contains(
        'Re-run with: terradart init app --provider google,cloudflare '
        '--env qa,prod --gcp-project qa=acme-qa --cloudflare-account cf-1 '
        '--state-bucket qa=acme-qa-state,prod=acme-state --backend r2\n',
      ),
    );
  });

  test('no bucket keeps the state local, and says how to move it', () async {
    final r = await init(
      ['app'],
      answers: ['aws', '', 'us-west-2', '', '', '111122223333', 'n'],
    );
    expect(r.code, 0, reason: r.err);
    expect(r.asked, [
      'Providers, comma-separated names or numbers: ',
      'Environments [dev,prd]: ',
      'AWS region for dev [skip]: ',
      'AWS region for prd [skip]: ',
      'AWS account ID for dev (optional) [skip]: ',
      'AWS account ID for prd (optional) [skip]: ',
      'Do you already have a bucket for Terraform state? [y/N] ',
    ]);
    final env = read('app/lib/env.dart');
    expect(env, contains("  dev(region: 'us-west-2', awsAccountId: null),"));
    expect(
      env,
      contains(
        "    // TODO: your AWS region.\n    region: 'us-east-1',\n"
        "    awsAccountId: '111122223333',",
      ),
    );
    expect(env, contains('final String? awsAccountId;'));
    final stack = read('app/lib/stack.dart');
    expect(stack, contains('allowedAccountIds: switch (env.awsAccountId) {'));
    expect(stack, contains('LocalBackend'));
    expect(r.out, contains('then run `terradart state migrate`.\n'));
    expect(r.out, isNot(contains('-migrate-state')));
    expect(read('app/README.md'), contains('`terradart state migrate`'));
    expect(
      r.out,
      contains(
        'Re-run with: terradart init app --provider aws --env dev,prd '
        '--aws-region dev=us-west-2 --aws-account prd=111122223333 '
        '--backend local\n',
      ),
    );
  });

  test('a bucket of the one provider needs no kind question', () async {
    final r = await init(['app'], answers: ['google', '', '', '', 'y', 'tf']);
    expect(r.code, 0, reason: r.err);
    expect(r.asked.last, startsWith('Bucket name'));
    expect(
      r.out,
      contains('Taken as a Google Cloud Storage bucket (--backend gcs).'),
    );
    expect(
      read('app/lib/stack.dart'),
      contains(
        r"GcsBackend(bucket: env.stateBucket, prefix: 'app/${env.name}')",
      ),
    );
    expect(
      "stateBucket: 'tf'".allMatches(read('app/lib/env.dart')),
      hasLength(2),
    );
    expect(r.out, contains('--state-bucket tf --backend gcs\n'));
    expect(r.out, isNot(contains('terradart state migrate')));
  });

  test('a Cloudflare bucket that is not R2 is asked for its kind', () async {
    final r = await init(
      ['app'],
      answers: ['cloudflare', 'prd', 'cf', 'y', 'n', 's3', 'state'],
    );
    expect(r.code, 0, reason: r.err);
    expect(r.asked.sublist(3), [
      'Do you already have a bucket for Terraform state? [y/N] ',
      'Is it a Cloudflare R2 bucket? [Y/n] ',
      'Which kind of bucket (gcs, s3) [gcs]: ',
      'Bucket name, one for every environment or env=name pairs: ',
    ]);
    expect(read('app/lib/env.dart'), contains('final String stateRegion;'));
    expect(read('app/lib/stack.dart'), contains('S3Backend(\n'));
  });

  group('--state-bucket', () {
    test('takes the backend from the provider', () async {
      final r = await init([
        '-p',
        'aws',
        '--env',
        'dev,prd',
        '--state-bucket',
        'dev=a,prd=b',
      ]);
      expect(r.code, 0, reason: r.err);
      final env = read('infra/lib/env.dart');
      expect(env, contains("stateBucket: 'a'"));
      expect(env, contains("stateBucket: 'b'"));
      expect(read('infra/lib/stack.dart'), contains('S3Backend('));
      expect(r.out, isNot(contains('--backend local')));
    });

    test('needs --backend when the providers do not settle it', () async {
      for (final providers in ['google,aws', 'appwrite']) {
        final r = await init([
          '-p',
          providers,
          '--defaults',
          '--state-bucket',
          'tf',
        ]);
        expect(r.code, 64, reason: providers);
        expect(r.err, contains('pass --backend '), reason: providers);
      }
      final r = await init([
        '-p',
        'google,aws',
        '--defaults',
        '--state-bucket',
        'tf',
        '--backend',
        's3',
      ]);
      expect(r.code, 0, reason: r.err);
      expect(read('infra/lib/stack.dart'), contains('S3Backend('));
    });

    test('contradicts --backend local, and r2 needs cloudflare', () async {
      final local = await init([
        '-p',
        'google',
        '--defaults',
        '--state-bucket',
        'tf',
        '--backend',
        'local',
      ]);
      expect(local.code, 64);
      expect(local.err, contains('--backend local keeps no bucket'));
      final r2 = await init(['-p', 'aws', '--defaults', '--backend', 'r2']);
      expect(r2.code, 64);
      expect(r2.err, contains('--backend r2 needs --provider cloudflare'));
    });
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

      final forced = await init(['--force', '-p', 'google', '--defaults']);
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
    expect((await init(['-p', 'google', '--dry-run', '--defaults'])).code, 0);

    touch('envs/dev/main.tf');
    touch('modules/net/net.tf.json');
    final r = await init(['-p', 'google', '--defaults']);
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
    final r = await init(['../old', '-p', 'google', '--defaults']);
    expect(r.code, 1);
    expect(r.err, contains('Found Terraform in ../old/stacks.'));
    expect(r.err, contains('terradart migrate --dir ../old --out ../old_dart'));
  });

  test('refuses to overwrite a file unless --force', () async {
    File(p.join(root, 'pubspec.yaml')).writeAsStringSync('name: mine\n');
    final r = await init(['.', '-p', 'google', '--defaults']);
    expect(r.code, 1);
    expect(
      r.err,
      contains('the current directory already has pubspec.yaml; pass --force'),
    );
    expect(read('pubspec.yaml'), 'name: mine\n');
    expect(exists('lib/env.dart'), isFalse);

    final forced = await init(['.', '-p', 'google', '--force', '--defaults']);
    expect(forced.code, 0, reason: forced.err);
    expect(read('pubspec.yaml'), contains('name: acme\n'));
    expect(forced.out, isNot(contains('  cd ')));
  });

  test('--dry-run lists the files and writes nothing', () async {
    final r = await init(['--dry-run', '-p', 'aws', '--defaults']);
    expect(r.code, 0, reason: r.err);
    expect(r.out, contains('Would write acme_infra in infra'));
    expect(r.out, contains('  lib/stack.dart\n'));
    expect(r.out, contains('  AGENTS.md\n'));
    expect(Directory(p.join(root, 'infra')).existsSync(), isFalse);
    expect(r.runner.calls, isEmpty);

    File(p.join(root, 'README.md')).writeAsStringSync('mine\n');
    expect((await init(['.', '--dry-run', '-p', 'aws', '--defaults'])).code, 1);
    final forced = await init([
      '.',
      '--dry-run',
      '-p',
      'aws',
      '--force',
      '--defaults',
    ]);
    expect(forced.out, contains('  README.md (overwrite)\n'));
    expect(read('README.md'), 'mine\n');
  });

  test('a failing dart pub get keeps the files and says so', () async {
    final r = await init(['-p', 'google', '--defaults'], failOn: 'pub');
    expect(r.code, 1);
    expect(r.err, contains('dart pub get failed in infra (exit 1)'));
    expect(exists('infra/pubspec.yaml'), isTrue);
  });

  test('rejects an environment an enum member cannot be named', () async {
    for (final bad in ['prd-eu', '1st', 'values', 'dev,dev', 'projectId']) {
      final r = await init([
        '-p',
        'google',
        '--backend',
        'local',
        '--env',
        bad,
      ]);
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
      final r = await init(['-p', 'google', '--defaults']);
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

      expect(
        (await init(['b', '-p', 'google', '--no-flutter', '--defaults'])).code,
        0,
      );
      expect(read('b/lib/stack.dart'), isNot(contains('appExports')));
    });
  });

  test('--flutter outside a Flutter app is a usage error', () async {
    final r = await init(['--flutter', '-p', 'google', '--defaults']);
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
