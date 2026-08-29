/// Firebase App Check quickstart — Wave 4 Round 3 end-to-end example.
///
/// Defines an [AppCheckStack] that provisions:
/// - a `GoogleFirebaseAppCheckRecaptchaEnterpriseConfig` binding a reCAPTCHA
///   Enterprise site key to a Firebase Web App (the recommended App Check
///   provider for browser-based clients),
/// - a `GoogleFirebaseAppCheckServiceConfig` enabling full enforcement on
///   Cloud Firestore so that only verified clients can access the database.
///
/// Demonstrates [AppCheckEnforcementMode] enum usage and the separation of
/// per-app provider config (which attests the client) from service-level
/// enforcement config (which decides what happens to unverified requests).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebase_app_check.dart';
import 'package:terradart_google/provider.dart';

final class AppCheckStack extends Stack {
  AppCheckStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable(
      'recaptcha_v3_site_secret',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'app_check_debug_token',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'device_check_private_key',
      const TfVariable(type: 'string', sensitive: true),
    );

    // Bind a reCAPTCHA Enterprise site key to the Firebase Web App.
    // This tells App Check to use reCAPTCHA Enterprise as the attestation
    // provider for that specific app.
    add(
      GoogleFirebaseAppCheckRecaptchaEnterpriseConfig(
        localName: 'web_recaptcha',
        appId: TfArg.literal('1:1234567890:web:abcdef'),
        siteKey: TfArg.literal('6LdXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
      ),
    );

    add(
      GoogleFirebaseAppCheckRecaptchaV3Config(
        localName: 'web_recaptcha_v3',
        appId: TfArg.literal('1:1234567890:web:abcdef'),
        siteSecret: TfArg.variable('recaptcha_v3_site_secret'),
      ),
    );

    // Enable enforced App Check on Cloud Firestore for the project.
    // Requests without a valid App Check token are rejected.
    // Tip: run with AppCheckEnforcementMode.unenforced first to collect
    // metrics before enabling full enforcement.
    add(
      GoogleFirebaseAppCheckServiceConfig(
        localName: 'firestore_enforcement',
        serviceId: TfArg.literal('firestore.googleapis.com'),
        enforcementMode: TfArg.literal(AppCheckEnforcementMode.enforced),
      ),
    );

    // ---- Backfill: per-platform providers + debug token + resource policy ----

    add(
      GoogleFirebaseAppCheckAppAttestConfig(
        localName: 'ios_app_attest',
        appId: TfArg.literal('1:1234567890:ios:abcdef'),
      ),
    );

    add(
      GoogleFirebaseAppCheckDeviceCheckConfig(
        localName: 'ios_device_check',
        appId: TfArg.literal('1:1234567890:ios:legacy'),
        keyId: TfArg.literal('ABCDEFGHIJ'),
        privateKey: TfArg.variable('device_check_private_key'),
      ),
    );

    add(
      GoogleFirebaseAppCheckPlayIntegrityConfig(
        localName: 'android_play_integrity',
        appId: TfArg.literal('1:1234567890:android:abcdef'),
      ),
    );

    add(
      GoogleFirebaseAppCheckDebugToken(
        localName: 'ci_debug_token',
        appId: TfArg.literal('1:1234567890:web:abcdef'),
        displayName: TfArg.literal('CI debug token'),
        token: TfArg.variable('app_check_debug_token'),
      ),
    );

    add(
      GoogleFirebaseAppCheckResourcePolicy(
        localName: 'ios_oauth_policy',
        serviceId: TfArg.literal('oauth2.googleapis.com'),
        targetResource: TfArg.literal(
          '//oauth2.googleapis.com/projects/123456789/oauthClients/example-client',
        ),
        enforcementMode: TfArg.literal(AppCheckEnforcementMode.unenforced),
      ),
    );
  }
}
