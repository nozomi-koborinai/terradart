// packages/terradart_google/lib/discovery_engine.dart
/// Vertex AI Search (Discovery Engine): data stores, search engines, IAM.
library;

export 'src/discovery_engine/google_discovery_engine_data_store.dart'
    show
        DiscoveryEngineDataStoreContentConfig,
        DiscoveryEngineDataStoreIndustryVertical,
        GoogleDiscoveryEngineDataStore;
export 'src/discovery_engine/google_discovery_engine_search_engine.dart'
    show
        DiscoveryEngineSearchEngineIndustryVertical,
        DiscoveryEngineSearchEngineSearchEngineConfig,
        DiscoveryEngineSearchEngineSearchTier,
        GoogleDiscoveryEngineSearchEngine;
export 'src/discovery_engine/google_discovery_engine_search_engine_iam_member.dart'
    show GoogleDiscoveryEngineSearchEngineIamMember;
