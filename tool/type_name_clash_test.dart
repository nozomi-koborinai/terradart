import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_appwrite/catalog.dart';
import 'package:terradart_aws/catalog.dart';
import 'package:terradart_azure/catalog.dart';
import 'package:terradart_azure/netapp.dart';
import 'package:terradart_azure/provider.dart';
import 'package:terradart_cloudflare/catalog.dart';
import 'package:terradart_google/catalog.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:terradart_google_beta/catalog.dart';
import 'package:terradart_google_beta/terradart_google_beta.dart';
import 'package:test/test.dart';

import 'doc_renames.dart' show entrypointNamespaces;
import 'type_name_length_test.dart' show lanePackages;

/// Each public name two of [packages] export from distinct declarations,
/// mapped to every `<package>/<library>` that exports it.
Map<String, List<String>> publicNameClashes(
  String root,
  List<String> packages,
) {
  final declarations = <String, Set<String>>{};
  final exporters = <String, Set<String>>{};
  final libraries = <String, Set<String>>{};
  final namespaces = entrypointNamespaces('.', [
    for (final package in packages) p.join(root, package),
  ]);
  for (final MapEntry(key: library, value: names) in namespaces.entries) {
    final [package, _, ...path] = p.split(
      p.relative(library, from: p.absolute(root)),
    );
    for (final MapEntry(key: name, value: file) in names.entries) {
      (declarations[name] ??= {}).add(file);
      (exporters[name] ??= {}).add(package);
      (libraries[name] ??= {}).add(p.posix.joinAll([package, ...path]));
    }
  }
  return {
    for (final MapEntry(key: name, value: files) in declarations.entries)
      if (files.length > 1 && exporters[name]!.length > 1)
        name: libraries[name]!.toList()..sort(),
  };
}

final class _NetappStack extends Stack {
  _NetappStack()
    : super(
        providers: const [
          GoogleProvider(project: 'ci-test-project-id'),
          AzureProvider(),
        ],
      ) {
    add(
      GoogleNetappVolume(
        'shared',
        name: const .literal('shared'),
        location: const .literal('us-central1'),
        storagePool: const .literal('terradart-pool'),
        capacityGib: const .literal('100'),
        protocols: const .literal([.nfsv3]),
        shareName: const .literal('shared'),
        securityStyle: NetappVolumeSecurityStyle.unix,
        tieringPolicy: const NetappVolumeTieringPolicy(tierAction: .enabled),
      ),
    );
    add(
      AzurermNetappVolume(
        'shared',
        accountName: const .literal('terradart-account'),
        location: const .literal('westeurope'),
        name: const .literal('shared'),
        poolName: const .literal('terradart-pool'),
        resourceGroupName: .literal('terradart-rg'),
        serviceLevel: .standard,
        storageQuotaInGb: const .literal(100),
        subnetId: .literal('netapp-subnet-id'),
        volumePath: const .literal('shared'),
        securityStyle: AzurermNetappVolumeSecurityStyle.unix,
        coolAccess: const NetappVolumeCoolAccess(
          coolnessPeriodInDays: .literal(7),
          retrievalPolicy: .defaultCase,
          tieringPolicy: AzurermNetappVolumeTieringPolicy.auto,
        ),
      ),
    );
  }
}

final class _BetaStack extends Stack {
  _BetaStack()
    : super(
        providers: const [
          GoogleProvider(project: 'ci-test-project-id'),
          GoogleBetaProvider(project: 'ci-test-project-id'),
        ],
      ) {
    add(
      GoogleProjectServiceIdentity(
        'cloudasset',
        service: const .literal('cloudasset.googleapis.com'),
      ),
    );
  }
}

void main() {
  test('google-beta comes from terradart_google_beta next to google', () {
    final json = _BetaStack().synth().tfJson;
    final providers =
        (json['terraform'] as Map<String, dynamic>)['required_providers']
            as Map<String, dynamic>;
    expect(providers['google-beta'], {
      'source': kBetaProviderSource,
      'version': kBetaProviderVersionConstraint,
    });
    expect(kBetaProviderSource, 'hashicorp/google-beta');
    final identity =
        ((json['resource']
                    as Map<String, dynamic>)['google_project_service_identity']
                as Map<String, dynamic>)['cloudasset']
            as Map<String, dynamic>;
    expect(identity['provider'], 'google-beta');
  });

  test('every provider catalog imports into one library', () {
    final catalogs = <(String, List<CatalogEntry>)>[
      ('google_', terradartGoogleCatalog),
      ('google_', terradartGoogleBetaCatalog),
      ('aws_', terradartAwsCatalog),
      ('azurerm_', terradartAzureCatalog),
      ('cloudflare_', terradartCloudflareCatalog),
      ('appwrite_', terradartAppwriteCatalog),
    ];
    for (final (prefix, catalog) in catalogs) {
      expect(
        catalog.where((e) => e.kind == CatalogKind.resource),
        isNotEmpty,
        reason: prefix,
      );
      expect(
        catalog.where((e) => !e.tfType.startsWith(prefix)),
        isEmpty,
        reason: prefix,
      );
    }
    expect(
      terradartGoogleBetaCatalog.map((e) => e.tfType),
      contains('google_project_service_identity'),
    );
  });

  test('a public name two packages declare apart clashes', () {
    final root = Directory.systemTemp.createTempSync('type_name_clash_');
    addTearDown(() => root.deleteSync(recursive: true));
    void write(String path, String src) => File(p.join(root.path, path))
      ..createSync(recursive: true)
      ..writeAsStringSync(src);

    write('pkg_a/lib/netapp.dart', '''
export 'package:terradart_core/terradart_core.dart';
export 'src/volume.dart' show Shared, OnlyA, kSource, sharedHelper;
''');
    write('pkg_a/lib/src/volume.dart', '''
final class Shared {}
enum OnlyA { a }
extension type const Hidden._(String _) {}
typedef Alias = int;
const String kSource = 'a';
void sharedHelper() {}
''');
    write('pkg_a/lib/provider.dart', '''
export 'src/volume.dart' show Alias;
final class Provider {}
''');
    write('pkg_b/lib/pkg_b.dart', "export 'netapp.dart';\n");
    write('pkg_b/lib/netapp.dart', '''
export 'package:terradart_core/terradart_core.dart' show Stack;
export 'src/volume.dart'
    show
        Hidden,
        Shared;
''');
    write('pkg_b/lib/src/volume.dart', '''
extension type const Shared._(String _) {}
sealed class Hidden {}
enum OnlyA { b }
typedef Alias = String;
const String kSource = 'b';
int sharedHelper() => 0;
''');
    write('pkg_b/lib/provider.dart', '''
export 'src/volume.dart' show Alias, kSource, sharedHelper;
final class Provider {}
''');

    expect(publicNameClashes(root.path, ['pkg_a', 'pkg_b']), {
      'Alias': ['pkg_a/provider.dart', 'pkg_b/provider.dart'],
      'Provider': ['pkg_a/provider.dart', 'pkg_b/provider.dart'],
      'Shared': ['pkg_a/netapp.dart', 'pkg_b/netapp.dart', 'pkg_b/pkg_b.dart'],
      'kSource': ['pkg_a/netapp.dart', 'pkg_b/provider.dart'],
      'sharedHelper': ['pkg_a/netapp.dart', 'pkg_b/provider.dart'],
    });
  });

  test('no two provider packages export one public name', () {
    expect(
      publicNameClashes('packages', [...lanePackages(), 'terradart_time']),
      isEmpty,
      reason:
          'a Stack that imports both libraries cannot name it. Keep the '
          'published name and rename the other: a generated type with its '
          "override's typeNames, anything else in its hand-written source",
    );
  });

  test('the google and azure NetApp volumes share one library', () {
    final resources =
        _NetappStack().synth().tfJson['resource'] as Map<String, dynamic>;
    final google =
        (resources['google_netapp_volume'] as Map<String, dynamic>)['shared']
            as Map<String, dynamic>;
    final azure =
        (resources['azurerm_netapp_volume'] as Map<String, dynamic>)['shared']
            as Map<String, dynamic>;
    expect(google['security_style'], 'UNIX');
    expect(google['tiering_policy'], {'tier_action': 'ENABLED'});
    expect(azure['security_style'], 'unix');
    expect(azure['cool_access'], {
      'coolness_period_in_days': 7,
      'retrieval_policy': 'Default',
      'tiering_policy': 'Auto',
    });
  });
}
