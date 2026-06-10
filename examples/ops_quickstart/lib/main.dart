/// Ops quickstart — Phase 4.5 Wave 2 + Wave 11 logging project ops.
///
/// Defines an `AuditPipelineStack` that provisions:
/// - API enablement for Logging and BigQuery;
/// - a BigQuery dataset (`audit_logs`) as the sink destination;
/// - a custom log bucket + filtered log view (with viewer IAM member);
/// - a project-wide exclusion, a saved query, and a logs-based metric;
/// - a `GoogleLoggingProjectSink` routing Cloud Audit Logs to BigQuery.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/logging.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class AuditPipelineStack extends Stack {
  AuditPipelineStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
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
        visibility: TfArg.literal('PRIVATE'),
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

    add(
      GoogleLoggingProjectSink(
        localName: 'audit_to_bq',
        name: TfArg.literal('audit-to-bq'),
        destination: TfArg.literal(
          'bigquery.googleapis.com/projects/$projectId/datasets/audit_logs',
        ),
        filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
        uniqueWriterIdentity: TfArg.literal(true),
        bigqueryOptions: LoggingProjectSinkBigqueryOptions(
          usePartitionedTables: TfArg.literal(true),
        ),
        dependsOn: [
          ResourceDependency(dataset),
          ResourceDependency(apiLogging)
        ],
      ),
    );
  }
}
