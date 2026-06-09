/// GKE quickstart — Wave 8 + Wave 9 end-to-end example.
///
/// Provisions:
/// - API enablement for Compute, GKE, and GKE Hub;
/// - a custom-mode VPC + regional subnet;
/// - a regional GKE cluster with the default node pool removed;
/// - a dedicated node pool on that cluster;
/// - the project default GKE Hub fleet;
/// - a fleet membership enrolling the cluster.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class GkeQuickstartStack extends Stack {
  GkeQuickstartStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    const region = 'asia-northeast1';
    const clusterName = 'main-gke';

    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiContainer = add(
      GoogleProjectService(
        localName: 'api_container',
        service: TfArg.literal('container.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiGkeHub = add(
      GoogleProjectService(
        localName: 'api_gkehub',
        service: TfArg.literal('gkehub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'main',
        name: TfArg.literal('gke-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        routingMode: TfArg.literal(RoutingMode.regional),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        localName: 'gke',
        name: TfArg.literal('gke-subnet'),
        region: TfArg.literal(region),
        network: TfArg.ref(vpc.id),
        ipCidrRange: TfArg.literal('10.20.0.0/20'),
      ),
    );

    final cluster = add(
      GoogleContainerCluster(
        localName: 'main',
        name: TfArg.literal(clusterName),
        location: TfArg.literal(region),
        initialNodeCount: TfArg.literal(1),
        removeDefaultNodePool: TfArg.literal(true),
        network: TfArg.ref(vpc.nameRef),
        subnetwork: TfArg.ref(subnet.nameRef),
        dependsOn: [
          ResourceDependency(apiContainer),
          ResourceDependency(subnet),
        ],
      ),
    );

    add(
      GoogleContainerNodePool(
        localName: 'primary',
        name: TfArg.literal('primary-pool'),
        location: TfArg.literal(region),
        cluster: TfArg.ref(cluster.nameRef),
        nodeCount: TfArg.literal(1),
        dependsOn: [ResourceDependency(cluster)],
      ),
    );

    final fleet = add(
      GoogleGkeHubFleet(
        localName: 'default',
        displayName: TfArg.literal('Quickstart fleet'),
        dependsOn: [ResourceDependency(apiGkeHub)],
      ),
    );

    add(
      GoogleGkeHubMembership(
        localName: 'main',
        membershipId: TfArg.literal('main-cluster'),
        endpoint: TfArg.literal({
          'gke_cluster': {
            'resource_link': TfArg.ref(cluster.id),
          },
        }),
        authority: TfArg.literal({
          'issuer': TfArg.literal(
            'https://container.googleapis.com/v1/projects/$projectId/locations/$region/clusters/$clusterName',
          ),
        }),
        dependsOn: [
          ResourceDependency(fleet),
          ResourceDependency(cluster),
        ],
      ),
    );
  }
}
