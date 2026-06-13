/// Cloud SQL quickstart -- Wave 5 Batch 1 end-to-end example.
///
/// Defines a `CloudSqlStack` that provisions the canonical private-IP
/// Cloud SQL chain:
///
/// 1. `google_compute_network` -- a custom-mode VPC reserved for the SQL
///    instance.
/// 2. `google_compute_global_address` (purpose VPC_PEERING) -- reserves
///    an internal CIDR range on that VPC.
/// 3. `google_service_networking_connection` -- peers Google's services
///    VPC into the user's network against the reserved range.
/// 4. `google_sql_database_instance` -- a private-only PostgreSQL primary
///    (`ipv4_enabled: false`, `private_network` pinned at the VPC).
/// 5. `google_sql_database` -- one application database inside the
///    instance.
/// 6. `google_sql_user` -- one built-in DB user. The password is sourced
///    from `DB_PASSWORD`; it is sensitive and masked at synth time.
///
/// Wave 33 adds AlloyDB on the same PSA chain: cluster, primary instance,
/// and an application user.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/alloydb.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/service_networking.dart';

final class CloudSqlStack extends Stack {
  CloudSqlStack({
    required String projectId,
    required String dbPassword,
  }) : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    // ---- 1. Dedicated VPC for the Cloud SQL instance ----------------------

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'sql_vpc',
        name: TfArg.literal('cloudsql-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
      ),
    );

    // ---- 2. Private-services peering range (PSA range) --------------------

    final psaRange = add(
      GoogleComputeGlobalAddress(
        localName: 'psa_range',
        name: TfArg.literal('cloudsql-psa-range'),
        addressType: TfArg.literal(GlobalAddressType.internal),
        purpose: TfArg.literal(GlobalAddressPurpose.vpcPeering),
        prefixLength: TfArg.literal(16),
        network: TfArg.ref(vpc.selfLink),
      ),
    );

    // ---- 3. Service Networking peering connection ------------------------

    final psaConnection = add(
      GoogleServiceNetworkingConnection(
        localName: 'psa',
        network: TfArg.ref(vpc.selfLink),
        service: TfArg.literal('servicenetworking.googleapis.com'),
        reservedPeeringRanges: TfArg.literal([
          // ServiceNetworking expects the *name* of the global_address, not
          // its self_link. Wrap in a list for the schema's repeated string.
          '\${google_compute_global_address.psa_range.name}',
        ]),
      ),
    );

    // ---- 4. Private-only PostgreSQL primary -------------------------------
    //
    // `deletionProtection: false` is set for the quickstart only.
    // Production stacks should leave it at the default `true`.
    //
    // `dependsOn: [psaConnection]` is required: the SQL instance and the
    // service_networking_connection both reference `vpc` but neither
    // references the other, so Terraform treats them as siblings and could
    // apply them in parallel. The PSA peering must exist before the
    // instance can be created with a private IP, so we declare it
    // explicitly.

    final primary = add(
      GoogleSqlDatabaseInstance(
        localName: 'primary',
        name: TfArg.literal('orders-primary'),
        databaseVersion: TfArg.literal(DatabaseVersion.postgres15),
        region: TfArg.literal('asia-northeast1'),
        deletionProtection: TfArg.literal(false),
        settings: SqlDatabaseInstanceSettings(
          tier: TfArg.literal('db-custom-2-7680'),
          availabilityType: TfArg.literal(SqlAvailabilityType.zonal),
          edition: TfArg.literal(SqlEdition.enterprise),
          diskSize: TfArg.literal(20),
          diskType: TfArg.literal(SqlDiskType.pdSsd),
          ipConfiguration: SqlDatabaseInstanceIpConfiguration(
            ipv4Enabled: TfArg.literal(false),
            privateNetwork: TfArg.ref(vpc.selfLink),
            // Pins the instance to the named PSA range; without this the
            // API would pick any peered range, which is ambiguous when a
            // VPC has multiple PSA peerings.
            allocatedIpRange: TfArg.ref(psaRange.nameRef),
          ),
        ),
        dependsOn: [ResourceDependency(psaConnection)],
      ),
    );

    // ---- 5. Application database -----------------------------------------

    add(
      GoogleSqlDatabase(
        localName: 'orders',
        instance: TfArg.ref(primary.nameRef),
        name: TfArg.literal('orders'),
      ),
    );

    // ---- 6. Built-in DB user ---------------------------------------------

    add(
      GoogleSqlUser(
        localName: 'app',
        instance: TfArg.ref(primary.nameRef),
        name: TfArg.literal('app'),
        type: TfArg.literal(SqlUserType.builtIn),
        passwordWo: TfArg.literal(dbPassword),
        passwordWoVersion: TfArg.literal(1),
      ),
    );

    add(
      GoogleSqlSslCert(
        localName: 'client_cert',
        instance: TfArg.ref(primary.nameRef),
        commonName: TfArg.literal('app-client'),
      ),
    );

    add(
      GoogleSqlSourceRepresentationInstance(
        localName: 'legacy_mysql',
        name: TfArg.literal('legacy-mysql'),
        region: TfArg.literal('asia-northeast1'),
        databaseVersion: TfArg.literal('MYSQL_8_0'),
        host: TfArg.literal('203.0.113.50'),
        port: TfArg.literal(3306),
        username: TfArg.literal('replica'),
        password: TfArg.variable('source_rep_password'),
      ),
    );

    // ---- 7. AlloyDB cluster + primary (Wave 33) ---------------------------
    //
    // Reuses the same VPC + PSA range as Cloud SQL private IP.

    final alloyCluster = add(
      GoogleAlloydbCluster(
        localName: 'alloydb',
        clusterId: TfArg.literal('app-alloydb'),
        location: TfArg.literal('asia-northeast1'),
        networkConfig: AlloydbClusterNetworkConfig(
          network: TfArg.ref(vpc.selfLink),
          allocatedIpRange: TfArg.ref(psaRange.nameRef),
        ),
        initialUser: AlloydbClusterInitialUser(
          user: TfArg.literal('postgres'),
          passwordWo: TfArg.literal(dbPassword),
          passwordWoVersion: TfArg.literal(1),
        ),
        dependsOn: [ResourceDependency(psaConnection)],
      ),
    );

    add(
      GoogleAlloydbInstance(
        localName: 'alloydb_primary',
        cluster: TfArg.ref(alloyCluster.id),
        instanceId: TfArg.literal('primary'),
        instanceType: TfArg.literal(AlloydbInstanceType.primary),
        machineConfig: AlloydbInstanceMachineConfig(
          cpuCount: TfArg.literal(2),
        ),
      ),
    );

    add(
      GoogleAlloydbUser(
        localName: 'alloydb_app',
        cluster: TfArg.ref(alloyCluster.id),
        userId: TfArg.literal('app'),
        userType: TfArg.literal(AlloydbUserType.alloydbBuiltIn),
        passwordWo: TfArg.literal(dbPassword),
        passwordWoVersion: TfArg.literal('1'),
      ),
    );

    add(
      GoogleAlloydbBackup(
        localName: 'alloydb_nightly',
        backupId: TfArg.literal('nightly-backup'),
        clusterName: TfArg.ref(alloyCluster.id),
        location: TfArg.literal('asia-northeast1'),
      ),
    );
  }
}
