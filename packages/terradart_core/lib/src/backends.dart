import 'package:meta/meta.dart';

import 'stack.dart';

/// `terraform { backend "gcs" { ... } }` configuration.
///
/// v0.0.x ships GCS as the canonical "real-world" backend; other backends
/// (S3, local, Terraform Cloud) live in caller packages and implement
/// [StackBackend] directly. Synth's `JsonEncoder.terraformBlock` knows
/// about [GcsBackend] specifically because it's the v0.0.x default.
@immutable
final class GcsBackend implements StackBackend {
  const GcsBackend({required this.bucket, this.prefix});

  /// GCS bucket holding the Terraform state file.
  final String bucket;

  /// Optional prefix inside the bucket. Defaults to `default` on the
  /// Terraform side; we omit the field entirely if unset so the user's
  /// existing state path isn't accidentally prefixed.
  final String? prefix;

  @override
  String get backendType => 'gcs';

  @override
  Map<String, Object?> toTfJson() => {
        'bucket': bucket,
        if (prefix != null) 'prefix': prefix,
      };
}
