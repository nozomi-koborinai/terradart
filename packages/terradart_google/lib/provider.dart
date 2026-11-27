/// Provider block factory and version constants for `hashicorp/google`.
///
/// Import this alongside one or more per-service barrels:
/// ```dart
/// import 'package:terradart_google/provider.dart';
/// import 'package:terradart_google/pubsub.dart';
/// ```
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/_provider_meta.dart'
    show
        kBetaProviderSource,
        kGoogleProviderSource,
        kGoogleProviderVersionConstraint;
export 'src/google_provider.dart' show GoogleProvider;
