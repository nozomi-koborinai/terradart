/// Hand-written manifest for `terradart_time`, the one provider package
/// `terradart wrap` does not generate.
library;

import '../migrate_manifest.dart';

/// `TimeSleep` (`time_sleep`), the API-propagation wait every quickstart
/// uses. Its provider, `TimeProvider`, is a provider recipe in the emitter.
const MigrateManifest timeMigrateManifest = MigrateManifest(
  package: 'terradart_time',
  entries: <MigrateEntry>[
    MigrateEntry(
      tfType: 'time_sleep',
      className: 'TimeSleep',
      barrel: 'terradart_time',
      kind: CatalogKind.resource,
      slots: <MigrateSlot>[
        MigrateSlot(
          tfName: 'create_duration',
          dartName: 'createDuration',
          kind: MigrateSlotKind.scalar,
          required: true,
          dartType: 'String',
        ),
        MigrateSlot(
          tfName: 'destroy_duration',
          dartName: 'destroyDuration',
          kind: MigrateSlotKind.scalar,
          required: false,
          dartType: 'String',
        ),
        MigrateSlot(
          tfName: 'triggers',
          dartName: 'triggers',
          kind: MigrateSlotKind.scalar,
          required: false,
          dartType: 'Map<String, String>',
        ),
      ],
      getters: <MigrateGetter>[
        MigrateGetter(tfName: 'id', dartName: 'id', dartType: 'String'),
      ],
    ),
  ],
  helpers: <String, MigrateHelper>{},
  enums: <String, MigrateEnum>{},
);
