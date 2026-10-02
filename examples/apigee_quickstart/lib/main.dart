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

import 'package:terradart_google/apigee.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class ApigeeAnalyticsStack extends Stack {
  ApigeeAnalyticsStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiDeps = enableApis([.apigee], propagationDelay: Duration.zero);

    const orgId = 'organizations/demo-org';

    add(
      GoogleApigeeDataCollector(
        'request_latency',
        orgId: .literal(orgId),
        dataCollectorId: .literal('dc_request_latency'),
        type: .integer,
        description: .literal('Request latency in milliseconds'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleApigeeDatastore(
        'analytics_gcs',
        orgId: .literal(orgId),
        displayName: .literal('Analytics GCS export'),
        targetType: .gcs,
        datastoreConfig: ApigeeDatastoreConfig(
          projectId: .literal(projectId),
          bucketName: .literal('$projectId-apigee-analytics'),
          path: .literal('analytics'),
        ),
        dependsOn: apiDeps,
      ),
    );

    // Advanced API Security config metadata only. Placeholder profile
    // and environment IDs — creating this does not process API requests.
    add(
      GoogleApigeeSecurityMonitoringCondition(
        'demo_smc',
        conditionId: .literal('terradart-smc'),
        orgId: .literal(orgId),
        profile: .literal('demo-profile'),
        scope: .literal('demo-env'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
