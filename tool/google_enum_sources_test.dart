// The gate of tool/google_enum_sources.dart: every enum of a discovery lane
// equals the value set a checked-in machine source lists, or has a
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
      ),
    },
    dataSources: const {},
  ),
);

SourceCheck _check(
  Map<InputKey, InputSite> inputs, [
  Map<String, ProseEntry> prose = const {},
]) => checkSources(inputs, _sources(), prose);

ProseEntry _entry(
  List<String> values,
  String reason, [
  String? note,
  List<String>? upstream,
]) => (values: values, reason: reason, note: note, upstream: upstream);

Map<String, String> _flat(Map<String, ProseEntry> entries) => {
  for (final MapEntry(:key, :value) in entries.entries)
    key: '${value.values} ${value.reason} ${value.note} ${value.upstream}',
};

void main() {
  group('real lanes', () {
    final providersYaml = File('tool/providers.yaml').readAsStringSync();
    final proseText = File(proseSourcesPath).readAsStringSync();
    final lanes = discoveryLanes(providersYaml);

    test('google and google-beta are the discovery lanes', () {
      expect(lanes.keys, unorderedEquals(['google', 'google-beta']));
    });

    for (final MapEntry(key: lane, value: coordinates) in lanes.entries) {
      final manifest = laneManifests(providersYaml, [lane]).single;
      final universe = laneEnumSites(providersYaml, lane);
      final inputs = universe.sites;
      final sources = LaneSources.load(coordinates.schemaDir);
      final prose = parseProseSources(proseText, lane);

      test('$lane: every emitted enum is placed on a site', () {
        expect(universe.failures, isEmpty);
        final emitted = emittedEnums(coordinates.outputPackage);
        expect(
          emitted.map((e) => e.name).toSet(),
          manifest.enums.keys.toSet(),
        );
        expect(
          inputs.length,
          greaterThan(stringInputs(manifest).length),
          reason: 'the wrappers emit enums no manifest slot reaches',
        );
      });

      test('$lane: a seeded unplaced enum fails', () {
        final ledger = File(enumSitesPath).existsSync()
            ? parseEnumSites(File(enumSitesPath).readAsStringSync(), lane)
            : const <String, List<String>>{};
        if (ledger.isEmpty) return;
        final dropped = ledger.keys.first;
        final check = enumSites(
          stringInputs(manifest),
          manifest,
          emittedEnums(coordinates.outputPackage),
          schemaPaths(
            File('${coordinates.schemaDir}/schema.json').readAsStringSync(),
          ),
          {...ledger}..remove(dropped),
        );
        expect(check.failures, [
          allOf(startsWith('$dropped: emitted for'), contains(enumSitesPath)),
        ]);
      });

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

      test('$lane: a seeded missing source value fails', () {
        final seeded = inputs.entries.firstWhere(
          (e) =>
              e.value != null &&
              e.value!.length > 1 &&
              !prose.containsKey(inputLabel(e.key)) &&
              (sources.mmValues(e.key) ?? sources.discoveryEnum(e.key)) != null,
        );
        final dropped = seeded.value!.last;
        final check = checkSources(
          {...inputs, seeded.key: seeded.value!.sublist(1)..remove(dropped)},
          sources,
          prose,
        );
        expect(check.failures, [
          allOf(
            contains('${inputLabel(seeded.key)}: lacks'),
            contains(dropped),
          ),
        ]);
      });

      test('$lane: a seeded Discovery sentinel fails', () {
        final seeded = inputs.entries.firstWhere(
          (e) =>
              e.value != null &&
              !prose.containsKey(inputLabel(e.key)) &&
              sources.mmValues(e.key) == null &&
              (sources.discoveryEnum(e.key)?.values.any(isDiscoverySentinel) ??
                  false),
        );
        final sentinel = sources
            .discoveryEnum(seeded.key)!
            .values
            .firstWhere(isDiscoverySentinel);
        final check = checkSources(
          {
            ...inputs,
            seeded.key: [sentinel, ...seeded.value!],
          },
          sources,
          prose,
        );
        expect(check.failures, [
          contains('${inputLabel(seeded.key)}: emits $sentinel'),
        ]);
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
          label: _entry([...e.values, 'EXTRA'], e.reason, e.note, e.upstream),
        });
        expect(check.failures, [contains('$label: $proseSourcesPath lists')]);
      });
    }
  });

  group('enumSites', () {
    const manifest = MigrateManifest(
      package: 'test',
      entries: [
        MigrateEntry(
          tfType: 'google_x_job',
          className: 'GoogleXJob',
          barrel: 'x',
          kind: CatalogKind.resource,
          slots: [
            MigrateSlot(
              dartName: 'mode',
              tfName: 'mode',
              kind: MigrateSlotKind.enumValue,
              required: false,
              dartType: 'XJobMode',
            ),
          ],
          getters: [],
        ),
      ],
      helpers: {},
      enums: {
        'XJobMode': MigrateEnum(name: 'XJobMode', members: {'ON': 'on'}),
        'XJobState': MigrateEnum(
          name: 'XJobState',
          members: {'DRAFT': 'draft', 'DONE': 'done'},
        ),
        'XJobKind': MigrateEnum(name: 'XJobKind', members: {'A': 'a'}),
      },
    );
    EmittedEnum emitted(String name, String? leaf, List<String> values) => (
      name: name,
      kind: CatalogKind.resource,
      tfType: 'google_x_job',
      leaf: leaf,
      values: values,
    );
    final all = [
      emitted('XJobMode', 'mode', ['ON']),
      emitted('XJobState', 'state', ['DRAFT', 'DONE']),
      emitted('XJobKind', null, ['A']),
    ];
    final paths = {
      (CatalogKind.resource, 'google_x_job'): [
        'mode',
        'state',
        'kind',
        'step',
        'step.state',
      ],
    };
    final inputs = {
      _key('google_x_job', 'mode'): ['ON'],
    };

    test('places an unreached enum by its leaf or the ledger', () {
      final check = enumSites(
        inputs,
        manifest,
        [
          emitted('XJobMode', 'mode', ['ON']),
          emitted('XJobState', 'step', ['DRAFT', 'DONE']),
          emitted('XJobKind', null, ['A']),
        ],
        paths,
        {
          'XJobKind': ['google_x_job.kind'],
        },
      );
      expect(check.failures, isEmpty);
      expect(check.sites, {
        _key('google_x_job', 'mode'): ['ON'],
        _key('google_x_job', 'step'): ['DRAFT', 'DONE'],
        _key('google_x_job', 'kind'): ['A'],
      });
    });

    test('a leaf naming two paths needs the ledger', () {
      final check = enumSites(inputs, manifest, all, paths, {
        'XJobKind': ['google_x_job.kind'],
      });
      expect(check.failures, [
        allOf(startsWith('XJobState:'), contains('names 2 paths')),
      ]);
    });

    test('a prelude enum without an entry fails', () {
      final check = enumSites(inputs, manifest, all, paths, {
        'XJobState': ['google_x_job.state'],
      });
      expect(check.failures, [
        allOf(startsWith('XJobKind:'), contains('no derived doc')),
      ]);
    });

    test('stale, foreign and unknown ledger sites fail', () {
      final check = enumSites(inputs, manifest, all, paths, {
        'XJobMode': ['google_x_job.mode'],
        'XJobState': ['google_y_job.state'],
        'XJobKind': ['google_x_job.nope'],
        'XGone': ['google_x_job.kind'],
      });
      expect(check.failures, [
        contains('XJobMode: stale'),
        contains('XJobState: $enumSitesPath names google_y_job.state'),
        contains('which the provider schema does not have'),
        contains('XGone: stale'),
      ]);
    });

    test('an enum the manifest records otherwise fails', () {
      final check = enumSites(
        inputs,
        manifest,
        [
          emitted('XJobMode', 'mode', ['ON', 'OFF']),
        ],
        paths,
        const {},
      );
      expect(check.failures, [contains('the migration manifest records [ON]')]);
    });

    test('an enum placed on a plain string input fails', () {
      final check = enumSites(
        {
          ...inputs,
          _key('google_x_job', 'kind'): null,
        },
        manifest,
        [
          emitted('XJobState', 'kind', ['DRAFT', 'DONE']),
        ],
        paths,
        const {},
      );
      expect(check.failures, [
        contains('google_x_job.kind: a plain string, but the wrappers emit'),
      ]);
    });

    test('emittedEnums reads derived and multi-line declarations', () {
      final dir = Directory.systemTemp.createTempSync('emitted');
      addTearDown(() => dir.deleteSync(recursive: true));
      File('${dir.path}/lib/src/x/google_x_job.dart')
        ..createSync(recursive: true)
        ..writeAsStringSync('''// GENERATED FILE - DO NOT EDIT
/// X Job enum for `state`.
extension type const XJobState._(TfArg<String> _) implements TfArg<String> {
  static const draft = XJobState._(TfArgLiteral('DRAFT'));
  static const done = XJobState._(
    TfArgLiteral('DONE'),
  );
}

/// Hand-written.
extension type const XJobKind._(
  TfArg<String> _
) implements TfArg<String> {
  static const a = XJobKind._(TfArgLiteral('A'));
}
''');
      File('${dir.path}/lib/src/data/google_x_jobs.dart')
        ..createSync(recursive: true)
        ..writeAsStringSync('''// GENERATED FILE - DO NOT EDIT
/// X Jobs enum for `kind`.
extension type const XJobsKind._(TfArg<String> _) implements TfArg<String> {
  static const b = XJobsKind._(TfArgLiteral('B'));
}
''');
      File('${dir.path}/lib/src/hand.dart').writeAsStringSync(
        "extension type const Hand._(TfArg<String> _) {\n"
        "  static const c = Hand._(TfArgLiteral('C'));\n}\n",
      );
      expect(
        [
          for (final e in emittedEnums(dir.path))
            '${e.kind.name} ${e.tfType} ${e.name} ${e.leaf} ${e.values}',
        ],
        [
          'dataSource google_x_jobs XJobsKind kind [B]',
          'resource google_x_job XJobState state [DRAFT, DONE]',
          'resource google_x_job XJobKind null [A]',
        ],
      );
    });

    test('schemaPaths walks attributes, nested types and blocks', () {
      expect(
        schemaPaths('''
{"provider_schemas": {"p": {
  "resource_schemas": {"google_x_job": {"block": {
    "attributes": {"state": {}, "o": {"nested_type": {"attributes": {"k": {}}}}},
    "block_types": {"step": {"block": {"attributes": {"state": {}}}}}
  }}},
  "data_source_schemas": {"google_x_jobs": {"block": {"attributes": {"id": {}}}}}
}}}
'''),
        {
          (CatalogKind.resource, 'google_x_job'): [
            'state',
            'o',
            'o.k',
            'step',
            'step.state',
          ],
          (CatalogKind.dataSource, 'google_x_jobs'): ['id'],
        },
      );
    });
  });

  group('checkSources', () {
    test('counts exact matches by source', () {
      final check = _check({
        _key(_mmType, 'mode'): ['ENABLED', 'DISABLED'],
        _key(_discoveryType, 'tier'): ['STANDARD', 'PREMIUM'],
      });
      expect(check.failures, isEmpty);
      expect((check.mm, check.discovery), (1, 1));
    });

    test('a source value the enum lacks fails, against each source', () {
      final check = _check({
        _key(_mmType, 'mode'): ['ENABLED'],
        _key(_discoveryType, 'tier'): ['STANDARD'],
      });
      expect(check.failures, [
        allOf(contains('$_mmType.mode: lacks DISABLED'), contains('Magic')),
        allOf(
          contains('$_discoveryType.tier: lacks PREMIUM'),
          contains('thing'),
        ),
      ]);
    });

    test('an emitted Discovery sentinel fails', () {
      final check = _check({
        _key(_discoveryType, 'tier'): [
          'TIER_UNSPECIFIED',
          'STANDARD',
          'PREMIUM',
        ],
      });
      expect(check.failures, [contains('emits TIER_UNSPECIFIED')]);
    });

    test('a misspelled Magic Modules value fails', () {
      final check = _check({
        _key(_mmType, 'mode'): ['ENABLED', 'DISABLED', 'DISABLD'],
      });
      expect(check.failures, [
        allOf(contains('emits DISABLD'), contains('Magic Modules')),
      ]);
    });

    test('a misspelled Discovery value fails', () {
      final check = _check({
        _key(_discoveryType, 'tier'): ['STANDARD', 'PREMIUM', 'PREMUIM'],
      });
      expect(check.failures, [
        allOf(contains('emits PREMUIM'), contains('Discovery thing.v1')),
      ]);
    });

    test('spelling is compared exactly, case included', () {
      expect(
        _check({
          _key(_discoveryType, 'tier'): ['standard', 'PREMIUM'],
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
          ['STANDARD', 'PREMIUM'],
        ),
      });
      expect(unreviewed.failures, [
        allOf(
          contains('emits HIDDEN and lacks PREMIUM'),
          contains('replace $awaitingReview'),
        ),
      ]);

      final reviewed = _check(inputs, {
        '$_discoveryType.tier': _entry(
          ['STANDARD', 'HIDDEN'],
          'disagrees',
          'the API hides HIDDEN',
          ['STANDARD', 'PREMIUM'],
        ),
      });
      expect(reviewed.failures, isEmpty);
      expect(reviewed.wanted.values.single.note, 'the API hides HIDDEN');
    });

    test('a narrowing needs a reviewed note too', () {
      final inputs = {
        _key(_discoveryType, 'tier'): ['STANDARD'],
      };
      expect(_check(inputs).failures, [contains('lacks PREMIUM')]);
      expect(
        _check(inputs, {
          '$_discoveryType.tier': _entry(
            ['STANDARD'],
            'disagrees',
            'the provider rejects PREMIUM',
            ['STANDARD', 'PREMIUM'],
          ),
        }).failures,
        isEmpty,
      );
    });

    test('a note goes stale when its upstream set moves', () {
      final check = _check(
        {
          _key(_discoveryType, 'tier'): ['STANDARD'],
        },
        {
          '$_discoveryType.tier': _entry(
            ['STANDARD'],
            'disagrees',
            'the provider rejects PREMIUM',
            ['STANDARD', 'PREMIUM', 'GOLD'],
          ),
        },
      );
      expect(check.failures, [contains('records upstream')]);
      expect(check.wanted.values.single.note, awaitingReview);
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
            ['STANDARD', 'PREMIUM'],
          ),
        },
      );
      expect(check.wanted.values.single.note, awaitingReview);
    });

    test('a stale entry fails', () {
      final check = _check(
        {
          _key(_mmType, 'mode'): ['ENABLED', 'DISABLED'],
        },
        {
          '$_mmType.mode': _entry(['ENABLED', 'DISABLED'], 'no-document'),
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
    upstream: [C, D]
    disagrees: 'why it is accepted'
''', 'google');
      expect(
        _flat(parsed),
        _flat({
          'google_a.x': _entry(['A', 'B'], 'no-enum'),
          'google_b.y': _entry(
            ['C'],
            'disagrees',
            'why it is accepted',
            ['C', 'D'],
          ),
        }),
      );
      expect(parseProseSources('google: {}', 'google-beta'), isEmpty);
    });

    test('rejects an entry without a known reason', () {
      for (final body in [
        '    values: [A]\n    source: maybe',
        '    values: [A]',
        '    source: no-enum',
        '    values: [A]\n    disagrees: why',
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
        'google_b.y': _entry(
          ['C'],
          'disagrees',
          "it's accepted: see #1",
          ['C', 'yes'],
        ),
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
