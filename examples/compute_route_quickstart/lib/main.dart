/// Compute networking-extras quickstart -- an end-to-end terradart example.
///
/// Defines a `NetworkRouteStack` that enables the Compute API and provisions:
/// - a custom-mode VPC (`terradart-route-demo`),
/// - a static `google_compute_route` sending an unused RFC-1918 range to the
///   default internet gateway,
/// - a Cloud Router plus a PREFIX Named Set (CEL CIDR collection for route
///   policies),
/// - global + regional network firewall policies with authoritative IAM
///   binding/policy adjuncts,
/// - a project-wide `google_compute_project_metadata_item` (an ops-owner tag).
///
/// No VMs — the stack creates and destroys quickly in a single project.
///
/// Exports the VPC name as a typed Dart constant via `Stack.addConstant`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
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

/// Compute networking-extras Stack: a VPC, static route, Cloud Router Named
/// Set, network firewall IAM adjuncts, and a project metadata item.
final class NetworkRouteStack extends Stack {
  NetworkRouteStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/network_route_stack.app.dart'),
      ) {
    final apiCompute = add(
      GoogleProjectService(
        'api_compute',
        service: .literal('compute.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiIam = add(
      GoogleProjectService(
        'api_iam',
        service: .literal('iam.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final edgeViewer = add(
      GoogleServiceAccount(
        'edge_viewer',
        accountId: .literal('route-edge-viewer'),
        displayName: .literal('Network firewall policy viewer (demo)'),
        dependsOn: [apiIam],
      ),
    );

    final vpc = add(
      GoogleComputeNetwork(
        'demo',
        name: .literal('terradart-route-demo'),
        autoCreateSubnetworks: .literal(false),
        routingMode: .regional,
        dependsOn: [apiCompute],
      ),
    );

    final route = add(
      GoogleComputeRoute(
        'egress_demo',
        name: .literal('terradart-egress-demo'),
        network: vpc.ref,
        destRange: .literal('192.168.255.0/24'),
        description: .literal('Demo egress route to the internet gateway'),
        priority: .literal(1000),
        nextHop: .gateway(nextHopGateway: .literal('default-internet-gateway')),
        dependsOn: [vpc],
      ),
    );

    final router = add(
      GoogleComputeRouter(
        'edge',
        name: .literal('terradart-route-router'),
        network: .network(vpc.ref),
        region: .literal('us-central1'),
        description: .literal('Cloud Router for Named Set demo'),
        dependsOn: [vpc],
      ),
    );

    add(
      GoogleComputeRouterNamedSet(
        'prefixes',
        name: .literal('terradart-prefixes'),
        router: router.ref,
        region: .literal('us-central1'),
        type: .namedSetTypePrefix,
        description: .literal('Demo PREFIX named set for route policies'),
        elements: [
          ComputeRouterNamedSetElements(
            expression: .literal("'10.0.0.0/8'"),
            title: .literal('rfc1918-10'),
          ),
        ],
        dependsOn: [router],
      ),
    );

    add(
      GoogleComputeProjectMetadataItem(
        'ops_owner',
        key: .literal('terradart-ops-owner'),
        value: .literal('platform-team'),
        dependsOn: [apiCompute],
      ),
    );

    // A global network firewall policy (the modern, policy-based replacement
    // for standalone VPC firewall rules; rules/associations attach separately).
    final edgePolicy = add(
      GoogleComputeNetworkFirewallPolicy(
        'edge_policy',
        name: .literal('terradart-edge-policy'),
        description: .literal('Global network firewall policy (demo)'),
        dependsOn: [apiCompute],
      ),
    );

    final edgeBinding = add(
      GoogleComputeNetworkFirewallPolicyIamBinding(
        'edge_policy_viewer',
        firewallPolicy: edgePolicy.ref,
        role: .literal('roles/compute.viewer'),
        members: .literal([edgeViewer.principal]),
        dependsOn: [edgePolicy, edgeViewer],
      ),
    );

    add(
      GoogleComputeNetworkFirewallPolicyIamPolicy(
        'edge_policy_policy',
        firewallPolicy: edgePolicy.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/compute.viewer',
            member:
                'serviceAccount:route-edge-viewer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [edgePolicy, edgeBinding],
      ),
    );

    final regionalEdgePolicy = add(
      GoogleComputeRegionNetworkFirewallPolicy(
        'regional_edge_policy',
        name: .literal('terradart-regional-edge-policy'),
        region: .literal('us-central1'),
        description: .literal('Regional network firewall policy (IAM demo)'),
        dependsOn: [apiCompute],
      ),
    );

    final regionalEdgeBinding = add(
      GoogleComputeRegionNetworkFirewallPolicyIamBinding(
        'regional_edge_policy_viewer',
        firewallPolicy: regionalEdgePolicy.ref,
        role: .literal('roles/compute.viewer'),
        members: .literal([edgeViewer.principal]),
        dependsOn: [regionalEdgePolicy, edgeViewer],
      ),
    );

    add(
      GoogleComputeRegionNetworkFirewallPolicyIamPolicy(
        'regional_edge_policy_policy',
        firewallPolicy: regionalEdgePolicy.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/compute.viewer',
            member:
                'serviceAccount:route-edge-viewer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [regionalEdgePolicy, regionalEdgeBinding],
      ),
    );

    // A resource policy: a daily snapshot schedule (keep 7 days), modeled with
    // the typed sealed schedule + retention helpers.
    final snapshotPolicy = add(
      GoogleComputeResourcePolicy(
        'daily_snapshots',
        name: .literal('terradart-daily-snapshots'),
        region: .literal('us-central1'),
        kind: .snapshotSchedulePolicy(
          .new(
            schedule: .dailySchedule(
              .new(daysInCycle: .literal(1), startTime: .literal('04:00')),
            ),
            retentionPolicy: .new(
              maxRetentionDays: .literal(7),
              onSourceDiskDelete: .applyRetentionPolicy,
            ),
          ),
        ),
        dependsOn: [apiCompute],
      ),
    );

    // A small blank zonal disk in the policy's region, then attach the daily
    // snapshot schedule to it via google_compute_disk_resource_policy_attachment
    // (deletion_policy DELETE so the attachment detaches cleanly on destroy).
    final disk = add(
      GoogleComputeDisk(
        'data',
        name: .literal('terradart-data-disk'),
        zone: .literal('us-central1-a'),
        type: .literal('pd-standard'),
        size: .literal(10),
        dependsOn: [apiCompute],
      ),
    );

    add(
      GoogleComputeDiskResourcePolicyAttachment(
        'data_snapshots',
        name: .literal('terradart-daily-snapshots'),
        disk: disk.ref,
        zone: .literal('us-central1-a'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [disk, snapshotPolicy],
      ),
    );

    // Literal VPC name -- emitted as a Dart constant at synth time.
    addConstant('demoVpcName', .ref(vpc.name));

    // Full route resource id -- Terraform output only (computed).
    addOutput('demo_route_id', route.id);
  }
}
