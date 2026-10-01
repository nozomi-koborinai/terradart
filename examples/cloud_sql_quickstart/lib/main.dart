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
  CloudSqlStack({required String projectId, required String dbPassword})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable(
      'source_rep_password',
      const TfVariable(type: 'string', sensitive: true),
    );

    // ---- 1. Dedicated VPC for the Cloud SQL instance ----------------------

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'sql_vpc',
        name: .literal('cloudsql-vpc'),
        autoCreateSubnetworks: .literal(false),
      ),
    );

    // ---- 2. Private-services peering range (PSA range) --------------------

    final psaRange = add(
      GoogleComputeGlobalAddress(
        localName: 'psa_range',
        name: .literal('cloudsql-psa-range'),
        addressType: .literal(.internal),
        purpose: .literal(.vpcPeering),
        prefixLength: .literal(16),
        network: vpc.ref,
      ),
    );

    // ---- 3. Service Networking peering connection ------------------------

    final psaConnection = add(
      GoogleServiceNetworkingConnection(
        localName: 'psa',
        network: vpc.ref,
        service: .literal('servicenetworking.googleapis.com'),
        reservedPeeringRanges: .literal([
          // ServiceNetworking expects the *name* of the global_address, not
          // its self_link. Wrap in a list for the schema's repeated string.
          psaRange.name.interpolation,
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
        name: .literal('orders-primary'),
        databaseVersion: .literal(.postgres15),
        region: .literal('asia-northeast1'),
        deletionProtection: .literal(false),
        settings: SqlDatabaseInstanceSettings(
          tier: .literal('db-custom-2-7680'),
          availabilityType: .literal(.zonal),
          edition: .literal(.enterprise),
          diskSize: .literal(20),
          diskType: .literal(.pdSsd),
          ipConfiguration: .new(
            ipv4Enabled: .literal(false),
            privateNetwork: vpc.ref,
            // Pins the instance to the named PSA range; without this the
            // API would pick any peered range, which is ambiguous when a
            // VPC has multiple PSA peerings.
            allocatedIpRange: psaRange.ref,
          ),
          insightsConfig: .new(
            queryInsightsEnabled: .literal(true),
            queryStringLength: .literal(1024),
            recordApplicationTags: .literal(true),
            recordClientAddress: .literal(false),
          ),
        ),
        dependsOn: [psaConnection],
      ),
    );

    // ---- 5. Application database -----------------------------------------

    add(
      GoogleSqlDatabase(
        localName: 'orders',
        instance: primary.ref,
        name: .literal('orders'),
      ),
    );

    // ---- 6. Built-in DB user ---------------------------------------------

    add(
      GoogleSqlUser(
        localName: 'app',
        instance: primary.ref,
        name: .literal('app'),
        type: .literal(.builtIn),
        passwordWo: .literal(dbPassword),
        passwordWoVersion: .literal(1),
      ),
    );

    add(
      GoogleSqlSslCert(
        localName: 'client_cert',
        instance: primary.ref,
        commonName: .literal('app-client'),
      ),
    );

    add(
      GoogleSqlSourceRepresentationInstance(
        localName: 'legacy_mysql',
        name: .literal('legacy-mysql'),
        region: .literal('asia-northeast1'),
        databaseVersion: .literal('MYSQL_8_0'),
        host: .literal('203.0.113.50'),
        port: .literal(3306),
        username: .literal('replica'),
        password: TfArg.variable('source_rep_password'),
      ),
    );

    // ---- 7. AlloyDB cluster + primary (Wave 33) ---------------------------
    //
    // Reuses the same VPC + PSA range as Cloud SQL private IP.

    final alloyCluster = add(
      GoogleAlloydbCluster(
        localName: 'alloydb',
        clusterId: .literal('app-alloydb'),
        location: .literal('asia-northeast1'),
        networkConfig: AlloydbClusterNetworkConfig(
          network: vpc.ref,
          allocatedIpRange: psaRange.ref,
        ),
        initialUser: AlloydbClusterInitialUser(
          user: .literal('postgres'),
          password: .passwordWo(.literal(dbPassword)),
          passwordWoVersion: .literal('1'),
        ),
        dependsOn: [psaConnection],
      ),
    );

    add(
      GoogleAlloydbInstance(
        localName: 'alloydb_primary',
        cluster: alloyCluster.ref,
        instanceId: .literal('primary'),
        instanceType: .literal(.primary),
        machineConfig: AlloydbInstanceMachineConfig(cpuCount: .literal(2)),
      ),
    );

    add(
      GoogleAlloydbUser(
        localName: 'alloydb_app',
        cluster: alloyCluster.ref,
        userId: .literal('app'),
        userType: .literal(.alloydbBuiltIn),
        password: .passwordWo(.literal(dbPassword)),
        passwordWoVersion: .literal('1'),
      ),
    );

    add(
      GoogleAlloydbBackup(
        localName: 'alloydb_nightly',
        backupId: .literal('nightly-backup'),
        clusterName: alloyCluster.ref,
        location: .literal('asia-northeast1'),
      ),
    );
  }
}
