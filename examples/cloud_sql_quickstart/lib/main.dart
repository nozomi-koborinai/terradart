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
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/service_networking.dart';

class CloudSqlStack extends Stack {
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

    add(
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
    // `psaRange.nameRef` is referenced here only for completeness; the
    // actual gating dependency on the peering connection is established
    // via `private_network` -> `vpc.selfLink`.

    final primary = add(
      GoogleSqlDatabaseInstance(
        localName: 'primary',
        name: TfArg.literal('orders-primary'),
        databaseVersion: TfArg.literal(DatabaseVersion.postgres15),
        region: TfArg.literal('asia-northeast1'),
        deletionProtection: TfArg.literal(false),
        settings: Settings(
          tier: TfArg.literal('db-custom-2-7680'),
          availabilityType: TfArg.literal(SqlAvailabilityType.zonal),
          edition: TfArg.literal(SqlEdition.enterprise),
          diskSize: TfArg.literal(20),
          diskType: TfArg.literal(SqlDiskType.pdSsd),
          ipConfiguration: IpConfiguration(
            ipv4Enabled: TfArg.literal(false),
            privateNetwork: TfArg.ref(vpc.selfLink),
            allocatedIpRange: TfArg.ref(psaRange.nameRef),
          ),
        ),
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
        password: TfArg.literal(dbPassword),
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
