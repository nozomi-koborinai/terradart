/// Application Integration client quickstart.
///
/// Enables `integrations.googleapis.com` and provisions a regional
/// `google_integrations_client` (control-plane provision only — no sample
/// flows, no CMEK).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/integrations.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Application Integration stack: regional client provision.
final class IntegrationsStack extends Stack {
  IntegrationsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiIntegrations = add(
      GoogleProjectService(
        localName: 'api_integrations',
        service: TfArg.literal('integrations.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleIntegrationsClient(
        localName: 'client',
        location: TfArg.literal('us-central1'),
        dependsOn: [ResourceDependency(apiIntegrations)],
      ),
    );
  }
}
