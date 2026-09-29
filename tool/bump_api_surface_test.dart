// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'bump_api_surface.dart';

MigrateManifest manifest({
  List<MigrateSlot> slots = const [],
  List<MigrateGetter> getters = const [],
  List<MigrateSlot> helperSlots = const [],
  Map<String, String> members = const {'PULL': 'pull'},
  String barrel = 'pubsub',
}) => MigrateManifest(
  package: 'terradart_google',
  entries: [
    MigrateEntry(
      tfType: 'google_pubsub_topic',
      className: 'GooglePubsubTopic',
      barrel: barrel,
      kind: CatalogKind.resource,
      slots: slots,
      getters: getters,
    ),
  ],
  helpers: {
    'PubsubPushConfig': MigrateHelper(
      className: 'PubsubPushConfig',
      slots: helperSlots,
    ),
  },
  enums: {'PubsubMode': MigrateEnum(name: 'PubsubMode', members: members)},
);

MigrateSlot slot(
  String name, {
  bool required = false,
  String type = 'String',
  Map<String, String>? variants,
}) => MigrateSlot(
  tfName: name,
  dartName: name,
  kind: variants == null ? MigrateSlotKind.scalar : MigrateSlotKind.sealed,
  required: required,
  dartType: variants == null ? type : null,
  variants: variants,
);

List<Object?> breaking(MigrateManifest before, MigrateManifest after) =>
    diffApiSurface(apiSurface([before]), apiSurface([after]))['breaking']
        as List<Object?>;

void main() {
  test('identical manifests: nothing breaking, nothing added', () {
    final m = manifest(slots: [slot('name', required: true)]);
    final diff = diffApiSurface(apiSurface([m]), apiSurface([m]));
    expect(diff['breaking'], isEmpty);
    expect(diff['added'], 0);
  });

  test('additive changes are not breaking', () {
    final before = manifest(slots: [slot('name', required: true)]);
    final after = manifest(
      slots: [slot('name', required: true), slot('labels')],
      getters: [
        const MigrateGetter(tfName: 'id', dartName: 'id', dartType: 'String'),
      ],
      members: {'PULL': 'pull', 'PUSH': 'push'},
    );
    final diff = diffApiSurface(apiSurface([before]), apiSurface([after]));
    expect(diff['breaking'], isEmpty);
    expect(diff['added'], 3);
  });

  test('a required slot turning optional is not breaking', () {
    expect(
      breaking(
        manifest(slots: [slot('name', required: true)]),
        manifest(slots: [slot('name')]),
      ),
      isEmpty,
    );
  });

  test('a removed slot, getter, helper field or enum member is breaking', () {
    final before = manifest(
      slots: [slot('name')],
      getters: [
        const MigrateGetter(tfName: 'id', dartName: 'id', dartType: 'String'),
      ],
      helperSlots: [slot('endpoint')],
    );
    expect(breaking(before, manifest(members: const {})), [
      'removed enum:terradart_google:PubsubMode.pull',
      'removed getter:terradart_google:GooglePubsubTopic.id',
      'removed slot:terradart_google:GooglePubsubTopic.name',
      'removed slot:terradart_google:PubsubPushConfig.endpoint',
    ]);
  });

  test('a changed slot type or barrel is breaking', () {
    expect(
      breaking(
        manifest(slots: [slot('size')]),
        manifest(
          slots: [slot('size', type: 'int')],
          barrel: 'pub_sub',
        ),
      ),
      [
        'changed class:terradart_google:GooglePubsubTopic: '
            'barrel=pubsub → barrel=pub_sub',
        'changed slot:terradart_google:GooglePubsubTopic.size: '
            'scalar|String| → scalar|int|',
      ],
    );
  });

  test('an optional slot turning required is breaking', () {
    expect(
      breaking(
        manifest(slots: [slot('name')]),
        manifest(slots: [slot('name', required: true)]),
      ),
      ['now required slot:terradart_google:GooglePubsubTopic.name'],
    );
  });

  test('a new required slot on an existing class is breaking', () {
    expect(
      breaking(manifest(), manifest(slots: [slot('name', required: true)])),
      ['new required slot:terradart_google:GooglePubsubTopic.name'],
    );
  });

  test('a required slot on a new class is not breaking', () {
    const before = MigrateManifest(
      package: 'terradart_google',
      entries: [],
      helpers: {},
      enums: {},
    );
    final after = manifest(slots: [slot('name', required: true)]);
    expect(breaking(before, after), isEmpty);
  });

  test('a removed sealed variant is breaking, an added one is not', () {
    MigrateManifest sealed(Map<String, String> v) =>
        manifest(slots: [slot('hop', variants: v)]);
    expect(
      breaking(sealed({'a': 'HopA'}), sealed({'a': 'HopA', 'b': 'HopB'})),
      isEmpty,
    );
    expect(
      breaking(sealed({'a': 'HopA', 'b': 'HopB'}), sealed({'a': 'HopA'})),
      ['removed variant:terradart_google:GooglePubsubTopic.hop/b'],
    );
  });

  test('the committed manifests produce a non-empty surface', () {
    final surface = apiSurface([
      googleMigrateManifest,
      googleBetaMigrateManifest,
    ]);
    expect(surface.keys, contains('class:terradart_google:GooglePubsubTopic'));
    expect(
      surface.keys.where((k) => k.startsWith('class:terradart_google_beta:')),
      isNotEmpty,
    );
  });

  test('lanes select their manifest through outputPackage', () {
    final yaml = File('tool/providers.yaml').readAsStringSync();
    final manifests = laneManifests(yaml, ['aws', 'cloudflare']);
    expect(
      [for (final m in manifests) m.package],
      ['terradart_aws', 'terradart_cloudflare'],
    );
    expect(() => laneManifests(yaml, ['nope']), throwsFormatException);
  });
}
