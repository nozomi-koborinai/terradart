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
///   user's most recent messages" queries);
/// - a change stream on the `messages` collection group, retained for a day.
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
      'messages',
      name: .literal('quickstart-db'),
      locationId: .literal('asia-northeast1'),
      type: .literal(.firestoreNative),
      pointInTimeRecoveryEnablement: .literal(.enabled),
      deleteProtectionState: .literal(.disabled),
      // DELETE (not the default ABANDON) so `terraform destroy` actually
      // removes the named database; otherwise it lingers and the next
      // apply fails 409 "Database already exists".
      deletionPolicy: .literal('DELETE'),
      concurrencyMode: .literal(.optimistic),
    );
    add(db);

    add(
      GoogleFirestoreIndex(
        'messages_by_user_time',
        collection: .literal('messages'),
        database: db.ref,
        queryScope: .literal(.collection),
        fields: [
          FirestoreIndexField(
            fieldPath: .literal('user_id'),
            spec: .order(FirestoreIndexOrder.ascending),
          ),
          FirestoreIndexField(
            fieldPath: .literal('created_at'),
            spec: .order(FirestoreIndexOrder.descending),
          ),
        ],
      ),
    );

    // ---- Backfill: field overrides, backup schedule -------------------------

    add(
      GoogleFirestoreField(
        'expires_at_ttl',
        collection: .literal('messages'),
        field: .literal('expires_at'),
        database: db.ref,
        ttlConfig: const FirestoreFieldTtlConfig(),
      ),
    );

    add(
      GoogleFirestoreBackupSchedule(
        'daily_backup',
        database: db.ref,
        retention: .literal('604800s'),
        recurrence: const .daily(),
      ),
    );

    // ---- Change stream: real-time changes to the `messages` collection ------

    add(
      GoogleFirestoreChangeStream(
        'messages_changes',
        database: db.ref,
        name: .literal('messages-changes'),
        scope: .collectionGroupScope(
          .new(collectionGroupId: .literal('messages')),
        ),
        retentionPeriod: .literal('86400s'),
      ),
    );
  }
}
