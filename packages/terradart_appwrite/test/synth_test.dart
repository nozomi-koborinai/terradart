import 'package:terradart_appwrite/project.dart';
import 'package:terradart_appwrite/provider.dart';
import 'package:terradart_appwrite/storage.dart';
import 'package:terradart_core/terradart_core.dart';
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
    add(
      AppwriteProject(localName: 'p', name: TfArg.literal('demo')),
    );
    add(
      AppwriteStorageBucket(localName: 'b', name: TfArg.literal('uploads')),
    );
  }
}

void main() {
  test('synths the appwrite provider block and both resources', () {
    final json = _TestStack().synth().tfJson;

    final requiredProviders =
        ((json['terraform'] as Map<String, dynamic>)['required_providers']
            as Map<String, dynamic>)['appwrite'] as Map<String, dynamic>;
    expect(requiredProviders['source'], 'appwrite/appwrite');
    expect(requiredProviders['version'], kAppwriteProviderVersionConstraint);

    final resources = json['resource'] as Map<String, dynamic>;
    expect(resources.keys,
        containsAll(['appwrite_project', 'appwrite_storage_bucket']));
    // No provider meta-argument needed: appwrite_ implies the appwrite
    // provider (no prefix collision, unlike google-beta).
    final project = (resources['appwrite_project'] as Map<String, dynamic>)['p']
        as Map<String, dynamic>;
    expect(project.containsKey('provider'), isFalse);
  });

  test('credentials cannot appear in synth output by construction', () {
    final json = _TestStack().synth().tfJson;
    final providerBlock = (json['provider'] as Map<String, dynamic>)['appwrite']
        as Map<String, dynamic>;
    expect(providerBlock.keys, isNot(contains('api_key')));
    expect(providerBlock.keys, isNot(contains('organization_api_key')));
    expect(providerBlock['endpoint'], 'https://cloud.appwrite.io/v1');
  });
}
