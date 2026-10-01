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

import 'package:terradart_google/firebase_app_check.dart';
import 'package:terradart_google/provider.dart';

final class AppCheckStack extends Stack {
  AppCheckStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    final recaptchaV3SiteSecret = variable<String>(
      'recaptcha_v3_site_secret',
      sensitive: true,
    );
    final appCheckDebugToken = variable<String>(
      'app_check_debug_token',
      sensitive: true,
    );
    final deviceCheckPrivateKey = variable<String>(
      'device_check_private_key',
      sensitive: true,
    );

    // Bind a reCAPTCHA Enterprise site key to the Firebase Web App.
    // This tells App Check to use reCAPTCHA Enterprise as the attestation
    // provider for that specific app.
    add(
      GoogleFirebaseAppCheckRecaptchaEnterpriseConfig(
        'web_recaptcha',
        appId: .literal('1:1234567890:web:abcdef'),
        siteKey: .literal('6LdXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
      ),
    );

    add(
      GoogleFirebaseAppCheckRecaptchaV3Config(
        'web_recaptcha_v3',
        appId: .literal('1:1234567890:web:abcdef'),
        siteSecret: recaptchaV3SiteSecret,
      ),
    );

    // Enable enforced App Check on Cloud Firestore for the project.
    // Requests without a valid App Check token are rejected.
    // Tip: run with AppCheckEnforcementMode.unenforced first to collect
    // metrics before enabling full enforcement.
    add(
      GoogleFirebaseAppCheckServiceConfig(
        'firestore_enforcement',
        serviceId: .literal('firestore.googleapis.com'),
        enforcementMode: .enforced,
      ),
    );

    // ---- Backfill: per-platform providers + debug token + resource policy ----

    add(
      GoogleFirebaseAppCheckAppAttestConfig(
        'ios_app_attest',
        appId: .literal('1:1234567890:ios:abcdef'),
      ),
    );

    add(
      GoogleFirebaseAppCheckDeviceCheckConfig(
        'ios_device_check',
        appId: .literal('1:1234567890:ios:legacy'),
        keyId: .literal('ABCDEFGHIJ'),
        privateKey: deviceCheckPrivateKey,
      ),
    );

    add(
      GoogleFirebaseAppCheckPlayIntegrityConfig(
        'android_play_integrity',
        appId: .literal('1:1234567890:android:abcdef'),
      ),
    );

    add(
      GoogleFirebaseAppCheckDebugToken(
        'ci_debug_token',
        appId: .literal('1:1234567890:web:abcdef'),
        displayName: .literal('CI debug token'),
        token: appCheckDebugToken,
      ),
    );

    add(
      GoogleFirebaseAppCheckResourcePolicy(
        'ios_oauth_policy',
        serviceId: .literal('oauth2.googleapis.com'),
        targetResource: .literal(
          '//oauth2.googleapis.com/projects/123456789/oauthClients/example-client',
        ),
        enforcementMode: .unenforced,
      ),
    );
  }
}
