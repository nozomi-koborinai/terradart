// No two provider packages export a type of the same name from the barrels
// `terradart wrap` generates for them: the per-service barrels and the
// umbrella of every tool/providers.yaml lane. A Stack that imports both
// barrels and names such a type fails `dart analyze` with `ambiguous_import`.
//
// Only a package's own declarations count. A barrel that re-exports another
// package (`terradart_core`) passes on that package's type, not a second
// one. Hand-written libraries (`provider.dart`, `catalog.dart`) are not
// service barrels, and constants and functions are not types.

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_azure/netapp.dart';
import 'package:terradart_azure/provider.dart';
import 'package:terradart_google/netapp.dart';
import 'package:terradart_google/provider.dart';
import 'package:test/test.dart';

import 'type_name_length_test.dart' show lanePackages;

const _header = '// GENERATED FILE - DO NOT EDIT';
final _export = RegExp(r"^export\s+'([^']+)'([^;]*);", multiLine: true);
final _type = RegExp(
  r'^(?:(?:abstract|base|final|interface|sealed|mixin)\s+)*'
  r'(?:class|enum|mixin|typedef|extension\s+type(?:\s+const)?)\s+([A-Z]\w*)',
  multiLine: true,
);

/// The public types the library at [path] declares, plus those its exports
/// of files in the same package pass on.
Set<String> libraryTypes(String path, [Set<String>? visited]) {
  final seen = visited ?? <String>{};
  if (!seen.add(p.normalize(path))) return const {};
  final src = File(path).readAsStringSync();
  final out = {for (final m in _type.allMatches(src)) m[1]!};
  for (final m in _export.allMatches(src)) {
    final uri = m[1]!;
    if (uri.contains(':')) continue;
    final names = libraryTypes(p.join(p.dirname(path), uri), seen);
    final combinator = m[2]!.trim();
    if (combinator.isEmpty) {
      out.addAll(names);
    } else if (RegExp(r'^show\s+(.+)$', dotAll: true).firstMatch(combinator)
        case final show?) {
      final shown = show[1]!.split(',').map((n) => n.trim());
      out.addAll(names.intersection(shown.toSet()));
    } else {
      throw StateError('$path: export combinator not read: $combinator');
    }
  }
  return out;
}

/// Every type a generated barrel under `<root>/<package>/lib/` exports from
/// two or more of [packages], mapped to those barrels.
Map<String, List<String>> barrelTypeClashes(
  String root,
  List<String> packages,
) {
  final barrels = <String, Map<String, List<String>>>{};
  for (final package in packages) {
    final lib = Directory(p.join(root, package, 'lib'));
    final files =
        lib
            .listSync()
            .whereType<File>()
            .where(
              (f) =>
                  f.path.endsWith('.dart') &&
                  f.readAsStringSync().startsWith(_header),
            )
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    for (final f in files) {
      for (final name in libraryTypes(f.path)) {
        ((barrels[name] ??= {})[package] ??= []).add(
          '$package/${p.basename(f.path)}',
        );
      }
    }
  }
  return {
    for (final MapEntry(key: name, value: byPackage) in barrels.entries)
      if (byPackage.length > 1)
        name: [for (final files in byPackage.values) ...files],
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
        protocols: const [.nfsv3],
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

void main() {
  test('a type two packages declare in generated barrels clashes', () {
    final root = Directory.systemTemp.createTempSync('type_name_clash_');
    addTearDown(() => root.deleteSync(recursive: true));
    void write(String path, String src) => File(p.join(root.path, path))
      ..createSync(recursive: true)
      ..writeAsStringSync(src);

    write('pkg_a/lib/netapp.dart', '''
$_header
export 'package:terradart_core/terradart_core.dart';
export 'src/volume.dart' show Shared, OnlyA;
''');
    write('pkg_a/lib/src/volume.dart', '''
final class Shared {}
enum OnlyA { a }
extension type const Hidden._(String _) {}
const String kSource = 'a';
''');
    write('pkg_a/lib/provider.dart', 'final class Provider {}\n');
    write('pkg_b/lib/pkg_b.dart', '''
$_header
export 'netapp.dart';
''');
    write('pkg_b/lib/netapp.dart', '''
$_header
export 'src/volume.dart'
    show
        Hidden,
        Shared;
''');
    write('pkg_b/lib/src/volume.dart', '''
extension type const Shared._(String _) {}
sealed class Hidden {}
const String kSource = 'b';
''');
    write('pkg_b/lib/provider.dart', 'final class Provider {}\n');

    expect(barrelTypeClashes(root.path, ['pkg_a', 'pkg_b']), {
      'Shared': ['pkg_a/netapp.dart', 'pkg_b/netapp.dart', 'pkg_b/pkg_b.dart'],
    });
  });

  test('no two provider packages export one type name from a barrel', () {
    expect(
      barrelTypeClashes('packages', lanePackages()),
      isEmpty,
      reason:
          'a Stack that imports both barrels cannot name the type. Keep the '
          'published name and give the other type its own with the '
          "override's typeNames",
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
