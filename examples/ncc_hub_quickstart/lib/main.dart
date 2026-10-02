/// Network Connectivity Center hub quickstart.
///
/// Enables `networkconnectivity.googleapis.com` / `compute.googleapis.com` and
/// provisions:
/// - an NCC hub + STAR `center` group,
/// - a VPC spoke on a dedicated network,
/// - an internal range reservation,
/// - a private regional endpoint for Storage,
/// - a policy-based route (`DEFAULT_ROUTING` + VM tags),
/// - additive hub IAM for an inventory SA.
///
/// Run `bin/infra.dart` to synth into `tf-out/`. Unlike the Partner-CCI
/// `network_connectivity` quickstart, this stack can be applied on a
/// standalone project.
library;

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

/// NCC hub stack: hub, group, VPC spoke, internal range, regional endpoint,
/// policy-based route, IAM.
final class NccHubStack extends Stack {
  NccHubStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    const region = 'us-central1';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.compute, Barrels.network],
      propagationDelay: const Duration(seconds: 60),
    );

    final hub = add(
      GoogleNetworkConnectivityHub(
        'hub',
        name: .literal('terradart-ncc-hub'),
        description: .literal('TerraDart NCC hub'),
        policyMode: .literal('PRESET'),
        presetTopology: .literal('STAR'),
        dependsOn: apiDeps,
      ),
    );

    final centerGroup = add(
      GoogleNetworkConnectivityGroup(
        'center',
        hub: hub.ref,
        name: .center,
        description: .literal('STAR center group'),
        dependsOn: [...apiDeps, hub],
      ),
    );

    final vpc = add(
      GoogleComputeNetwork(
        'spoke_vpc',
        name: .literal('terradart-ncc-spoke-vpc'),
        autoCreateSubnetworks: .literal(false),
        dependsOn: apiDeps,
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        'spoke_subnet',
        name: .literal('terradart-ncc-spoke-subnet'),
        ipCidrRange: .literal('10.20.0.0/24'),
        region: .literal(region),
        network: vpc.ref,
        privateIpGoogleAccess: .literal(true),
        dependsOn: [...apiDeps, vpc],
      ),
    );

    add(
      GoogleNetworkConnectivitySpoke(
        'vpc_spoke',
        name: .literal('terradart-vpc-spoke'),
        location: .literal('global'),
        hub: hub.ref,
        group: .literal('center'),
        attachment: .linkedVpcNetwork(.new(uri: vpc.ref)),
        dependsOn: [...apiDeps, hub, centerGroup, vpc],
      ),
    );

    add(
      GoogleNetworkConnectivityInternalRange(
        'reserved',
        name: .literal('terradart-ncc-ir'),
        network: vpc.ref,
        usage: .forVpc,
        peering: .forSelf,
        ipCidrRange: .literal('10.9.0.0/24'),
        description: .literal('Reserved range for NCC smoke'),
        dependsOn: [...apiDeps, vpc],
      ),
    );

    add(
      GoogleNetworkConnectivityRegionalEndpoint(
        'storage_rep',
        name: .literal('terradart-storage-rep'),
        location: .literal(region),
        targetGoogleApi: .literal('storage.us-central1.rep.googleapis.com'),
        accessType: .regional,
        network: vpc.ref,
        subnetwork: subnet.ref,
        dependsOn: [...apiDeps, vpc, subnet],
      ),
    );

    add(
      GoogleNetworkConnectivityPolicyBasedRoute(
        'default_pbr',
        name: .literal('terradart-ncc-pbr'),
        network: vpc.ref,
        filter: NetworkConnectivityPolicyBasedRouteFilter(
          protocolVersion: .ipv4,
        ),
        nextHop: NetworkConnectivityPolicyBasedRouteNextHop.otherRoutes(
          NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes.defaultRouting,
        ),
        scope: .virtualMachine(.new(tags: .literal(['terradart-pbr']))),
        description: .literal('TerraDart PBR smoke (DEFAULT_ROUTING)'),
        dependsOn: [...apiDeps, vpc],
      ),
    );

    final inventory = add(
      GoogleServiceAccount(
        'ncc_inventory',
        accountId: .literal('ncc-inventory'),
        displayName: .literal('NCC hub inventory reader'),
      ),
    );

    add(
      GoogleNetworkConnectivityHubIamMember(
        'hub_viewer',
        hub: hub.ref,
        role: .literal('roles/networkconnectivity.viewer'),
        member: inventory.principal,
        dependsOn: [hub, inventory],
      ),
    );
  }
}
