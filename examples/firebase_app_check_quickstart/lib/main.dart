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

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebase_app_check.dart';
import 'package:terradart_google/provider.dart';

class AppCheckStack extends Stack {
  AppCheckStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
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
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
