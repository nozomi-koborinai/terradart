/// Application Integration client + auth-config quickstart.
///
/// Enables `integrations.googleapis.com` (plus Secret Manager + Connectors
/// APIs required by Application Integration setup), waits for API
/// propagation, provisions a regional `google_integrations_client`, and
/// adds dummy `USERNAME_AND_PASSWORD` credential metadata
/// (`google_integrations_auth_config`). Control-plane only — no sample
/// flows, no CMEK, no connectors that invoke paid runtimes.
///
/// Uses `us-east1` so an apply can provision even when `us-central1`
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
import 'package:terradart_time/terradart_time.dart';

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
        service: .literal('integrations.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiSecretManager = add(
      GoogleProjectService(
        localName: 'api_secretmanager',
        service: .literal('secretmanager.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiConnectors = add(
      GoogleProjectService(
        localName: 'api_connectors',
        service: .literal('connectors.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiWait = add(
      TimeSleep(
        localName: 'api_propagation',
        createDuration: TfArg.duration(const Duration(seconds: 60)),
        dependsOn: [apiIntegrations, apiSecretManager, apiConnectors],
      ),
    );

    final client = add(
      GoogleIntegrationsClient(
        localName: 'client',
        location: .literal('us-east1'),
        dependsOn: [apiWait],
      ),
    );

    add(
      GoogleIntegrationsAuthConfig(
        localName: 'auth_config',
        displayName: .literal('terradart-dummy-basic'),
        location: .literal('us-east1'),
        description: .literal(
          'Dummy USERNAME_AND_PASSWORD credential metadata — not used by a flow',
        ),
        decryptedCredential: IntegrationsAuthConfigDecryptedCredential(
          credentialType: .literal('USERNAME_AND_PASSWORD'),
          secret: .usernameAndPassword(
            .new(
              username: .literal('terradart-dummy'),
              password: .literal('terradart-dummy-password'),
            ),
          ),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [client, apiWait],
      ),
    );
  }
}
