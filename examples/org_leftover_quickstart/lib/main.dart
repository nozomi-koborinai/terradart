/// Org leftover quickstart — hierarchical firewall / Cloud Armor, BYOIP,
/// Storage Intelligence folder/org, and a Wasm plugin stub.
///
/// Coverage stack with dummy values; synth + `terraform validate` only.
/// Never apply.
library;

import 'package:terradart_core/terradart_core.dart';
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
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.compute, Barrels.storageControl, Barrels.network],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleComputeFirewallPolicyWithRules(
        localName: 'fw_with_rules',
        parent: .literal(org),
        shortName: .literal('terradart-fw'),
        rule: [
          ComputeFirewallPolicyWithRulesRule(
            action: .literal('allow'),
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
        localName: 'org_armor',
        parent: .literal(org),
        displayName: .literal('terradart-org-armor'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleComputeOrganizationSecurityPolicyAssociation(
        localName: 'org_armor_assoc',
        name: .literal('terradart-org-armor-assoc'),
        policyId: policy.ref,
        attachmentId: .literal(org),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );
    add(
      GoogleComputeOrganizationSecurityPolicyRule(
        localName: 'org_armor_rule',
        policyId: policy.ref,
        action: .literal('allow'),
        priority: .literal(1000),
        match: ComputeOrganizationSecurityPolicyRuleMatch(
          config: .new(srcIpRanges: .literal(['192.0.2.0/24'])),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    final advertised = add(
      GoogleComputePublicAdvertisedPrefix(
        localName: 'byoip_pap',
        name: .literal('terradart-pap'),
        ipCidrRange: .literal('1.2.3.0/24'),
        description: .literal('placeholder BYOIP prefix'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleComputePublicDelegatedPrefix(
        localName: 'byoip_pdp',
        name: .literal('terradart-pdp'),
        region: .literal('us-central1'),
        ipCidrRange: .literal('1.2.3.0/25'),
        parentPrefix: advertised.ref,
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(advertised)],
      ),
    );

    add(
      GoogleStorageControlFolderIntelligenceConfig(
        localName: 'folder_intel',
        name: .literal('123456789'),
        editionConfig: .literal('DISABLED'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleStorageControlOrganizationIntelligenceConfig(
        localName: 'org_intel',
        name: .literal('123456789'),
        editionConfig: .literal('DISABLED'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkServicesWasmPlugin(
        localName: 'wasm',
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
