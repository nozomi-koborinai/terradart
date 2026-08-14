/// Developer Connect account connector quickstart.
///
/// Enables `developerconnect.googleapis.com` and creates a GitHub
/// `google_developer_connect_account_connector` (system provider +
/// `repo` scope). Creating the connector does not complete OAuth or
/// clone a repository — no `google_developer_connect_connection` is
/// included.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/developer_connect.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Developer Connect stack: unused GitHub account connector (no connection).
final class DeveloperConnectStack extends Stack {
  DeveloperConnectStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiDeveloperConnect = add(
      GoogleProjectService(
        localName: 'api_developerconnect',
        service: TfArg.literal('developerconnect.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleDeveloperConnectAccountConnector(
        localName: 'github',
        location: TfArg.literal('us-central1'),
        accountConnectorId: TfArg.literal('terradart-github'),
        providerOauthConfig:
            DeveloperConnectAccountConnectorProviderOauthConfig(
          systemProviderId: TfArg.literal('GITHUB'),
          scopes: TfArg.literal(['repo']),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(apiDeveloperConnect)],
      ),
    );
  }
}
