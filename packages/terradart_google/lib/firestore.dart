// packages/terradart_google/lib/firestore.dart
/// Cloud Firestore — Native and Datastore mode databases + composite index
/// management.
library;

export 'src/firestore/google_firestore_database.dart'
    show
        AppEngineIntegrationMode,
        CmekConfig,
        ConcurrencyMode,
        DatabaseEdition,
        DeleteProtectionState,
        FirestoreDataAccessMode,
        FirestoreDatabaseType,
        GoogleFirestoreDatabase,
        MongodbCompatibleDataAccessMode,
        PointInTimeRecoveryEnablement,
        RealtimeUpdatesMode;
export 'src/firestore/google_firestore_index.dart'
    show
        FirestoreIndexApiScope,
        FirestoreIndexDeletionPolicy,
        FirestoreIndexDensity,
        FirestoreIndexOrder,
        FirestoreIndexQueryScope,
        GoogleFirestoreIndex,
        IndexField,
        IndexFieldArrayConfig,
        IndexFieldOrder,
        IndexFieldSearchConfig,
        IndexFieldSpec,
        IndexFieldTextSpec,
        IndexFieldTextSpecEntry,
        IndexFieldVectorConfig;
