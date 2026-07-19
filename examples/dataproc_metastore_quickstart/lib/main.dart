/// Dataproc Metastore quickstart — developer-tier service, federation, IAM.
///
/// Provisions a DEVELOPER-tier Hive metastore, grants an in-stack service
/// account viewer access, and federates the service as a single backend.
library;

import 'package:terradart_core/terradart_core.dart';
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
      barrels: [Barrels.dataproc],
      propagationDelay: const Duration(seconds: 60),
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
      dependsOn: apiDeps,
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
