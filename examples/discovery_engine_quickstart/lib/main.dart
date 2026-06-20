/// Discovery Engine quickstart — data store, search engine, IAM member.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/discovery_engine.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

String _iamPolicyDataJson({
  required String role,
  required String member,
}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

final class DiscoveryEngineCatalogStack extends Stack {
  DiscoveryEngineCatalogStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.discoveryEngine],
      propagationDelay: const Duration(seconds: 90),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'search_reader',
        accountId: TfArg.literal('vertex-search-reader'),
        displayName: TfArg.literal('Vertex AI Search reader'),
      ),
    );

    final dataStore = add(
      GoogleDiscoveryEngineDataStore(
        localName: 'docs_store',
        location: TfArg.literal('global'),
        dataStoreId: TfArg.literal('terradart-search-docs'),
        displayName: TfArg.literal('Quickstart documents'),
        industryVertical: TfArg.literal(
          DiscoveryEngineDataStoreIndustryVertical.generic,
        ),
        contentConfig: TfArg.literal(
          DiscoveryEngineDataStoreContentConfig.noContent,
        ),
        solutionTypes: TfArg.literal(['SOLUTION_TYPE_SEARCH']),
        dependsOn: apiDeps,
      ),
    );

    final searchEngine = add(
      GoogleDiscoveryEngineSearchEngine(
        localName: 'site_search',
        location: TfArg.literal('global'),
        collectionId: TfArg.literal('default_collection'),
        engineId: TfArg.literal('quickstart-search'),
        displayName: TfArg.literal('Quickstart site search'),
        dataStoreIds: TfArg.literal([dataStore.dataStoreIdRef.interpolation]),
        searchEngineConfig: DiscoveryEngineSearchEngineSearchEngineConfig(
          searchTier: TfArg.literal(
            DiscoveryEngineSearchEngineSearchTier.searchTierStandard,
          ),
        ),
        dependsOn: [ResourceDependency(dataStore)],
      ),
    );

    final searchReaderMember = add(
      GoogleDiscoveryEngineSearchEngineIamMember(
        localName: 'search_reader_viewer',
        location: TfArg.literal('global'),
        collectionId: TfArg.literal('default_collection'),
        engineId: TfArg.ref(searchEngine.engineIdRef),
        role: TfArg.literal('roles/discoveryengine.viewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(searchEngine),
          ResourceDependency(reader),
        ],
      ),
    );

    final searchReaderBinding = add(
      GoogleDiscoveryEngineSearchEngineIamBinding(
        localName: 'search_reader_binding',
        location: TfArg.literal('global'),
        collectionId: TfArg.literal('default_collection'),
        engineId: TfArg.ref(searchEngine.engineIdRef),
        role: TfArg.literal('roles/discoveryengine.viewer'),
        members: TfArg.literal([reader.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(searchEngine),
          ResourceDependency(reader),
          ResourceDependency(searchReaderMember),
        ],
      ),
    );

    add(
      GoogleDiscoveryEngineSearchEngineIamPolicy(
        localName: 'search_reader_policy',
        location: TfArg.literal('global'),
        collectionId: TfArg.literal('default_collection'),
        engineId: TfArg.ref(searchEngine.engineIdRef),
        policyData: TfArg.literal(
          _iamPolicyDataJson(
            role: 'roles/discoveryengine.viewer',
            member:
                'serviceAccount:vertex-search-reader@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(searchEngine),
          ResourceDependency(searchReaderBinding),
        ],
      ),
    );
  }
}
