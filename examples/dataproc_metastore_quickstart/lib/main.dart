/// Dataproc Metastore quickstart — developer-tier service, federation, IAM.
///
/// Provisions a dedicated VPC network, a DEVELOPER-tier Hive metastore on it,
/// grants an in-stack service account viewer access, and federates the
/// service as a single backend.
library;

import 'package:terradart_google/compute.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class DataprocMetastoreStack extends Stack {
  DataprocMetastoreStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    const location = 'us-central1';
    const serviceId = 'terradart-metastore';
    const federationId = 'terradart-federation';

    final apiDeps = enableApis([
      .compute,
      .dataproc,
    ], propagationDelay: const Duration(seconds: 60));

    // Dataproc Metastore's THRIFT endpoint attaches to a VPC network. When
    // `network` is omitted the API falls back to the project `default`
    // network, which many standalone projects do
    // not have — apply then fails "Network ... does not exist". Provision an
    // auto-mode VPC so the example is self-contained.
    final network = add(
      GoogleComputeNetwork(
        'metastore_net',
        name: .literal('terradart-metastore-net'),
        autoCreateSubnetworks: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    final viewerSa = add(
      GoogleServiceAccount(
        'metastore_viewer',
        accountId: .literal('td-metastore-viewer'),
        displayName: .literal('TerraDart Metastore viewer'),
      ),
    );

    final service = GoogleDataprocMetastoreService(
      'hive',
      serviceId: .literal(serviceId),
      location: .literal(location),
      capacity: .tier(.developer),
      hiveMetastoreConfig: DataprocMetastoreServiceHiveMetastoreConfig(
        version: .literal('3.1.2'),
      ),
      network: network.ref,
      dependsOn: [...apiDeps, network],
    );
    add(service);

    add(
      GoogleDataprocMetastoreServiceIamMember(
        'viewer',
        service: .literal(serviceId),
        location: .literal(location),
        role: .literal('roles/metastore.metadataViewer'),
        member: viewerSa.principal,
        dependsOn: [...apiDeps, service, viewerSa],
      ),
    );

    final federation = GoogleDataprocMetastoreFederation(
      'query',
      federationId: .literal(federationId),
      location: .literal(location),
      version: .literal('3.1.2'),
      backendMetastores: [
        DataprocMetastoreFederationBackend(
          name: service.name,
          metastoreType: .dataprocMetastore,
          rank: .literal(1),
        ),
      ],
      dependsOn: [...apiDeps, service],
    );
    add(federation);

    add(
      GoogleDataprocMetastoreFederationIamMember(
        'fed_viewer',
        federation: .literal(federationId),
        location: .literal(location),
        role: .literal('roles/metastore.federationViewer'),
        member: viewerSa.principal,
        dependsOn: [...apiDeps, federation, viewerSa],
      ),
    );
  }
}
