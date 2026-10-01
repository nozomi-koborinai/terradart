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

import 'package:terradart_core/terradart_core.dart';
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
        localName: 'api_compute',
        service: .literal('compute.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiIam = add(
      GoogleProjectService(
        localName: 'api_iam',
        service: .literal('iam.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final edgeViewer = add(
      GoogleServiceAccount(
        localName: 'edge_viewer',
        accountId: .literal('route-edge-viewer'),
        displayName: .literal('Network firewall policy viewer (demo)'),
        dependsOn: [ResourceDependency(apiIam)],
      ),
    );

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'demo',
        name: .literal('terradart-route-demo'),
        autoCreateSubnetworks: .literal(false),
        routingMode: .literal(.regional),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final route = add(
      GoogleComputeRoute(
        localName: 'egress_demo',
        name: .literal('terradart-egress-demo'),
        network: vpc.ref,
        destRange: .literal('192.168.255.0/24'),
        description: .literal('Demo egress route to the internet gateway'),
        priority: .literal(1000),
        nextHop: .gateway(nextHopGateway: .literal('default-internet-gateway')),
        dependsOn: [ResourceDependency(vpc)],
      ),
    );

    final router = add(
      GoogleComputeRouter(
        localName: 'edge',
        name: .literal('terradart-route-router'),
        network: .network(vpc.ref),
        region: .literal('us-central1'),
        description: .literal('Cloud Router for Named Set demo'),
        dependsOn: [ResourceDependency(vpc)],
      ),
    );

    add(
      GoogleComputeRouterNamedSet(
        localName: 'prefixes',
        name: .literal('terradart-prefixes'),
        router: router.ref,
        region: .literal('us-central1'),
        type: .literal(.namedSetTypePrefix),
        description: .literal('Demo PREFIX named set for route policies'),
        elements: [
          ComputeRouterNamedSetElements(
            expression: .literal("'10.0.0.0/8'"),
            title: .literal('rfc1918-10'),
          ),
        ],
        dependsOn: [ResourceDependency(router)],
      ),
    );

    add(
      GoogleComputeProjectMetadataItem(
        localName: 'ops_owner',
        key: .literal('terradart-ops-owner'),
        value: .literal('platform-team'),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    // A global network firewall policy (the modern, policy-based replacement
    // for standalone VPC firewall rules; rules/associations attach separately).
    final edgePolicy = add(
      GoogleComputeNetworkFirewallPolicy(
        localName: 'edge_policy',
        name: .literal('terradart-edge-policy'),
        description: .literal('Global network firewall policy (demo)'),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final edgeBinding = add(
      GoogleComputeNetworkFirewallPolicyIamBinding(
        localName: 'edge_policy_viewer',
        name: .ref(edgePolicy.nameRef),
        role: .literal('roles/compute.viewer'),
        members: .literal([edgeViewer.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(edgePolicy),
          ResourceDependency(edgeViewer),
        ],
      ),
    );

    add(
      GoogleComputeNetworkFirewallPolicyIamPolicy(
        localName: 'edge_policy_policy',
        name: .ref(edgePolicy.nameRef),
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/compute.viewer',
            member:
                'serviceAccount:route-edge-viewer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(edgePolicy),
          ResourceDependency(edgeBinding),
        ],
      ),
    );

    final regionalEdgePolicy = add(
      GoogleComputeRegionNetworkFirewallPolicy(
        localName: 'regional_edge_policy',
        name: .literal('terradart-regional-edge-policy'),
        region: .literal('us-central1'),
        description: .literal('Regional network firewall policy (IAM demo)'),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final regionalEdgeBinding = add(
      GoogleComputeRegionNetworkFirewallPolicyIamBinding(
        localName: 'regional_edge_policy_viewer',
        name: .ref(regionalEdgePolicy.nameRef),
        region: .literal('us-central1'),
        role: .literal('roles/compute.viewer'),
        members: .literal([edgeViewer.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(regionalEdgePolicy),
          ResourceDependency(edgeViewer),
        ],
      ),
    );

    add(
      GoogleComputeRegionNetworkFirewallPolicyIamPolicy(
        localName: 'regional_edge_policy_policy',
        name: .ref(regionalEdgePolicy.nameRef),
        region: .literal('us-central1'),
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/compute.viewer',
            member:
                'serviceAccount:route-edge-viewer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(regionalEdgePolicy),
          ResourceDependency(regionalEdgeBinding),
        ],
      ),
    );

    // A resource policy: a daily snapshot schedule (keep 7 days), modeled with
    // the typed sealed schedule + retention helpers.
    final snapshotPolicy = add(
      GoogleComputeResourcePolicy(
        localName: 'daily_snapshots',
        name: .literal('terradart-daily-snapshots'),
        region: .literal('us-central1'),
        kind: .snapshotSchedulePolicy(
          .new(
            schedule: .dailySchedule(
              .new(daysInCycle: .literal(1), startTime: .literal('04:00')),
            ),
            retentionPolicy: .new(
              maxRetentionDays: .literal(7),
              onSourceDiskDelete: .literal(.applyRetentionPolicy),
            ),
          ),
        ),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    // A small blank zonal disk in the policy's region, then attach the daily
    // snapshot schedule to it via google_compute_disk_resource_policy_attachment
    // (deletion_policy DELETE so the attachment detaches cleanly on destroy).
    final disk = add(
      GoogleComputeDisk(
        localName: 'data',
        name: .literal('terradart-data-disk'),
        zone: .literal('us-central1-a'),
        type: .literal('pd-standard'),
        size: .literal(10),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    add(
      GoogleComputeDiskResourcePolicyAttachment(
        localName: 'data_snapshots',
        name: .literal('terradart-daily-snapshots'),
        disk: disk.ref,
        zone: .literal('us-central1-a'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [
          ResourceDependency(disk),
          ResourceDependency(snapshotPolicy),
        ],
      ),
    );

    // Literal VPC name -- emitted as a Dart constant at synth time.
    addConstant('demoVpcName', .ref(vpc.nameRef));

    // Full route resource id -- Terraform output only (computed).
    addOutput('demo_route_id', .ref(route.id));
  }
}
