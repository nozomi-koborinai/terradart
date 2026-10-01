/// Firestore document quickstart -- seed master-data documents into the
/// project's default Native-mode Firestore database.
///
/// Defines a [FirestoreDocumentQuickstart] stack that provisions:
/// - the `firestore.googleapis.com` API enablement;
/// - the project's `(default)` Firestore database in Native mode, anchored
///   to `asia-northeast1`, with delete protection disabled (dev-friendly);
/// - a `feature_flags/dark_mode` document via [GoogleFirestoreDocument] +
///   [FirestoreFields.encode];
/// - a `pricing_tiers/pro` document with a nested string array field.
///
/// Demonstrates the [GoogleFirestoreDocument] resource and the
/// [FirestoreFields.encode] helper introduced in terradart v0.10.0.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class FirestoreDocumentQuickstart extends Stack {
  FirestoreDocumentQuickstart({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
      ) {
    final apiFirestore = add(
      GoogleProjectService(
        'api_firestore',
        service: .literal('firestore.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final db = add(
      GoogleFirestoreDatabase(
        'default',
        name: .literal('(default)'),
        locationId: .literal('asia-northeast1'),
        type: .literal(.firestoreNative),
        deleteProtectionState: .literal(.disabled),
        dependsOn: [apiFirestore],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'flag_dark_mode',
        collection: .literal('feature_flags'),
        documentId: .literal('dark_mode'),
        fields: FirestoreFields.encode({'enabled': true, 'rollout_pct': 100}),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'tier_pro',
        collection: .literal('pricing_tiers'),
        documentId: .literal('pro'),
        fields: FirestoreFields.encode({
          'label': 'Pro',
          'monthly_usd': 29,
          'features': ['analytics', 'priority_support'],
        }),
        dependsOn: [db],
      ),
    );
  }
}
