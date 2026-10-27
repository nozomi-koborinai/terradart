import 'dart:io';

import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'plugin_cache_key.dart';

void main() {
  test('~> 8.0 selects the newest stable release below 9', () {
    expect(
      selectVersion('~> 8.0', [
        '7.9.0',
        '8.0.0',
        '8.8.1',
        '8.9.0-beta.1',
        '9.0.0',
      ]),
      '8.8.1',
    );
  });

  test('~> 0.12 stays below 1.0', () {
    expect(
      selectVersion('~> 0.12', ['0.11.2', '0.12.0', '0.13.1', '1.0.0']),
      '0.13.1',
    );
  });

  test('~> 1.2.3 stays in the 1.2 line', () {
    expect(
      selectVersion('~> 1.2.3', ['1.2.2', '1.2.3', '1.2.9', '1.3.0']),
      '1.2.9',
    );
  });

  test('an exact pin does not float', () {
    expect(selectVersion('6.69.1', ['6.69.0', '6.69.1', '6.70.0']), '6.69.1');
  });

  test('linux_amd64 filter keeps a release with no platform list', () {
    expect(
      linuxAmd64Versions({
        'versions': [
          {
            'version': '1.0.0',
            'platforms': [
              {'os': 'darwin', 'arch': 'arm64'},
            ],
          },
          {
            'version': '1.2.0',
            'platforms': [
              {'os': 'linux', 'arch': 'amd64'},
            ],
          },
          {'version': '1.3.0'},
        ],
      }),
      ['1.2.0', '1.3.0'],
    );
  });

  test(
    'resolution hashes the sorted registry host, source, and version',
    () async {
      final resolved = await resolvePins(
        registry: PluginRegistry.opentofu,
        pins: const [
          ProviderPin('hashicorp/google', '~> 8.0'),
          ProviderPin('hashicorp/aws', '6.69.1'),
        ],
        versions: (host, source) async {
          expect(host, 'registry.opentofu.org');
          return switch (source) {
            'hashicorp/google' => ['8.7.0', '8.8.1', '9.0.0'],
            'hashicorp/aws' => ['6.69.1', '6.70.0'],
            _ => throw StateError(source),
          };
        },
      );
      final material = cacheKeyMaterial(resolved);
      expect(
        material,
        'registry.opentofu.org hashicorp/aws 6.69.1\n'
        'registry.opentofu.org hashicorp/google 8.8.1\n',
      );
      expect(cacheKeyHash(material), hasLength(64));
      expect(material, isNot(contains('run_id')));
      expect(requiredProvidersJson(resolved), contains('"version": "8.8.1"'));
    },
  );

  test('a constraint with no matching release fails', () {
    expect(
      resolvePins(
        registry: PluginRegistry.terraform,
        pins: const [ProviderPin('hashicorp/aws', '6.69.1')],
        versions: (_, _) async => ['6.68.0'],
      ),
      throwsA(isA<StateError>()),
    );
  });

  test('OpenTofu omits providers its registry does not serve', () {
    final tofu = pinsFor(PluginRegistry.opentofu).map((pin) => pin.source);
    final terraform = pinsFor(
      PluginRegistry.terraform,
    ).map((pin) => pin.source);
    expect(tofu, isNot(contains('appwrite/appwrite')));
    expect(terraform, contains('appwrite/appwrite'));
    expect(terraform, contains('hashicorp/time'));
  });

  test('every providers.yaml source has a pin', () {
    final doc =
        loadYaml(File('tool/providers.yaml').readAsStringSync()) as YamlMap;
    final providers = doc['providers'] as YamlMap;
    final pinned = providerPins.map((pin) => pin.source).toSet();
    for (final entry in providers.entries) {
      final source = (entry.value as YamlMap)['source'] as String;
      expect(pinned, contains(source), reason: '${entry.key} has no pin');
    }
  });

  test(
    'ci.yml keys plugin caches on the resolved hash and saves once each',
    () {
      final ci = File('.github/workflows/ci.yml').readAsStringSync();
      final keyLines = [
        for (final line in ci.split('\n'))
          if (line.contains('tfplugins-') || line.contains('tofuplugins-'))
            line.trim(),
      ];
      expect(keyLines, isNotEmpty);
      for (final line in keyLines) {
        expect(line, isNot(contains('run_id')));
        expect(line, isNot(contains('github.sha')));
      }
      expect(
        'uses: actions/cache/save@v4'.allMatches(ci).length,
        2,
        reason: 'one save for tofuplugins and one for tfplugins',
      );
    },
  );
}
