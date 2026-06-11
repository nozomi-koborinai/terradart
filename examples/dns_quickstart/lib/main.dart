/// DNS quickstart -- Phase 4.5 Wave 2 end-to-end example.
///
/// Defines an `InternalDnsStack` that provisions:
/// - a VPC network (`gnd-vpc`) the private zone attaches to,
/// - a private DNS managed zone (`internal.corp.`) scoped to the VPC via
///   `PrivateVisibilityConfig(networks: [PrivateVisibilityNetwork(...)])`,
/// - DNSSEC enabled via typed enums (`DnssecState.on`,
///   `DnssecKeyAlgorithm.rsasha256`, `DnssecKeyType.keySigning`),
///
/// demonstrating the 10 nested-block helper classes from
/// `google_dns_managed_zone` and the 6 schema-faithful enums
/// (visibility / DNSSEC state / DNSSEC non-existence / DNSSEC algorithm /
/// DNSSEC key-type / forwarding-path).
///
/// Wave 5 Batch 4 adds a `roles/dns.admin` binding on the zone for a
/// per-zone admin SA -- the standard delegated-DNS pattern where a team
/// owns its own subdomain without project-wide DNS admin.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/dns.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

final class InternalDnsStack extends Stack {
  InternalDnsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final vpc = GoogleComputeNetwork(
      localName: 'gnd_vpc',
      name: TfArg.literal('gnd-vpc'),
      autoCreateSubnetworks: TfArg.literal(false),
    );
    add(vpc);

    final internalZone = GoogleDnsManagedZone(
      localName: 'internal',
      name: TfArg.literal('internal-corp'),
      dnsName: TfArg.literal('internal.corp.'),
      description:
          TfArg.literal('Private DNS for internal services in gnd-vpc.'),
      visibility: TfArg.literal(DnsZoneVisibility.private),
      privateVisibilityConfig: DnsManagedZonePrivateVisibilityConfig(
        networks: [
          DnsManagedZonePrivateVisibilityNetwork(
            networkUrl: TfArg.ref(vpc.id),
          ),
        ],
      ),
      dnssecConfig: DnsManagedZoneDnssecConfig(
        state: DnssecState.on,
        nonExistence: DnssecNonExistence.nsec3,
        defaultKeySpecs: [
          DnsManagedZoneDnssecKeySpec(
            algorithm: DnssecKeyAlgorithm.rsasha256,
            keyType: DnssecKeyType.keySigning,
            keyLength: TfArg.literal(2048),
          ),
          DnsManagedZoneDnssecKeySpec(
            algorithm: DnssecKeyAlgorithm.rsasha256,
            keyType: DnssecKeyType.zoneSigning,
            keyLength: TfArg.literal(1024),
          ),
        ],
      ),
    );
    add(internalZone);

    // ---- IAM: delegated zone admin ----------------------------------------
    //
    // The networking team owns `internal.corp.` end-to-end. Granting
    // `roles/dns.admin` on this one zone (rather than project-wide) lets
    // them add / update / remove records without giving them control over
    // other zones in the same project.

    final zoneAdmin = GoogleServiceAccount(
      localName: 'internal_zone_admin',
      accountId: TfArg.literal('internal-zone-admin'),
      displayName: TfArg.literal('internal.corp. zone admin'),
    );
    add(zoneAdmin);

    add(
      GoogleDnsManagedZoneIamMember(
        localName: 'internal_zone_admin_binding',
        managedZone: TfArg.ref(internalZone.nameRef),
        role: TfArg.literal('roles/dns.admin'),
        member: TfArg.ref(zoneAdmin.iamMember),
      ),
    );

    // ---- Wave 23: project policy + A record ---------------------------------

    add(
      GoogleDnsPolicy(
        localName: 'internal_logging',
        name: TfArg.literal('internal-logging-policy'),
        enableLogging: TfArg.literal(true),
      ),
    );

    add(
      GoogleDnsRecordSet(
        localName: 'api_a',
        managedZone: TfArg.ref(internalZone.nameRef),
        name: TfArg.literal('api.internal.corp.'),
        type: TfArg.literal(DnsRecordSetType.a),
        ttl: TfArg.literal(300),
        rrdatas: TfArg.literal(['10.0.0.10']),
      ),
    );

    // ---- Wave 24: response policy + override rule ---------------------------

    add(
      GoogleDnsResponsePolicy(
        localName: 'internal_overrides',
        responsePolicyName: TfArg.literal('internal-overrides'),
        description: TfArg.literal(
          'Local DNS overrides for hybrid resolution in gnd-vpc.',
        ),
      ),
    );

    add(
      GoogleDnsResponsePolicyRule(
        localName: 'legacy_fallback',
        responsePolicy: TfArg.literal('internal-overrides'),
        ruleName: TfArg.literal('legacy-fallback'),
        dnsName: TfArg.literal('legacy.internal.corp.'),
        localData: TfArg.literal({
          'local_datas': [
            {
              'name': 'legacy',
              'type': 'A',
              'ttl': 300,
              'rrdatas': ['10.0.0.20'],
            },
          ],
        }),
      ),
    );
  }
}
