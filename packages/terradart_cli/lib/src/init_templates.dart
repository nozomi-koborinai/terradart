import 'package:terradart_migrate/terradart_migrate.dart'
    show formatDart, packageVersion;

/// A provider package `terradart init` can scaffold a Stack for.
enum InitProvider {
  google('terradart_google'),
  aws('terradart_aws'),
  cloudflare('terradart_cloudflare'),
  appwrite('terradart_appwrite');

  const InitProvider(this.package);

  /// The pub package holding its factories.
  final String package;

  static InitProvider parse(String name) =>
      values.firstWhere((p) => p.name == name);
}

/// Where the scaffolded Stack keeps its state.
enum InitBackend {
  local('a file under tf-out/'),
  gcs('a Google Cloud Storage bucket'),
  s3('an AWS S3 bucket'),
  r2('a Cloudflare R2 bucket');

  const InitBackend(this.label);

  final String label;

  static InitBackend parse(String name) =>
      values.firstWhere((b) => b.name == name);
}

/// The Flutter app an `infra/` package is scaffolded into.
final class FlutterApp {
  const FlutterApp({
    required this.appExports,
    required this.defineFile,
    required this.infraDir,
    required this.appDir,
  });

  /// The generated reader, relative to the infra package
  /// (`../lib/generated/<stack>.g.dart`).
  final String appExports;

  /// The define file of an environment, relative to the app
  /// (`infra/.terradart/dart_defines.<env>.json`) — `<env>` is replaced.
  final String defineFile;

  /// The infra package, relative to the app (`infra`).
  final String infraDir;

  /// The app, relative to the infra package (`..`).
  final String appDir;
}

/// A per-environment value `terradart init` takes with a flag or a
/// question, `<env>=<value>` or one value for every environment: left out,
/// the field holds a placeholder and a TODO.
enum InitId {
  gcpProject(InitProvider.google, 'gcp-project', 'Google Cloud project ID'),
  awsRegion(InitProvider.aws, 'aws-region', 'AWS region'),
  awsAccount(InitProvider.aws, 'aws-account', 'AWS account ID', optional: true),
  cloudflareAccount(
    InitProvider.cloudflare,
    'cloudflare-account',
    'Cloudflare account ID',
    perEnv: false,
  ),
  appwriteEndpoint(
    InitProvider.appwrite,
    'appwrite-endpoint',
    'Appwrite API endpoint',
    perEnv: false,
  ),
  appwriteProject(
    InitProvider.appwrite,
    'appwrite-project',
    'Appwrite project ID',
  ),
  stateBucket(null, 'state-bucket', 'state bucket');

  const InitId(
    this.provider,
    this.flag,
    this.label, {
    this.optional = false,
    this.perEnv = true,
  });

  /// The provider it belongs to; `null` for the state bucket.
  final InitProvider? provider;

  /// Left out, the field is `null` rather than a placeholder.
  final bool optional;

  /// Usually differs between environments, so a question asks each one.
  final bool perEnv;

  /// The `terradart init` option, without `--`.
  final String flag;

  /// What the question asks for.
  final String label;
}

/// Everything `terradart init` writes, decided.
final class InitPlan {
  InitPlan({
    required this.packageName,
    required List<InitProvider> providers,
    required this.envs,
    required this.backend,
    this.ids = const {},
    this.flutter,
  }) : providers = [
         for (final p in InitProvider.values)
           if (providers.contains(p)) p,
       ];

  final String packageName;

  /// In [InitProvider] order.
  final List<InitProvider> providers;
  final List<String> envs;
  final InitBackend backend;

  /// The IDs given, by environment.
  final Map<InitId, Map<String, String>> ids;
  final FlutterApp? flutter;

  bool has(InitProvider p) => providers.contains(p);

  /// `MyAppStack` for `my_app`.
  String get stackClass => '${_pascal(packageName)}Stack';

  /// `my-app`: the prefix of the cloud-side names.
  String get slug => packageName.replaceAll('_', '-');

  /// The pub packages the project depends on, sorted.
  List<String> get packages => {
    'terradart_core',
    for (final p in providers) p.package,
    if (has(InitProvider.google)) 'terradart_time',
  }.toList()..sort();

  /// The values the chosen providers and backend take.
  List<InitId> get idFields => [
    for (final id in InitId.values)
      if (switch (id.provider) {
        final p? => has(p),
        null => backend != InitBackend.local,
      })
        id,
  ];

  /// Whether `lib/env.dart` holds a placeholder marked TODO.
  bool get hasPlaceholders => fields.any(
    (f) =>
        f.todo != null &&
        envs.any((env) => f.id == null || ids[f.id]?[env] == null),
  );

  /// The [Env] fields, in declaration order.
  List<EnvField> get fields {
    final aws = has(InitProvider.aws);
    return [
      if (google) ...[
        EnvField(
          'projectId',
          'The Google Cloud project the Stack deploys to.',
          (env) => '$slug-$env',
          id: InitId.gcpProject,
        ),
        EnvField(
          'region',
          'The default Google Cloud region.',
          (_) => 'us-central1',
        ),
      ],
      if (aws) ...[
        EnvField(
          _awsRegion,
          'The AWS region.',
          (_) => 'us-east-1',
          id: InitId.awsRegion,
        ),
        if (ids[InitId.awsAccount]?.isNotEmpty ?? false)
          EnvField(
            'awsAccountId',
            'The AWS account the Stack may deploy to: the provider refuses '
                'credentials of any other.',
            null,
            id: InitId.awsAccount,
          ),
      ],
      if (has(InitProvider.cloudflare))
        EnvField(
          'accountId',
          'The Cloudflare account ID (the dashboard URL holds it).',
          (_) => 'replace-with-your-account-id',
          id: InitId.cloudflareAccount,
        ),
      if (has(InitProvider.appwrite)) ...[
        EnvField(
          'appwriteEndpoint',
          'The Appwrite API endpoint: on Appwrite Cloud, '
              '`https://<region>.cloud.appwrite.io/v1`.',
          (_) => 'https://cloud.appwrite.io/v1',
          id: InitId.appwriteEndpoint,
        ),
        EnvField(
          _appwriteProjectField,
          'The Appwrite project ID.',
          (env) => '$slug-$env',
          id: InitId.appwriteProject,
        ),
      ],
      if (backend != InitBackend.local)
        EnvField(
          'stateBucket',
          'The ${backend.name.toUpperCase()} bucket holding this '
              "environment's Terraform state, under ${backend == InitBackend.gcs ? 'the prefix' : 'a key'} "
              'named after the package and the environment.',
          (env) => '$slug-$env-tfstate',
          id: InitId.stateBucket,
          todo: 'create this bucket before the first `terradart plan`.',
        ),
      if (backend == InitBackend.s3 && !aws)
        EnvField(
          'stateRegion',
          'The region of [stateBucket].',
          (_) => 'us-east-1',
        ),
    ];
  }

  String get _awsRegion => google ? 'awsRegion' : 'region';

  String get _appwriteProjectField =>
      google ? 'appwriteProjectId' : 'projectId';

  bool get google => has(InitProvider.google);
}

/// One field of the generated `Env` enum, and its value per environment.
final class EnvField {
  EnvField(this.name, this.doc, this.placeholder, {this.id, String? todo})
    : todo =
          todo ??
          (id == null || placeholder == null ? null : 'your ${id.label}.');

  final String name;
  final String doc;

  /// The value of an environment the flags leave out; `null` makes the
  /// field nullable, and leaves it `null`.
  final String Function(String env)? placeholder;

  /// The flag that sets it, when it takes one.
  final InitId? id;

  /// The TODO a placeholder carries; `null` is a default that works as is.
  final String? todo;
}

/// The files of [plan], by path relative to the project.
Map<String, String> renderProject(InitPlan plan) => {
  'pubspec.yaml': _pubspec(plan),
  'lib/env.dart': formatDart(_env(plan)),
  'lib/stack.dart': formatDart(_stack(plan)),
  'bin/infra.dart': formatDart(_entry(plan)),
  '.gitignore': '.dart_tool/\ntf-out/\n.terradart/\n',
  'README.md': _readme(plan),
  'AGENTS.md': _agents(plan),
};

String _agents(InitPlan plan) {
  final env = plan.envs.first;
  return '''
# Agent guide

A [TerraDart](https://terradart.dev) project: infrastructure written in Dart, synthesized to Terraform JSON, and planned and applied by the `terradart` command, which downloads OpenTofu itself. Do not install or call `terraform` / `tofu` directly.

Install the TerraDart Agent Skill for the API and its argument forms:

```bash
npx skills add nozomi-koborinai/terradart --skill terradart
```

| Task | Command |
|---|---|
| Resolve packages | `dart pub get` |
| Check the Dart | `dart analyze` |
| Write `tf-out/<env>/main.tf.json` | `terradart synth --env $env` |
| Preview changes | `terradart plan --env $env` |
| Apply (asks first) | `terradart apply --env $env` |

- Environments (${plan.envs.map((e) => '`$e`').join(', ')}) and their values are the `Env` enum in `lib/env.dart`; resources go in `lib/stack.dart`.
- `tf-out/` and `.terradart/` are generated: never edit them by hand.
- Apply changes real infrastructure: run `terradart plan` and have a human approve before `terradart apply`.
- Before running `terradart init` for another project, or again with `--force`, ask the human for the providers, the environment names and the state backend; never choose them yourself.
''';
}

String _pubspec(InitPlan plan) =>
    '''
name: ${plan.packageName}
description: Infrastructure in Dart, planned and applied with the terradart command.
publish_to: none

environment:
  sdk: ^3.10.0

dependencies:
${[for (final p in plan.packages) '  $p: ^$packageVersion'].join('\n')}
''';

String _env(InitPlan plan) {
  final fields = plan.fields;
  final b = StringBuffer()
    ..writeln(
      '/// The environments of the Stack: `terradart plan --env <name>`',
    )
    ..writeln('/// picks one. Replace each placeholder marked TODO.')
    ..writeln('enum Env {');
  for (final (i, env) in plan.envs.indexed) {
    final last = i == plan.envs.length - 1;
    b.writeln('  $env(');
    for (final f in fields) {
      final given = f.id == null ? null : plan.ids[f.id]?[env];
      if (given == null && f.todo != null) b.writeln('    // TODO: ${f.todo}');
      final value = given ?? f.placeholder?.call(env);
      b.writeln("    ${f.name}: ${value == null ? 'null' : "'$value'"},");
    }
    b.writeln('  )${last ? ';' : ','}');
  }
  b
    ..writeln()
    ..writeln('  const Env({')
    ..writeAll([for (final f in fields) '    required this.${f.name},\n'])
    ..writeln('  });');
  for (final f in fields) {
    b
      ..writeln()
      ..write(_docComment(f.doc, '  '))
      ..writeln('  final String${_nullable(plan, f) ? '?' : ''} ${f.name};');
  }
  b.writeln('}');
  return '$b';
}

/// Whether an environment leaves [f] `null`.
bool _nullable(InitPlan plan, EnvField f) =>
    f.placeholder == null &&
    plan.envs.any((env) => plan.ids[f.id]?[env] == null);

/// [text] as `///` lines of at most 80 columns.
String _docComment(String text, String indent) {
  final lines = <String>[];
  var line = '';
  for (final word in text.split(' ')) {
    final next = line.isEmpty ? word : '$line $word';
    if ('$indent/// $next'.length > 80 && line.isNotEmpty) {
      lines.add(line);
      line = word;
    } else {
      line = next;
    }
  }
  lines.add(line);
  return [for (final l in lines) '$indent/// $l\n'].join();
}

String _stack(InitPlan plan) {
  final google = plan.has(InitProvider.google);
  final imports = <String>{
    if (google) ...[
      'package:terradart_google/project.dart',
      'package:terradart_google/provider.dart',
      'package:terradart_google/pubsub.dart',
      'package:terradart_time/terradart_time.dart',
    ],
    if (plan.has(InitProvider.aws)) ...[
      'package:terradart_aws/provider.dart',
      'package:terradart_aws/s3.dart',
    ],
    if (plan.has(InitProvider.cloudflare)) ...[
      'package:terradart_cloudflare/provider.dart',
      'package:terradart_cloudflare/workers.dart',
    ],
    if (plan.has(InitProvider.appwrite)) ...[
      'package:terradart_appwrite/auth.dart',
      'package:terradart_appwrite/provider.dart',
    ],
  }.toList()..sort();

  final providers = [
    if (google) 'GoogleProvider(project: env.projectId, region: env.region)',
    if (google) 'const TimeProvider()',
    if (plan.has(InitProvider.aws))
      'AwsProvider(region: env.${plan._awsRegion}${_awsAccounts(plan)})',
    if (plan.has(InitProvider.cloudflare)) 'const CloudflareProvider()',
    if (plan.has(InitProvider.appwrite))
      'AppwriteProvider(\n'
          '            endpoint: env.appwriteEndpoint,\n'
          '            projectId: env.${plan._appwriteProjectField},\n'
          '          )',
  ];
  final stateKey = '${plan.packageName}/\${env.name}';
  final backend = switch (plan.backend) {
    InitBackend.local => 'const LocalBackend()',
    InitBackend.gcs =>
      "GcsBackend(bucket: env.stateBucket, prefix: '$stateKey')",
    InitBackend.s3 =>
      'S3Backend(\n'
          '          bucket: env.stateBucket,\n'
          "          key: '$stateKey/terraform.tfstate',\n"
          '          region: env.${plan.has(InitProvider.aws) ? plan._awsRegion : 'stateRegion'},\n'
          '        )',
    InitBackend.r2 =>
      'S3Backend.r2(\n'
          '          accountId: env.accountId,\n'
          '          bucket: env.stateBucket,\n'
          "          key: '$stateKey/terraform.tfstate',\n"
          '        )',
  };

  final body = StringBuffer();
  void resource(String text) {
    if (body.isNotEmpty) body.writeln();
    body.write(text);
  }

  if (google) {
    resource('''
    // Enables the Pub/Sub API on the project and waits for it to propagate.
    final apis = enableApis([.pubsub]);
    final topic = add(
      GooglePubsubTopic(
        'events',
        name: .literal('\${env.name}-events'),
        dependsOn: apis,
      ),
    );
    addOutput('events_topic_id', topic.id);
''');
  }
  if (plan.has(InitProvider.aws)) {
    resource('''
    final assets = add(
      AwsS3Bucket(
        'assets',
        name: .bucketPrefix(.literal('${plan.slug}-\${env.name}-')),
      ),
    );
    addOutput('assets_bucket', assets.bucket);
''');
  }
  if (plan.has(InitProvider.cloudflare)) {
    resource('''
    final cache = add(
      CloudflareWorkersKvNamespace(
        'cache',
        accountId: .literal(env.accountId),
        title: .literal('${plan.slug}-\${env.name}'),
      ),
    );
    addOutput('cache_namespace_id', cache.id);
''');
  }
  if (plan.has(InitProvider.appwrite)) {
    resource('''
    final team = add(
      AppwriteAuthTeam('editors', name: .literal('\${env.name} editors')),
    );
    addOutput('editors_team_id', team.id);
''');
  }
  if (plan.flutter != null) {
    resource('''
    // The outputs above, as the file `terradart apply --env <name>` writes
    // for `flutter run --dart-define-from-file`.
    addDartDefineOutput();
''');
  }

  final exports = switch (plan.flutter) {
    final app? => "\n        appExports: AppExports('${app.appExports}'),",
    null => '',
  };
  return '''
${[for (final i in imports) "import '$i';"].join('\n')}

import 'env.dart';

/// The infrastructure of one environment. Replace the example resources
/// with your own.
final class ${plan.stackClass} extends Stack {
  ${plan.stackClass}({required Env env})
    : super(
        providers: [
${[for (final p in providers) '          $p,'].join('\n')}
        ],
        backend: $backend,$exports
      ) {
$body  }
}
''';
}

String _awsAccounts(InitPlan plan) {
  final field = plan.fields.where((f) => f.id == InitId.awsAccount);
  if (field.isEmpty) return '';
  if (!_nullable(plan, field.single)) {
    return ', allowedAccountIds: [env.awsAccountId]';
  }
  return ', allowedAccountIds: switch (env.awsAccountId) '
      '{final id? => [id], null => null}';
}

String _entry(InitPlan plan) =>
    '''
import 'package:${plan.packageName}/env.dart';
import 'package:${plan.packageName}/stack.dart';
import 'package:terradart_core/terradart_core.dart';

/// Writes `tf-out/<env>/main.tf.json` for each environment, or the one
/// `--env` names. `terradart plan`, `apply` and `destroy` run it first.
Future<void> main(List<String> args) =>
    runEnvironments(args, Env.values, (env) => ${plan.stackClass}(env: env));
''';

/// The commands that follow `terradart init`, run from where it ran: [cd]
/// is the project relative to there, `null` when it is there; [pubGet]
/// when `init` did not run `dart pub get` itself.
List<String> nextSteps(
  InitPlan plan, {
  required String? cd,
  required bool pubGet,
}) {
  final env = plan.envs.first;
  return [
    if (cd != null) 'cd $cd',
    if (pubGet) 'dart pub get',
    if (plan.flutter case final app?) ...[
      'terradart apply --env $env',
      'cd ${app.appDir}',
      'flutter run --dart-define-from-file=${app.defineFile.replaceAll('<env>', env)}',
    ] else
      'terradart plan --env $env',
  ];
}

String _readme(InitPlan plan) {
  final env = plan.envs.first;
  final auth = [
    if (plan.has(InitProvider.google))
      '- Google Cloud: `gcloud auth application-default login`, as an account '
          'that can create resources in each `projectId`.',
    if (plan.has(InitProvider.aws))
      '- AWS: the AWS SDK credential chain — `AWS_PROFILE`, or '
          '`AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`.',
    if (plan.has(InitProvider.cloudflare))
      '- Cloudflare: `CLOUDFLARE_API_TOKEN`, a token that can edit Workers KV.',
    if (plan.has(InitProvider.appwrite))
      '- Appwrite: `APPWRITE_API_KEY`, an API key of the project. '
          '$appwriteEngineNote',
    if (plan.backend == InitBackend.gcs)
      '- State: create each `stateBucket` (`gcloud storage buckets create '
          'gs://<bucket>`) before the first plan.',
    if (plan.backend == InitBackend.s3)
      '- State: create each `stateBucket` (`aws s3 mb s3://<bucket>`) before '
          'the first plan.',
    if (plan.backend == InitBackend.r2)
      '- State: create each `stateBucket` in R2, and export an R2 API token '
          'as `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`.',
  ];
  final state = switch (plan.backend) {
    InitBackend.local =>
      'State is a local file, `tf-out/<env>/terraform.tfstate`, kept out of '
          'git. $moveStateNote',
    _ =>
      'State is in the ${plan.backend.name.toUpperCase()} bucket '
          '`stateBucket` of each environment, under '
          '`${plan.packageName}/<env>`.',
  };
  final steps = [
    'dart pub get',
    if (plan.flutter == null) 'terradart plan --env $env',
    'terradart apply --env $env',
  ];
  final flutter = switch (plan.flutter) {
    final app? =>
      '''

## The Flutter app

`lib/stack.dart` writes `${app.appExports}` at synth: the app imports it and reads each output with its type through `${plan.stackClass}Outputs.fromDartDefine()`. `terradart apply --env <name>` writes `.terradart/dart_defines.<name>.json`, the file the app builds with. From the app:

```bash
flutter run --dart-define-from-file=${app.defineFile.replaceAll('<env>', env)}
```
''',
    null => '',
  };
  return '''
# ${plan.packageName}

Infrastructure in Dart with [TerraDart](https://terradart.dev). The `terradart` command synthesizes the Stack and plans and applies it with OpenTofu, which it downloads on first use — nothing else to install.

| File | Holds |
|---|---|
| `lib/env.dart` | the environments (${plan.envs.map((e) => '`$e`').join(', ')}) and their values |
| `lib/stack.dart` | `${plan.stackClass}`, the resources of one environment |
| `bin/infra.dart` | the entry point `terradart` runs |
| `AGENTS.md` | what a coding agent needs to work here |

## Next steps

1. Replace each placeholder marked TODO in `lib/env.dart`.
2. Sign in:
${[for (final a in auth) '   $a'].join('\n')}
3. Run:

   ```bash
${[for (final s in steps) '   $s'].join('\n')}
   ```

$state
$flutter
Guides: [The terradart command](https://terradart.dev/docs/cli/), [Environments](https://terradart.dev/docs/environments/), [Writing arguments](https://terradart.dev/docs/arguments/).
''';
}

/// How local state moves to a bucket; `terradart init` only scaffolds.
const moveStateNote =
    'Move it to a bucket before anyone else applies: set `backend:` in '
    '`lib/stack.dart` to `GcsBackend`, `S3Backend` or `S3Backend.r2`, then run '
    '`terradart state migrate`.';

/// The OpenTofu registry has no `appwrite/appwrite`, so the downloaded
/// OpenTofu cannot install it.
const appwriteEngineNote =
    'The Appwrite provider is published to the Terraform registry only, '
    'which the OpenTofu terradart downloads cannot install from: put '
    'Terraform on your PATH and run with `--engine terraform`.';

String _pascal(String snake) => [
  for (final part in snake.split('_'))
    if (part.isNotEmpty) '${part[0].toUpperCase()}${part.substring(1)}',
].join();
