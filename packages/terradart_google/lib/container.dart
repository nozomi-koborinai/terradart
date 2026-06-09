// packages/terradart_google/lib/container.dart
/// Google Kubernetes Engine (GKE) — clusters and node pools.
///
/// For VPC networking, see `compute.dart` ([GoogleComputeNetwork],
/// [GoogleComputeSubnetwork]). For workload identity federation, see
/// `iam.dart` ([GoogleIamWorkloadIdentityPool]).
library;

export 'src/container/google_container_cluster.dart'
    show GoogleContainerCluster;
export 'src/container/google_container_node_pool.dart'
    show GoogleContainerNodePool;
