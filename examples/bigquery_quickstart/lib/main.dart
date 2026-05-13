/// BigQuery quickstart -- Phase 4.5 Wave 1 end-to-end example.
///
/// Defines an `AnalyticsStack` that provisions a BigQuery dataset
/// (`analytics_prod`) with:
/// - 2 access entries via the sealed `Access` type — one user-by-email
///   (OWNER) and one special-group (allAuthenticatedUsers, READER),
/// - default_table_expiration_ms set to 30 days (in milliseconds),
/// - typed `storageBillingModel: DatasetStorageBillingModel.logical`,
///
/// demonstrating the sealed `Access` hierarchy (8 variants total — schema-
/// faithful UserByEmail / GroupByEmail / SpecialGroup / Domain / IamMember /
/// View / Dataset / Routine).
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

class AnalyticsStack extends Stack {
  AnalyticsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    add(
      GoogleBigqueryDataset(
        localName: 'analytics',
        datasetId: TfArg.literal('analytics_prod'),
        location: TfArg.literal('asia-northeast1'),
        friendlyName: TfArg.literal('Production analytics'),
        description: TfArg.literal('Production analytics events + sessions.'),
        // 30 days in milliseconds.
        defaultTableExpirationMs: TfArg.literal(30 * 24 * 60 * 60 * 1000),
        storageBillingModel: TfArg.literal(DatasetStorageBillingModel.logical),
        access: [
          AccessUserByEmail(
            userByEmail: TfArg.literal('data-eng@example.com'),
            role: TfArg.literal('OWNER'),
          ),
          AccessSpecialGroup(
            specialGroup: TfArg.literal('allAuthenticatedUsers'),
            role: TfArg.literal('READER'),
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
