import 'dart:convert';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// A `RefTo<GoogleXNetwork>` argument that emits `self_link`, and a list of
// them, on a made-up resource; the network has a data source twin.
const _manifest = MigrateManifest(
  package: 'terradart_google',
  entries: [
    MigrateEntry(
      tfType: 'google_x_network',
      className: 'GoogleXNetwork',
      barrel: 'x',
      kind: CatalogKind.resource,
      slots: [
        MigrateSlot(
          tfName: 'name',
          dartName: 'name',
          kind: MigrateSlotKind.scalar,
          required: true,
          dartType: 'String',
        ),
      ],
      getters: [
        MigrateGetter(tfName: 'id', dartName: 'id', dartType: 'String'),
        MigrateGetter(
          tfName: 'self_link',
          dartName: 'selfLink',
          dartType: 'String',
        ),
      ],
    ),
    MigrateEntry(
      tfType: 'google_x_network',
      className: 'DataGoogleXNetwork',
      barrel: 'x',
      kind: CatalogKind.dataSource,
      slots: [
        MigrateSlot(
          tfName: 'name',
          dartName: 'name',
          kind: MigrateSlotKind.scalar,
          required: true,
          dartType: 'String',
        ),
      ],
      getters: [
        MigrateGetter(
          tfName: 'self_link',
          dartName: 'selfLink',
          dartType: 'String',
        ),
      ],
    ),
    MigrateEntry(
      tfType: 'google_x_bucket',
      className: 'GoogleXBucket',
      barrel: 'x',
      kind: CatalogKind.resource,
      slots: [
        MigrateSlot(
          tfName: 'name',
          dartName: 'name',
          kind: MigrateSlotKind.scalar,
          required: true,
          dartType: 'String',
        ),
      ],
      getters: [
        MigrateGetter(tfName: 'id', dartName: 'id', dartType: 'String'),
      ],
    ),
    MigrateEntry(
      tfType: 'google_x_vm',
      className: 'GoogleXVm',
      barrel: 'x',
      kind: CatalogKind.resource,
      slots: [
        MigrateSlot(
          tfName: 'network',
          dartName: 'network',
          kind: MigrateSlotKind.reference,
          required: false,
          dartType: 'GoogleXNetwork',
          attribute: 'self_link',
        ),
        MigrateSlot(
          tfName: 'networks',
          dartName: 'networks',
          kind: MigrateSlotKind.reference,
          required: false,
          repeated: true,
          dartType: 'GoogleXNetwork',
          attribute: 'self_link',
        ),
        MigrateSlot(
          tfName: 'zone',
          dartName: 'zone',
          kind: MigrateSlotKind.scalar,
          required: false,
          dartType: 'String',
          defaultsFrom: 'network',
        ),
      ],
      getters: [],
    ),
  ],
  helpers: {},
  enums: {},
);

const _google = {
  'required_providers': {
    'google': {'source': 'hashicorp/google', 'version': '~> 8.0'},
  },
};

MigrationResult _migrate(
  Map<String, Object?> vm, {
  Map<String, Object?> variables = const {},
}) => migrateModule(
  TfModule.fromTfJson(
    jsonEncode({
      'terraform': _google,
      if (variables.isNotEmpty) 'variable': variables,
      'resource': {
        'google_x_network': {
          'main': {'name': 'main'},
        },
        'google_x_bucket': {
          'b': {'name': 'b'},
        },
        'google_x_vm': {'vm': vm},
      },
      'data': {
        'google_x_network': {
          'shared': {'name': 'shared'},
        },
      },
    }),
    fileName: 'main.tf.json',
  ),
  name: 'demo',
  format: false,
  manifests: const [_manifest],
);

String _stack(MigrationResult r) {
  expect(
    r.report.migratedAddresses,
    contains('google_x_vm.vm'),
    reason: r.report.kept.map((k) => '${k.address}: ${k.reason}').join('\n'),
  );
  return r.files['lib/demo_stack.dart']!;
}

void main() {
  group('a key the reference fills', () {
    test('is left out when the source reads it off the same block', () {
      final r = _migrate({
        'network': r'${google_x_network.main.self_link}',
        'zone': r'${google_x_network.main.zone}',
      });
      expect(_stack(r), contains('network: main.ref'));
      expect(_stack(r), isNot(contains('zone:')));
    });

    test('stays when it is a literal or reads another block', () {
      final literal = _migrate({
        'network': r'${google_x_network.main.self_link}',
        'zone': 'us-central1-a',
      });
      expect(_stack(literal), contains("zone: .literal('us-central1-a')"));
      final other = _migrate({
        'network': r'${google_x_network.main.self_link}',
        'zone': r'${google_x_bucket.b.zone}',
      });
      expect(
        _stack(other),
        contains("zone: TfRef.attribute<String>(b, 'zone')"),
      );
    });

    test('stays when the reference is not a migrated block', () {
      final r = _migrate({
        'network': 'projects/p/global/networks/n',
        'zone': r'${google_x_network.main.zone}',
      });
      expect(
        _stack(r),
        contains("zone: TfRef.attribute<String>(main, 'zone')"),
      );
    });
  });

  group('a reference slot', () {
    test("takes the block's ref when it reads the attribute it emits", () {
      final r = _migrate({'network': r'${google_x_network.main.self_link}'});
      expect(_stack(r), contains('network: main.ref'));
      expect(_stack(r), isNot(contains('pinned')));
    });

    test('pins another attribute of the same block', () {
      final r = _migrate({'network': r'${google_x_network.main.id}'});
      expect(_stack(r), contains("network: main.ref.pinned('id')"));
    });

    test("takes a data source's ref when it reads the same type", () {
      final r = _migrate({
        'network': r'${data.google_x_network.shared.self_link}',
      });
      expect(_stack(r), contains('network: shared.ref'));
    });

    test('keeps a block of another type as an unchecked arg, warning', () {
      final r = _migrate({'network': r'${google_x_bucket.b.id}'});
      expect(_stack(r), contains('network: .arg(b.id)'));
      expect(
        r.report.warnings,
        contains(
          contains('names a GoogleXNetwork but reads google_x_bucket.b'),
        ),
      );
    });

    test('takes a literal, a variable and an expression', () {
      expect(
        _stack(_migrate({'network': 'default'})),
        contains("network: .literal('default')"),
      );
      expect(
        _stack(
          _migrate(
            {'network': r'${var.network}'},
            variables: {
              'network': {'type': 'string'},
            },
          ),
        ),
        contains('network: .arg(network)'),
      );
      expect(
        _stack(
          _migrate({
            'network':
                r'projects/p/global/networks/${google_x_network.main.name}',
          }),
        ),
        contains('network: .expression('),
      );
    });

    test('keeps a non-string value in Terraform', () {
      final r = _migrate({'network': 42});
      expect(
        r.report.kept.singleWhere((k) => k.address == 'google_x_vm.vm').reason,
        contains('expects a reference to a GoogleXNetwork but is a number'),
      );
    });
  });

  group('a repeated reference slot', () {
    test('takes a literal list element by element', () {
      final r = _migrate({
        'networks': [
          r'${google_x_network.main.self_link}',
          r'${google_x_network.main.id}',
          'default',
        ],
      });
      expect(
        _stack(r),
        contains(
          "networks: .literal([main.ref, main.ref.pinned('id'), "
          ".literal('default')])",
        ),
      );
    });

    test('takes a whole-list variable or expression', () {
      expect(
        _stack(
          _migrate(
            {'networks': r'${var.networks}'},
            variables: {
              'networks': {'type': 'list(string)'},
            },
          ),
        ),
        contains("networks: .variable('networks')"),
      );
      expect(
        _stack(_migrate({'networks': r'${concat([], [])}'})),
        contains('networks: .expression('),
      );
    });
  });
}
