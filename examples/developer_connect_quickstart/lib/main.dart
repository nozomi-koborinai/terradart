/// Developer Connect account connector quickstart.
///
/// Enables `developerconnect.googleapis.com` and creates a GitHub
/// `google_developer_connect_account_connector` (system provider +
/// `repo` scope). Creating the connector does not complete OAuth or
/// clone a repository — no `google_developer_connect_connection` and
/// no Git proxy (`proxy_config`) are included.
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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiDeveloperConnect = add(
      GoogleProjectService(
        localName: 'api_developerconnect',
        service: .literal('developerconnect.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleDeveloperConnectAccountConnector(
        localName: 'github',
        location: .literal('us-central1'),
        accountConnectorId: .literal('terradart-github'),
        providerOauthConfig:
            DeveloperConnectAccountConnectorProviderOauthConfig(
              systemProviderId: .literal('GITHUB'),
              scopes: .literal(['repo']),
            ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [apiDeveloperConnect],
      ),
    );
  }
}
