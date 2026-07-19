/// Network Management VPC Flow Logs quickstart — config on an empty VPC.
///
/// Enables Compute + Network Management APIs, creates a VPC with no
/// subnets/VMs, and attaches a global VPC Flow Logs config. Empty networks
/// generate no log volume; Cloud Logging bills only when traffic is logged.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// VPC Flow Logs stack: empty network + flow logs config.
final class VpcFlowLogsStack extends Stack {
  VpcFlowLogsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final current = addData(GoogleProject(localName: 'current'));

    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiNetworkManagement = add(
      GoogleProjectService(
        localName: 'api_networkmanagement',
        service: TfArg.literal('networkmanagement.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final network = add(
      GoogleComputeNetwork(
        localName: 'vpc',
        name: TfArg.literal('terradart-flow-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    add(
      GoogleNetworkManagementVpcFlowLogsConfig(
        localName: 'vpc_logs',
        vpcFlowLogsConfigId: TfArg.literal('terradart-vpc-flow'),
        location: TfArg.literal('global'),
        network: TfArg.literal(
          'projects/${current.number.interpolation}/global/networks/'
          '${network.nameRef.interpolation}',
        ),
        description: TfArg.literal('TerraDart smoke VPC Flow Logs config'),
        state: TfArg.literal(NetworkManagementVpcFlowLogsConfigState.enabled),
        flowSampling: TfArg.literal(0.5),
        metadata: TfArg.literal(
          NetworkManagementVpcFlowLogsConfigMetadata.excludeAllMetadata,
        ),
        dependsOn: [
          ResourceDependency(apiNetworkManagement),
          ResourceDependency(network),
        ],
      ),
    );
  }
}
