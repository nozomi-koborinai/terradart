/// Org leftover quickstart — hierarchical firewall / Cloud Armor, BYOIP,
/// Storage Intelligence folder/org, and a Wasm plugin stub.
///
/// Skip-listed; synth + `terraform validate` only. Do not apply.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage_control.dart';
import 'package:terradart_google/time.dart';

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
      barrels: [
        Barrels.compute,
        Barrels.storageControl,
        Barrels.network,
      ],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleComputeFirewallPolicyWithRules(
        localName: 'fw_with_rules',
        parent: TfArg.literal(org),
        shortName: TfArg.literal('terradart-fw'),
        rule: [
          ComputeFirewallPolicyWithRulesRule(
            action: TfArg.literal('allow'),
            priority: TfArg.literal(1000),
            match: ComputeFirewallPolicyWithRulesRuleMatch(
              srcIpRanges: TfArg.literal(['192.0.2.0/24']),
              layer4Config: [
                ComputeFirewallPolicyWithRulesRuleMatchLayer4Config(
                  ipProtocol: TfArg.literal('tcp'),
                  ports: TfArg.literal(['443']),
                ),
              ],
            ),
          ),
        ],
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    final policy = add(
      GoogleComputeOrganizationSecurityPolicy(
        localName: 'org_armor',
        parent: TfArg.literal(org),
        displayName: TfArg.literal('terradart-org-armor'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleComputeOrganizationSecurityPolicyAssociation(
        localName: 'org_armor_assoc',
        name: TfArg.literal('terradart-org-armor-assoc'),
        policyId: TfArg.ref(policy.id),
        attachmentId: TfArg.literal(org),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );
    add(
      GoogleComputeOrganizationSecurityPolicyRule(
        localName: 'org_armor_rule',
        policyId: TfArg.ref(policy.id),
        action: TfArg.literal('allow'),
        priority: TfArg.literal(1000),
        match: ComputeOrganizationSecurityPolicyRuleMatch(
          config: ComputeOrganizationSecurityPolicyRuleMatchConfig(
            srcIpRanges: TfArg.literal(['192.0.2.0/24']),
          ),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    final advertised = add(
      GoogleComputePublicAdvertisedPrefix(
        localName: 'byoip_pap',
        name: TfArg.literal('terradart-pap'),
        ipCidrRange: TfArg.literal('1.2.3.0/24'),
        description: TfArg.literal('placeholder BYOIP prefix'),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleComputePublicDelegatedPrefix(
        localName: 'byoip_pdp',
        name: TfArg.literal('terradart-pdp'),
        region: TfArg.literal('us-central1'),
        ipCidrRange: TfArg.literal('1.2.3.0/25'),
        parentPrefix: TfArg.ref(advertised.id),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(advertised)],
      ),
    );

    add(
      GoogleStorageControlFolderIntelligenceConfig(
        localName: 'folder_intel',
        name: TfArg.literal('123456789'),
        editionConfig: TfArg.literal('DISABLED'),
        dependsOn: apiDeps,
      ),
    );
    add(
      GoogleStorageControlOrganizationIntelligenceConfig(
        localName: 'org_intel',
        name: TfArg.literal('123456789'),
        editionConfig: TfArg.literal('DISABLED'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkServicesWasmPlugin(
        localName: 'wasm',
        name: TfArg.literal('terradart-wasm'),
        mainVersionId: TfArg.literal('v1'),
        versions: [
          NetworkServicesWasmPluginVersions(
            versionName: TfArg.literal('v1'),
            imageUri: TfArg.literal(
              'us-docker.pkg.dev/example/wasm/plugin:v1',
            ),
          ),
        ],
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
