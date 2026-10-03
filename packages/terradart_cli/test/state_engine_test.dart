import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_cli/src/engine.dart';
import 'package:terradart_cli/src/state_engine.dart';
import 'package:test/test.dart';

import 'support.dart';

Map<String, Object?> _state(String version, List<String> providers) => {
  'version': 4,
  'terraform_version': version,
  'resources': [
    for (final (i, provider) in providers.indexed)
      {
        'mode': 'managed',
        'type': 'google_pubsub_topic',
        'name': 'r$i',
        'provider': provider,
        'instances': const <Object?>[],
      },
  ],
};

String _google(String host) => 'provider["$host/hashicorp/google"]';

void main() {
  group('stateWriter', () {
    test('Terraform registry providers are Terraform', () {
      final w = stateWriter(
        _state('1.9.8', [_google('registry.terraform.io')]),
      );
      expect(w?.kind, EngineKind.terraform);
      expect(w?.evidence, contains('Terraform 1.9.8'));
    });

    test('an OpenTofu registry provider is OpenTofu', () {
      final w = stateWriter(
        _state('1.9.0', [
          _google('registry.terraform.io'),
          'module.net.provider["registry.opentofu.org/hashicorp/google"].west',
        ]),
      );
      expect(w?.kind, EngineKind.tofu);
    });

    test('a provider the configuration pins in full is not evidence', () {
      final w = stateWriter(
        _state('1.9.0', [_google('registry.terraform.io')]),
        pinned: {'hashicorp/google'},
      );
      expect(w, isNull);
    });

    test('without providers, only a version before OpenTofu tells', () {
      expect(stateWriter(_state('1.5.7', []))?.kind, EngineKind.terraform);
      expect(stateWriter(_state('1.9.0', [])), isNull);
      expect(stateTextWriter(''), isNull);
      expect(stateTextWriter('not json'), isNull);
    });
  });

  test('localStateFile follows the local backend path and workspaces', () {
    final dir = Directory.systemTemp.createTempSync('state_engine_test_');
    addTearDown(() => dir.deleteSync(recursive: true));
    expect(
      localStateFile(dir.path, null).path,
      p.join(dir.path, 'terraform.tfstate'),
    );
    File(p.join(dir.path, 'main.tf.json')).writeAsStringSync(
      jsonEncode({
        'terraform': {
          'backend': {
            'local': {'path': '../state/dev.tfstate'},
          },
        },
      }),
    );
    expect(
      localStateFile(dir.path, null).path,
      p.normalize(p.join(dir.path, '..', 'state', 'dev.tfstate')),
    );
    expect(
      localStateFile(dir.path, 'stg').path,
      p.join(dir.path, 'terraform.tfstate.d', 'stg', 'terraform.tfstate'),
    );
  });

  test('localStateFile reads the workspace Terraform already selected', () {
    final dir = Directory.systemTemp.createTempSync('state_engine_ws_');
    addTearDown(() => dir.deleteSync(recursive: true));
    File(p.join(dir.path, '.terraform', 'environment'))
      ..createSync(recursive: true)
      ..writeAsStringSync('stg\n');
    expect(
      localStateFile(dir.path, null).path,
      p.join(dir.path, 'terraform.tfstate.d', 'stg', 'terraform.tfstate'),
    );
    expect(
      localStateFile(dir.path, 'prd').path,
      p.join(dir.path, 'terraform.tfstate.d', 'prd', 'terraform.tfstate'),
    );
    expect(recordedWorkspace(dir.path), 'stg');
  });

  test('configuredLocalBackend is false only for a remote backend', () {
    final dir = Directory.systemTemp.createTempSync('state_engine_backend_');
    addTearDown(() => dir.deleteSync(recursive: true));
    final missing = p.join(dir.path, 'absent');
    expect(configuredLocalBackend(missing), isTrue);
    expect(configuredLocalBackend(dir.path), isTrue);
    File(p.join(dir.path, 'main.tf.json')).writeAsStringSync(
      jsonEncode({
        'terraform': {
          'backend': {
            'local': {'path': 'terraform.tfstate'},
          },
        },
      }),
    );
    expect(configuredLocalBackend(dir.path), isTrue);
    File(p.join(dir.path, 'main.tf.json')).writeAsStringSync(
      jsonEncode({
        'terraform': {
          'backend': {
            'gcs': {'bucket': 'states'},
          },
        },
      }),
    );
    expect(configuredLocalBackend(dir.path), isFalse);
    File(p.join(dir.path, 'main.tf.json')).writeAsStringSync('{');
    expect(configuredLocalBackend(dir.path), isFalse);
    File(p.join(dir.path, 'main.tf.json')).writeAsStringSync(
      jsonEncode({
        'terraform': {
          'cloud': {'organization': 'acme'},
        },
      }),
    );
    expect(configuredLocalBackend(dir.path), isFalse);
  });

  test('configuredLocalBackend reads an HCL backend sidecar', () {
    final dir = Directory.systemTemp.createTempSync('state_engine_hcl_');
    addTearDown(() => dir.deleteSync(recursive: true));
    File(p.join(dir.path, 'backend.tf')).writeAsStringSync('''
terraform {
  backend "gcs" {
    bucket = "states"
  }
}
''');
    expect(configuredLocalBackend(dir.path), isFalse);
    File(p.join(dir.path, 'backend.tf')).writeAsStringSync('''
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
''');
    expect(configuredLocalBackend(dir.path), isTrue);
    // The word "backend" in a leftover block is not a backend configuration.
    File(p.join(dir.path, 'backend.tf')).writeAsStringSync('''
resource "google_storage_bucket" "states" {
  description = "the backend bucket"
}
''');
    expect(configuredLocalBackend(dir.path), isTrue);
    File(p.join(dir.path, 'backend.tf')).writeAsStringSync('''
terraform {
  cloud {
    organization = "acme"
  }
}
''');
    expect(configuredLocalBackend(dir.path), isFalse);
    File(
      p.join(dir.path, 'backend.tf'),
    ).writeAsStringSync('terraform { !!! }\n');
    expect(configuredLocalBackend(dir.path), isFalse);
  });

  test('localStateFile treats a missing directory as no local state', () {
    final missing = p.join(
      Directory.systemTemp.path,
      'state_engine_missing_${DateTime.now().microsecondsSinceEpoch}',
    );
    expect(Directory(missing).existsSync(), isFalse);
    expect(() => localStateFile(missing, null), returnsNormally);
    expect(
      localStateFile(missing, null).path,
      p.join(missing, 'terraform.tfstate'),
    );
    expect(stateFileWriter(localStateFile(missing, null)), isNull);
  });

  group('a state the other engine wrote', () {
    TestProject terraformState({
      List<String> engines = const ['tofu'],
      String terradart = '',
      String host = 'registry.terraform.io',
    }) {
      final project = TestProject.create(
        engines: engines,
        terradart: terradart,
      );
      File(project.path('tf-out/terraform.tfstate'))
        ..createSync(recursive: true)
        ..writeAsStringSync(jsonEncode(_state('1.9.8', [_google(host)])));
      return project;
    }

    test('stops before init without a terminal, naming the flag', () async {
      final project = terraformState();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan'], runner);
      expect(r.code, 64);
      expect(r.err, contains('written by Terraform 1.9.8'));
      expect(r.err, contains('about to run OpenTofu 1.13.1 (tofu on PATH)'));
      expect(r.err, contains('Pass --engine terraform to keep Terraform'));
      expect(r.err, contains('or --engine tofu to move the state to OpenTofu'));
      expect(runner.engineCalls, ['version -json']);
    });

    test('asks on a terminal, and runs on a yes', () async {
      final project = terraformState();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(
        ['apply', '--auto-approve'],
        runner,
        input: ['yes'],
      );
      if (!stdin.hasTerminal) {
        expect(r.code, 64);
        expect(runner.engineCalls, isNot(contains('apply -auto-approve')));
        return;
      }
      expect(r.code, 0, reason: r.err);
      expect(r.out, contains('Run OpenTofu on it anyway?'));
      expect(runner.engineCalls, contains('apply -auto-approve'));
    });

    test('a piped answer is not a yes', () async {
      final project = terraformState();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan'], runner, input: ['yes']);
      if (stdin.hasTerminal) {
        expect(r.code, 0, reason: r.err);
        expect(runner.engineCalls.last, 'plan -input=false');
        return;
      }
      expect(r.code, 64);
      expect(r.err, contains('Stopped before running OpenTofu'));
      expect(runner.engineCalls, ['version -json']);
    });

    test('stops on a no', () async {
      final project = terraformState();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['destroy'], runner, input: ['no']);
      if (!stdin.hasTerminal) {
        expect(r.code, 64);
        return;
      }
      expect(r.code, 1);
      expect(r.err, contains('Stopped. Pass --engine terraform'));
      expect(runner.engineCalls.where((c) => c.startsWith('destroy')), isEmpty);
    });

    test('runs an engine the command line chose, with the warning', () async {
      final project = terraformState();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan', '--engine', 'tofu'], runner);
      expect(r.code, 0, reason: r.err);
      expect(r.err, contains('written by Terraform 1.9.8'));
      expect(runner.engineCalls.last, 'plan -input=false');
    });

    test('says nothing when pubspec.yaml picks the same engine', () async {
      final project = terraformState(
        engines: ['tofu', 'terraform'],
        terradart: '  engine: terraform\n',
      );
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan'], runner);
      expect(r.code, 0, reason: r.err);
      expect(r.err, isEmpty);
    });

    test('stops Terraform on a state OpenTofu wrote', () async {
      final project = terraformState(
        engines: ['terraform'],
        host: 'registry.opentofu.org',
      );
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan'], runner);
      expect(r.code, 64);
      expect(r.err, contains('Pass --engine tofu to keep OpenTofu'));
    });

    test('pulls a remote state after init', () async {
      final project = TestProject.create();
      File(project.path('tf-out/.terraform/terraform.tfstate'))
        ..createSync(recursive: true)
        ..writeAsStringSync(
          jsonEncode({
            'backend': {'type': 'gcs'},
          }),
        );
      final runner = FakeRunner(
        synth: (_) => runStackEntry(),
        pulledState: jsonEncode(
          _state('1.9.8', [_google('registry.terraform.io')]),
        ),
      );
      final r = await project.run(['plan'], runner);
      expect(r.code, 64);
      expect(runner.engineCalls, [
        'version -json',
        'init -input=false',
        'state pull',
      ]);
    });

    test('a cloud block does not skip a remote backend pull', () async {
      final project = TestProject.create();
      File(project.path('tf-out/.terraform/terraform.tfstate'))
        ..createSync(recursive: true)
        ..writeAsStringSync(
          jsonEncode({
            'backend': {'type': 'remote'},
          }),
        );
      final runner = FakeRunner(
        synth: (_) {
          File(project.path('tf-out/terraform.tfstate'))
            ..createSync(recursive: true)
            ..writeAsStringSync(
              jsonEncode(_state('1.9.0', [_google('registry.opentofu.org')])),
            );
          File(project.path('tf-out/backend.tf'))
            ..createSync(recursive: true)
            ..writeAsStringSync('''
terraform {
  cloud {
    organization = "acme"
  }
}
''');
          return runStackEntry();
        },
        pulledState: jsonEncode(
          _state('1.9.8', [_google('registry.terraform.io')]),
        ),
      );
      final r = await project.run(['plan'], runner);
      expect(r.code, 64);
      expect(runner.engineCalls, contains('state pull'));
      expect(r.err, contains('written by Terraform 1.9.8'));
    });

    test(
      'the word backend in a leftover block still checks local state',
      () async {
        final project = terraformState();
        File(project.path('tf-out/terradart_leftover.tf'))
          ..createSync(recursive: true)
          ..writeAsStringSync('''
resource "google_storage_bucket" "states" {
  description = "the backend bucket"
}
''');
        final runner = FakeRunner(synth: (_) => runStackEntry());
        final r = await project.run(['plan'], runner);
        expect(r.code, 64);
        expect(r.err, contains('written by Terraform 1.9.8'));
        expect(runner.engineCalls, isNot(contains('state pull')));
      },
    );

    test(
      'an HCL backend sidecar does not skip a remote backend pull',
      () async {
        final project = TestProject.create();
        File(project.path('tf-out/.terraform/terraform.tfstate'))
          ..createSync(recursive: true)
          ..writeAsStringSync(
            jsonEncode({
              'backend': {'type': 'gcs'},
            }),
          );
        final runner = FakeRunner(
          synth: (_) {
            File(project.path('tf-out/terraform.tfstate'))
              ..createSync(recursive: true)
              ..writeAsStringSync(
                jsonEncode(_state('1.9.0', [_google('registry.opentofu.org')])),
              );
            File(project.path('tf-out/backend.tf'))
              ..createSync(recursive: true)
              ..writeAsStringSync('''
terraform {
  backend "gcs" {
    bucket = "states"
  }
}
''');
            return runStackEntry();
          },
          pulledState: jsonEncode(
            _state('1.9.8', [_google('registry.terraform.io')]),
          ),
        );
        final r = await project.run(['plan'], runner);
        expect(r.code, 64);
        expect(runner.engineCalls, contains('state pull'));
        expect(r.err, contains('written by Terraform 1.9.8'));
      },
    );

    test(
      'a leftover local state does not skip a remote backend pull',
      () async {
        final project = TestProject.create();
        File(project.path('tf-out/.terraform/terraform.tfstate'))
          ..createSync(recursive: true)
          ..writeAsStringSync(
            jsonEncode({
              'backend': {'type': 'gcs'},
            }),
          );
        final runner = FakeRunner(
          synth: (_) {
            // Same engine as the one about to run: trusting this file would
            // mark the check done and never pull the remote state.
            File(project.path('tf-out/terraform.tfstate'))
              ..createSync(recursive: true)
              ..writeAsStringSync(
                jsonEncode(_state('1.9.0', [_google('registry.opentofu.org')])),
              );
            final entry = runStackEntry();
            return (
              files: {
                'tf-out': {
                  'terraform': {
                    'required_version': '>= 1.11.0',
                    'backend': {
                      'gcs': {'bucket': 'states'},
                    },
                  },
                },
              },
              manifest: entry.manifest,
              exitCode: 0,
            );
          },
          pulledState: jsonEncode(
            _state('1.9.8', [_google('registry.terraform.io')]),
          ),
        );
        final r = await project.run(['plan'], runner);
        expect(r.code, 64);
        expect(runner.engineCalls, contains('state pull'));
        expect(r.err, contains('written by Terraform 1.9.8'));
      },
    );

    test('checks the workspace Terraform already selected', () async {
      final project = TestProject.create();
      final runner = FakeRunner(
        synth: (_) {
          File(project.path('tf-out/.terraform/environment'))
            ..createSync(recursive: true)
            ..writeAsStringSync('stg\n');
          File(project.path('tf-out/terraform.tfstate.d/stg/terraform.tfstate'))
            ..createSync(recursive: true)
            ..writeAsStringSync(
              jsonEncode(_state('1.9.8', [_google('registry.terraform.io')])),
            );
          File(project.path('tf-out/terraform.tfstate'))
            ..createSync(recursive: true)
            ..writeAsStringSync(
              jsonEncode(_state('1.9.0', [_google('registry.opentofu.org')])),
            );
          return runStackEntry();
        },
      );
      final r = await project.run(['plan'], runner);
      expect(r.code, 64);
      expect(r.err, contains('written by Terraform 1.9.8'));
      expect(runner.engineCalls, isNot(contains('state pull')));
    });

    test('a local backend is not pulled', () async {
      final project = TestProject.create();
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan'], runner);
      expect(r.code, 0, reason: r.err);
      expect(runner.engineCalls, isNot(contains('state pull')));
    });

    test('an engine record of the state skips the check', () async {
      final project = terraformState();
      File(project.path('.terradart/engines.json'))
        ..createSync(recursive: true)
        ..writeAsStringSync(
          jsonEncode({
            'tf-out': {'engine': 'tofu', 'version': '1.13.1'},
          }),
        );
      final runner = FakeRunner(synth: (_) => runStackEntry());
      final r = await project.run(['plan'], runner);
      expect(r.code, 0, reason: r.err);
      expect(r.err, isEmpty);
    });
  });
}
