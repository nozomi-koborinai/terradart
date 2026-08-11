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
/// Run `bin/infra.dart` to synth into `tf-out/`. Apply-smoke targets this
/// stack on `terradart-validate` (not the Partner-CCI `network_connectivity`
/// quickstart).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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
        localName: 'hub',
        name: TfArg.literal('terradart-ncc-hub'),
        description: TfArg.literal('TerraDart NCC hub'),
        policyMode: TfArg.literal('PRESET'),
        presetTopology: TfArg.literal('STAR'),
        dependsOn: apiDeps,
      ),
    );

    final centerGroup = add(
      GoogleNetworkConnectivityGroup(
        localName: 'center',
        hub: TfArg.ref(hub.id),
        name: TfArg.literal(NetworkConnectivityGroupName.center),
        description: TfArg.literal('STAR center group'),
        dependsOn: [...apiDeps, ResourceDependency(hub)],
      ),
    );

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'spoke_vpc',
        name: TfArg.literal('terradart-ncc-spoke-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        dependsOn: apiDeps,
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        localName: 'spoke_subnet',
        name: TfArg.literal('terradart-ncc-spoke-subnet'),
        ipCidrRange: TfArg.literal('10.20.0.0/24'),
        region: TfArg.literal(region),
        network: TfArg.ref(vpc.id),
        privateIpGoogleAccess: TfArg.literal(true),
        dependsOn: [...apiDeps, ResourceDependency(vpc)],
      ),
    );

    add(
      GoogleNetworkConnectivitySpoke(
        localName: 'vpc_spoke',
        name: TfArg.literal('terradart-vpc-spoke'),
        location: TfArg.literal('global'),
        hub: TfArg.ref(hub.id),
        group: TfArg.literal('center'),
        attachment: NetworkConnectivitySpokeLinkedVpcNetwork(
          uri: TfArg.ref(vpc.id),
        ),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(hub),
          ResourceDependency(centerGroup),
          ResourceDependency(vpc),
        ],
      ),
    );

    add(
      GoogleNetworkConnectivityInternalRange(
        localName: 'reserved',
        name: TfArg.literal('terradart-ncc-ir'),
        network: TfArg.ref(vpc.id),
        usage: TfArg.literal(NetworkConnectivityInternalRangeUsage.forVpc),
        peering: TfArg.literal(NetworkConnectivityInternalRangePeering.forSelf),
        ipCidrRange: TfArg.literal('10.9.0.0/24'),
        description: TfArg.literal('Reserved range for NCC smoke'),
        dependsOn: [...apiDeps, ResourceDependency(vpc)],
      ),
    );

    add(
      GoogleNetworkConnectivityRegionalEndpoint(
        localName: 'storage_rep',
        name: TfArg.literal('terradart-storage-rep'),
        location: TfArg.literal(region),
        targetGoogleApi:
            TfArg.literal('storage.us-central1.rep.googleapis.com'),
        accessType: TfArg.literal(
          NetworkConnectivityRegionalEndpointAccessType.regional,
        ),
        network: TfArg.ref(vpc.id),
        subnetwork: TfArg.ref(subnet.id),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(vpc),
          ResourceDependency(subnet),
        ],
      ),
    );

    add(
      GoogleNetworkConnectivityPolicyBasedRoute(
        localName: 'default_pbr',
        name: TfArg.literal('terradart-ncc-pbr'),
        network: TfArg.ref(vpc.id),
        filter: NetworkConnectivityPolicyBasedRouteFilter(
          protocolVersion: TfArg.literal(
            NetworkConnectivityPolicyBasedRouteFilterProtocolVersion.ipv4,
          ),
        ),
        nextHop: NetworkConnectivityPolicyBasedRouteNextHop.otherRoutes(
          TfArg.literal(
            NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes
                .defaultRouting,
          ),
        ),
        virtualMachine: NetworkConnectivityPolicyBasedRouteVirtualMachine(
          tags: TfArg.literal(['terradart-pbr']),
        ),
        description: TfArg.literal('TerraDart PBR smoke (DEFAULT_ROUTING)'),
        dependsOn: [...apiDeps, ResourceDependency(vpc)],
      ),
    );

    final inventory = add(
      GoogleServiceAccount(
        localName: 'ncc_inventory',
        accountId: TfArg.literal('ncc-inventory'),
        displayName: TfArg.literal('NCC hub inventory reader'),
      ),
    );

    add(
      GoogleNetworkConnectivityHubIamMember(
        localName: 'hub_viewer',
        hub: TfArg.ref(hub.id),
        role: TfArg.literal('roles/networkconnectivity.viewer'),
        member: TfArg.ref(inventory.iamMember),
        dependsOn: [
          ResourceDependency(hub),
          ResourceDependency(inventory),
        ],
      ),
    );
  }
}
