/// Firebase Data Connect quickstart — Wave 4 Round 3 end-to-end example.
///
/// Defines a [DataConnectStack] that provisions:
/// - a `GoogleFirebaseDataConnectService` — the top-level serverless GraphQL
///   backend container backed by Cloud SQL (PostgreSQL).
///
/// Note: this resource models the Data Connect _service_ only. The GraphQL
/// schema and connectors that bind the service to a specific Cloud SQL
/// instance live in downstream resources (`google_firebase_data_connect_schema`,
/// `google_firebase_data_connect_connector`) which are not yet wrapped by
/// terradart_google. The `cloud_sql_instance` linkage is therefore NOT
/// modelled here — the service-level schema in provider v7.31.0 does not
/// expose it at the service level.
///
/// Demonstrates [DataConnectDeletionPolicy] enum usage and the `serviceIdRef`
/// cross-reference getter.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebase_data_connect.dart';
import 'package:terradart_google/provider.dart';

class DataConnectStack extends Stack {
  DataConnectStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // Top-level Data Connect service container.
    // The service_id becomes the final segment of the full resource name and
    // is referenced by downstream schema / connector resources. It is NOT
    // the Cloud SQL instance ID.
    add(
      GoogleFirebaseDataConnectService(
        localName: 'web',
        serviceId: TfArg.literal('web-svc'),
        location: TfArg.literal('us-central1'),
        displayName: TfArg.literal('Web app Data Connect service'),
        // FORCE lets terraform destroy remove the service even when downstream
        // schemas or connectors still exist. Omit (or use DEFAULT) in
        // production to guard against accidental teardown.
        deletionPolicy: TfArg.literal(DataConnectDeletionPolicy.force),
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
