/// IAP tunnel quickstart — destination group for TCP forwarding.
///
/// Enables `iap.googleapis.com` and creates a regional tunnel destination
/// group with a private CIDR, plus additive IAM grants for a tunnel-user
/// service account (destination-group and project-scoped `iap.tunnel`).
/// No VMs or tunnels are created.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
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

    final destGroup = add(
      GoogleIapTunnelDestGroup(
        localName: 'internal',
        groupName: TfArg.literal('terradart-internal'),
        region: TfArg.literal('us-central1'),
        cidrs: TfArg.literal(['10.1.0.0/16']),
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    final tunnelUser = add(
      GoogleServiceAccount(
        localName: 'tunnel_user',
        accountId: TfArg.literal('terradart-tunnel-user'),
        displayName: TfArg.literal('IAP tunnel user'),
      ),
    );

    add(
      GoogleIapTunnelDestGroupIamMember(
        localName: 'tunnel_user_grant',
        destGroup: TfArg.literal('terradart-internal'),
        region: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/viewer'),
        member: TfArg.ref(tunnelUser.iamMember),
        dependsOn: [
          ResourceDependency(destGroup),
          ResourceDependency(tunnelUser),
        ],
      ),
    );

    // Project-scoped IAP TCP forwarding (`iap.tunnel`) — no VM required.
    add(
      GoogleIapTunnelIamMember(
        localName: 'tunnel_project_grant',
        role: TfArg.literal('roles/iap.tunnelResourceAccessor'),
        member: TfArg.ref(tunnelUser.iamMember),
        dependsOn: [
          ResourceDependency(apiIap),
          ResourceDependency(tunnelUser),
        ],
      ),
    );
  }
}
