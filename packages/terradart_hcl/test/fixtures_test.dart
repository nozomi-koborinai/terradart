import 'dart:io';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

/// The migrator's tree fixtures: a multi-environment GCP repo and a root
/// with one local child module.
const _trees = [
  '../terradart_migrate/test/fixtures/config_tree',
  '../terradart_migrate/test/fixtures/real_plan_src',
];

int _count(String src, String pattern) =>
    RegExp(pattern, multiLine: true).allMatches(src).length;

void main() {
  test('the repeated-block stress fixture parses losslessly', () {
    final file = parseHcl(
      File('test/fixtures/repeated_blocks.tf').readAsStringSync(),
    );
    final svc = file.body.blocksOf('resource').first;
    final containers = svc.body.block('template')!.body.blocksOf('containers');
    expect(containers, hasLength(2));
    expect(containers.first.body.blocksOf('env'), hasLength(3));
    expect(
      containers.first.body
          .blocksOf('env')
          .last
          .body
          .block('value_source')!
          .body
          .block('secret_key_ref'),
      isNotNull,
    );
    final bucket = file.body.blocksOf('resource')[1];
    expect(bucket.body.blocksOf('lifecycle_rule'), hasLength(2));
    expect(
      bucket.body.blocksOf('dynamic').single.body.block('content'),
      isNotNull,
    );
    expect(file.body.blocksOf('provider'), hasLength(2));
  });

  group('migrator tree fixtures parse with every top-level block intact', () {
    final files =
        [
            for (final tree in _trees)
              ...Directory(tree).listSync(recursive: true),
          ].whereType<File>().where((f) => f.path.endsWith('.tf')).toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    test('fixtures exist', () => expect(files, isNotEmpty));
    for (final f in files) {
      test(f.path, () {
        final src = f.readAsStringSync();
        final file = parseHcl(src, fileName: f.path);
        for (final type in [
          'resource',
          'data',
          'module',
          'variable',
          'output',
          'provider',
        ]) {
          expect(
            file.body.blocksOf(type),
            hasLength(_count(src, '^$type ')),
            reason: 'top-level $type blocks in ${f.path}',
          );
        }
      });
    }
  });
}
