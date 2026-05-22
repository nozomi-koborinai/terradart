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

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

class FirestoreDocumentQuickstart extends Stack {
  FirestoreDocumentQuickstart({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final apiFirestore = add(
      GoogleProjectService(
        localName: 'api_firestore',
        service: TfArg.literal('firestore.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final db = add(
      GoogleFirestoreDatabase(
        localName: 'default',
        name: TfArg.literal('(default)'),
        locationId: TfArg.literal('asia-northeast1'),
        type: TfArg.literal(FirestoreDatabaseType.firestoreNative),
        deleteProtectionState: TfArg.literal(DeleteProtectionState.disabled),
        dependsOn: [ResourceDependency(apiFirestore)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'flag_dark_mode',
        collection: TfArg.literal('feature_flags'),
        documentId: TfArg.literal('dark_mode'),
        fields: FirestoreFields.encode({'enabled': true, 'rollout_pct': 100}),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'tier_pro',
        collection: TfArg.literal('pricing_tiers'),
        documentId: TfArg.literal('pro'),
        fields: FirestoreFields.encode({
          'label': 'Pro',
          'monthly_usd': 29,
          'features': ['analytics', 'priority_support'],
        }),
        dependsOn: [ResourceDependency(db)],
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
