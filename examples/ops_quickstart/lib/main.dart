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
        localName: 'api_logging',
        service: .literal('logging.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiBigquery = add(
      GoogleProjectService(
        localName: 'api_bigquery',
        service: .literal('bigquery.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiSpanner = add(
      GoogleProjectService(
        localName: 'api_spanner',
        service: .literal('spanner.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final dataset = GoogleBigqueryDataset(
      localName: 'audit_logs',
      datasetId: .literal('audit_logs'),
      location: .literal('asia-northeast1'),
      friendlyName: .literal('Cloud Audit Logs sink'),
      description: .literal('Sink destination for cloudaudit.googleapis.com.'),
      dependsOn: [ResourceDependency(apiBigquery)],
    );
    add(dataset);

    final auditBucket = GoogleLoggingProjectBucketConfig(
      localName: 'audit_bucket',
      bucketId: .literal(bucketId),
      location: .literal(location),
      project: .literal(projectId),
      retentionDays: .literal(30),
      enableAnalytics: .literal(true),
      description: .literal('Audit log bucket for filtered views.'),
      dependsOn: [ResourceDependency(apiLogging)],
    );
    add(auditBucket);

    add(
      GoogleLoggingLogScope(
        localName: 'audit_scope',
        name: .literal('audit-scope'),
        resourceNames: .literal([
          'projects/$projectId/locations/$location/buckets/$bucketId',
        ]),
        description: .literal('Scope for audit log analytics.'),
        dependsOn: [ResourceDependency(auditBucket)],
      ),
    );

    add(
      GoogleLoggingLinkedDataset(
        localName: 'audit_analytics',
        bucket: .ref(auditBucket.bucketIdRef),
        linkId: .literal('audit-analytics'),
        bigqueryDataset: LoggingLinkedDatasetBigqueryDataset(
          datasetId: .ref(dataset.datasetIdRef),
        ),
        dependsOn: [
          ResourceDependency(auditBucket),
          ResourceDependency(dataset),
        ],
      ),
    );

    final auditView = GoogleLoggingLogView(
      localName: 'audit_view',
      bucket: .ref(auditBucket.bucketIdRef),
      name: .literal(viewName),
      location: .literal(location),
      filter: .literal('logName:"cloudaudit.googleapis.com"'),
      description: .literal('Audit-only slice of the audit log bucket.'),
      dependsOn: [ResourceDependency(auditBucket)],
    );
    add(auditView);

    add(
      GoogleLoggingLogViewIamMember(
        localName: 'audit_view_viewer',
        bucket: .ref(auditBucket.bucketIdRef),
        location: .literal(location),
        name: .ref(auditView.nameRef),
        parent: .literal(
          'projects/$projectId/locations/$location/buckets/$bucketId/views/$viewName',
        ),
        role: .literal('roles/logging.viewer'),
        member: .literal('group:security-auditors@example.com'),
        dependsOn: [ResourceDependency(auditView)],
      ),
    );

    add(
      GoogleLoggingProjectExclusion(
        localName: 'drop_dns_noise',
        name: .literal('drop-dns-noise'),
        filter: .literal('resource.type="dns_query"'),
        description: .literal('Skip high-volume DNS query logs.'),
        dependsOn: [ResourceDependency(apiLogging)],
      ),
    );

    add(
      GoogleLoggingSavedQuery(
        localName: 'audit_errors',
        name: .literal('audit-errors'),
        displayName: .literal('Audit errors'),
        parent: .literal('projects/$projectId/locations/$location'),
        location: .literal(location),
        visibility: .literal(.private),
        query: .loggingQuery(
          LoggingSavedQueryLoggingQuery(
            filter: .literal(
              'logName:"cloudaudit.googleapis.com" AND severity>=ERROR',
            ),
          ),
        ),
        dependsOn: [ResourceDependency(apiLogging)],
      ),
    );

    add(
      GoogleLoggingMetric(
        localName: 'audit_error_count',
        name: .literal('audit_error_count'),
        filter: .literal(
          'logName:"cloudaudit.googleapis.com" AND severity>=ERROR',
        ),
        bucketName: .ref(auditBucket.bucketIdRef),
        metricDescriptor: LoggingMetricDescriptor(
          metricKind: .literal(.delta),
          valueType: .literal(.int64),
          displayName: .literal('Audit error count'),
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
        name: .literal('audit-to-bq'),
        destination: projectSinkDestination,
        filter: .literal('logName:"cloudaudit.googleapis.com"'),
        uniqueWriterIdentity: .literal(true),
        bigqueryOptions: LoggingProjectSinkBigqueryOptions(
          usePartitionedTables: .literal(true),
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
        name: .literal('folder-audit-to-bq'),
        folder: TfArg.variable('ops_folder_id'),
        destination: projectSinkDestination,
        filter: .literal('logName:"cloudaudit.googleapis.com"'),
        includeChildren: .literal(true),
        bigqueryOptions: LoggingFolderSinkBigqueryOptions(
          usePartitionedTables: .literal(true),
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
        name: .literal('org-audit-to-bq'),
        orgId: TfArg.variable('ops_organization_id'),
        destination: projectSinkDestination,
        filter: .literal('logName:"cloudaudit.googleapis.com"'),
        includeChildren: .literal(true),
        bigqueryOptions: LoggingOrganizationSinkBigqueryOptions(
          usePartitionedTables: .literal(true),
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
        config: .literal('regional-asia-northeast1'),
        displayName: .literal('Audit metadata store'),
        numNodes: .literal(1),
        dependsOn: [ResourceDependency(apiSpanner)],
      ),
    );

    final spannerDb = add(
      GoogleSpannerDatabase(
        localName: 'audit_meta',
        instance: .ref(spanner.nameRef),
        name: .literal('audit_meta'),
        versionRetentionPeriod: .literal('86400s'),
        dependsOn: [ResourceDependency(spanner)],
      ),
    );

    add(
      GoogleSpannerInstanceIamMember(
        localName: 'spanner_instance_viewer',
        instance: .ref(spanner.nameRef),
        role: .literal('roles/spanner.viewer'),
        member: .literal('group:audit-readers@example.com'),
        dependsOn: [ResourceDependency(spanner)],
      ),
    );

    add(
      GoogleSpannerDatabaseIamMember(
        localName: 'spanner_db_reader',
        instance: .ref(spanner.nameRef),
        database: .ref(spannerDb.nameRef),
        role: .literal('roles/spanner.databaseReader'),
        member: .literal('group:audit-readers@example.com'),
        dependsOn: [ResourceDependency(spannerDb)],
      ),
    );
  }
}
