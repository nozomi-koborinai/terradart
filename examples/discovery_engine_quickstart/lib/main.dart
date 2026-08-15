/// Discovery Engine quickstart — data store, search engine, schema,
/// synonyms control, default serving config, and IAM member.
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

    final schemaStore = add(
      GoogleDiscoveryEngineDataStore(
        localName: 'schema_store',
        location: TfArg.literal('global'),
        dataStoreId: TfArg.literal('terradart-search-schema'),
        displayName: TfArg.literal('Quickstart schema store'),
        industryVertical: TfArg.literal(
          DiscoveryEngineDataStoreIndustryVertical.generic,
        ),
        contentConfig: TfArg.literal(
          DiscoveryEngineDataStoreContentConfig.noContent,
        ),
        solutionTypes: TfArg.literal(['SOLUTION_TYPE_SEARCH']),
        skipDefaultSchemaCreation: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleDiscoveryEngineSchema(
        localName: 'docs_schema',
        location: TfArg.literal('global'),
        dataStoreId: TfArg.ref(schemaStore.dataStoreIdRef),
        schemaId: TfArg.literal('terradart-docs'),
        jsonSchema: TfArg.literal(
          r'{"$schema":"https://json-schema.org/draft/2020-12/schema","datetime_detection":true,"type":"object","geolocation_detection":true}',
        ),
        dependsOn: [ResourceDependency(schemaStore)],
      ),
    );

    final synonyms = add(
      GoogleDiscoveryEngineControl(
        localName: 'synonyms',
        location: TfArg.literal('global'),
        collectionId: TfArg.literal('default_collection'),
        engineId: TfArg.ref(searchEngine.engineIdRef),
        controlId: TfArg.literal('terradart-synonyms'),
        displayName: TfArg.literal('terradart synonyms'),
        solutionType: TfArg.literal(
          DiscoveryEngineControlSolutionType.solutionTypeSearch,
        ),
        useCases: TfArg.literal(['SEARCH_USE_CASE_SEARCH']),
        action: DiscoveryEngineControlSynonymsAction(
          synonyms: TfArg.literal(['quickstart', 'demo']),
        ),
        dependsOn: [ResourceDependency(searchEngine)],
      ),
    );

    add(
      GoogleDiscoveryEngineServingConfig(
        localName: 'default_search',
        location: TfArg.literal('global'),
        collectionId: TfArg.literal('default_collection'),
        engineId: TfArg.ref(searchEngine.engineIdRef),
        servingConfigId: TfArg.literal('default_search'),
        synonymsControlIds: TfArg.literal([
          synonyms.controlIdRef.interpolation,
        ]),
        dependsOn: [
          ResourceDependency(searchEngine),
          ResourceDependency(synonyms),
        ],
      ),
    );

    // Apply-excluded leftovers: CMEK + third-party connector. This
    // example is skip-listed (soft-delete) and is never applied.
    add(
      GoogleDiscoveryEngineCmekConfig(
        localName: 'cmek',
        location: TfArg.literal('us'),
        cmekConfigId: TfArg.literal('terradart-cmek'),
        kmsKey: TfArg.literal(
          'projects/$projectId/locations/us/keyRings/terradart/cryptoKeys/discovery',
        ),
        setDefault: TfArg.literal(false),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleDiscoveryEngineDataConnector(
        localName: 'jira',
        location: TfArg.literal('global'),
        collectionId: TfArg.literal('terradart-jira'),
        collectionDisplayName: TfArg.literal('terradart jira'),
        dataSource: TfArg.literal('jira'),
        refreshInterval: TfArg.literal('1800s'),
        jsonParams:
            TfArg.literal('{"instance_uri":"https://example.atlassian.net"}'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
