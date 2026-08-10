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
import 'package:terradart_google/time.dart';

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
        name: TfArg.literal('quickstart-events'),
        instanceType: TfArg.literal(BigtableInstanceType.production),
        deletionPolicy: TfArg.literal('DELETE'),
        deletionProtection: TfArg.literal(false),
        cluster: [
          BigtableInstanceCluster(
            clusterId: TfArg.literal('events-c1'),
            zone: TfArg.literal('us-central1-b'),
            numNodes: TfArg.literal(1),
          ),
        ],
        dependsOn: apiDeps,
      ),
    );

    final table = add(
      GoogleBigtableTable(
        localName: 'events',
        instanceName: TfArg.ref(instance.nameRef),
        name: TfArg.literal('events'),
        columnFamily: [
          BigtableTableColumnFamily(family: TfArg.literal('cf1')),
        ],
        dependsOn: [ResourceDependency(instance)],
      ),
    );

    final gcPolicy = add(
      GoogleBigtableGcPolicy(
        localName: 'cf1_gc',
        instanceName: TfArg.ref(instance.nameRef),
        table: TfArg.ref(table.nameRef),
        columnFamily: TfArg.literal('cf1'),
        policy: BigtableGcPolicyMaxAge(days: TfArg.literal(7)),
        dependsOn: [ResourceDependency(table)],
      ),
    );

    final authorizedView = add(
      GoogleBigtableAuthorizedView(
        localName: 'tenant_a',
        instanceName: TfArg.ref(instance.nameRef),
        tableName: TfArg.ref(table.nameRef),
        name: TfArg.literal('tenant-a'),
        subsetView: BigtableAuthorizedViewSubsetView(
          // Provider expects base64-encoded row prefix bytes.
          rowPrefixes: [TfArg.literal('dGVuYW50LWEj')],
        ),
        deletionProtection: TfArg.literal('UNPROTECTED'),
        dependsOn: [ResourceDependency(table)],
      ),
    );

    final tableReady = add(
      TimeSleep(
        localName: 'table_propagation',
        createDuration: TfArg.duration(const Duration(seconds: 90)),
        triggers: TfArg.literal({
          'events_table': table.nameRef.interpolation,
          'tenant_a_view': authorizedView.id.interpolation,
        }),
        dependsOn: [
          ResourceDependency(table),
          ResourceDependency(gcPolicy),
          ResourceDependency(authorizedView),
        ],
      ),
    );
    final tableReadyDeps = [ResourceDependency(tableReady)];

    add(
      GoogleBigtableAppProfile(
        localName: 'routing',
        appProfileId: TfArg.literal('quickstart-routing'),
        instance: TfArg.ref(instance.nameRef),
        routing: BigtableAppProfileSingleClusterRouting(
          clusterId: TfArg.literal('events-c1'),
        ),
        ignoreWarnings: TfArg.literal(true),
        dependsOn: [ResourceDependency(instance)],
      ),
    );

    final logicalView = add(
      GoogleBigtableLogicalView(
        localName: 'recent',
        logicalViewId: TfArg.literal('recent-events'),
        instance: TfArg.ref(instance.nameRef),
        query: TfArg.literal('SELECT _key, cf1 FROM `events`'),
        deletionProtection: TfArg.literal(false),
        dependsOn: tableReadyDeps,
      ),
    );

    final materializedView = add(
      GoogleBigtableMaterializedView(
        localName: 'counts',
        materializedViewId: TfArg.literal('event-counts'),
        instance: TfArg.ref(instance.nameRef),
        query: TfArg.literal(
          "SELECT _key, COUNT(cf1['col1']) AS event_count FROM `events` GROUP BY _key",
        ),
        deletionProtection: TfArg.literal(false),
        dependsOn: [ResourceDependency(logicalView)],
      ),
    );
    final stackReadyDeps = [ResourceDependency(materializedView)];

    final readerSa = add(
      GoogleServiceAccount(
        localName: 'reader',
        accountId: TfArg.literal('bt-reader'),
        displayName: TfArg.literal('Bigtable reader'),
      ),
    );

    add(
      GoogleBigtableInstanceIamMember(
        localName: 'instance_viewer',
        instance: TfArg.ref(instance.nameRef),
        role: TfArg.literal('roles/bigtable.viewer'),
        member: TfArg.ref(readerSa.iamMember),
        dependsOn: [
          ResourceDependency(readerSa),
          ResourceDependency(instance),
          ...stackReadyDeps,
        ],
      ),
    );

    add(
      GoogleBigtableTableIamMember(
        localName: 'table_reader',
        instanceName: TfArg.ref(instance.nameRef),
        table: TfArg.ref(table.nameRef),
        role: TfArg.literal('roles/bigtable.reader'),
        member: TfArg.ref(readerSa.iamMember),
        dependsOn: [
          ResourceDependency(readerSa),
          ResourceDependency(table),
          ...stackReadyDeps,
        ],
      ),
    );
  }
}
