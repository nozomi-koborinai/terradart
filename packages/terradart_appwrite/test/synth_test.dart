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
    add(AppwriteProject('p', name: TfArg.literal('demo')));
    add(AppwriteStorageBucket('b', name: TfArg.literal('uploads')));
  }
}

final class _PermissionStack extends Stack {
  _PermissionStack()
    : super(providers: [const AppwriteProvider(endpoint: 'https://x/v1')]) {
    final team = add(AppwriteAuthTeam('editors', name: .literal('editors')));
    final user = add(AppwriteAuthUser('u'));
    add(
      AppwriteStorageBucket(
        'b',
        name: .literal('uploads'),
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

void main() {
  test('synths the appwrite provider block and both resources', () {
    final json = _TestStack().synth().tfJson;

    final requiredProviders =
        ((json['terraform'] as Map<String, dynamic>)['required_providers']
                as Map<String, dynamic>)['appwrite']
            as Map<String, dynamic>;
    expect(requiredProviders['source'], 'appwrite/appwrite');
    expect(requiredProviders['version'], kAppwriteProviderVersionConstraint);

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

  test('catalog lists every factory at the current pin', () {
    expect(
      terradartCatalog.where((e) => e.kind == CatalogKind.resource).length,
      38,
    );
    expect(
      terradartCatalog.where((e) => e.kind == CatalogKind.dataSource).length,
      24,
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
