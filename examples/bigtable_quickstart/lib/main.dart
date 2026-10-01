/// Bigtable quickstart — instance, table, app profile, GC, views, IAM.
///
/// Defines `EventsStack`: provisions a single-node production Bigtable instance with
/// one cluster, a table + column family, app profile routing, GC policy,
/// authorized / logical / materialized views, and additive IAM grants for a
/// reader service account. Schema bundles stay in `tool/example_debt.yaml` —
/// after table settle waits they still race with "Parent table is either
/// creating or deleting" at apply time (monthly sweep 2026-08-01).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/bigtable.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

/// Cloud Bigtable stack for the applyable Wave 73 surface (schema bundle deferred).
final class EventsStack extends Stack {
  EventsStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.bigtable],
      propagationDelay: const Duration(seconds: 60),
    );

    final instance = add(
      GoogleBigtableInstance(
        localName: 'events',
        name: .literal('quickstart-events'),
        instanceType: .literal(.production),
        deletionPolicy: .literal('DELETE'),
        deletionProtection: .literal(false),
        cluster: [
          BigtableInstanceCluster(
            clusterId: .literal('events-c1'),
            zone: .literal('us-central1-b'),
            numNodes: .literal(1),
          ),
        ],
        dependsOn: apiDeps,
      ),
    );

    final table = add(
      GoogleBigtableTable(
        localName: 'events',
        instanceName: instance.ref,
        name: .literal('events'),
        columnFamily: [BigtableTableColumnFamily(family: .literal('cf1'))],
        dependsOn: [instance],
      ),
    );

    final gcPolicy = add(
      GoogleBigtableGcPolicy(
        localName: 'cf1_gc',
        instanceName: instance.ref,
        table: table.ref,
        columnFamily: .literal('cf1'),
        policy: .maxAge(days: .literal(7)),
        dependsOn: [table],
      ),
    );

    final authorizedView = add(
      GoogleBigtableAuthorizedView(
        localName: 'tenant_a',
        instanceName: instance.ref,
        tableName: table.ref,
        name: .literal('tenant-a'),
        subsetView: BigtableAuthorizedViewSubsetView(
          // Provider expects base64-encoded row prefix bytes.
          rowPrefixes: [.literal('dGVuYW50LWEj')],
        ),
        deletionProtection: .literal('UNPROTECTED'),
        dependsOn: [table],
      ),
    );

    final tableReady = add(
      TimeSleep(
        localName: 'table_propagation',
        createDuration: TfArg.duration(const Duration(seconds: 90)),
        triggers: .literal({
          'events_table': table.name.interpolation,
          'tenant_a_view': authorizedView.id.interpolation,
        }),
        dependsOn: [table, gcPolicy, authorizedView],
      ),
    );
    final tableReadyDeps = [tableReady];

    add(
      GoogleBigtableAppProfile(
        localName: 'routing',
        appProfileId: .literal('quickstart-routing'),
        instance: instance.ref,
        routing: .singleClusterRouting(.new(clusterId: .literal('events-c1'))),
        ignoreWarnings: .literal(true),
        dependsOn: [instance],
      ),
    );

    final logicalView = add(
      GoogleBigtableLogicalView(
        localName: 'recent',
        logicalViewId: .literal('recent-events'),
        instance: instance.ref,
        query: .literal('SELECT _key, cf1 FROM `events`'),
        deletionProtection: .literal(false),
        dependsOn: tableReadyDeps,
      ),
    );

    final materializedView = add(
      GoogleBigtableMaterializedView(
        localName: 'counts',
        materializedViewId: .literal('event-counts'),
        instance: instance.ref,
        query: .literal(
          "SELECT _key, COUNT(cf1['col1']) AS event_count FROM `events` GROUP BY _key",
        ),
        deletionProtection: .literal(false),
        dependsOn: [logicalView],
      ),
    );
    final stackReadyDeps = [materializedView];

    final readerSa = add(
      GoogleServiceAccount(
        localName: 'reader',
        accountId: .literal('bt-reader'),
        displayName: .literal('Bigtable reader'),
      ),
    );

    add(
      GoogleBigtableInstanceIamMember(
        localName: 'instance_viewer',
        instance: instance.ref,
        role: .literal('roles/bigtable.viewer'),
        member: readerSa.principal,
        dependsOn: [readerSa, instance, ...stackReadyDeps],
      ),
    );

    add(
      GoogleBigtableTableIamMember(
        localName: 'table_reader',
        table: table.ref,
        role: .literal('roles/bigtable.reader'),
        member: readerSa.principal,
        dependsOn: [readerSa, table, ...stackReadyDeps],
      ),
    );
  }
}
