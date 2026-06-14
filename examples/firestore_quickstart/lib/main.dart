/// Firestore quickstart -- Wave 4 Round 1 end-to-end example.
///
/// Defines a `MessagesStack` that provisions:
/// - a named `quickstart-db` Firestore database in Native mode, anchored
///   to `asia-northeast1`, with point-in-time recovery enabled and delete
///   protection off (so the database can be torn down cleanly -- the
///   `(default)` database cannot be deleted once created, which makes a
///   create/destroy cycle impossible);
/// - a composite index on the `messages` collection ordered by `user_id`
///   ascending then `created_at` descending (suitable for "show me a given
///   user's most recent messages" queries).
///
/// Demonstrates the typed enum coverage from `google_firestore_database`
/// and the sealed `IndexFieldSpec` dispatch from `google_firestore_index`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/provider.dart';

final class MessagesStack extends Stack {
  MessagesStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final db = GoogleFirestoreDatabase(
      localName: 'messages',
      name: TfArg.literal('quickstart-db'),
      locationId: TfArg.literal('asia-northeast1'),
      type: TfArg.literal(FirestoreDatabaseType.firestoreNative),
      pointInTimeRecoveryEnablement: TfArg.literal(
        PointInTimeRecoveryEnablement.enabled,
      ),
      deleteProtectionState: TfArg.literal(DeleteProtectionState.disabled),
      concurrencyMode: TfArg.literal(ConcurrencyMode.optimistic),
    );
    add(db);

    add(
      GoogleFirestoreIndex(
        localName: 'messages_by_user_time',
        collection: TfArg.literal('messages'),
        database: TfArg.ref(db.nameRef),
        queryScope: TfArg.literal(FirestoreIndexQueryScope.collection),
        fields: [
          FirestoreIndexIndexField(
            fieldPath: TfArg.literal('user_id'),
            spec: FirestoreIndexIndexFieldOrder(FirestoreIndexOrder.ascending),
          ),
          FirestoreIndexIndexField(
            fieldPath: TfArg.literal('created_at'),
            spec: FirestoreIndexIndexFieldOrder(FirestoreIndexOrder.descending),
          ),
        ],
      ),
    );

    // ---- Backfill: field overrides, backup schedule, user creds -------------

    add(
      GoogleFirestoreField(
        localName: 'expires_at_ttl',
        collection: TfArg.literal('messages'),
        field: TfArg.literal('expires_at'),
        database: TfArg.ref(db.nameRef),
        ttlConfig: const FirestoreFieldTtlConfig(),
      ),
    );

    add(
      GoogleFirestoreBackupSchedule(
        localName: 'daily_backup',
        database: TfArg.ref(db.nameRef),
        retention: TfArg.literal('604800s'),
        recurrence: const FirestoreBackupScheduleDailyRecurrence(),
      ),
    );

    add(
      GoogleFirestoreUserCreds(
        localName: 'analytics_reader',
        database: TfArg.ref(db.nameRef),
        name: TfArg.literal('analytics-reader'),
      ),
    );
  }
}
