import 'package:terradart_core/terradart_core.dart';
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
    final identity =
        stack.resources.whereType<GoogleProjectServiceIdentity>().single;
    expect(
      TfJsonEncoder.encodeBareAddress(identity.member),
      contains('.member'),
    );
  });
}
