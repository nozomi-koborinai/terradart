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
///
/// Wave 5 Batch 3 adds a child `events` table plus two dataset/table-scoped
/// IAM bindings: a reader SA on the dataset and a separate writer SA on
/// the table — covering both granularities of BigQuery IAM in one stack.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

String _iamPolicyDataJson({
  required String role,
  required String member,
}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

final class AnalyticsStack extends Stack {
  AnalyticsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    // The dataset's legacy ACL (below) grants a real in-stack identity, so
    // `terraform apply` validates the principal exists. Declared ahead of the
    // dataset so the access entry can reference the SA's email.
    final reader = GoogleServiceAccount(
      localName: 'analytics_reader',
      accountId: TfArg.literal('analytics-reader'),
      displayName: TfArg.literal('Analytics dataset reader'),
    );
    add(reader);

    final dataset = GoogleBigqueryDataset(
      localName: 'analytics',
      datasetId: TfArg.literal('analytics_prod'),
      location: TfArg.literal('asia-northeast1'),
      friendlyName: TfArg.literal('Production analytics'),
      description: TfArg.literal('Production analytics events + sessions.'),
      // 30 days in milliseconds.
      defaultTableExpirationMs: TfArg.literal(30 * 24 * 60 * 60 * 1000),
      storageBillingModel: TfArg.literal(DatasetStorageBillingModel.logical),
      access: [
        // UserByEmail variant pointed at the in-stack reader SA — a real
        // identity once applied, not a placeholder address.
        BigqueryDatasetAccessUserByEmail(
          userByEmail: TfArg.ref(reader.email),
          role: TfArg.literal('OWNER'),
        ),
        BigqueryDatasetAccessSpecialGroup(
          specialGroup: TfArg.literal('allAuthenticatedUsers'),
          role: TfArg.literal('READER'),
        ),
      ],
    );
    add(dataset);

    // ---- Child table: events ----------------------------------------------
    //
    // A minimal table in the dataset. The schema is intentionally tiny --
    // production usage would point at a JSON file or a generated schema.

    final eventsTable = GoogleBigqueryTable(
      localName: 'events',
      datasetId: TfArg.ref(dataset.datasetIdRef),
      tableId: TfArg.literal('events'),
      deletionProtection: TfArg.literal(false),
      schema: TfArg.literal(
        '[{"name":"event_id","type":"STRING","mode":"REQUIRED"},'
        '{"name":"ts","type":"TIMESTAMP","mode":"REQUIRED"}]',
      ),
    );
    add(eventsTable);

    // ---- IAM: dataset-scoped reader ---------------------------------------
    //
    // Wave 5 Batch 3 -- the standard "analytics consumer" pattern: the
    // `reader` SA (declared above) gets `dataViewer` at the dataset scope.

    add(
      GoogleBigqueryDatasetIamMember(
        localName: 'analytics_reader_binding',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        role: TfArg.literal('roles/bigquery.dataViewer'),
        member: TfArg.ref(reader.iamMember),
      ),
    );

    // ---- IAM: table-scoped writer -----------------------------------------
    //
    // A second SA is granted write access scoped to just `events` -- the
    // dataViewer above stays untouched. This is the fine-grained variant
    // for cases where only some tables in a dataset are mutable by a
    // given workload (e.g. an ingest pipeline).

    final ingestor = GoogleServiceAccount(
      localName: 'events_ingestor',
      accountId: TfArg.literal('events-ingestor'),
      displayName: TfArg.literal('Events table ingestor'),
    );
    add(ingestor);

    add(
      GoogleBigqueryTableIamMember(
        localName: 'events_ingestor_binding',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        tableId: TfArg.ref(eventsTable.tableIdRef),
        role: TfArg.literal('roles/bigquery.dataEditor'),
        member: TfArg.ref(ingestor.iamMember),
      ),
    );

    // ---- Wave 19: governance + reservations ---------------------------------

    add(
      GoogleBigqueryBiReservation(
        localName: 'bi_engine',
        location: TfArg.literal('asia-northeast1'),
        size: TfArg.literal(1),
      ),
    );

    add(
      GoogleBigqueryDatapolicyDataPolicy(
        localName: 'email_mask',
        location: TfArg.literal('asia-northeast1'),
        dataPolicyId: TfArg.literal('mask-email'),
        dataPolicyType:
            TfArg.literal(BigqueryDatapolicyDataPolicyType.dataMaskingPolicy),
        dataMaskingPolicy: const BigqueryDatapolicyDataPolicyDataMaskingPolicy(
          predefinedExpression:
              BigqueryDatapolicyDataPolicyPredefinedExpression.emailMask,
        ),
        policyTag: TfArg.literal(
          'projects/$projectId/locations/asia-northeast1/taxonomies/1/policyTags/1',
        ),
      ),
    );

    add(
      GoogleBigqueryDatapolicyDataPolicyIamMember(
        localName: 'mask_email_reader',
        dataPolicyId: TfArg.literal('mask-email'),
        location: TfArg.literal('asia-northeast1'),
        role: TfArg.literal('roles/bigquerydatapolicy.maskedReader'),
        member: TfArg.ref(reader.iamMember),
      ),
    );

    final exchange = add(
      GoogleBigqueryAnalyticsHubDataExchange(
        localName: 'shared_exchange',
        location: TfArg.literal('asia-northeast1'),
        dataExchangeId: TfArg.literal('shared-exchange'),
        displayName: TfArg.literal('Shared analytics exchange'),
      ),
    );

    add(
      GoogleBigqueryAnalyticsHubListing(
        localName: 'events_listing',
        location: TfArg.literal('asia-northeast1'),
        dataExchangeId: TfArg.literal('shared-exchange'),
        listingId: TfArg.literal('events-listing'),
        displayName: TfArg.literal('Events dataset listing'),
        bigqueryDataset: TfArg.literal({
          'dataset': 'projects/$projectId/datasets/analytics_prod',
        }),
        dependsOn: [ResourceDependency(exchange)],
      ),
    );

    final slotsReservation = add(
      GoogleBigqueryReservation(
        localName: 'analytics_slots',
        name: TfArg.literal('analytics-slots'),
        location: TfArg.literal('asia-northeast1'),
        slotCapacity: TfArg.literal(50),
      ),
    );

    add(
      GoogleBigqueryReservationAssignment(
        localName: 'project_slots',
        assignee: TfArg.literal('projects/$projectId'),
        jobType: TfArg.literal(BigqueryReservationAssignmentJobType.query),
        location: TfArg.literal('asia-northeast1'),
        reservation: TfArg.ref(slotsReservation.nameRef),
      ),
    );

    add(
      GoogleBigqueryRowAccessPolicy(
        localName: 'events_tenant_filter',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        tableId: TfArg.ref(eventsTable.tableIdRef),
        policyId: TfArg.literal('tenant-filter'),
        filterPredicate: TfArg.literal('tenant_id = SESSION_USER()'),
      ),
    );

    // ---- Wave 22: Analytics Hub IAM + connection IAM ----------------------

    add(
      GoogleBigqueryAnalyticsHubDataExchangeIamMember(
        localName: 'exchange_subscriber',
        dataExchangeId: TfArg.literal('shared-exchange'),
        location: TfArg.literal('asia-northeast1'),
        role: TfArg.literal('roles/analyticshub.subscriber'),
        member: TfArg.ref(reader.iamMember),
      ),
    );

    add(
      GoogleBigqueryAnalyticsHubListingIamMember(
        localName: 'listing_viewer',
        dataExchangeId: TfArg.literal('shared-exchange'),
        listingId: TfArg.literal('events-listing'),
        location: TfArg.literal('asia-northeast1'),
        role: TfArg.literal('roles/analyticshub.viewer'),
        member: TfArg.ref(reader.iamMember),
      ),
    );

    add(
      GoogleBigqueryAnalyticsHubListingSubscription(
        localName: 'events_subscription',
        dataExchangeId: TfArg.literal('shared-exchange'),
        listingId: TfArg.literal('events-listing'),
        location: TfArg.literal('asia-northeast1'),
        destinationDataset: TfArg.literal({
          'location': 'asia-northeast1',
          'dataset_reference': [
            {
              'dataset_id': 'analytics_prod',
              'project_id': projectId,
            },
          ],
        }),
      ),
    );

    add(
      GoogleBigqueryConnection(
        localName: 'cloud_resource_link',
        connectionId: TfArg.literal('cloud-resource-link'),
        location: TfArg.literal('asia-northeast1'),
        backend: BigqueryConnectionCloudResource(),
      ),
    );

    add(
      GoogleBigqueryConnectionIamMember(
        localName: 'connection_user',
        connectionId: TfArg.literal('cloud-resource-link'),
        location: TfArg.literal('asia-northeast1'),
        role: TfArg.literal('roles/bigquery.connectionUser'),
        member: TfArg.ref(ingestor.iamMember),
      ),
    );

    // ---- Backfill: job, routine, capacity commitment, data transfer --------

    add(
      GoogleBigqueryJob(
        localName: 'events_count_job',
        jobId: TfArg.literal('events-count-backfill'),
        location: TfArg.literal('asia-northeast1'),
        jobConfiguration: BigqueryJobQuery(
          query: TfArg.literal(
            'SELECT COUNT(*) AS event_count FROM analytics_prod.events',
          ),
          useLegacySql: TfArg.literal(false),
          destinationTable: BigqueryJobDestinationTable(
            projectId: TfArg.literal(projectId),
            datasetId: TfArg.ref(dataset.datasetIdRef),
            tableId: TfArg.literal('events_daily_count'),
          ),
          writeDisposition: BigqueryJobWriteDisposition.writeTruncate,
          createDisposition: BigqueryJobCreateDisposition.createIfNeeded,
        ),
      ),
    );

    final addOneRoutine = add(
      GoogleBigqueryRoutine(
        localName: 'add_one',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        routineId: TfArg.literal('add_one'),
        routineType: TfArg.literal(BigqueryRoutineType.scalarFunction),
        definitionBody: TfArg.literal('x + 1'),
        language: TfArg.literal(BigqueryRoutineLanguage.sql),
        arguments: [
          BigqueryRoutineArgument(
            name: TfArg.literal('x'),
            dataType: TfArg.literal('{"typeKind":"INT64"}'),
          ),
        ],
        returnType: TfArg.literal('{"typeKind":"INT64"}'),
      ),
    );

    add(
      GoogleBigqueryRoutineIamMember(
        localName: 'add_one_reader',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        routineId: TfArg.ref(addOneRoutine.routineIdRef),
        role: TfArg.literal('roles/bigquery.dataViewer'),
        member: TfArg.ref(reader.iamMember),
      ),
    );

    add(
      GoogleBigqueryRoutineIamBinding(
        localName: 'add_one_binding',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        routineId: TfArg.ref(addOneRoutine.routineIdRef),
        role: TfArg.literal('roles/bigquery.dataEditor'),
        members: TfArg.literal([reader.iamMember.interpolation]),
        dependsOn: [ResourceDependency(addOneRoutine)],
      ),
    );

    add(
      GoogleBigqueryRoutineIamPolicy(
        localName: 'add_one_policy',
        datasetId: TfArg.ref(dataset.datasetIdRef),
        routineId: TfArg.ref(addOneRoutine.routineIdRef),
        policyData: TfArg.literal(
          _iamPolicyDataJson(
            role: 'roles/bigquery.dataViewer',
            member:
                'serviceAccount:analytics-reader@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [ResourceDependency(addOneRoutine)],
      ),
    );

    add(
      GoogleBigqueryCapacityCommitment(
        localName: 'analytics_trial',
        capacityCommitmentId: TfArg.literal('analytics-trial'),
        location: TfArg.literal('asia-northeast1'),
        slotCount: TfArg.literal(50),
        plan: TfArg.literal(BigqueryCapacityCommitmentPlan.trial),
        renewalPlan: TfArg.literal(BigqueryCapacityCommitmentRenewalPlan.none),
      ),
    );

    add(
      GoogleBigqueryDataTransferConfig(
        localName: 'daily_events_rollup',
        displayName: TfArg.literal('Daily events rollup'),
        dataSourceId: TfArg.literal('scheduled_query'),
        destinationDatasetId: TfArg.ref(dataset.datasetIdRef),
        location: TfArg.literal('asia-northeast1'),
        schedule: TfArg.literal('every 24 hours'),
        params: TfArg.literal({
          'query':
              'SELECT event_id, ts FROM `analytics_prod.events` LIMIT 1000',
          'destination_table_name_template': 'events_rollup',
          'write_disposition': 'WRITE_TRUNCATE',
        }),
      ),
    );
  }
}
