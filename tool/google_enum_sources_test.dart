// The gate of tool/google_enum_sources.dart: every enum of a discovery lane
// spells exactly the values a checked-in machine source lists, or has a
// reasoned tool/enum_prose_sources.yaml entry, and no input a machine source
// has a set for stays a plain string.
import 'dart:io';

import 'package:terradart_codegen/src/parser/discovery_enums.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'bump_api_surface.dart' show laneManifests;
import 'google_enum_sources.dart';

const _mmType = 'google_mm_thing';
const _discoveryType = 'google_discovery_thing';
const _bareType = 'google_bare_thing';

InputKey _key(String type, String path) => (CatalogKind.resource, type, path);

LaneSources _sources() => LaneSources(
  mm: {
    _mmType: const MmResourceOverrides(
      fieldOverrides: {},
      enumValuesByPath: {
        'mode': ['ENABLED', 'DISABLED'],
      },
    ),
  },
  discovery: DiscoveryEnums(
    docs: {
      'thing.v1': {
        'Thing': {
          'properties': {
            'tier': {
              'enum': ['TIER_UNSPECIFIED', 'STANDARD', 'PREMIUM'],
            },
            'name': {
              'enum': ['NAME_UNSPECIFIED'],
            },
            'labelKey': {r'$ref': 'Nothing'},
          },
        },
      },
    },
    resources: {
      _discoveryType: (
        doc: 'thing.v1',
        schema: 'Thing',
        paths: const {},
        passthrough: false,
      ),
    },
    dataSources: const {},
  ),
);

SourceCheck _check(
  Map<InputKey, InputSite> inputs, [
  Map<String, ProseEntry> prose = const {},
]) => checkSources(inputs, _sources(), prose);

ProseEntry _entry(List<String> values, String reason, [String? note]) =>
    (values: values, reason: reason, note: note);

Map<String, String> _flat(Map<String, ProseEntry> entries) => {
  for (final MapEntry(:key, :value) in entries.entries)
    key: '${value.values} ${value.reason} ${value.note}',
};

void main() {
  group('real lanes', () {
    final providersYaml = File('tool/providers.yaml').readAsStringSync();
    final proseText = File(proseSourcesPath).readAsStringSync();
    final lanes = discoveryLanes(providersYaml);

    test('google and google-beta are the discovery lanes', () {
      expect(lanes.keys, unorderedEquals(['google', 'google-beta']));
    });

    for (final MapEntry(key: lane, value: schemaDir) in lanes.entries) {
      final inputs = stringInputs(laneManifests(providersYaml, [lane]).single);
      final sources = LaneSources.load(schemaDir);
      final prose = parseProseSources(proseText, lane);

      test('$lane: every enum site is compared, with no failure', () {
        final check = checkSources(inputs, sources, prose);
        expect(check.failures, isEmpty);
        final sites = inputs.values.where((v) => v != null).length;
        final compared =
            check.mm +
            check.discovery +
            check.prose.values.fold(0, (a, b) => a + b);
        expect(compared, sites, reason: 'uncompared enum sites');
        expect(check.mm + check.discovery, greaterThan(0));
      });

      test('$lane: the prose list is what --fix writes', () {
        final check = checkSources(inputs, sources, prose);
        expect(check.wanted.keys.toSet(), prose.keys.toSet());
      });

      test('$lane: a seeded wrong spelling fails against each source', () {
        for (final (name, wantMm) in [
          ('Magic Modules', true),
          ('Discovery', false),
        ]) {
          final seeded = inputs.entries.firstWhere(
            (e) =>
                e.value != null &&
                e.value!.isNotEmpty &&
                !prose.containsKey(inputLabel(e.key)) &&
                (sources.mmValues(e.key) != null) == wantMm &&
                (wantMm || sources.discoveryEnum(e.key) != null),
            orElse: () => throw StateError('$lane has no $name site'),
          );
          final wrong = [...seeded.value!]..[0] = '${seeded.value![0]}X';
          final check = checkSources(
            {...inputs, seeded.key: wrong},
            sources,
            prose,
          );
          expect(check.failures, [
            contains('${inputLabel(seeded.key)}: emits ${wrong[0]}'),
          ], reason: name);
          final lower = [...seeded.value!]
            ..[0] = seeded.value![0].toLowerCase();
          if (lower[0] == seeded.value![0]) continue;
          expect(
            checkSources(
              {...inputs, seeded.key: lower},
              sources,
              prose,
            ).failures,
            hasLength(1),
            reason: '$name compares spelling exactly',
          );
        }
      });

      test('$lane: a seeded untyped input with a machine set fails', () {
        final seeded = inputs.entries.firstWhere(
          (e) => e.value != null && sources.typableValues(e.key) != null,
        );
        final check = checkSources(
          {...inputs, seeded.key: null},
          sources,
          prose,
        );
        expect(check.failures, [
          contains('${inputLabel(seeded.key)}: a plain string'),
        ]);
      });

      test('$lane: a seeded drift in a prose entry fails', () {
        if (prose.isEmpty) return;
        final label = prose.keys.first;
        final e = prose[label]!;
        final check = checkSources(inputs, sources, {
          ...prose,
          label: _entry([...e.values, 'EXTRA'], e.reason, e.note),
        });
        expect(check.failures, [contains('$label: $proseSourcesPath lists')]);
      });
    }
  });

  group('checkSources', () {
    test('counts exact matches by source', () {
      final check = _check({
        _key(_mmType, 'mode'): ['ENABLED'],
        _key(_discoveryType, 'tier'): ['STANDARD', 'PREMIUM'],
      });
      expect(check.failures, isEmpty);
      expect((check.mm, check.discovery), (1, 1));
    });

    test('a misspelled Magic Modules value fails', () {
      final check = _check({
        _key(_mmType, 'mode'): ['ENABLED', 'DISABLD'],
      });
      expect(check.failures, [
        allOf(contains('emits DISABLD'), contains('Magic Modules')),
      ]);
    });

    test('a misspelled Discovery value fails', () {
      final check = _check({
        _key(_discoveryType, 'tier'): ['STANDARD', 'PREMUIM'],
      });
      expect(check.failures, [
        allOf(contains('emits PREMUIM'), contains('Discovery thing.v1')),
      ]);
    });

    test('spelling is compared exactly, case included', () {
      expect(
        _check({
          _key(_discoveryType, 'tier'): ['standard'],
        }).failures,
        hasLength(1),
      );
    });

    test('Magic Modules wins over Discovery', () {
      final sources = _sources();
      final both = LaneSources(
        mm: {
          ...sources.mm,
          _discoveryType: const MmResourceOverrides(
            fieldOverrides: {},
            enumValuesByPath: {
              'tier': ['BASIC'],
            },
          ),
        },
        discovery: sources.discovery,
      );
      final check = checkSources(
        {
          _key(_discoveryType, 'tier'): ['STANDARD'],
        },
        both,
        const {},
      );
      expect(check.failures, [contains('Magic Modules')]);
    });

    test('a site no source has fails without an entry', () {
      final check = _check({
        _key(_bareType, 'kind'): ['A'],
      });
      expect(check.failures, [contains('no machine source has its values')]);
      expect(check.wanted.values.single.reason, 'no-document');
    });

    test('no-document and no-enum entries are checked against the copy', () {
      final inputs = {
        _key(_bareType, 'kind'): ['A'],
        _key(_discoveryType, 'flavor'): ['B'],
      };
      final ok = _check(inputs, {
        '$_bareType.kind': _entry(['A'], 'no-document'),
        '$_discoveryType.flavor': _entry(['B'], 'no-enum'),
      });
      expect(ok.failures, isEmpty);
      expect(ok.prose, {'no-document': 1, 'no-enum': 1});

      final swapped = _check(inputs, {
        '$_bareType.kind': _entry(['A'], 'no-enum'),
        '$_discoveryType.flavor': _entry(['B'], 'no-document'),
      });
      expect(swapped.failures, hasLength(2));
    });

    test('a prose entry whose values drifted fails', () {
      final check = _check(
        {
          _key(_bareType, 'kind'): ['A', 'B'],
        },
        {
          '$_bareType.kind': _entry(['A'], 'no-document'),
        },
      );
      expect(check.failures, [contains('lists [A], the wrapper emits [A, B]')]);
    });

    test('a disagreement needs a reviewed note', () {
      final inputs = {
        _key(_discoveryType, 'tier'): ['STANDARD', 'HIDDEN'],
      };
      final unreviewed = _check(inputs, {
        '$_discoveryType.tier': _entry(
          ['STANDARD', 'HIDDEN'],
          'disagrees',
          awaitingReview,
        ),
      });
      expect(unreviewed.failures, [contains('replace $awaitingReview')]);

      final reviewed = _check(inputs, {
        '$_discoveryType.tier': _entry(
          ['STANDARD', 'HIDDEN'],
          'disagrees',
          'the API hides HIDDEN',
        ),
      });
      expect(reviewed.failures, isEmpty);
      expect(reviewed.wanted.values.single.note, 'the API hides HIDDEN');
    });

    test('--fix marks a changed disagreement awaiting review', () {
      final check = _check(
        {
          _key(_discoveryType, 'tier'): ['STANDARD', 'HIDDEN', 'MORE'],
        },
        {
          '$_discoveryType.tier': _entry(
            ['STANDARD', 'HIDDEN'],
            'disagrees',
            'the API hides HIDDEN',
          ),
        },
      );
      expect(check.wanted.values.single.note, awaitingReview);
    });

    test('a stale entry fails', () {
      final check = _check(
        {
          _key(_mmType, 'mode'): ['ENABLED'],
        },
        {
          '$_mmType.mode': _entry(['ENABLED'], 'no-document'),
          '$_bareType.gone': _entry(['A'], 'no-document'),
        },
      );
      expect(check.failures, [
        contains('$_mmType.mode: stale'),
        contains('$_bareType.gone: stale'),
      ]);
    });

    test('a plain string with a machine set fails', () {
      final check = _check({
        _key(_mmType, 'mode'): null,
        _key(_discoveryType, 'tier'): null,
      });
      expect(check.failures, [
        allOf(contains('$_mmType.mode: a plain string'), contains('ENABLED')),
        allOf(
          contains('$_discoveryType.tier: a plain string'),
          isNot(contains('TIER_UNSPECIFIED')),
        ),
      ]);
    });

    test('a plain string without a machine set passes', () {
      final check = _check({
        _key(_discoveryType, 'name'): null,
        _key(_discoveryType, 'label_key'): null,
        _key(_bareType, 'kind'): null,
      });
      expect(check.failures, isEmpty);
    });
  });

  group('parseProseSources', () {
    test('reads source and disagrees entries', () {
      final parsed = parseProseSources('''
google:
  google_a.x:
    values: [A, B]
    source: no-enum
  google_b.y:
    values: [C]
    disagrees: 'why it is accepted'
''', 'google');
      expect(
        _flat(parsed),
        _flat({
          'google_a.x': _entry(['A', 'B'], 'no-enum'),
          'google_b.y': _entry(['C'], 'disagrees', 'why it is accepted'),
        }),
      );
      expect(parseProseSources('google: {}', 'google-beta'), isEmpty);
    });

    test('rejects an entry without a known reason', () {
      for (final body in [
        '    values: [A]\n    source: maybe',
        '    values: [A]',
        '    source: no-enum',
      ]) {
        expect(
          () => parseProseSources('google:\n  google_a.x:\n$body\n', 'google'),
          throwsFormatException,
          reason: body,
        );
      }
    });

    test('round-trips through renderProseSources', () {
      final entries = {
        'google_a.x': _entry(['A', 'yes', '1.0'], 'no-document'),
        'google_b.y': _entry(['C'], 'disagrees', "it's accepted: see #1"),
      };
      expect(
        _flat(
          parseProseSources(renderProseSources({'google': entries}), 'google'),
        ),
        _flat(entries),
      );
    });
  });
}
