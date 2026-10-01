/// Discovery Engine quickstart — data store, search engine, schema,
/// synonyms control, default serving config, and IAM member.
library;

import 'dart:convert';

import 'package:terradart_google/discovery_engine.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

String _iamPolicyDataJson({required String role, required String member}) {
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
        'search_reader',
        accountId: .literal('vertex-search-reader'),
        displayName: .literal('Vertex AI Search reader'),
      ),
    );

    final dataStore = add(
      GoogleDiscoveryEngineDataStore(
        'docs_store',
        location: .literal('global'),
        dataStoreId: .literal('terradart-search-docs'),
        displayName: .literal('Quickstart documents'),
        industryVertical: .generic,
        contentConfig: .noContent,
        solutionTypes: .literal(['SOLUTION_TYPE_SEARCH']),
        dependsOn: apiDeps,
      ),
    );

    final searchEngine = add(
      GoogleDiscoveryEngineSearchEngine(
        'site_search',
        location: .literal('global'),
        collectionId: .literal('default_collection'),
        engineId: .literal('quickstart-search'),
        displayName: .literal('Quickstart site search'),
        dataStoreIds: .literal([dataStore.dataStoreId.interpolation]),
        searchEngineConfig: DiscoveryEngineSearchEngineConfig(
          searchTier: .searchTierStandard,
        ),
        dependsOn: [dataStore],
      ),
    );

    final searchReaderMember = add(
      GoogleDiscoveryEngineSearchEngineIamMember(
        'search_reader_viewer',
        engine: searchEngine.ref,
        role: .literal('roles/discoveryengine.viewer'),
        member: reader.principal,
        dependsOn: [searchEngine, reader],
      ),
    );

    final searchReaderBinding = add(
      GoogleDiscoveryEngineSearchEngineIamBinding(
        'search_reader_binding',
        engine: searchEngine.ref,
        role: .literal('roles/discoveryengine.viewer'),
        members: .literal([reader.principal]),
        dependsOn: [searchEngine, reader, searchReaderMember],
      ),
    );

    add(
      GoogleDiscoveryEngineSearchEngineIamPolicy(
        'search_reader_policy',
        engine: searchEngine.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/discoveryengine.viewer',
            member:
                'serviceAccount:vertex-search-reader@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [searchEngine, searchReaderBinding],
      ),
    );

    final schemaStore = add(
      GoogleDiscoveryEngineDataStore(
        'schema_store',
        location: .literal('global'),
        dataStoreId: .literal('terradart-search-schema'),
        displayName: .literal('Quickstart schema store'),
        industryVertical: .generic,
        contentConfig: .noContent,
        solutionTypes: .literal(['SOLUTION_TYPE_SEARCH']),
        skipDefaultSchemaCreation: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleDiscoveryEngineSchema(
        'docs_schema',
        location: .literal('global'),
        dataStoreId: schemaStore.ref,
        schemaId: .literal('terradart-docs'),
        jsonSchema: .literal(
          r'{"$schema":"https://json-schema.org/draft/2020-12/schema","datetime_detection":true,"type":"object","geolocation_detection":true}',
        ),
        dependsOn: [schemaStore],
      ),
    );

    final synonyms = add(
      GoogleDiscoveryEngineControl(
        'synonyms',
        location: .literal('global'),
        collectionId: .literal('default_collection'),
        engineId: searchEngine.ref,
        controlId: .literal('terradart-synonyms'),
        displayName: .literal('terradart synonyms'),
        solutionType: .solutionTypeSearch,
        useCases: .literal(['SEARCH_USE_CASE_SEARCH']),
        action: .synonymsAction(
          .new(synonyms: .literal(['quickstart', 'demo'])),
        ),
        dependsOn: [searchEngine],
      ),
    );

    add(
      GoogleDiscoveryEngineServingConfig(
        'default_search',
        location: .literal('global'),
        collectionId: .literal('default_collection'),
        engineId: searchEngine.ref,
        servingConfigId: .literal('default_search'),
        synonymsControlIds: .literal([synonyms.controlId.interpolation]),
        dependsOn: [searchEngine, synonyms],
      ),
    );

    // Coverage-only factories: CMEK + third-party connector
    // (placeholder ids; see the README's "Before you apply").
    add(
      GoogleDiscoveryEngineCmekConfig(
        'cmek',
        location: .literal('us'),
        cmekConfigId: .literal('terradart-cmek'),
        kmsKey: .literal(
          'projects/$projectId/locations/us/keyRings/terradart/cryptoKeys/discovery',
        ),
        setDefault: .literal(false),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleDiscoveryEngineDataConnector(
        'jira',
        location: .literal('global'),
        collectionId: .literal('terradart-jira'),
        collectionDisplayName: .literal('terradart jira'),
        dataSource: .literal('jira'),
        refreshInterval: .literal('1800s'),
        params: .jsonParams(
          .literal('{"instance_uri":"https://example.atlassian.net"}'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
