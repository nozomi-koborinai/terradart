/// Every input a provider marks sensitive takes `Sensitive<T>`, the argument
/// type without `.literal`: synth rejects a literal at a sensitive path
/// (`SensitiveLiteral`), so the type makes that a compile error instead.
///
/// For each lane, every sensitive path of every resource in the catalog is
/// followed through the migration manifest to the Dart parameter it lands
/// on, and that parameter's declared type is read from the package source.
@Timeout(Duration(minutes: 5))
library;

import 'dart:io';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:terradart_appwrite/catalog.dart' as appwrite;
import 'package:terradart_aws/catalog.dart' as aws;
import 'package:terradart_azure/catalog.dart' as azure;
import 'package:terradart_cloudflare/catalog.dart' as cloudflare;
import 'package:terradart_google/catalog.dart' as google;
import 'package:terradart_google_beta/catalog.dart' as beta;
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

/// Where a sensitive Terraform path lands in the Dart API: the parameter
/// [dartName] of [owner] (a factory or helper class), held by [slot].
typedef SensitiveInput = ({String owner, String dartName, MigrateSlot slot});

/// The inputs [path] (a sensitive path, split on `.`) reaches through
/// [slots] of [owner]. A path no input reaches is output-only.
Iterable<SensitiveInput> inputsAt(
  MigrateManifest manifest,
  String owner,
  List<MigrateSlot> slots,
  List<String> path,
) sync* {
  for (final slot in slots) {
    if (slot.merged) {
      yield* _into(manifest, slot, path);
      continue;
    }
    final key = slot.tfName.split('.');
    if (path.length < key.length) continue;
    if (!_startsWith(path, key)) continue;
    var rest = path.sublist(key.length);
    // A map block's sensitive paths name its entries `*`; the keyed slot's
    // map key stands for it.
    if (slot.keyed && rest.firstOrNull == '*') rest = rest.sublist(1);
    if (rest.isEmpty || slot.kind == MigrateSlotKind.passthrough) {
      yield (owner: owner, dartName: slot.dartName, slot: slot);
    } else {
      yield* _into(manifest, slot, rest);
    }
  }
}

Iterable<SensitiveInput> _into(
  MigrateManifest manifest,
  MigrateSlot slot,
  List<String> path,
) sync* {
  switch (slot.kind) {
    case MigrateSlotKind.helper:
      final helper = manifest.helpers[slot.helper]!;
      yield* inputsAt(manifest, helper.className, helper.slots, path);
    case MigrateSlotKind.sealed:
      for (final MapEntry(:key, value: variant) in slot.variants!.entries) {
        final helper = manifest.helpers[variant]!;
        final writesKey = helper.slots.any(
          (s) => s.tfName == key || s.tfName.startsWith('$key.'),
        );
        if (writesKey) {
          yield* inputsAt(manifest, variant, helper.slots, path);
        } else if (path.first == key) {
          yield* inputsAt(manifest, variant, helper.slots, path.sublist(1));
        }
      }
    default:
      break;
  }
}

bool _startsWith(List<String> path, List<String> prefix) {
  for (var i = 0; i < prefix.length; i++) {
    if (path[i] != prefix[i]) return false;
  }
  return true;
}

/// Declared parameter types of every class constructor under
/// `packages/<package>/lib/src`, as `Class.param` → type source.
Map<String, String> declaredParameterTypes(String package) {
  final out = <String, String>{};
  for (final file
      in Directory('packages/$package/lib/src')
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('.dart'))) {
    final unit = parseString(content: file.readAsStringSync()).unit;
    for (final cls in unit.declarations.whereType<ClassDeclaration>()) {
      final name = cls.namePart.typeName.lexeme;
      final fields = <String, String>{
        for (final member in cls.body.members.whereType<FieldDeclaration>())
          for (final v in member.fields.variables)
            v.name.lexeme: member.fields.type?.toSource() ?? '',
      };
      for (final ctor in cls.body.members.whereType<ConstructorDeclaration>()) {
        if (ctor.factoryKeyword != null) continue;
        for (final p in ctor.parameters.parameters) {
          final param = p.name!.lexeme;
          out['$name.$param'] = p.type?.toSource() ?? fields[param] ?? '';
        }
      }
    }
  }
  return out;
}

/// Why [input] still takes a `.literal(...)`, or `null` when it does not.
String? literalLeak(SensitiveInput input, Map<String, String> types) {
  final slot = input.slot;
  return switch (slot.kind) {
    MigrateSlotKind.reference => 'RefTo<${slot.dartType}> has .literal',
    MigrateSlotKind.passthrough => 'a raw ${slot.dartType} block',
    MigrateSlotKind.scalar || MigrateSlotKind.enumValue =>
      switch (types['${input.owner}.${input.dartName}']) {
        final type? when type.startsWith('Sensitive<') => null,
        final type => '$type has .literal',
      },
    _ => '${slot.kind.name} slot',
  };
}

final _catalogs = <String, List<google.CatalogEntry>>{
  'terradart_google': google.terradartGoogleCatalog,
  'terradart_google_beta': beta.terradartGoogleBetaCatalog,
  'terradart_appwrite': appwrite.terradartAppwriteCatalog,
  'terradart_cloudflare': cloudflare.terradartCloudflareCatalog,
  'terradart_aws': aws.terradartAwsCatalog,
  'terradart_azure': azure.terradartAzureCatalog,
};

void main() {
  for (final MapEntry(key: package, value: catalog) in _catalogs.entries) {
    test('$package: no sensitive input takes .literal', () {
      final manifest = manifestForPackage(package)!;
      final types = declaredParameterTypes(package);
      final leaks = <String>[];
      for (final e in catalog) {
        if (e.kind != CatalogKind.resource) continue;
        final entry = manifest.entryFor(e.tfType, e.kind)!;
        for (final path in e.sensitiveFields) {
          for (final input in inputsAt(
            manifest,
            entry.className,
            entry.slots,
            path.split('.'),
          )) {
            if (literalLeak(input, types) case final why?) {
              leaks.add(
                '${e.tfType} $path: ${input.owner}.${input.dartName} — $why',
              );
            }
          }
        }
      }
      expect(leaks, isEmpty);
    });
  }

  test('a keyed map block reaches the helper input under its key', () {
    final manifest = manifestForPackage('terradart_cloudflare')!;
    final entry = manifest.entryFor(
      'cloudflare_pages_project',
      CatalogKind.resource,
    )!;
    final found = inputsAt(
      manifest,
      entry.className,
      entry.slots,
      'deployment_configs.preview.env_vars.*.value'.split('.'),
    );
    expect(
      [for (final i in found) '${i.owner}.${i.dartName}'],
      ['PagesProjectEnvVars.value'],
    );
  });
}
