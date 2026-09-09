import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// `--update` (#669): re-running over a package the migrator generated. The
// sidecar is the input, the Stack's own `main.tf.json` never is, and the
// output is pasteable Dart beside the sidecar it would shrink.
// tool/migrate_fixture_gates.dart proves the pasted snippet round-trips.

const _bucket = '''
resource "google_storage_bucket" "assets" {
  name     = "a"
  location = "US"
}
''';

/// A generated package: a pubspec, a Stack, its synth output, and a sidecar.
Directory _package({
  String leftover = _bucket,
  String synth = '{"resource": {}}',
  String? stack,
  String? infra,
  String dir = 'tf-out',
}) {
  final root = Directory.systemTemp.createTempSync('terradart_rerun_test_');
  addTearDown(() => root.deleteSync(recursive: true));
  File('${root.path}/pubspec.yaml')
    ..createSync(recursive: true)
    ..writeAsStringSync('name: demo\npublish_to: none\n');
  if (stack != null) {
    File('${root.path}/lib/demo_stack.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(stack);
  }
  if (infra != null) {
    File('${root.path}/bin/infra.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(infra);
  }
  final tf = Directory('${root.path}/$dir')..createSync(recursive: true);
  if (leftover.isNotEmpty) {
    File('${tf.path}/terradart_leftover.tf').writeAsStringSync(leftover);
  }
  File('${tf.path}/main.tf.json').writeAsStringSync(synth);
  return root;
}

void main() {
  group('rerun', () {
    test('a sidecar block with a factory today becomes a snippet', () {
      final result = rerunProject(_package(), format: false);
      expect(result.isEmpty, isFalse);
      expect(result.translatedCount, 1);
      final module = result.changed.single;
      expect(module.terraformDir, 'tf-out');
      // Named after the package, not after `tf-out`.
      expect(module.stem, 'demo_stack');
      expect(module.stackFile, isNull);
      expect(module.translated.single.address, 'google_storage_bucket.assets');
      expect(
        module.snippets,
        contains("add(GoogleStorageBucket(localName: r'assets'"),
      );
      expect(
        module.snippets,
        contains("import 'package:terradart_google/storage.dart';"),
      );
      // The provider barrel is not imported: the snippets register none.
      expect(
        module.snippets,
        isNot(contains("import 'package:terradart_google/provider.dart';")),
      );
      // It compiles where it sits, so the body pastes verbatim.
      expect(module.snippets, contains('extension DemoStackRerun on Stack {'));
      expect(module.snippets, contains('void demoStackBlocks() {'));
    });

    test('the shrunken sidecar comes with it', () {
      final result = rerunProject(_package(), format: false);
      final next = result.files['tf-out/terradart_leftover.next.tf'];
      expect(next, isNotNull);
      expect(next, isNot(contains('resource "google_storage_bucket"')));
    });

    test('only the three file kinds a re-run owns are written', () {
      final result = rerunProject(_package(), format: false);
      expect(
        result.files.keys.toList()..sort(),
        equals([
          'RERUN.md',
          'lib/demo_stack.snippets.dart',
          'tf-out/terradart_leftover.next.tf',
        ]),
      );
    });

    test("the Stack's own main.tf.json is never re-migrated", () {
      // A resource that would translate, in the file the Stack writes: the
      // re-run must not see it, or it would hand back the whole Stack.
      final root = _package(
        leftover: '',
        synth: '{"resource": {"google_pubsub_topic": {"t": {"name": "t"}}}}',
      );
      final result = rerunProject(root, format: false);
      expect(result.isEmpty, isTrue);
      expect(result.modules, isEmpty);
      expect(result.files.keys, equals(['RERUN.md']));
      expect(result.renderMarkdown(), contains('Nothing new'));
    });

    test('a sidecar nothing covers reports no reason of its own', () {
      final result = rerunProject(
        _package(leftover: 'resource "unknown_thing" "x" {\n  name = "x"\n}\n'),
        format: false,
      );
      expect(result.isEmpty, isTrue);
      // No Stack means every block is kept for the same structural reason,
      // which says nothing about the block itself.
      expect(result.keptCount, 0);
      expect(result.renderText(), contains('nothing new'));
    });

    test('a pasted local never shadows one the Stack already declares', () {
      final result = rerunProject(
        _package(
          leftover:
              '''
$_bucket
resource "google_storage_bucket_iam_member" "reader" {
  bucket = google_storage_bucket.assets.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
''',
          stack: '''
final class DemoStack extends Stack {
  DemoStack() {
    final assets = add(GooglePubsubTopic(localName: 'assets'));
  }
}
''',
        ),
        format: false,
      );
      final snippets = result.changed.single.snippets;
      expect(snippets, isNot(contains('final assets = ')));
      expect(snippets, contains('final assetsStorageBucket = '));
      expect(snippets, contains('TfArg.ref(assetsStorageBucket.nameRef)'));
    });

    test('the report names the Stack to paste into', () {
      final result = rerunProject(_package(stack: '// stack'), format: false);
      expect(result.changed.single.stackFile, 'lib/demo_stack.dart');
      final md = result.renderMarkdown();
      expect(md, contains('`lib/demo_stack.dart`'));
      expect(md, contains('terradart_leftover.next.tf'));
      expect(md, contains('*No changes*'));
    });

    test('what the snippets cannot carry stays in the next sidecar', () {
      // Swapping the sidecar in must never drop something the paste does
      // not put back: a provider configuration has no statement to paste,
      // and a `moved` block carries state.
      final result = rerunProject(
        _package(
          leftover:
              '''
provider "google" {
  project = "demo"
}

$_bucket
moved {
  from = google_storage_bucket.old
  to   = google_storage_bucket.assets
}
''',
        ),
        format: false,
      );
      final module = result.changed.single;
      // The move is pasted, so it may leave the sidecar.
      expect(
        module.snippets,
        contains(
          "addMoved(r'google_storage_bucket.old', "
          "r'google_storage_bucket.assets')",
        ),
      );
      expect(module.nextLeftover, isNot(contains('moved {')));
      // The provider configuration is not, so it may not.
      expect(module.nextLeftover, contains('provider "google"'));
      expect(
        module.stillKept.map((k) => k.address),
        contains('provider.google'),
      );
      expect(
        module.stillKept.map((k) => k.reason).join(),
        contains('a re-run pastes resources'),
      );
    });

    test('a reason is not stacked again on every re-run', () {
      // A sidecar already carries the comment the run before wrote above
      // each block; only this run's reason is current.
      final result = rerunProject(
        _package(
          leftover:
              '''
# terradart-migrate: no curated factory for resource type "unknown_thing" (request curation)
resource "unknown_thing" "x" {
  name = "x"
}

$_bucket
''',
        ),
        format: false,
      );
      final next = result.changed.single.nextLeftover;
      expect(next, isNotNull);
      expect(next, contains('resource "unknown_thing"'));
      expect('# terradart-migrate: '.allMatches(next!).length, 1, reason: next);
    });

    test('a hidden directory is never entered, nor written into', () {
      final root = _package();
      // What `terraform init` leaves behind: other people's modules.
      final vendored = Directory('${root.path}/tf-out/.terraform/modules/x')
        ..createSync(recursive: true);
      File('${vendored.path}/main.tf').writeAsStringSync(_bucket);
      final result = rerunProject(root, format: false);
      expect(result.modules.map((m) => m.terraformDir), ['tf-out']);
      expect(result.files.keys.where((f) => f.contains('.terraform')), isEmpty);
    });

    test('the Stack comes from the package\'s own bin/infra.dart', () {
      // Two directories sharing a base name: only `bin/infra.dart` says
      // which Stack writes which, and the first run named them by path.
      final root = _package(
        dir: 'tf-out/envs/dev',
        infra: '''
Future<void> main() async {
  await EnvsDevApiStack().writeTo(r'tf-out/envs/dev');
  await EnvsProdApiStack().writeTo(r'tf-out/envs/prod');
}
''',
      );
      File('${root.path}/lib/envs_dev_api_stack.dart')
        ..createSync(recursive: true)
        ..writeAsStringSync('// stack');
      final module = rerunProject(root, format: false).changed.single;
      expect(module.stem, 'envs_dev_api_stack');
      expect(module.stackFile, 'lib/envs_dev_api_stack.dart');
      expect(module.snippetsFile, 'lib/envs_dev_api_stack.snippets.dart');
    });

    test('a package with no tf-out is not one the migrator wrote', () {
      final root = Directory.systemTemp.createTempSync('terradart_rerun_bare_');
      addTearDown(() => root.deleteSync(recursive: true));
      expect(() => rerunProject(root), throwsA(isA<FileSystemException>()));
    });
  });

  group('writeRerun', () {
    test('refuses a path a re-run does not own', () {
      final root = Directory.systemTemp.createTempSync('terradart_rerun_own_');
      addTearDown(() => root.deleteSync(recursive: true));
      for (final path in const [
        'lib/demo_stack.dart',
        'tf-out/terradart_leftover.tf',
        'MIGRATION.md',
        '../escape.snippets.dart',
      ]) {
        expect(
          () => writeRerun(
            RerunResult(
              packagePath: root.path,
              modules: const [],
              files: {path: '// nope'},
            ),
            root,
          ),
          throwsA(isA<FileSystemException>()),
          reason: path,
        );
        expect(File('${root.path}/$path').existsSync(), isFalse, reason: path);
      }
    });

    test('writes the files it does own', () {
      final root = Directory.systemTemp.createTempSync('terradart_rerun_own_');
      addTearDown(() => root.deleteSync(recursive: true));
      writeRerun(
        RerunResult(
          packagePath: root.path,
          modules: const [],
          files: const {
            'RERUN.md': '# report',
            'lib/demo_stack.snippets.dart': '// snippets',
            'tf-out/dev/terradart_leftover.next.tf': '# next',
          },
        ),
        root,
      );
      expect(File('${root.path}/RERUN.md').readAsStringSync(), '# report');
      expect(
        File('${root.path}/lib/demo_stack.snippets.dart').readAsStringSync(),
        '// snippets',
      );
      expect(
        File(
          '${root.path}/tf-out/dev/terradart_leftover.next.tf',
        ).readAsStringSync(),
        '# next',
      );
    });
  });
}
