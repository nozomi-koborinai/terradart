/// Org leftover quickstart — hierarchical firewall / Cloud Armor, BYOIP,
/// Storage Intelligence folder/org, and a Wasm plugin stub.
///
/// Coverage stack with dummy values; synth + `terraform validate` only.
/// Never apply.
library;

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage_control.dart';
import 'package:terradart_time/terradart_time.dart';

final class OrgLeftoverStack extends Stack {
  OrgLeftoverStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    const org = 'organizations/123456789';
    final apis = [
      for (final api in [
        'compute',
        'networkconnectivity',
        'networkmanagement',
        'networksecurity',
        'networkservices',
        'storage',
      ])
        add(
          GoogleProjectService(
            'api_$api',
            service: .literal('$api.googleapis.com'),
            disableOnDestroy: .literal(false),
          ),
        ),
    ];
    final apiDeps = [
      add(
        TimeSleep(
          'api_propagation',
          createDuration: .duration(const Duration(seconds: 60)),
          triggers: .literal({
            for (final api in apis) api.localName: api.id.interpolation,
          }),
          dependsOn: apis,
        ),
      ),
    ];

    add(
      GoogleComputeFirewallPolicyWithRules(
        'fw_with_rules',
        parent: .literal(org),
        shortName: .literal('terradart-fw'),
        rule: [
          ComputeFirewallPolicyWithRulesRule(
            action: .allow,
            priority: .literal(1000),
            match: .new(
              srcIpRanges: .literal(['192.0.2.0/24']),
              layer4Config: [
                .new(ipProtocol: .literal('tcp'), ports: .literal(['443'])),
              ],
            ),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    final policy = add(
      GoogleComputeOrganizationSecurityPolicy(
        'org_armor',
        parent: .literal(org),
        displayName: .literal('terradart-org-armor'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleComputeOrganizationSecurityPolicyAssociation(
        'org_armor_assoc',
        name: .literal('terradart-org-armor-assoc'),
        policyId: policy.ref,
        attachmentId: .literal(org),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [policy],
      ),
    );
    add(
      GoogleComputeOrganizationSecurityPolicyRule(
        'org_armor_rule',
        policyId: policy.ref,
        action: .literal('allow'),
        priority: .literal(1000),
        match: ComputeOrganizationSecurityPolicyRuleMatch(
          config: .new(srcIpRanges: .literal(['192.0.2.0/24'])),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [policy],
      ),
    );

    final advertised = add(
      GoogleComputePublicAdvertisedPrefix(
        'byoip_pap',
        name: .literal('terradart-pap'),
        ipCidrRange: .literal('1.2.3.0/24'),
        description: .literal('placeholder BYOIP prefix'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleComputePublicDelegatedPrefix(
        'byoip_pdp',
        name: .literal('terradart-pdp'),
        region: .literal('us-central1'),
        ipCidrRange: .literal('1.2.3.0/25'),
        parentPrefix: advertised.ref,
        deletionPolicy: .literal('DELETE'),
        dependsOn: [advertised],
      ),
    );

    add(
      GoogleStorageControlFolderIntelligenceConfig(
        'folder_intel',
        name: .literal('123456789'),
        editionConfig: .disabled,
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleStorageControlOrganizationIntelligenceConfig(
        'org_intel',
        name: .literal('123456789'),
        editionConfig: .disabled,
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkServicesWasmPlugin(
        'wasm',
        name: .literal('terradart-wasm'),
        mainVersionId: .literal('v1'),
        versions: [
          NetworkServicesWasmPluginVersions(
            versionName: .literal('v1'),
            imageUri: .literal('us-docker.pkg.dev/example/wasm/plugin:v1'),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
