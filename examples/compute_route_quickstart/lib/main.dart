/// Compute networking-extras quickstart -- an end-to-end terradart example.
///
/// Defines a `NetworkRouteStack` that enables the Compute API and provisions:
/// - a custom-mode VPC (`terradart-route-demo`),
/// - a static `google_compute_route` sending an unused RFC-1918 range to the
///   default internet gateway,
/// - a project-wide `google_compute_project_metadata_item` (an ops-owner tag).
///
/// All three resources are free (no VMs), so the stack creates and destroys
/// quickly and cleanly in a single project.
///
/// Exports the VPC name as a typed Dart constant via `Stack.addExport`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Compute networking-extras Stack: a VPC, a static route, and a project
/// metadata item.
final class NetworkRouteStack extends Stack {
  NetworkRouteStack({required String projectId})
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

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'demo',
        name: TfArg.literal('terradart-route-demo'),
        autoCreateSubnetworks: TfArg.literal(false),
        routingMode: TfArg.literal(RoutingMode.regional),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final route = add(
      GoogleComputeRoute(
        localName: 'egress_demo',
        name: TfArg.literal('terradart-egress-demo'),
        network: TfArg.ref(vpc.id),
        destRange: TfArg.literal('192.168.255.0/24'),
        description: TfArg.literal('Demo egress route to the internet gateway'),
        priority: TfArg.literal(1000),
        nextHopGateway: TfArg.literal('default-internet-gateway'),
        dependsOn: [ResourceDependency(vpc)],
      ),
    );

    add(
      GoogleComputeProjectMetadataItem(
        localName: 'ops_owner',
        key: TfArg.literal('terradart-ops-owner'),
        value: TfArg.literal('platform-team'),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    // A global network firewall policy (the modern, policy-based replacement
    // for standalone VPC firewall rules; rules/associations attach separately).
    add(
      GoogleComputeNetworkFirewallPolicy(
        localName: 'edge_policy',
        name: TfArg.literal('terradart-edge-policy'),
        description: TfArg.literal('Global network firewall policy (demo)'),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    // Literal VPC name -- emitted as a Dart constant at synth time.
    addExport('DEMO_VPC_NAME', StringExport('terradart-route-demo'));

    // Full route resource id -- Terraform output only (computed).
    addExport(
      'DEMO_ROUTE_ID',
      ResourceIdExport(route.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/network_route_stack.app.dart');
  }
}
