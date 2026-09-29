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

String _iamPolicyDataJson({required String role, required String member}) {
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
      accountId: .literal('analytics-reader'),
      displayName: .literal('Analytics dataset reader'),
    );
    add(reader);

    final dataset = GoogleBigqueryDataset(
      localName: 'analytics',
      datasetId: .literal('analytics_prod'),
      location: .literal('asia-northeast1'),
      friendlyName: .literal('Production analytics'),
      description: .literal('Production analytics events + sessions.'),
      // 30 days in milliseconds.
      defaultTableExpirationMs: .literal(30 * 24 * 60 * 60 * 1000),
      storageBillingModel: .literal(.logical),
      access: [
        // UserByEmail variant pointed at the in-stack reader SA — a real
        // identity once applied, not a placeholder address.
        .userByEmail(userByEmail: .ref(reader.email), role: .literal('OWNER')),
        .specialGroup(
          specialGroup: .literal('allAuthenticatedUsers'),
          role: .literal('READER'),
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
      datasetId: .ref(dataset.datasetIdRef),
      tableId: .literal('events'),
      deletionProtection: .literal(false),
      schema: .literal(
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
        datasetId: .ref(dataset.datasetIdRef),
        role: .literal('roles/bigquery.dataViewer'),
        member: .ref(reader.iamMember),
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
      accountId: .literal('events-ingestor'),
      displayName: .literal('Events table ingestor'),
    );
    add(ingestor);

    add(
      GoogleBigqueryTableIamMember(
        localName: 'events_ingestor_binding',
        datasetId: .ref(dataset.datasetIdRef),
        tableId: .ref(eventsTable.tableIdRef),
        role: .literal('roles/bigquery.dataEditor'),
        member: .ref(ingestor.iamMember),
      ),
    );

    // ---- Wave 19: governance + reservations ---------------------------------

    add(
      GoogleBigqueryBiReservation(
        localName: 'bi_engine',
        location: .literal('asia-northeast1'),
        size: .literal(1),
      ),
    );

    add(
      GoogleBigqueryDatapolicyDataPolicy(
        localName: 'email_mask',
        location: .literal('asia-northeast1'),
        dataPolicyId: .literal('mask-email'),
        dataPolicyType: .literal(.dataMaskingPolicy),
        dataMaskingPolicy: const BigqueryDatapolicyDataPolicyDataMaskingPolicy(
          predefinedExpression:
              BigqueryDatapolicyDataPolicyPredefinedExpression.emailMask,
        ),
        policyTag: .literal(
          'projects/$projectId/locations/asia-northeast1/taxonomies/1/policyTags/1',
        ),
      ),
    );

    add(
      GoogleBigqueryDatapolicyDataPolicyIamMember(
        localName: 'mask_email_reader',
        dataPolicyId: .literal('mask-email'),
        location: .literal('asia-northeast1'),
        role: .literal('roles/bigquerydatapolicy.maskedReader'),
        member: .ref(reader.iamMember),
      ),
    );

    final exchange = add(
      GoogleBigqueryAnalyticsHubDataExchange(
        localName: 'shared_exchange',
        location: .literal('asia-northeast1'),
        dataExchangeId: .literal('shared-exchange'),
        displayName: .literal('Shared analytics exchange'),
      ),
    );

    add(
      GoogleBigqueryAnalyticsHubListing(
        localName: 'events_listing',
        location: .literal('asia-northeast1'),
        dataExchangeId: .literal('shared-exchange'),
        listingId: .literal('events-listing'),
        displayName: .literal('Events dataset listing'),
        source: .bigqueryDataset(
          BigqueryAnalyticsHubListingBigqueryDataset(
            dataset: .literal('projects/$projectId/datasets/analytics_prod'),
          ),
        ),
        dependsOn: [ResourceDependency(exchange)],
      ),
    );

    final slotsReservation = add(
      GoogleBigqueryReservation(
        localName: 'analytics_slots',
        name: .literal('analytics-slots'),
        location: .literal('asia-northeast1'),
        slotCapacity: .literal(50),
      ),
    );

    add(
      GoogleBigqueryReservationAssignment(
        localName: 'project_slots',
        assignee: .literal('projects/$projectId'),
        jobType: .literal(.query),
        location: .literal('asia-northeast1'),
        reservation: .ref(slotsReservation.nameRef),
      ),
    );

    add(
      GoogleBigqueryRowAccessPolicy(
        localName: 'events_tenant_filter',
        datasetId: .ref(dataset.datasetIdRef),
        tableId: .ref(eventsTable.tableIdRef),
        policyId: .literal('tenant-filter'),
        filterPredicate: .literal('tenant_id = SESSION_USER()'),
      ),
    );

    // ---- Wave 22: Analytics Hub IAM + connection IAM ----------------------

    add(
      GoogleBigqueryAnalyticsHubDataExchangeIamMember(
        localName: 'exchange_subscriber',
        dataExchangeId: .literal('shared-exchange'),
        location: .literal('asia-northeast1'),
        role: .literal('roles/analyticshub.subscriber'),
        member: .ref(reader.iamMember),
      ),
    );

    add(
      GoogleBigqueryAnalyticsHubListingIamMember(
        localName: 'listing_viewer',
        dataExchangeId: .literal('shared-exchange'),
        listingId: .literal('events-listing'),
        location: .literal('asia-northeast1'),
        role: .literal('roles/analyticshub.viewer'),
        member: .ref(reader.iamMember),
      ),
    );

    add(
      GoogleBigqueryAnalyticsHubListingSubscription(
        localName: 'events_subscription',
        dataExchangeId: .literal('shared-exchange'),
        listingId: .literal('events-listing'),
        location: .literal('asia-northeast1'),
        destinationDataset: .literal({
          'location': 'asia-northeast1',
          'dataset_reference': [
            {'dataset_id': 'analytics_prod', 'project_id': projectId},
          ],
        }),
      ),
    );

    add(
      GoogleBigqueryConnection(
        localName: 'cloud_resource_link',
        connectionId: .literal('cloud-resource-link'),
        location: .literal('asia-northeast1'),
        backend: .cloudResource(),
      ),
    );

    add(
      GoogleBigqueryConnectionIamMember(
        localName: 'connection_user',
        connectionId: .literal('cloud-resource-link'),
        location: .literal('asia-northeast1'),
        role: .literal('roles/bigquery.connectionUser'),
        member: .ref(ingestor.iamMember),
      ),
    );

    // ---- Backfill: job, routine, capacity commitment, data transfer --------

    add(
      GoogleBigqueryJob(
        localName: 'events_count_job',
        jobId: .literal('events-count-backfill'),
        location: .literal('asia-northeast1'),
        jobConfiguration: .query(
          query: .literal(
            'SELECT COUNT(*) AS event_count FROM analytics_prod.events',
          ),
          useLegacySql: .literal(false),
          destinationTable: BigqueryJobDestinationTable(
            projectId: .literal(projectId),
            datasetId: .ref(dataset.datasetIdRef),
            tableId: .literal('events_daily_count'),
          ),
          writeDisposition: BigqueryJobWriteDisposition.writeTruncate,
          createDisposition: BigqueryJobCreateDisposition.createIfNeeded,
        ),
      ),
    );

    final addOneRoutine = add(
      GoogleBigqueryRoutine(
        localName: 'add_one',
        datasetId: .ref(dataset.datasetIdRef),
        routineId: .literal('add_one'),
        routineType: .literal(.scalarFunction),
        definitionBody: .literal('x + 1'),
        language: .literal(.sql),
        arguments: [
          BigqueryRoutineArgument(
            name: .literal('x'),
            dataType: .literal('{"typeKind":"INT64"}'),
          ),
        ],
        returnType: .literal('{"typeKind":"INT64"}'),
      ),
    );

    add(
      GoogleBigqueryRoutineIamMember(
        localName: 'add_one_reader',
        datasetId: .ref(dataset.datasetIdRef),
        routineId: .ref(addOneRoutine.routineIdRef),
        role: .literal('roles/bigquery.dataViewer'),
        member: .ref(reader.iamMember),
      ),
    );

    final addOneBinding = add(
      GoogleBigqueryRoutineIamBinding(
        localName: 'add_one_binding',
        datasetId: .ref(dataset.datasetIdRef),
        routineId: .ref(addOneRoutine.routineIdRef),
        role: .literal('roles/bigquery.dataEditor'),
        members: .literal([reader.iamMember.interpolation]),
        dependsOn: [ResourceDependency(addOneRoutine)],
      ),
    );

    add(
      GoogleBigqueryRoutineIamPolicy(
        localName: 'add_one_policy',
        datasetId: .ref(dataset.datasetIdRef),
        routineId: .ref(addOneRoutine.routineIdRef),
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/bigquery.dataViewer',
            member:
                'serviceAccount:analytics-reader@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(addOneRoutine),
          ResourceDependency(addOneBinding),
        ],
      ),
    );

    add(
      GoogleBigqueryCapacityCommitment(
        localName: 'analytics_trial',
        capacityCommitmentId: .literal('analytics-trial'),
        location: .literal('asia-northeast1'),
        slotCount: .literal(50),
        plan: .literal(.trial),
        renewalPlan: .literal(.none),
      ),
    );

    add(
      GoogleBigqueryDataTransferConfig(
        localName: 'daily_events_rollup',
        displayName: .literal('Daily events rollup'),
        dataSourceId: .literal('scheduled_query'),
        destinationDatasetId: .ref(dataset.datasetIdRef),
        location: .literal('asia-northeast1'),
        schedule: .literal('every 24 hours'),
        params: .literal({
          'query':
              'SELECT event_id, ts FROM `analytics_prod.events` LIMIT 1000',
          'destination_table_name_template': 'events_rollup',
          'write_disposition': 'WRITE_TRUNCATE',
        }),
      ),
    );

    // A standalone access entry (the non-inline counterpart of the dataset's
    // sealed `access` list): grant the project's writers READER on the dataset.
    add(
      GoogleBigqueryDatasetAccess(
        localName: 'project_writers_reader',
        datasetId: .ref(dataset.datasetIdRef),
        role: .literal('READER'),
        grantee: .specialGroup(.literal(.projectWriters)),
        dependsOn: [ResourceDependency(dataset)],
      ),
    );
  }
}
