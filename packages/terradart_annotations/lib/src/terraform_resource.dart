import 'package:meta/meta.dart';

/// Records the Terraform resource type and provider on a generated
/// abstract `$Foo` class. Emitted by terradart_codegen on every generated
/// abstract class (both the curated `terradart_google` factories and any
/// user-side codegen output).
///
/// Example (emitter output):
/// ```dart
/// @TerraformResource(type: 'google_pubsub_topic', provider: 'hashicorp/google ~> 7.0')
/// abstract class $GooglePubsubTopic { ... }
/// ```
///
/// Pure metadata: terradart synth (Stage 2) does not consume this at
/// runtime in v0.0.x; it exists for tooling, IDE inspection, and provider
/// drift detection.
@immutable
final class TerraformResource {
  const TerraformResource({required this.type, required this.provider});

  /// Terraform resource type (e.g. `google_pubsub_topic`).
  final String type;

  /// Provider source + version constraint (e.g.
  /// `hashicorp/google ~> 7.0`).
  final String provider;
}
