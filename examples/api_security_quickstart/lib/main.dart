/// API security quickstart — Wave 77 API Keys + reCAPTCHA + connectivity test.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/apikeys.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/recaptcha.dart';
import 'package:terradart_google/time.dart';

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
        name: TfArg.literal('maps-browser-key'),
        displayName: TfArg.literal('Browser Maps API key'),
        restrictions: TfArg.literal({
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
        displayName: TfArg.literal('Login page'),
        webSettings: RecaptchaEnterpriseKeyWebSettings(
          integrationType: TfArg.literal(
            RecaptchaEnterpriseKeyWebSettingsIntegrationType.score,
          ),
          allowAllDomains: TfArg.literal(true),
        ),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleNetworkManagementConnectivityTest(
        localName: 'egress_https',
        name: TfArg.literal('egress-https-probe'),
        description: TfArg.literal('Synthetic probe to public DNS over TCP'),
        protocol: TfArg.literal('TCP'),
        source: NetworkManagementConnectivityTestSource(
          ipAddress: TfArg.literal('10.0.0.2'),
          networkType: TfArg.literal(
            NetworkManagementConnectivityTestSourceNetworkType.gcpNetwork,
          ),
        ),
        destination: NetworkManagementConnectivityTestDestination(
          ipAddress: TfArg.literal('8.8.8.8'),
          port: TfArg.literal(443),
        ),
        dependsOn: apiDeps,
      ),
    );
  }
}
