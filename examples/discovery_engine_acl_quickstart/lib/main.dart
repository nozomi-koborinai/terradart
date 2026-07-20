/// Discovery Engine ACL config quickstart.
///
/// Enables `discoveryengine.googleapis.com` and manages a project-level
/// `google_discovery_engine_acl_config` with GSuite IdP (no workforce pool).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/discovery_engine.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Discovery Engine ACL stack: GSuite IdP at `location: global`.
final class DiscoveryEngineAclStack extends Stack {
  DiscoveryEngineAclStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiDiscovery = add(
      GoogleProjectService(
        localName: 'api_discoveryengine',
        service: TfArg.literal('discoveryengine.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleDiscoveryEngineAclConfig(
        localName: 'acl',
        location: TfArg.literal('global'),
        idpConfig: DiscoveryEngineAclConfigIdpConfig(
          idpType: TfArg.literal(
            DiscoveryEngineAclConfigIdpConfigIdpType.gsuite,
          ),
        ),
        dependsOn: [ResourceDependency(apiDiscovery)],
      ),
    );
  }
}
