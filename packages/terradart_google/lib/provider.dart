// packages/terradart_google/lib/provider.dart
/// Provider block factory and version constants for `hashicorp/google`.
///
/// Import this alongside one or more per-service barrels:
/// ```dart
/// import 'package:terradart_google/provider.dart';
/// import 'package:terradart_google/pubsub.dart';
/// ```
library;

export 'src/_provider_meta.dart'
    show kProviderSource, kProviderVersionConstraint;
export 'src/google_provider.dart' show GoogleProvider;
