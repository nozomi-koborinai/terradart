/// google-beta quickstart -- the smallest terradart_google_beta example.
///
/// Defines a `ServiceAgentStack` that pre-provisions the Pub/Sub service
/// agent for the project via the beta-only
/// `google_project_service_identity`, so later IAM grants on that agent
/// never race its lazy creation. Free: the identity is account metadata
/// with no billed resource behind it.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google_beta/project.dart';
import 'package:terradart_google_beta/provider.dart';

/// Beta stack: one project service identity.
final class ServiceAgentStack extends Stack {
  ServiceAgentStack({required String projectId})
      : super(
          providers: [
            GoogleBetaProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    add(
      GoogleProjectServiceIdentity(
        localName: 'pubsub_agent',
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
  }
}
