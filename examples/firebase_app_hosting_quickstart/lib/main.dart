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

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebase_app_hosting.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

final class AppHostingStack extends Stack {
  AppHostingStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    // Service account that Cloud Build and Cloud Run execute as.
    final sa = add(
      GoogleServiceAccount(
        localName: 'apphosting_sa',
        accountId: .literal('apphosting-quickstart-sa'),
        displayName: .literal('App Hosting runtime SA'),
      ),
    );

    // Backend — the central App Hosting resource. All traffic + domain
    // resources reference it via backendIdRef.
    final backend = add(
      GoogleFirebaseAppHostingBackend(
        localName: 'quickstart',
        backendId: .literal('quickstart-backend'),
        location: .literal('us-central1'),
        appId: .literal('1:1234567890:web:abcdef'),
        serviceAccount: .ref(sa.email),
        servingLocality: .literal(.regionalStrict),
        displayName: .literal('terradart App Hosting quickstart'),
      ),
    );

    // Custom domain mapping — serves the backend's live content at the
    // configured FQDN. DNS verification happens out-of-band.
    add(
      GoogleFirebaseAppHostingDomain(
        localName: 'quickstart_domain',
        backend: .ref(backend.backendIdRef),
        location: .literal('us-central1'),
        domainId: .literal('apphosting.example.com'),
      ),
    );

    // ---- Backfill: default domain, build, traffic ---------------------------

    add(
      GoogleFirebaseAppHostingDefaultDomain(
        localName: 'default_domain',
        backend: .ref(backend.backendIdRef),
        location: .literal('us-central1'),
        domainId: .literal(
          'quickstart-backend--$projectId.us-central1.hosted.app',
        ),
      ),
    );

    final releaseBuild = add(
      GoogleFirebaseAppHostingBuild(
        localName: 'release_build',
        backend: .ref(backend.backendIdRef),
        location: .literal('us-central1'),
        buildId: .literal('release-1'),
        source: .codebase(branch: .literal('main')),
        displayName: .literal('Initial release build'),
      ),
    );

    add(
      GoogleFirebaseAppHostingTraffic(
        localName: 'live_traffic',
        backend: .ref(backend.backendIdRef),
        location: .literal('us-central1'),
        routing: .target(
          FirebaseAppHostingTrafficAppHostingTrafficTarget(
            splits: [
              FirebaseAppHostingTrafficAppHostingTrafficSplit(
                build: .ref(releaseBuild.buildIdRef),
                percent: .literal(100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
