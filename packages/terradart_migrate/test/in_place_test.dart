import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// `--in-place` (#672): the Terraform tree rewritten to hold only what stays
// in Terraform. Every other mode reads `--dir` and never writes to it; this
// one is the exception, so what it refuses matters as much as what it cuts.

/// A git repository holding [files] under `tf/`, committed.
Directory _repo(Map<String, String> files, {bool commit = true}) {
  final root = Directory.systemTemp.createTempSync('terradart_in_place_');
  addTearDown(() => root.deleteSync(recursive: true));
  for (final e in files.entries) {
    File('${root.path}/tf/${e.key}')
      ..createSync(recursive: true)
      ..writeAsStringSync(e.value);
  }
  void git(List<String> args) =>
      Process.runSync('git', args, workingDirectory: root.path);
  git(['init', '-q']);
  git(['config', 'user.email', 'gate@terradart']);
  git(['config', 'user.name', 'gate']);
  if (commit) {
    git(['add', '-A']);
    git(['commit', '-qm', 'fixture']);
  }
  return root;
}

InPlaceResult _plan(Directory root) => planInPlace(
  migrateTree(scanModuleTree(Directory('${root.path}/tf')), name: 'tf'),
);

InPlaceFile _file(InPlaceResult r, String path) =>
    r.files.firstWhere((f) => f.path == path);

const _bucket = '''
resource "google_storage_bucket" "assets" {
  name     = "a"
  location = "US"
}
''';

const _leftover = '''
resource "acme_widget" "w" {
  size = 3
}
''';

void main() {
  group('in-place: what is cut', () {
    test('a file whose every block became Dart is removed', () {
      final r = _plan(_repo({'main.tf': _bucket}));
      final f = _file(r, 'main.tf');
      expect(f.action, InPlaceAction.removed);
      expect(f.cut, contains('google_storage_bucket.assets'));
      expect(f.content, isNull);
    });

    test('a file with a leftover keeps it, and nothing else', () {
      final r = _plan(_repo({'main.tf': '$_bucket\n$_leftover'}));
      final f = _file(r, 'main.tf');
      expect(f.action, InPlaceAction.rewritten);
      expect(f.content, _leftover);
      expect(f.cut, ['google_storage_bucket.assets']);
    });

    test('a block takes the comments above it with it', () {
      final r = _plan(
        _repo({
          'main.tf':
              '''
# The bucket every service writes to.
$_bucket
$_leftover''',
        }),
      );
      expect(_file(r, 'main.tf').content, _leftover);
    });

    test('what stays keeps its own formatting, byte for byte', () {
      const odd = '''
resource   "acme_widget"   "w"   {
  size =    3   # trailing note


  other = 4
}
''';
      final r = _plan(_repo({'main.tf': '$_bucket\n$odd'}));
      expect(_file(r, 'main.tf').content, odd);
    });

    test('a file nothing was cut from is left alone', () {
      final r = _plan(_repo({'main.tf': _bucket, 'other.tf': _leftover}));
      expect(_file(r, 'other.tf').action, InPlaceAction.unchanged);
      expect(_file(r, 'other.tf').content, isNull);
    });
  });

  group('in-place: blocks split entry by entry', () {
    test('a locals block keeps the entries that stay', () {
      // Without --inline-locals every local stays, so the block is untouched.
      final r = _plan(
        _repo({
          'main.tf':
              '''
locals {
  prefix = "acme"
}

$_bucket
''',
        }),
      );
      expect(_file(r, 'main.tf').content, contains('locals {'));
      expect(_file(r, 'main.tf').content, contains('prefix = "acme"'));
    });

    test('a terraform block loses the settings the Stack owns', () {
      final r = _plan(
        _repo({
          'main.tf':
              '''
terraform {
  required_version = ">= 1.11.0"

  backend "consul" {
    path = "state"
  }

  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}

$_bucket
''',
        }),
      );
      final f = _file(r, 'main.tf');
      expect(f.cut, contains('terraform.required_version'));
      expect(f.cut, contains('terraform.required_providers.google'));
      // A backend TerraDart has no type for is still Terraform's.
      expect(f.content, contains('backend "consul"'));
      expect(f.content, isNot(contains('required_version')));
      expect(f.content, isNot(contains('required_providers')));
      // No blank line is left where the settings were.
      expect(f.content, isNot(contains('\n\n\n')));
      expect(f.content, isNot(contains('{\n\n')));
    });
  });

  group('in-place: what is never touched', () {
    test('a moved block, whose Stack statement the report does not name', () {
      const moved = '''
moved {
  from = google_storage_bucket.old
  to   = google_storage_bucket.assets
}
''';
      final r = _plan(_repo({'main.tf': '$_bucket\n$moved'}));
      expect(_file(r, 'main.tf').content, contains('moved {'));
    });

    test('a Terraform JSON file, which has no source ranges to cut', () {
      final r = _plan(
        _repo({
          'main.tf.json':
              '{"resource": {"google_pubsub_topic": {"t": {"name": "t"}}}}',
        }),
      );
      final f = _file(r, 'main.tf.json');
      expect(f.action, InPlaceAction.skipped);
      expect(f.reason, contains('no source ranges'));
      expect(r.isEmpty, isTrue);
    });
  });

  group('in-place: the git guard', () {
    test('a clean working tree passes', () {
      final root = _repo({'main.tf': _bucket});
      expect(inPlaceGitBlocker(Directory('${root.path}/tf')), isNull);
    });

    test('an uncommitted change refuses, naming it', () {
      final root = _repo({'main.tf': _bucket});
      File('${root.path}/tf/main.tf').writeAsStringSync('# edited\n');
      final blocker = inPlaceGitBlocker(Directory('${root.path}/tf'));
      expect(blocker, contains('uncommitted changes'));
      expect(blocker, contains('main.tf'));
    });

    test('an untracked file refuses too: it has no checkout to come back', () {
      final root = _repo({'main.tf': _bucket});
      File('${root.path}/tf/extra.tf').writeAsStringSync(_leftover);
      expect(
        inPlaceGitBlocker(Directory('${root.path}/tf')),
        contains('uncommitted changes'),
      );
    });

    test('a directory outside a git working tree refuses', () {
      final root = Directory.systemTemp.createTempSync('terradart_no_git_');
      addTearDown(() => root.deleteSync(recursive: true));
      expect(
        inPlaceGitBlocker(root),
        anyOf(
          contains('not inside a git working tree'),
          // A temp directory that happens to sit inside one still has to be
          // clean; either refusal is the right answer here.
          contains('uncommitted changes'),
        ),
      );
    });
  });

  group('writeInPlace', () {
    test('refuses a path the rewrite does not own', () {
      final root = Directory.systemTemp.createTempSync('terradart_own_');
      addTearDown(() => root.deleteSync(recursive: true));
      for (final path in const [
        '../escape.tf',
        'main.tf.json',
        'MIGRATION.md',
      ]) {
        expect(
          () => writeInPlace(
            InPlaceResult(
              rootPath: root.path,
              files: [
                InPlaceFile(
                  path: path,
                  action: InPlaceAction.rewritten,
                  content: '# nope',
                ),
              ],
            ),
            root,
          ),
          throwsA(isA<FileSystemException>()),
          reason: path,
        );
        expect(File('${root.path}/$path').existsSync(), isFalse, reason: path);
      }
    });

    test('rewrites and removes the files it does own', () {
      final root = _repo({
        'main.tf': '$_bucket\n$_leftover',
        'gone.tf': _bucket,
      });
      final tf = Directory('${root.path}/tf');
      writeInPlace(_plan(root), tf);
      expect(File('${tf.path}/main.tf').readAsStringSync(), _leftover);
      expect(File('${tf.path}/gone.tf').existsSync(), isFalse);
    });
  });
}
