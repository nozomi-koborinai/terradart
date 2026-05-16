/// Firebase App Hosting quickstart — Wave 4 Round 2 end-to-end example.
///
/// Defines an [AppHostingStack] that provisions:
/// - a dedicated runtime service account the backend's Cloud Run service
///   executes as,
/// - a `GoogleFirebaseAppHostingBackend` wired to the Firebase Web App and
///   the service account, pinned to `us-central1` with regional-strict
///   serving locality,
/// - a `GoogleFirebaseAppHostingDomain` mapping a custom FQDN to the backend.
///
/// Demonstrates `AppHostingServingLocality` enum usage, `backendIdRef`
/// cross-reference, and the custom domain helper pattern.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebase_app_hosting.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

class AppHostingStack extends Stack {
  AppHostingStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // Service account that Cloud Build and Cloud Run execute as.
    final sa = add(
      GoogleServiceAccount(
        localName: 'apphosting_sa',
        accountId: TfArg.literal('apphosting-quickstart-sa'),
        displayName: TfArg.literal('App Hosting runtime SA'),
      ),
    );

    // Backend — the central App Hosting resource. All traffic + domain
    // resources reference it via backendIdRef.
    final backend = add(
      GoogleFirebaseAppHostingBackend(
        localName: 'quickstart',
        backendId: TfArg.literal('quickstart-backend'),
        location: TfArg.literal('us-central1'),
        appId: TfArg.literal('1:1234567890:web:abcdef'),
        serviceAccount: TfArg.ref(sa.email),
        servingLocality: TfArg.literal(
          AppHostingServingLocality.regionalStrict,
        ),
        displayName: TfArg.literal('terradart App Hosting quickstart'),
      ),
    );

    // Custom domain mapping — serves the backend's live content at the
    // configured FQDN. DNS verification happens out-of-band.
    add(
      GoogleFirebaseAppHostingDomain(
        localName: 'quickstart_domain',
        backend: TfArg.ref(backend.backendIdRef),
        location: TfArg.literal('us-central1'),
        domainId: TfArg.literal('apphosting.example.com'),
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
