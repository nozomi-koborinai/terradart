import 'dart:convert';
import 'dart:io';

import 'package:terradart_appwrite/auth.dart';
import 'package:terradart_appwrite/project.dart';
import 'package:terradart_appwrite/provider.dart';
import 'package:terradart_appwrite/src/_catalog.g.dart';
import 'package:terradart_appwrite/src/catalog_entry.dart';
import 'package:terradart_appwrite/storage.dart';
import 'package:test/test.dart';

final class _TestStack extends Stack {
  _TestStack()
    : super(
        providers: [
          const AppwriteProvider(
            endpoint: 'https://cloud.appwrite.io/v1',
            projectId: 'proj-1',
          ),
        ],
      ) {
    add(AppwriteProject('p', name: const TfArg.literal('demo')));
    add(AppwriteStorageBucket('b', name: const TfArg.literal('uploads')));
  }
}

final class _PermissionStack extends Stack {
  _PermissionStack()
    : super(providers: [const AppwriteProvider(endpoint: 'https://x/v1')]) {
    final team = add(
      AppwriteAuthTeam('editors', name: const .literal('editors')),
    );
    final user = add(AppwriteAuthUser('u'));
    add(
      AppwriteStorageBucket(
        'b',
        name: const .literal('uploads'),
        permissions: .literal([
          .read(.any),
          .read(.guests),
          .create(.users()),
          .create(.users(verified: false)),
          .update(.user(user.ref, verified: true)),
          .delete(.team(team.ref, role: 'owner')),
          .write(.team(.literal('t1'))),
          .read(.member('m1')),
          .read(.label('admin')),
          .literal('read("any")'),
        ]),
      ),
    );
  }
}

/// The lane's schema fixture in the monorepo: the pin and the full catalog
/// are both derived from it. CI runs this file from the package directory;
/// `dart test packages/terradart_appwrite/...` from the repo root uses the
/// other path.
String get _fixtureDir {
  const fromPackage = '../terradart_codegen/test/fixtures/wrap/source_appwrite';
  const fromRepo =
      'packages/terradart_codegen/test/fixtures/wrap/source_appwrite';
  if (File('$fromPackage/provider_version.txt').existsSync()) {
    return fromPackage;
  }
  return fromRepo;
}

Map<String, dynamic> _fixtureSchema() {
  final root =
      jsonDecode(File('$_fixtureDir/schema.json').readAsStringSync())
          as Map<String, dynamic>;
  return (root['provider_schemas'] as Map<String, dynamic>).values.single
      as Map<String, dynamic>;
}

Set<String> _catalogTypes(CatalogKind kind) => {
  for (final e in terradartCatalog.where((e) => e.kind == kind)) e.tfType,
};

void main() {
  test('synths the appwrite provider block and both resources', () {
    final json = _TestStack().synth().tfJson;

    final requiredProviders =
        ((json['terraform'] as Map<String, dynamic>)['required_providers']
                as Map<String, dynamic>)['appwrite']
            as Map<String, dynamic>;
    expect(requiredProviders['source'], 'appwrite/appwrite');
    expect(requiredProviders['version'], kAppwriteProviderVersionConstraint);
    expect(
      kAppwriteProviderVersionConstraint,
      File('$_fixtureDir/provider_version.txt').readAsStringSync().trim(),
    );

    final resources = json['resource'] as Map<String, dynamic>;
    expect(
      resources.keys,
      containsAll(['appwrite_project', 'appwrite_storage_bucket']),
    );
    // No provider meta-argument needed: appwrite_ implies the appwrite
    // provider (no prefix collision, unlike google-beta).
    final project =
        (resources['appwrite_project'] as Map<String, dynamic>)['p']
            as Map<String, dynamic>;
    expect(project.containsKey('provider'), isFalse);
  });

  test('catalog lists every resource and data source at the pin', () {
    final schema = _fixtureSchema();
    expect(
      _catalogTypes(CatalogKind.resource),
      (schema['resource_schemas'] as Map).keys.toSet(),
    );
    expect(
      _catalogTypes(CatalogKind.dataSource),
      (schema['data_source_schemas'] as Map).keys.toSet(),
    );
  });

  test('credentials cannot appear in synth output by construction', () {
    final json = _TestStack().synth().tfJson;
    final providerBlock =
        (json['provider'] as Map<String, dynamic>)['appwrite']
            as Map<String, dynamic>;
    expect(providerBlock.keys, isNot(contains('api_key')));
    expect(providerBlock.keys, isNot(contains('organization_api_key')));
    expect(providerBlock['endpoint'], 'https://cloud.appwrite.io/v1');
  });

  test('permissions synthesize to the provider strings', () {
    final bucket =
        ((_PermissionStack().synth().tfJson['resource']
                    as Map<String, dynamic>)['appwrite_storage_bucket']
                as Map<String, dynamic>)['b']
            as Map<String, dynamic>;
    expect(bucket['permissions'], [
      'read("any")',
      'read("guests")',
      'create("users")',
      'create("users/unverified")',
      r'update("user:${appwrite_auth_user.u.id}/verified")',
      r'delete("team:${appwrite_auth_team.editors.id}/owner")',
      'write("team:t1")',
      'read("member:m1")',
      'read("label:admin")',
      'read("any")',
    ]);
  });
}
