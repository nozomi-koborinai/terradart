/// IAP tunnel quickstart — destination group for TCP forwarding.
///
/// Enables `iap.googleapis.com` and creates a regional tunnel destination
/// group with a private CIDR. No VMs or tunnels are created.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// IAP tunnel stack: destination group only.
final class IapTunnelStack extends Stack {
  IapTunnelStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiIap = add(
      GoogleProjectService(
        localName: 'api_iap',
        service: TfArg.literal('iap.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleIapTunnelDestGroup(
        localName: 'internal',
        groupName: TfArg.literal('terradart-internal'),
        region: TfArg.literal('us-central1'),
        cidrs: TfArg.literal(['10.1.0.0/16']),
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );
  }
}
