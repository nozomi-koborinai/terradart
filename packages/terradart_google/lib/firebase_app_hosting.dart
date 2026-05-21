// packages/terradart_google/lib/firebase_app_hosting.dart
/// Firebase App Hosting — Cloud Run-backed successor to classic Firebase
/// Hosting. Backends, build artifacts, custom domains, traffic split.
library;

export 'src/firebase_app_hosting/google_firebase_app_hosting_backend.dart'
    show
        FirebaseAppHostingBackendAppHostingBackendCodebase,
        AppHostingServingLocality,
        GoogleFirebaseAppHostingBackend;
export 'src/firebase_app_hosting/google_firebase_app_hosting_build.dart'
    show
        FirebaseAppHostingBuildAppHostingBuildSource,
        FirebaseAppHostingBuildAppHostingBuildSourceCodebase,
        FirebaseAppHostingBuildAppHostingBuildSourceContainer,
        GoogleFirebaseAppHostingBuild;
export 'src/firebase_app_hosting/google_firebase_app_hosting_default_domain.dart'
    show GoogleFirebaseAppHostingDefaultDomain;
export 'src/firebase_app_hosting/google_firebase_app_hosting_domain.dart'
    show
        FirebaseAppHostingDomainAppHostingDomainRedirect,
        FirebaseAppHostingDomainAppHostingDomainServe,
        GoogleFirebaseAppHostingDomain;
export 'src/firebase_app_hosting/google_firebase_app_hosting_traffic.dart'
    show
        FirebaseAppHostingTrafficAppHostingTrafficRolloutPolicy,
        FirebaseAppHostingTrafficAppHostingTrafficSplit,
        FirebaseAppHostingTrafficAppHostingTrafficTarget,
        GoogleFirebaseAppHostingTraffic;
