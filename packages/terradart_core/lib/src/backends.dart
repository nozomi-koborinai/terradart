import 'package:meta/meta.dart';

import 'stack.dart';

/// `terraform { backend "gcs" { ... } }` configuration.
///
/// Core ships the three backends that need no provider knowledge to
/// configure: [GcsBackend], [S3Backend], and [LocalBackend]. Anything
/// else (Terraform Cloud, Consul, ...) implements [StackBackend] in the
/// caller — synth's `TfJsonEncoder` has a generic path for that.
///
/// `TfJsonEncoder.terraformBlock` special-cases [GcsBackend] because it
/// predates the generic path; the emitted JSON is the same either way.
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

/// `terraform { backend "s3" { ... } }` configuration.
///
/// Covers S3 itself and the S3-compatible stores people actually keep
/// Terraform state in — Cloudflare R2, MinIO, Backblaze B2. Those need
/// a custom [endpoints] entry plus some subset of the `skip_*` flags,
/// because the AWS SDK preflight calls they suppress do not exist
/// outside AWS. [S3Backend.r2] fills all of it in for R2.
///
/// Every optional field is omitted from [toTfJson] when null, so the
/// Terraform-side default applies rather than a value terradart chose.
/// An explicit `false` is a value, and is emitted.
@immutable
final class S3Backend implements StackBackend {
  const S3Backend({
    required this.bucket,
    required this.key,
    this.region,
    this.endpoints,
    this.usePathStyle,
    this.skipCredentialsValidation,
    this.skipRegionValidation,
    this.skipRequestingAccountId,
    this.skipMetadataApiCheck,
    this.skipS3Checksum,
  });

  /// Cloudflare R2 preset: the account-scoped S3 endpoint, `region =
  /// "auto"`, path-style addressing, and the five `skip_*` flags R2
  /// needs because it implements no AWS metadata or STS surface.
  ///
  /// ```dart
  /// S3Backend.r2(
  ///   accountId: '<cloudflare account id>',
  ///   bucket: 'my-tfstate',
  ///   key: 'site/terraform.tfstate',
  /// )
  /// ```
  ///
  /// Credentials come from `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`
  /// at apply time (an R2 API token), never from synth output.
  factory S3Backend.r2({
    required String accountId,
    required String bucket,
    required String key,
  }) =>
      S3Backend(
        bucket: bucket,
        key: key,
        region: 'auto',
        endpoints: {'s3': 'https://$accountId.r2.cloudflarestorage.com'},
        usePathStyle: true,
        skipCredentialsValidation: true,
        skipRegionValidation: true,
        skipRequestingAccountId: true,
        skipMetadataApiCheck: true,
        skipS3Checksum: true,
      );

  /// S3 bucket holding the Terraform state file.
  final String bucket;

  /// Object key of the state file inside [bucket], e.g.
  /// `terraform/site/terraform.tfstate`. Terraform has no default here.
  final String key;

  /// Bucket region. `'auto'` for R2.
  final String? region;

  /// Service endpoint overrides, e.g.
  /// `{'s3': 'https://<account>.r2.cloudflarestorage.com'}`. Leave null
  /// for AWS.
  final Map<String, String>? endpoints;

  /// Path-style addressing (`https://host/bucket/key`) instead of
  /// virtual-hosted style. Required by most S3-compatible stores.
  final bool? usePathStyle;

  /// Skip the STS credential preflight. Required off-AWS.
  final bool? skipCredentialsValidation;

  /// Skip validating [region] against the known AWS region list —
  /// `'auto'` is not one of them.
  final bool? skipRegionValidation;

  /// Skip the STS `GetCallerIdentity` account-id lookup.
  final bool? skipRequestingAccountId;

  /// Skip the EC2 instance metadata endpoint probe.
  final bool? skipMetadataApiCheck;

  /// Skip the trailing checksum on uploads. R2 rejects it.
  final bool? skipS3Checksum;

  @override
  String get backendType => 's3';

  @override
  Map<String, Object?> toTfJson() => {
        'bucket': bucket,
        'key': key,
        if (region != null) 'region': region,
        if (endpoints != null) 'endpoints': endpoints,
        if (usePathStyle != null) 'use_path_style': usePathStyle,
        if (skipCredentialsValidation != null)
          'skip_credentials_validation': skipCredentialsValidation,
        if (skipRegionValidation != null)
          'skip_region_validation': skipRegionValidation,
        if (skipRequestingAccountId != null)
          'skip_requesting_account_id': skipRequestingAccountId,
        if (skipMetadataApiCheck != null)
          'skip_metadata_api_check': skipMetadataApiCheck,
        if (skipS3Checksum != null) 'skip_s3_checksum': skipS3Checksum,
      };
}
