/// API security quickstart — Wave 77 API Keys + reCAPTCHA + connectivity test.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/apikeys.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/recaptcha.dart';
import 'package:terradart_time/terradart_time.dart';

final class ApiSecurityStack extends Stack {
  ApiSecurityStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.apikeys, Barrels.recaptcha, Barrels.network],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleApikeysKey(
        localName: 'maps_browser',
        name: .literal('maps-browser-key'),
        displayName: .literal('Browser Maps API key'),
        restrictions: .literal({
          'api_targets': [
            {'service': 'maps-backend.googleapis.com'},
          ],
        }),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleRecaptchaEnterpriseKey(
        localName: 'web_login',
        displayName: .literal('Login page'),
        webSettings: RecaptchaEnterpriseKeyWebSettings(
          integrationType: .literal(.score),
          allowAllDomains: .literal(true),
        ),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkManagementConnectivityTest(
        localName: 'egress_https',
        name: .literal('egress-https-probe'),
        description: .literal('Synthetic probe to public DNS over TCP'),
        protocol: .literal('TCP'),
        source: NetworkManagementConnectivityTestSource(
          ipAddress: .literal('10.0.0.2'),
          networkType: .literal(.gcpNetwork),
        ),
        destination: NetworkManagementConnectivityTestDestination(
          ipAddress: .literal('8.8.8.8'),
          port: .literal(443),
        ),
        dependsOn: apiDeps,
      ),
    );
  }
}
