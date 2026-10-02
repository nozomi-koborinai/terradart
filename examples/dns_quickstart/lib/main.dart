/// DNS quickstart -- Phase 4.5 Wave 2 end-to-end example.
///
/// Defines an `InternalDnsStack` that provisions:
/// - a VPC network (`gnd-vpc`) the private zone attaches to,
/// - a private DNS managed zone (`internal.corp.`) scoped to the VPC via
///   `PrivateVisibilityConfig(networks: [PrivateVisibilityNetwork(...)])`,
///
/// demonstrating the nested-block helper classes from
/// `google_dns_managed_zone` and the schema-faithful enums
/// (visibility / forwarding-path). DNSSEC is a public-zone-only feature and
/// is therefore not configured on this private zone.
///
/// Zone IAM covers member / binding / policy for a per-zone admin SA — the
/// standard delegated-DNS pattern where a team owns its own subdomain without
/// project-wide DNS admin.
library;

import 'dart:convert';

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/dns.dart';
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

final class InternalDnsStack extends Stack {
  InternalDnsStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
      ) {
    final vpc = GoogleComputeNetwork(
      'gnd_vpc',
      name: .literal('gnd-vpc'),
      autoCreateSubnetworks: .literal(false),
    );
    add(vpc);

    final internalZone = GoogleDnsManagedZone(
      'internal',
      name: .literal('internal-corp'),
      dnsName: .literal('internal.corp.'),
      description: .literal('Private DNS for internal services in gnd-vpc.'),
      visibility: .private,
      privateVisibilityConfig: DnsManagedZonePrivateVisibilityConfig(
        networks: [.new(networkUrl: vpc.ref)],
      ),
      // NOTE: DNSSEC is a public-internet chain-of-trust feature and is only
      // valid on PUBLIC managed zones; a PRIVATE zone rejects `dnssec_config`
      // at apply time ("Private zones do not support DNSSEC"). This zone is
      // private (visibility above), so no `dnssecConfig` block is set.
    );
    add(internalZone);

    // ---- IAM: delegated zone admin ----------------------------------------
    //
    // The networking team owns `internal.corp.` end-to-end. Granting
    // `roles/dns.admin` on this one zone (rather than project-wide) lets
    // them add / update / remove records without giving them control over
    // other zones in the same project.

    final zoneAdmin = GoogleServiceAccount(
      'internal_zone_admin',
      accountId: .literal('internal-zone-admin'),
      displayName: .literal('internal.corp. zone admin'),
    );
    add(zoneAdmin);

    // Serialize member → binding → policy so destroy cannot race concurrent
    // SetIamPolicy calls on the same zone (DNS API returned 500 when member
    // and binding tore down in parallel during a destroy).
    final zoneAdminMember = add(
      GoogleDnsManagedZoneIamMember(
        'internal_zone_admin_member',
        managedZone: internalZone.ref,
        role: .literal('roles/dns.admin'),
        member: zoneAdmin.principal,
        dependsOn: [internalZone, zoneAdmin],
      ),
    );

    final zoneAdminBinding = add(
      GoogleDnsManagedZoneIamBinding(
        'internal_zone_admin_binding',
        managedZone: internalZone.ref,
        role: .literal('roles/dns.admin'),
        members: .literal([zoneAdmin.principal]),
        dependsOn: [internalZone, zoneAdminMember],
      ),
    );

    add(
      GoogleDnsManagedZoneIamPolicy(
        'internal_zone_admin_policy',
        managedZone: internalZone.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/dns.admin',
            member:
                'serviceAccount:internal-zone-admin@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [internalZone, zoneAdminBinding],
      ),
    );

    // ---- Wave 23: project policy + A record ---------------------------------

    add(
      GoogleDnsPolicy(
        'internal_logging',
        name: .literal('internal-logging-policy'),
        enableLogging: .literal(true),
      ),
    );

    add(
      GoogleDnsRecordSet(
        'api_a',
        managedZone: internalZone.ref,
        name: .literal('api.internal.corp.'),
        type: .a,
        ttl: .literal(300),
        rrdatas: .literal(['10.0.0.10']),
      ),
    );

    // ---- Wave 24: response policy + override rule ---------------------------

    final overrides = add(
      GoogleDnsResponsePolicy(
        'internal_overrides',
        responsePolicyName: .literal('internal-overrides'),
        description: .literal(
          'Local DNS overrides for hybrid resolution in gnd-vpc.',
        ),
      ),
    );

    add(
      GoogleDnsResponsePolicyRule(
        'legacy_fallback',
        // `response_policy` takes the policy's `response_policy_name` value.
        // The wrapper exposes no `response_policy_name` attribute ref, so the
        // literal (matching the policy above) supplies the value and the
        // explicit `dependsOn` guarantees the policy is created first
        // (otherwise apply fails: the rule references a policy that doesn't
        // exist yet).
        responsePolicy: .literal('internal-overrides'),
        dependsOn: [overrides],
        ruleName: .literal('legacy-fallback'),
        dnsName: .literal('legacy.internal.corp.'),
        localData: DnsResponsePolicyRuleLocalData(
          localDatas: [
            .new(
              // The local-data rrSet name must be a fully-qualified DNS name
              // (trailing dot), matching the rule's `dns_name` above. A bare
              // label such as 'legacy' is rejected at apply time
              // ("Invalid value for ...localData.rrSet.Name: 'legacy'").
              name: .literal('legacy.internal.corp.'),
              type: DnsResponsePolicyRuleRecordType.a,
              ttl: .literal(300),
              rrdatas: const ['10.0.0.20'],
            ),
          ],
        ),
      ),
    );
  }
}
