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
import 'package:terradart_google/data.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Compute rollout stack: custom plan + global Ops Agent extension policy.
final class ComputeRolloutStack extends Stack {
  ComputeRolloutStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final current = addData(GoogleProject(localName: 'current'));

    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: .literal('compute.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final plan = add(
      GoogleComputeRolloutPlan(
        localName: 'smoke_plan',
        name: .literal('terradart-smoke-rollout'),
        description: .literal('TerraDart smoke rollout plan'),
        locationScope: .literal(.zonal),
        waves: [
          ComputeRolloutPlanWaves(
            displayName: .literal('wave-1'),
            selectors: [
              ComputeRolloutPlanWavesSelectors(
                locationSelector:
                    ComputeRolloutPlanWavesSelectorsLocationSelector(
                      includedLocations: .literal(['us-central1-a']),
                    ),
              ),
            ],
            validation: ComputeRolloutPlanWavesValidation(
              type: .literal('time'),
              timeBasedValidationMetadata:
                  ComputeRolloutPlanWavesValidationTimeBasedValidationMetadata(
                    waitDuration: .literal('0s'),
                  ),
            ),
            orchestrationOptions: ComputeRolloutPlanWavesOrchestrationOptions(
              maxConcurrentLocations: .literal(10),
              maxConcurrentResourcesPerLocation: .literal(10),
            ),
          ),
        ],
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    // Upstream AccTest uses projects/{number}/locations/global/rolloutPlans/{name}
    // — a bare plan name returns Internal error at apply time.
    final planResourceName =
        'projects/${current.number.interpolation}/locations/global/rolloutPlans/'
        '${plan.nameRef.interpolation}';

    add(
      GoogleComputeGlobalVmExtensionPolicy(
        localName: 'ops_agent_global',
        name: .literal('terradart-global-ops-agent'),
        description: .literal(
          'Global Ops Agent policy (label-gated; no matching VMs)',
        ),
        priority: .literal(10),
        extensionPolicies: [
          ComputeGlobalVmExtensionPolicyExtensionPolicies(
            extensionName: .literal('ops-agent'),
            pinnedVersion: .literal('2.66.0'),
          ),
        ],
        instanceSelectors: [
          ComputeGlobalVmExtensionPolicyInstanceSelectors(
            labelSelector:
                ComputeGlobalVmExtensionPolicyInstanceSelectorsLabelSelector(
                  inclusionLabels: .literal({'terradart-smoke': 'never'}),
                ),
          ),
        ],
        rolloutOperation: ComputeGlobalVmExtensionPolicyRolloutOperation(
          rolloutInput:
              ComputeGlobalVmExtensionPolicyRolloutOperationRolloutInput(
                plan: .name(.literal(planResourceName)),
              ),
        ),
        dependsOn: [ResourceDependency(apiCompute), ResourceDependency(plan)],
      ),
    );
  }
}
