/// Application Integration client + auth-config quickstart.
///
/// Enables `integrations.googleapis.com` (plus Secret Manager + Connectors
/// APIs required by Application Integration setup), waits for API
/// propagation, provisions a regional `google_integrations_client`, and
/// adds dummy `USERNAME_AND_PASSWORD` credential metadata
/// (`google_integrations_auth_config`). Control-plane only — no sample
/// flows, no CMEK, no connectors that invoke paid runtimes.
///
/// Uses `us-east1` so apply-smoke can provision even when `us-central1`
/// already has an orphaned client from a prior failed create (the provision
/// API can materialize the client while Terraform still surfaces a 400).
/// Auth-config [location] matches the client.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/integrations.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// Application Integration stack: regional client + dummy auth config.
final class IntegrationsStack extends Stack {
  IntegrationsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-east1'),
            const TimeProvider(),
          ],
        ) {
    // Quick setup enables Integration + Secret Manager + Connectors; without
    // the sibling APIs, `clients:provision` can 400 with "project is not
    // enabled in the selected region" even after integrations.googleapis.com
    // alone reports enabled.
    final apiIntegrations = add(
      GoogleProjectService(
        localName: 'api_integrations',
        service: TfArg.literal('integrations.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiSecretManager = add(
      GoogleProjectService(
        localName: 'api_secretmanager',
        service: TfArg.literal('secretmanager.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiConnectors = add(
      GoogleProjectService(
        localName: 'api_connectors',
        service: TfArg.literal('connectors.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiWait = add(
      TimeSleep(
        localName: 'api_propagation',
        createDuration: TfArg.duration(const Duration(seconds: 60)),
        dependsOn: [
          ResourceDependency(apiIntegrations),
          ResourceDependency(apiSecretManager),
          ResourceDependency(apiConnectors),
        ],
      ),
    );

    final client = add(
      GoogleIntegrationsClient(
        localName: 'client',
        location: TfArg.literal('us-east1'),
        dependsOn: [ResourceDependency(apiWait)],
      ),
    );

    add(
      GoogleIntegrationsAuthConfig(
        localName: 'auth_config',
        displayName: TfArg.literal('terradart-dummy-basic'),
        location: TfArg.literal('us-east1'),
        description: TfArg.literal(
          'Dummy USERNAME_AND_PASSWORD credential metadata — not used by a flow',
        ),
        decryptedCredential: IntegrationsAuthConfigDecryptedCredential(
          credentialType: TfArg.literal('USERNAME_AND_PASSWORD'),
          usernameAndPassword:
              IntegrationsAuthConfigDecryptedCredentialUsernameAndPassword(
            username: TfArg.literal('terradart-dummy'),
            password: TfArg.literal('terradart-dummy-password'),
          ),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [
          ResourceDependency(client),
          ResourceDependency(apiWait),
        ],
      ),
    );
  }
}
