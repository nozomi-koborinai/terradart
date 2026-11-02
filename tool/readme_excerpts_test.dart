import 'package:test/test.dart';

import 'readme_excerpts.dart';

void main() {
  final synth = <String, dynamic>{
    'provider': {
      'google': [
        {'project': 'ci-test-project-id', 'region': 'asia-northeast1'},
      ],
    },
    'resource': {
      'google_storage_bucket': {
        'assets': {
          'name': 'ci-test-project-id-assets',
          'versioning': [
            {'enabled': true},
          ],
          'lifecycle_rule': [
            {
              'action': [
                {'type': 'Delete'},
              ],
            },
            {
              'action': [
                {'type': 'SetStorageClass'},
              ],
            },
          ],
        },
      },
    },
  };

  String readme(String json) =>
      '# Example\n\nSynth emits:\n\n```json\n$json\n```\n';

  test('an excerpt that leaves keys and elements out passes', () {
    expect(
      excerptMismatches(
        'README.md',
        readme('''
{
  "resource": {
    "google_storage_bucket": {
      "assets": {
        "versioning": [{"enabled": true}],
        "lifecycle_rule": [{"action": [{"type": "SetStorageClass"}]}]
      }
    }
  }
}'''),
        synth,
      ),
      isEmpty,
    );
  });

  test('a value the synth does not emit fails', () {
    expect(
      excerptMismatches(
        'README.md',
        readme('{"provider": {"google": [{"project": "your-project-id"}]}}'),
        synth,
      ),
      [
        r'README.md:5: $.provider.google[0].project is "ci-test-project-id" '
            r'in the synth, not "your-project-id"; the fence must be an '
            'excerpt of tf-out/main.tf.json',
      ],
    );
  });

  test('an object where the synth emits a list fails', () {
    expect(
      excerptMismatches(
        'README.md',
        readme('{"provider": {"google": {"project": "ci-test-project-id"}}}'),
        synth,
      ),
      [startsWith(r'README.md:5: $.provider.google is a list in the synth')],
    );
  });

  test('a key the synth lacks, or an elision placeholder, fails', () {
    expect(
      excerptMismatches(
        'README.md',
        readme('{"resource": {"...": "..."}}'),
        synth,
      ),
      [startsWith(r'README.md:5: $.resource.... is not in the synth')],
    );
  });

  test('list elements keep the synthesized order', () {
    expect(
      excerptMismatches(
        'README.md',
        readme('''
{"resource": {"google_storage_bucket": {"assets": {"lifecycle_rule": [
  {"action": [{"type": "SetStorageClass"}]},
  {"action": [{"type": "Delete"}]}
]}}}}'''),
        synth,
      ),
      [contains('lifecycle_rule[1] matches no synthesized element')],
    );
  });

  test('every Markdown JSON fence form is an excerpt', () {
    const stale = '{"provider": {"google": [{"project": "stale"}]}}';
    for (final (open, close) in [
      ('````json', '````'),
      ('~~~json', '~~~'),
      ('```JSON', '```'),
      ('```json title="main.tf.json"', '```'),
      ('  ```json', '  ```'),
    ]) {
      expect(
        excerptMismatches(
          'README.md',
          '# Example\n\n$open\n$stale\n$close\n',
          synth,
        ),
        [startsWith(r'README.md:3: $.provider.google[0].project')],
        reason: open,
      );
    }
  });

  test('a CRLF, blockquote or list fence is an excerpt', () {
    const stale = '{"provider": {"google": [{"project": "stale"}]}}';
    for (final text in [
      '# Example\r\n\r\n```json\r\n$stale\r\n```\r\n',
      '# Example\n\n> ```json\n> $stale\n> ```\n',
      '# Example\n\n- ```json\n  $stale\n  ```\n',
      '# Example\n\n1. ```json\n   $stale\n   ```\n',
      '# Example\n\n- item\n\n    ```json\n    $stale\n    ```\n',
    ]) {
      expect(excerptMismatches('README.md', text, synth), [
        contains(r'$.provider.google[0].project'),
      ], reason: text);
    }
  });

  test('a four-space fence outside a list is indented code', () {
    expect(
      excerptMismatches(
        'README.md',
        '# Example\n\n    ```json\n    {"stale": 1}\n    ```\n',
        synth,
      ),
      isEmpty,
    );
  });

  test('a longer fence holds a shorter one, and other languages pass', () {
    expect(
      excerptMismatches(
        'README.md',
        '````markdown\n```json\n{"stale": 1}\n```\n````\n\n'
            '```jsonc\n{"stale": 1}\n```\n',
        synth,
      ),
      isEmpty,
    );
  });

  test('a fence that does not parse fails', () {
    expect(excerptMismatches('README.md', readme('{"a": 1,}'), synth), [
      startsWith('README.md:5: the JSON fence does not parse'),
    ]);
  });
}
