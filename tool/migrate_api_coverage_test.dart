import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'migrate_api_coverage.dart';

const _enum = '''
extension type const Tier._(TfArg<String> _) implements TfArg<String> {
  static const basic = Tier._(TfArgLiteral('BASIC'));
  static const premium = Tier._(TfArgLiteral('PREMIUM'));
  static const List<Tier> values = [basic, premium];
}
''';

const _sealed = '''
sealed class Source {
  const Source();
  const factory Source.image(TfArg<String> image) = SourceImage;
  const factory Source.disk(TfArg<String> disk) = SourceDisk;
}
final class SourceImage extends Source {
  const SourceImage(this.image);
  final TfArg<String> image;
}
final class SourceDisk extends Source {
  const SourceDisk(this.disk);
  final TfArg<String> disk;
}
''';

String _factory(String params) =>
    '''
final class GoogleThing extends Resource {
  GoogleThing(super.localName, {$params, super.lifecycle});
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');
}
''';

MigrateManifest _manifest(
  List<MigrateSlot> slots, {
  List<MigrateGetter> getters = const [
    MigrateGetter(tfName: 'name', dartName: 'name', dartType: 'String'),
  ],
  Map<String, String> tier = const {'BASIC': 'basic', 'PREMIUM': 'premium'},
}) => MigrateManifest(
  package: 'terradart_test',
  entries: [
    MigrateEntry(
      tfType: 'google_thing',
      className: 'GoogleThing',
      barrel: 'thing',
      kind: CatalogKind.resource,
      slots: slots,
      getters: getters,
    ),
  ],
  helpers: const {
    'SourceImage': MigrateHelper(
      className: 'SourceImage',
      shorthand: 'image',
      slots: [
        MigrateSlot(
          tfName: 'image',
          dartName: 'image',
          kind: MigrateSlotKind.scalar,
          required: true,
          positional: true,
          dartType: 'String',
        ),
      ],
    ),
    'SourceDisk': MigrateHelper(
      className: 'SourceDisk',
      shorthand: 'disk',
      slots: [
        MigrateSlot(
          tfName: 'disk',
          dartName: 'disk',
          kind: MigrateSlotKind.scalar,
          required: true,
          positional: true,
          dartType: 'String',
        ),
      ],
    ),
  },
  enums: {'Tier': MigrateEnum(name: 'Tier', members: tier)},
);

const _tierSlot = MigrateSlot(
  tfName: 'tier',
  dartName: 'tier',
  kind: MigrateSlotKind.enumValue,
  required: false,
  dartType: 'Tier',
);

const _tiersSlot = MigrateSlot(
  tfName: 'tiers',
  dartName: 'tiers',
  kind: MigrateSlotKind.enumValue,
  required: false,
  repeated: true,
  dartType: 'Tier',
);

const _sourceSlot = MigrateSlot(
  tfName: '',
  dartName: 'source',
  kind: MigrateSlotKind.sealed,
  required: true,
  merged: true,
  variants: {'image': 'SourceImage', 'disk': 'SourceDisk'},
);

const _networkSlot = MigrateSlot(
  tfName: 'network',
  dartName: 'network',
  kind: MigrateSlotKind.reference,
  required: false,
  dartType: 'GoogleComputeNetwork',
  attribute: 'id',
);

const _params =
    'Tier? tier, EnumList<Tier>? tiers, required Source source, '
    'RefTo<GoogleComputeNetwork>? network';

List<String> _findings(
  String params,
  List<MigrateSlot> slots, {
  List<MigrateGetter>? getters,
  Map<String, String>? tier,
  Map<String, String> debt = const {},
  Set<String>? usedDebt,
}) => coverageFindings(
  getters == null && tier == null
      ? _manifest(slots)
      : _manifest(
          slots,
          getters:
              getters ??
              const [
                MigrateGetter(
                  tfName: 'name',
                  dartName: 'name',
                  dartType: 'String',
                ),
              ],
          tier: tier ?? const {'BASIC': 'basic', 'PREMIUM': 'premium'},
        ),
  WrapperApi.parse([_enum, _sealed, _factory(params)]),
  debt: debt,
  usedDebt: usedDebt,
);

void main() {
  group('every provider package', () {
    final debt = loadMigrateManifestDebt(File(migrateManifestDebtPath));
    final used = <String>{};
    for (final manifest in allMigrateManifests) {
      test('${manifest.package}: the manifest builds every typed input', () {
        final api = WrapperApi.readPackage(
          Directory.current.path,
          manifest.package,
        );
        final findings = coverageFindings(
          manifest,
          api,
          debt: debt,
          usedDebt: used,
        );
        expect(findings, isEmpty, reason: findings.join('\n'));
      });
    }
    test('$migrateManifestDebtPath has no stale line', () {
      final stale = debt.keys.where((t) => !used.contains(t)).toList();
      expect(
        stale,
        isEmpty,
        reason: 'these types reach no manual shape any more; delete them',
      );
    });
  });

  group('seeded failures', () {
    const slots = [_tierSlot, _tiersSlot, _sourceSlot, _networkSlot];

    test('a manifest that matches the package has no finding', () {
      expect(_findings(_params, slots), isEmpty);
    });

    test('an enum input the manifest builds as a string', () {
      final findings = _findings(_params, [
        const MigrateSlot(
          tfName: 'tier',
          dartName: 'tier',
          kind: MigrateSlotKind.scalar,
          required: false,
          dartType: 'String',
        ),
        _tiersSlot,
        _sourceSlot,
        _networkSlot,
      ]);
      expect(findings.single, contains('GoogleThing.tier (Tier?): an enum'));
    });

    test('an EnumList input the manifest builds as a bare list', () {
      final findings = _findings(_params, [
        _tierSlot,
        const MigrateSlot(
          tfName: 'tiers',
          dartName: 'tiers',
          kind: MigrateSlotKind.enumValue,
          required: false,
          repeated: true,
          wrapped: false,
          dartType: 'Tier',
        ),
        _sourceSlot,
        _networkSlot,
      ]);
      expect(findings.single, contains('an EnumList'));
    });

    test('a bare List of enum members in the package', () {
      final findings = _findings(
        'Tier? tier, List<Tier>? tiers, required Source source, '
        'RefTo<GoogleComputeNetwork>? network',
        slots,
      );
      expect(findings.single, contains('a bare List of enum members'));
    });

    test('a sealed choice missing a variant', () {
      final findings = _findings(_params, [
        _tierSlot,
        _tiersSlot,
        const MigrateSlot(
          tfName: '',
          dartName: 'source',
          kind: MigrateSlotKind.sealed,
          required: true,
          merged: true,
          variants: {'image': 'SourceImage'},
        ),
        _networkSlot,
      ]);
      expect(findings.single, contains('sealed variants'));
    });

    test('a RefTo input the manifest builds as a string', () {
      final findings = _findings(_params, [
        _tierSlot,
        _tiersSlot,
        _sourceSlot,
        const MigrateSlot(
          tfName: 'network',
          dartName: 'network',
          kind: MigrateSlotKind.scalar,
          required: false,
          dartType: 'String',
        ),
      ]);
      expect(findings.single, contains('a RefTo<GoogleComputeNetwork>'));
    });

    test('an IAM principal list the manifest builds as a string list', () {
      final findings =
          _findings('$_params, TfArg<List<IamPrincipal>>? members', [
            ...slots,
            const MigrateSlot(
              tfName: 'members',
              dartName: 'members',
              kind: MigrateSlotKind.scalar,
              required: false,
              repeated: true,
              dartType: 'String',
            ),
          ]);
      expect(findings.single, contains('an IAM principal (IamPrincipal)'));
    });

    test('a principal getter the manifest does not flag', () {
      final api = WrapperApi.parse([
        _enum,
        _sealed,
        _factory(_params).replaceFirst(
          'TfRef<String> get name',
          "IamPrincipal get principal => IamPrincipal.arg(member);\n"
              '  TfRef<String> get name',
        ),
      ]);
      final findings = coverageFindings(_manifest(slots), api);
      expect(findings.single, contains('GoogleThing.principal'));
    });

    test('a typed input with no manifest slot', () {
      final findings = _findings(_params, [_tiersSlot, _sourceSlot]);
      expect(findings, hasLength(2));
      expect(findings.first, contains('no manifest slot builds it'));
    });

    test('a manual slot fails unless the ledger names its type', () {
      const manual = MigrateSlot(
        tfName: 'tier',
        dartName: 'tier',
        kind: MigrateSlotKind.manual,
        required: false,
        reason: 'spread-merged enum',
      );
      final withManual = [manual, _tiersSlot, _sourceSlot, _networkSlot];
      expect(
        _findings(_params, withManual).single,
        contains('manual, spread-merged enum'),
      );
      final used = <String>{};
      expect(
        _findings(
          _params,
          withManual,
          debt: const {'google_thing': 'deliberate'},
          usedDebt: used,
        ),
        isEmpty,
      );
      expect(used, {'google_thing'});
    });

    test('an output getter the manifest does not record', () {
      final findings = _findings(_params, slots, getters: const []);
      expect(findings.single, contains('GoogleThing.name: output getter'));
    });

    test('an enum whose members differ from the package', () {
      final findings = _findings(
        _params,
        slots,
        tier: const {'BASIC': 'basic'},
      );
      expect(findings.single, startsWith('enum Tier:'));
    });
  });
}
