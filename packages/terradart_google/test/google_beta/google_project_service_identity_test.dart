import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/google_beta.dart';
import 'package:terradart_google/provider.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

void main() {
  group('GoogleBetaProvider', () {
    test('registers hashicorp/google-beta in synth', () {
      final stack = TestStack(
        providers: const [
          GoogleProvider(project: 'demo'),
          GoogleBetaProvider(project: 'demo'),
        ],
      );
      stack.add(
        GoogleProjectServiceIdentity(
          localName: 'cloudasset',
          service: TfArg.literal('cloudasset.googleapis.com'),
        ),
      );
      final json = stack.synth().tfJson;
      final terraform = json['terraform']! as Map<String, dynamic>;
      final providers =
          terraform['required_providers']! as Map<String, dynamic>;
      expect(providers['google-beta'], {
        'source': kBetaProviderSource,
        'version': kProviderVersionConstraint,
      });
      expect(
        (json['provider']! as Map<String, dynamic>)['google-beta'],
        {'project': 'demo'},
      );
    });
  });

  group('GoogleProjectServiceIdentity', () {
    test('emits google-beta provider meta-argument and member ref', () {
      final identity = GoogleProjectServiceIdentity(
        localName: 'cloudasset',
        service: TfArg.literal('cloudasset.googleapis.com'),
      );
      expect(identity.terraformType, 'google_project_service_identity');
      expect(identity.provider, 'google-beta');
      expect(
        identity.argMap['service']!.toTfJson(),
        'cloudasset.googleapis.com',
      );
      expect(
        identity.member.interpolation,
        r'${google_project_service_identity.cloudasset.member}',
      );
      expect(
        identity.email.interpolation,
        r'${google_project_service_identity.cloudasset.email}',
      );
    });

    test('synth resource block pins provider google-beta', () {
      final stack = TestStack(
        providers: const [
          GoogleProvider(project: 'demo'),
          GoogleBetaProvider(project: 'demo'),
        ],
      );
      stack.add(
        GoogleProjectServiceIdentity(
          localName: 'cloudasset',
          service: TfArg.literal('cloudasset.googleapis.com'),
        ),
      );
      final json = stack.synth().tfJson;
      final resources = json['resource']! as Map<String, dynamic>;
      final block = (resources['google_project_service_identity']!
          as Map<String, dynamic>)['cloudasset']! as Map<String, dynamic>;
      expect(block['provider'], 'google-beta');
      expect(block['service'], 'cloudasset.googleapis.com');
    });
  });
}
