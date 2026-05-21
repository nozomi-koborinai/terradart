// packages/terradart_google/lib/firestore.dart
/// Cloud Firestore — Native and Datastore mode databases + composite index
/// management.
library;

export 'src/firestore/google_firestore_backup_schedule.dart'
    show
        BackupDayOfWeek,
        FirestoreBackupScheduleBackupRecurrence,
        FirestoreBackupScheduleDailyRecurrence,
        GoogleFirestoreBackupSchedule,
        FirestoreBackupScheduleWeeklyRecurrence;
export 'src/firestore/google_firestore_database.dart'
    show
        AppEngineIntegrationMode,
        FirestoreDatabaseCmekConfig,
        ConcurrencyMode,
        DatabaseEdition,
        DeleteProtectionState,
        FirestoreDataAccessMode,
        FirestoreDatabaseType,
        GoogleFirestoreDatabase,
        MongodbCompatibleDataAccessMode,
        PointInTimeRecoveryEnablement,
        RealtimeUpdatesMode;
export 'src/firestore/google_firestore_field.dart'
    show
        FirestoreFieldOrder,
        FirestoreFieldQueryScope,
        GoogleFirestoreField,
        FirestoreFieldIndexConfig,
        FirestoreFieldSingleFieldIndex,
        FirestoreFieldTtlConfig;
export 'src/firestore/google_firestore_index.dart'
    show
        FirestoreIndexApiScope,
        FirestoreIndexDeletionPolicy,
        FirestoreIndexDensity,
        FirestoreIndexOrder,
        FirestoreIndexQueryScope,
        GoogleFirestoreIndex,
        FirestoreIndexIndexField,
        FirestoreIndexIndexFieldArrayConfig,
        FirestoreIndexIndexFieldOrder,
        FirestoreIndexIndexFieldSearchConfig,
        FirestoreIndexIndexFieldSpec,
        FirestoreIndexIndexFieldTextSpec,
        FirestoreIndexIndexFieldTextSpecEntry,
        FirestoreIndexIndexFieldVectorConfig;
export 'src/firestore/google_firestore_document.dart'
    show GoogleFirestoreDocument;
export 'src/firestore/google_firestore_user_creds.dart'
    show GoogleFirestoreUserCreds;
export 'src/firestore/firestore_fields.dart'
    show FirestoreFields, FirestoreReference, FirestoreGeoPoint;
