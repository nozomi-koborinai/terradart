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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiIap = add(
      GoogleProjectService(
        localName: 'api_iap',
        service: .literal('iap.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final destGroup = add(
      GoogleIapTunnelDestGroup(
        localName: 'internal',
        groupName: .literal('terradart-internal'),
        region: .literal('us-central1'),
        cidrs: .literal(['10.1.0.0/16']),
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    final tunnelUser = add(
      GoogleServiceAccount(
        localName: 'tunnel_user',
        accountId: .literal('terradart-tunnel-user'),
        displayName: .literal('IAP tunnel user'),
      ),
    );

    add(
      GoogleIapTunnelDestGroupIamMember(
        localName: 'tunnel_user_grant',
        destGroup: .literal('terradart-internal'),
        region: .literal('us-central1'),
        role: .literal('roles/viewer'),
        member: tunnelUser.principal,
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
        role: .literal('roles/iap.tunnelResourceAccessor'),
        member: tunnelUser.principal,
        dependsOn: [ResourceDependency(apiIap), ResourceDependency(tunnelUser)],
      ),
    );
  }
}
