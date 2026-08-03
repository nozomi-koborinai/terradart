/// Dataproc Metastore quickstart — developer-tier service, federation, IAM.
///
/// Provisions a dedicated VPC network, a DEVELOPER-tier Hive metastore on it,
/// grants an in-stack service account viewer access, and federates the
/// service as a single backend.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.compute, Barrels.dataproc],
      propagationDelay: const Duration(seconds: 60),
    );

    // Dataproc Metastore's THRIFT endpoint attaches to a VPC network. When
    // `network` is omitted the API falls back to the project `default`
    // network, which standalone projects (e.g. the apply-smoke project) do
    // not have — apply then fails "Network ... does not exist". Provision an
    // auto-mode VPC so the example is self-contained.
    final network = add(
      GoogleComputeNetwork(
        localName: 'metastore_net',
        name: TfArg.literal('terradart-metastore-net'),
        autoCreateSubnetworks: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    final viewerSa = add(
      GoogleServiceAccount(
        localName: 'metastore_viewer',
        accountId: TfArg.literal('td-metastore-viewer'),
        displayName: TfArg.literal('TerraDart Metastore viewer'),
      ),
    );

    final service = GoogleDataprocMetastoreService(
      localName: 'hive',
      serviceId: TfArg.literal(serviceId),
      location: TfArg.literal(location),
      tier: TfArg.literal(DataprocMetastoreServiceTier.developer),
      hiveMetastoreConfig: DataprocMetastoreServiceHiveMetastoreConfig(
        version: TfArg.literal('3.1.2'),
      ),
      network: TfArg.ref(network.id),
      dependsOn: [...apiDeps, ResourceDependency(network)],
    );
    add(service);

    add(
      GoogleDataprocMetastoreServiceIamMember(
        localName: 'viewer',
        serviceId: TfArg.literal(serviceId),
        location: TfArg.literal(location),
        role: TfArg.literal('roles/metastore.metadataViewer'),
        member: TfArg.ref(viewerSa.iamMember),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(service),
          ResourceDependency(viewerSa),
        ],
      ),
    );

    final federation = GoogleDataprocMetastoreFederation(
      localName: 'query',
      federationId: TfArg.literal(federationId),
      location: TfArg.literal(location),
      version: TfArg.literal('3.1.2'),
      backendMetastores: [
        DataprocMetastoreFederationBackend(
          name: TfArg.ref(service.nameRef),
          metastoreType: TfArg.literal(
            DataprocMetastoreFederationBackendType.dataprocMetastore,
          ),
          rank: TfArg.literal(1),
        ),
      ],
      dependsOn: [...apiDeps, ResourceDependency(service)],
    );
    add(federation);

    add(
      GoogleDataprocMetastoreFederationIamMember(
        localName: 'fed_viewer',
        federationId: TfArg.literal(federationId),
        location: TfArg.literal(location),
        role: TfArg.literal('roles/metastore.federationViewer'),
        member: TfArg.ref(viewerSa.iamMember),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(federation),
          ResourceDependency(viewerSa),
        ],
      ),
    );
  }
}
