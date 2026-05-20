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

/// `terraform { backend "local" { ... } }` configuration.
///
/// The default Terraform local backend writes to `./terraform.tfstate`
/// in the working directory. Provide [path] to override the location;
/// leave it null to inherit Terraform's default behaviour.
@immutable
final class LocalBackend implements StackBackend {
  const LocalBackend({this.path});

  /// Optional path to the state file. When null, Terraform's default
  /// (`./terraform.tfstate` resolved against the working directory)
  /// applies and no `path` key is emitted in the synth output.
  final String? path;

  @override
  String get backendType => 'local';

  @override
  Map<String, Object?> toTfJson() => {
        if (path != null) 'path': path,
      };
}
