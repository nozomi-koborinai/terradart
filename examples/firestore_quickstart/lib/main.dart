/// Firestore quickstart -- Wave 4 Round 1 end-to-end example.
///
/// Defines a `MessagesStack` that provisions:
/// - the project's `(default)` Firestore database in Native mode, anchored
///   to `asia-northeast1`, with point-in-time recovery enabled and delete
///   protection on;
/// - a composite index on the `messages` collection ordered by `user_id`
///   ascending then `created_at` descending (suitable for "show me a given
///   user's most recent messages" queries).
///
/// Demonstrates the typed enum coverage from `google_firestore_database`
/// and the sealed `IndexFieldSpec` dispatch from `google_firestore_index`.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/provider.dart';

class MessagesStack extends Stack {
  MessagesStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final db = GoogleFirestoreDatabase(
      localName: 'default',
      name: TfArg.literal('(default)'),
      locationId: TfArg.literal('asia-northeast1'),
      type: TfArg.literal(FirestoreDatabaseType.firestoreNative),
      pointInTimeRecoveryEnablement: TfArg.literal(
        PointInTimeRecoveryEnablement.enabled,
      ),
      deleteProtectionState: TfArg.literal(DeleteProtectionState.enabled),
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
          IndexField(
            fieldPath: TfArg.literal('user_id'),
            spec: const IndexFieldOrder(FirestoreIndexOrder.ascending),
          ),
          IndexField(
            fieldPath: TfArg.literal('created_at'),
            spec: const IndexFieldOrder(FirestoreIndexOrder.descending),
          ),
        ],
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
