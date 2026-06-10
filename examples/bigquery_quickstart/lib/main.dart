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

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

final class AnalyticsStack extends Stack {
  AnalyticsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
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
        BigqueryDatasetAccessUserByEmail(
          userByEmail: TfArg.literal('data-eng@example.com'),
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
    // Wave 5 Batch 3 -- the standard "analytics consumer" pattern: a SA
    // that needs to query the whole dataset gets `dataViewer` at the
    // dataset scope.

    final reader = GoogleServiceAccount(
      localName: 'analytics_reader',
      accountId: TfArg.literal('analytics-reader'),
      displayName: TfArg.literal('Analytics dataset reader'),
    );
    add(reader);

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
        dataPolicyType: TfArg.literal('DATA_MASKING_POLICY'),
        policyTag: TfArg.literal(
            'projects/$projectId/locations/asia-northeast1/taxonomies/1/policyTags/1'),
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
        jobType: TfArg.literal('QUERY'),
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
  }
}
