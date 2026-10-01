/// Ops quickstart — Phase 4.5 Wave 2 + Wave 11 logging project ops.
///
/// Defines an `AuditPipelineStack` that provisions:
/// - API enablement for Logging and BigQuery;
/// - a BigQuery dataset (`audit_logs`) as the sink destination;
/// - a custom log bucket + filtered log view (with viewer IAM member);
/// - a project-wide exclusion, a saved query, and a logs-based metric;
/// - a `GoogleLoggingProjectSink` routing Cloud Audit Logs to BigQuery;
/// - optional folder- and organization-scoped sinks (Terraform variables
///   for `folder` / `org_id` — apply needs real hierarchy permissions).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/logging.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/spanner.dart';

final class AuditPipelineStack extends Stack {
  AuditPipelineStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable('ops_folder_id', const TfVariable(type: 'string'));
    addVariable('ops_organization_id', const TfVariable(type: 'string'));

    const bucketId = 'audit-logs';
    const viewName = 'audit-only';
    const location = 'global';

    final apiLogging = add(
      GoogleProjectService(
        'api_logging',
        service: .literal('logging.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiBigquery = add(
      GoogleProjectService(
        'api_bigquery',
        service: .literal('bigquery.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiSpanner = add(
      GoogleProjectService(
        'api_spanner',
        service: .literal('spanner.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final dataset = GoogleBigqueryDataset(
      'audit_logs',
      datasetId: .literal('audit_logs'),
      location: .literal('asia-northeast1'),
      friendlyName: .literal('Cloud Audit Logs sink'),
      description: .literal('Sink destination for cloudaudit.googleapis.com.'),
      dependsOn: [apiBigquery],
    );
    add(dataset);

    final auditBucket = GoogleLoggingProjectBucketConfig(
      'audit_bucket',
      bucketId: .literal(bucketId),
      location: .literal(location),
      project: .literal(projectId),
      retentionDays: .literal(30),
      enableAnalytics: .literal(true),
      description: .literal('Audit log bucket for filtered views.'),
      dependsOn: [apiLogging],
    );
    add(auditBucket);

    add(
      GoogleLoggingLogScope(
        'audit_scope',
        name: .literal('audit-scope'),
        resourceNames: .literal([
          'projects/$projectId/locations/$location/buckets/$bucketId',
        ]),
        description: .literal('Scope for audit log analytics.'),
        dependsOn: [auditBucket],
      ),
    );

    add(
      GoogleLoggingLinkedDataset(
        'audit_analytics',
        bucket: auditBucket.ref,
        linkId: .literal('audit-analytics'),
        bigqueryDataset: LoggingLinkedDatasetBigqueryDataset(
          datasetId: dataset.datasetId,
        ),
        dependsOn: [auditBucket, dataset],
      ),
    );

    final auditView = GoogleLoggingLogView(
      'audit_view',
      bucket: auditBucket.ref,
      name: .literal(viewName),
      location: .literal(location),
      filter: .literal('logName:"cloudaudit.googleapis.com"'),
      description: .literal('Audit-only slice of the audit log bucket.'),
      dependsOn: [auditBucket],
    );
    add(auditView);

    add(
      GoogleLoggingLogViewIamMember(
        'audit_view_viewer',
        logView: auditView.ref,
        role: .literal('roles/logging.viewer'),
        member: .group('security-auditors@example.com'),
        dependsOn: [auditView],
      ),
    );

    add(
      GoogleLoggingProjectExclusion(
        'drop_dns_noise',
        name: .literal('drop-dns-noise'),
        filter: .literal('resource.type="dns_query"'),
        description: .literal('Skip high-volume DNS query logs.'),
        dependsOn: [apiLogging],
      ),
    );

    add(
      GoogleLoggingSavedQuery(
        'audit_errors',
        name: .literal('audit-errors'),
        displayName: .literal('Audit errors'),
        parent: .literal('projects/$projectId/locations/$location'),
        location: .literal(location),
        visibility: .private,
        definition: .loggingQuery(
          .new(
            filter: .literal(
              'logName:"cloudaudit.googleapis.com" AND severity>=ERROR',
            ),
          ),
        ),
        dependsOn: [apiLogging],
      ),
    );

    add(
      GoogleLoggingMetric(
        'audit_error_count',
        name: .literal('audit_error_count'),
        filter: .literal(
          'logName:"cloudaudit.googleapis.com" AND severity>=ERROR',
        ),
        bucketName: auditBucket.ref,
        metricDescriptor: LoggingMetricDescriptor(
          metricKind: .delta,
          valueType: .int64,
          displayName: .literal('Audit error count'),
        ),
        dependsOn: [auditBucket],
      ),
    );

    final projectSinkDestination = TfArg.literal(
      'bigquery.googleapis.com/projects/$projectId/datasets/audit_logs',
    );

    add(
      GoogleLoggingProjectSink(
        'audit_to_bq',
        name: .literal('audit-to-bq'),
        destination: projectSinkDestination,
        filter: .literal('logName:"cloudaudit.googleapis.com"'),
        uniqueWriterIdentity: .literal(true),
        bigqueryOptions: LoggingProjectSinkBigqueryOptions(
          usePartitionedTables: .literal(true),
        ),
        dependsOn: [dataset, apiLogging],
      ),
    );

    add(
      GoogleLoggingFolderSink(
        'folder_audit_to_bq',
        name: .literal('folder-audit-to-bq'),
        folder: TfArg.variable('ops_folder_id'),
        destination: projectSinkDestination,
        filter: .literal('logName:"cloudaudit.googleapis.com"'),
        includeChildren: .literal(true),
        bigqueryOptions: LoggingFolderSinkBigqueryOptions(
          usePartitionedTables: .literal(true),
        ),
        dependsOn: [dataset, apiLogging],
      ),
    );

    add(
      GoogleLoggingOrganizationSink(
        'org_audit_to_bq',
        name: .literal('org-audit-to-bq'),
        orgId: TfArg.variable('ops_organization_id'),
        destination: projectSinkDestination,
        filter: .literal('logName:"cloudaudit.googleapis.com"'),
        includeChildren: .literal(true),
        bigqueryOptions: LoggingOrganizationSinkBigqueryOptions(
          usePartitionedTables: .literal(true),
        ),
        dependsOn: [dataset, apiLogging],
      ),
    );

    // ---- Cloud Spanner (Wave 35) ------------------------------------------

    final spanner = add(
      GoogleSpannerInstance(
        'audit_spanner',
        config: .literal('regional-asia-northeast1'),
        displayName: .literal('Audit metadata store'),
        numNodes: .literal(1),
        dependsOn: [apiSpanner],
      ),
    );

    final spannerDb = add(
      GoogleSpannerDatabase(
        'audit_meta',
        instance: spanner.ref,
        name: .literal('audit_meta'),
        versionRetentionPeriod: .literal('86400s'),
        dependsOn: [spanner],
      ),
    );

    add(
      GoogleSpannerInstanceIamMember(
        'spanner_instance_viewer',
        instance: spanner.ref,
        role: .literal('roles/spanner.viewer'),
        member: .group('audit-readers@example.com'),
        dependsOn: [spanner],
      ),
    );

    add(
      GoogleSpannerDatabaseIamMember(
        'spanner_db_reader',
        database: spannerDb.ref,
        role: .literal('roles/spanner.databaseReader'),
        member: .group('audit-readers@example.com'),
        dependsOn: [spannerDb],
      ),
    );
  }
}
