/// Apigee quickstart — data collector + GCS analytics datastore plus
/// an Advanced API Security monitoring condition (placeholder IDs).
///
/// Provisions runtime analytics plumbing inside an existing Apigee
/// organization:
/// - a `google_apigee_data_collector` that captures integer request latency,
/// - a `google_apigee_datastore` targeting Cloud Storage for export,
/// - a `google_apigee_security_monitoring_condition` naming a profile
///   and environment scope (does not process API requests).
///
/// `org_id` must reference a pre-existing Apigee org
/// (`organizations/{org_name}`). This example uses a placeholder org name
/// suitable for synth/`terraform validate`; real apply needs a live org.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/apigee.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class ApigeeAnalyticsStack extends Stack {
  ApigeeAnalyticsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.apigee],
      propagationDelay: Duration.zero,
    );

    const orgId = 'organizations/demo-org';

    add(
      GoogleApigeeDataCollector(
        localName: 'request_latency',
        orgId: TfArg.literal(orgId),
        dataCollectorId: TfArg.literal('dc_request_latency'),
        type: TfArg.literal(ApigeeDataCollectorType.integer),
        description: TfArg.literal('Request latency in milliseconds'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleApigeeDatastore(
        localName: 'analytics_gcs',
        orgId: TfArg.literal(orgId),
        displayName: TfArg.literal('Analytics GCS export'),
        targetType: TfArg.literal(ApigeeDatastoreTargetType.gcs),
        datastoreConfig: ApigeeDatastoreDatastoreConfig(
          projectId: TfArg.literal(projectId),
          bucketName: TfArg.literal('$projectId-apigee-analytics'),
          path: TfArg.literal('analytics'),
        ),
        dependsOn: apiDeps,
      ),
    );

    // Advanced API Security config metadata only. Placeholder profile
    // and environment IDs — creating this does not process API requests.
    add(
      GoogleApigeeSecurityMonitoringCondition(
        localName: 'demo_smc',
        conditionId: TfArg.literal('terradart-smc'),
        orgId: TfArg.literal(orgId),
        profile: TfArg.literal('demo-profile'),
        scope: TfArg.literal('demo-env'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
