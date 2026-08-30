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
    addVariable(
      'ops_folder_id',
      const TfVariable(type: 'string'),
    );
    addVariable(
      'ops_organization_id',
      const TfVariable(type: 'string'),
    );

    const bucketId = 'audit-logs';
    const viewName = 'audit-only';
    const location = 'global';

    final apiLogging = add(
      GoogleProjectService(
        localName: 'api_logging',
        service: TfArg.literal('logging.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiBigquery = add(
      GoogleProjectService(
        localName: 'api_bigquery',
        service: TfArg.literal('bigquery.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiSpanner = add(
      GoogleProjectService(
        localName: 'api_spanner',
        service: TfArg.literal('spanner.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final dataset = GoogleBigqueryDataset(
      localName: 'audit_logs',
      datasetId: TfArg.literal('audit_logs'),
      location: TfArg.literal('asia-northeast1'),
      friendlyName: TfArg.literal('Cloud Audit Logs sink'),
      description:
          TfArg.literal('Sink destination for cloudaudit.googleapis.com.'),
      dependsOn: [ResourceDependency(apiBigquery)],
    );
    add(dataset);

    final auditBucket = GoogleLoggingProjectBucketConfig(
      localName: 'audit_bucket',
      bucketId: TfArg.literal(bucketId),
      location: TfArg.literal(location),
      project: TfArg.literal(projectId),
      retentionDays: TfArg.literal(30),
      enableAnalytics: TfArg.literal(true),
      description: TfArg.literal('Audit log bucket for filtered views.'),
      dependsOn: [ResourceDependency(apiLogging)],
    );
    add(auditBucket);

    add(
      GoogleLoggingLogScope(
        localName: 'audit_scope',
        name: TfArg.literal('audit-scope'),
        resourceNames: TfArg.literal([
          'projects/$projectId/locations/$location/buckets/$bucketId',
        ]),
        description: TfArg.literal('Scope for audit log analytics.'),
        dependsOn: [ResourceDependency(auditBucket)],
      ),
    );

    add(
      GoogleLoggingLinkedDataset(
        localName: 'audit_analytics',
        bucket: TfArg.ref(auditBucket.bucketIdRef),
        linkId: TfArg.literal('audit-analytics'),
        bigqueryDataset: LoggingLinkedDatasetBigqueryDataset(
          datasetId: TfArg.ref(dataset.datasetIdRef),
        ),
        dependsOn: [
          ResourceDependency(auditBucket),
          ResourceDependency(dataset),
        ],
      ),
    );

    final auditView = GoogleLoggingLogView(
      localName: 'audit_view',
      bucket: TfArg.ref(auditBucket.bucketIdRef),
      name: TfArg.literal(viewName),
      location: TfArg.literal(location),
      filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
      description: TfArg.literal('Audit-only slice of the audit log bucket.'),
      dependsOn: [ResourceDependency(auditBucket)],
    );
    add(auditView);

    add(
      GoogleLoggingLogViewIamMember(
        localName: 'audit_view_viewer',
        bucket: TfArg.ref(auditBucket.bucketIdRef),
        location: TfArg.literal(location),
        name: TfArg.ref(auditView.nameRef),
        parent: TfArg.literal(
          'projects/$projectId/locations/$location/buckets/$bucketId/views/$viewName',
        ),
        role: TfArg.literal('roles/logging.viewer'),
        member: TfArg.literal('group:security-auditors@example.com'),
        dependsOn: [ResourceDependency(auditView)],
      ),
    );

    add(
      GoogleLoggingProjectExclusion(
        localName: 'drop_dns_noise',
        name: TfArg.literal('drop-dns-noise'),
        filter: TfArg.literal('resource.type="dns_query"'),
        description: TfArg.literal('Skip high-volume DNS query logs.'),
        dependsOn: [ResourceDependency(apiLogging)],
      ),
    );

    add(
      GoogleLoggingSavedQuery(
        localName: 'audit_errors',
        name: TfArg.literal('audit-errors'),
        displayName: TfArg.literal('Audit errors'),
        parent: TfArg.literal('projects/$projectId/locations/$location'),
        location: TfArg.literal(location),
        visibility: TfArg.literal(LoggingSavedQueryVisibility.private),
        loggingQuery: LoggingSavedQueryLoggingQuery(
          filter: TfArg.literal(
            'logName:"cloudaudit.googleapis.com" AND severity>=ERROR',
          ),
        ),
        dependsOn: [ResourceDependency(apiLogging)],
      ),
    );

    add(
      GoogleLoggingMetric(
        localName: 'audit_error_count',
        name: TfArg.literal('audit_error_count'),
        filter: TfArg.literal(
          'logName:"cloudaudit.googleapis.com" AND severity>=ERROR',
        ),
        bucketName: TfArg.ref(auditBucket.bucketIdRef),
        metricDescriptor: LoggingMetricDescriptor(
          metricKind: TfArg.literal(LoggingMetricKind.delta),
          valueType: TfArg.literal(LoggingMetricValueType.int64),
          displayName: TfArg.literal('Audit error count'),
        ),
        dependsOn: [ResourceDependency(auditBucket)],
      ),
    );

    final projectSinkDestination = TfArg.literal(
      'bigquery.googleapis.com/projects/$projectId/datasets/audit_logs',
    );

    add(
      GoogleLoggingProjectSink(
        localName: 'audit_to_bq',
        name: TfArg.literal('audit-to-bq'),
        destination: projectSinkDestination,
        filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
        uniqueWriterIdentity: TfArg.literal(true),
        bigqueryOptions: LoggingProjectSinkBigqueryOptions(
          usePartitionedTables: TfArg.literal(true),
        ),
        dependsOn: [
          ResourceDependency(dataset),
          ResourceDependency(apiLogging),
        ],
      ),
    );

    add(
      GoogleLoggingFolderSink(
        localName: 'folder_audit_to_bq',
        name: TfArg.literal('folder-audit-to-bq'),
        folder: TfArg.variable('ops_folder_id'),
        destination: projectSinkDestination,
        filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
        includeChildren: TfArg.literal(true),
        bigqueryOptions: LoggingFolderSinkBigqueryOptions(
          usePartitionedTables: TfArg.literal(true),
        ),
        dependsOn: [
          ResourceDependency(dataset),
          ResourceDependency(apiLogging),
        ],
      ),
    );

    add(
      GoogleLoggingOrganizationSink(
        localName: 'org_audit_to_bq',
        name: TfArg.literal('org-audit-to-bq'),
        orgId: TfArg.variable('ops_organization_id'),
        destination: projectSinkDestination,
        filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
        includeChildren: TfArg.literal(true),
        bigqueryOptions: LoggingOrganizationSinkBigqueryOptions(
          usePartitionedTables: TfArg.literal(true),
        ),
        dependsOn: [
          ResourceDependency(dataset),
          ResourceDependency(apiLogging),
        ],
      ),
    );

    // ---- Cloud Spanner (Wave 35) ------------------------------------------

    final spanner = add(
      GoogleSpannerInstance(
        localName: 'audit_spanner',
        config: TfArg.literal('regional-asia-northeast1'),
        displayName: TfArg.literal('Audit metadata store'),
        numNodes: TfArg.literal(1),
        dependsOn: [ResourceDependency(apiSpanner)],
      ),
    );

    final spannerDb = add(
      GoogleSpannerDatabase(
        localName: 'audit_meta',
        instance: TfArg.ref(spanner.nameRef),
        name: TfArg.literal('audit_meta'),
        versionRetentionPeriod: TfArg.literal('86400s'),
        dependsOn: [ResourceDependency(spanner)],
      ),
    );

    add(
      GoogleSpannerInstanceIamMember(
        localName: 'spanner_instance_viewer',
        instance: TfArg.ref(spanner.nameRef),
        role: TfArg.literal('roles/spanner.viewer'),
        member: TfArg.literal('group:audit-readers@example.com'),
        dependsOn: [ResourceDependency(spanner)],
      ),
    );

    add(
      GoogleSpannerDatabaseIamMember(
        localName: 'spanner_db_reader',
        instance: TfArg.ref(spanner.nameRef),
        database: TfArg.ref(spannerDb.nameRef),
        role: TfArg.literal('roles/spanner.databaseReader'),
        member: TfArg.literal('group:audit-readers@example.com'),
        dependsOn: [ResourceDependency(spannerDb)],
      ),
    );
  }
}
