import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google_beta/folder.dart';
import 'package:terradart_google_beta/organization.dart';
import 'package:terradart_google_beta/project.dart';
import 'package:terradart_google_beta/provider.dart';
import 'package:test/test.dart';

final class _TestStack extends Stack {
  _TestStack()
      : super(
          providers: [const GoogleBetaProvider(project: 'proj-123')],
        ) {
    add(
      GoogleProjectServiceIdentity(
        localName: 'pubsub_agent',
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleFolderServiceIdentity(
        localName: 'folder_pubsub_agent',
        folder: TfArg.literal('folders/123'),
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleOrganizationServiceIdentity(
        localName: 'org_pubsub_agent',
        organization: TfArg.literal('organizations/123'),
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
  }
}

void main() {
  test('synths the beta provider block and the service identity resource', () {
    final json = _TestStack().synth().tfJson;

    final requiredProviders =
        ((json['terraform'] as Map<String, dynamic>)['required_providers']
            as Map<String, dynamic>)['google-beta'] as Map<String, dynamic>;
    expect(requiredProviders['source'], 'hashicorp/google-beta');
    expect(requiredProviders['version'], kBetaProviderVersionConstraint);

    final providerBlock = (json['provider']
        as Map<String, dynamic>)['google-beta'] as Map<String, dynamic>;
    expect(providerBlock['project'], 'proj-123');

    final resource = (((json['resource']
            as Map<String, dynamic>)['google_project_service_identity']
        as Map<String, dynamic>)['pubsub_agent']) as Map<String, dynamic>;
    expect(resource['service'], 'pubsub.googleapis.com');
  });

  test('the resource pins the google-beta provider meta-argument', () {
    final json = _TestStack().synth().tfJson;
    final resource = (((json['resource']
            as Map<String, dynamic>)['google_project_service_identity']
        as Map<String, dynamic>)['pubsub_agent']) as Map<String, dynamic>;
    expect(resource['provider'], 'google-beta');
  });

  test('output refs address the member attribute', () {
    final stack = _TestStack();
    final project =
        stack.resources.whereType<GoogleProjectServiceIdentity>().single;
    final folder =
        stack.resources.whereType<GoogleFolderServiceIdentity>().single;
    final organization =
        stack.resources.whereType<GoogleOrganizationServiceIdentity>().single;
    expect(
      TfJsonEncoder.encodeBareAddress(project.member),
      contains('.member'),
    );
    expect(
      TfJsonEncoder.encodeBareAddress(folder.member),
      contains('.member'),
    );
    expect(
      TfJsonEncoder.encodeBareAddress(organization.member),
      contains('.member'),
    );
  });
}
