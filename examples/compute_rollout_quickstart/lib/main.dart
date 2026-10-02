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

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Compute rollout stack: custom plan + global Ops Agent extension policy.
final class ComputeRolloutStack extends Stack {
  ComputeRolloutStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final current = add(DataGoogleProject('current'));

    final apiCompute = add(
      GoogleProjectService(
        'api_compute',
        service: .literal('compute.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final plan = add(
      GoogleComputeRolloutPlan(
        'smoke_plan',
        name: .literal('terradart-smoke-rollout'),
        description: .literal('TerraDart smoke rollout plan'),
        locationScope: .zonal,
        waves: [
          ComputeRolloutPlanWaves(
            displayName: .literal('wave-1'),
            selectors: [
              .new(
                locationSelector: .new(
                  includedLocations: .literal(['us-central1-a']),
                ),
              ),
            ],
            validation: .new(
              type: .literal('time'),
              timeBasedValidationMetadata: .new(waitDuration: .literal('0s')),
            ),
            orchestrationOptions: .new(
              maxConcurrentLocations: .literal(10),
              maxConcurrentResourcesPerLocation: .literal(10),
            ),
          ),
        ],
        dependsOn: [apiCompute],
      ),
    );

    // Upstream AccTest uses projects/{number}/locations/global/rolloutPlans/{name}
    // — a bare plan name returns Internal error at apply time.
    final planResourceName =
        'projects/${current.number.interpolation}/locations/global/rolloutPlans/'
        '${plan.name.interpolation}';

    add(
      GoogleComputeGlobalVmExtensionPolicy(
        'ops_agent_global',
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
            labelSelector: .new(
              inclusionLabels: .literal({'terradart-smoke': 'never'}),
            ),
          ),
        ],
        rolloutOperation: ComputeGlobalVmExtensionPolicyRolloutOperation(
          rolloutInput: .new(plan: .name(.literal(planResourceName))),
        ),
        dependsOn: [apiCompute, plan],
      ),
    );
  }
}
