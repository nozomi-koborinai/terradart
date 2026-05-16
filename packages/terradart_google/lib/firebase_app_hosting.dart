// packages/terradart_google/lib/firebase_app_hosting.dart
/// Firebase App Hosting — Cloud Run-backed successor to classic Firebase
/// Hosting. Backends, build artifacts, custom domains, traffic split.
library;

export 'src/firebase_app_hosting/google_firebase_app_hosting_backend.dart'
    show
        AppHostingBackendCodebase,
        AppHostingServingLocality,
        GoogleFirebaseAppHostingBackend;
export 'src/firebase_app_hosting/google_firebase_app_hosting_build.dart'
    show
        AppHostingBuildSource,
        AppHostingBuildSourceCodebase,
        AppHostingBuildSourceContainer,
        GoogleFirebaseAppHostingBuild;
export 'src/firebase_app_hosting/google_firebase_app_hosting_default_domain.dart'
    show GoogleFirebaseAppHostingDefaultDomain;
export 'src/firebase_app_hosting/google_firebase_app_hosting_domain.dart'
    show
        AppHostingDomainRedirect,
        AppHostingDomainServe,
        GoogleFirebaseAppHostingDomain;
export 'src/firebase_app_hosting/google_firebase_app_hosting_traffic.dart'
    show
        AppHostingTrafficRolloutPolicy,
        AppHostingTrafficSplit,
        AppHostingTrafficTarget,
        GoogleFirebaseAppHostingTraffic;
