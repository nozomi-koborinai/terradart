/// Compute Engine rollout plan + global VM extension policy quickstart.
///
/// Enables `compute.googleapis.com` and provisions:
/// - a custom [GoogleComputeRolloutPlan] (wave strategy metadata),
/// - a [GoogleComputeGlobalVmExtensionPolicy] that references that plan.
///
/// **Cost:** both resources are configuration metadata only (Compute Engine
/// catalog `6F81-5844-456A` has no rollout/extension SKU). No VMs are
/// created. The policy's instance selector uses label
/// `terradart-smoke=never` so it cannot match existing VMs.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Compute rollout stack: custom plan + global Ops Agent extension policy.
final class ComputeRolloutStack extends Stack {
  ComputeRolloutStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final plan = add(
      GoogleComputeRolloutPlan(
        localName: 'smoke_plan',
        name: TfArg.literal('terradart-smoke-rollout'),
        description: TfArg.literal('TerraDart smoke rollout plan'),
        locationScope: TfArg.literal(ComputeRolloutPlanLocationScope.zonal),
        waves: [
          ComputeRolloutPlanWaves(
            displayName: TfArg.literal('wave-1'),
            selectors: [
              ComputeRolloutPlanWavesSelectors(
                locationSelector:
                    ComputeRolloutPlanWavesSelectorsLocationSelector(
                  includedLocations: TfArg.literal(['us-central1-a']),
                ),
              ),
            ],
            validation: ComputeRolloutPlanWavesValidation(
              type: TfArg.literal('manual'),
            ),
          ),
        ],
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    add(
      GoogleComputeGlobalVmExtensionPolicy(
        localName: 'ops_agent_global',
        name: TfArg.literal('terradart-global-ops-agent'),
        description: TfArg.literal(
          'Global Ops Agent policy (label-gated; no matching VMs)',
        ),
        extensionPolicies: [
          ComputeGlobalVmExtensionPolicyExtensionPolicies(
            extensionName: TfArg.literal('ops-agent'),
            pinnedVersion: TfArg.literal('2.66.0'),
          ),
        ],
        instanceSelectors: [
          ComputeGlobalVmExtensionPolicyInstanceSelectors(
            labelSelector:
                ComputeGlobalVmExtensionPolicyInstanceSelectorsLabelSelector(
              inclusionLabels: TfArg.literal({
                'terradart-smoke': 'never',
              }),
            ),
          ),
        ],
        rolloutOperation: ComputeGlobalVmExtensionPolicyRolloutOperation(
          rolloutInput:
              ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput(
            name: TfArg.ref(plan.nameRef),
          ),
        ),
        dependsOn: [
          ResourceDependency(apiCompute),
          ResourceDependency(plan),
        ],
      ),
    );
  }
}
