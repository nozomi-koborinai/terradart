// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_signer_signing_job`.
const Set<String> _awsSignerSigningJobSensitive = <String>{};

/// Typed helper for the `destination` block of
/// `aws_signer_signing_job` (derived from provider schema).
@immutable
final class SignerSigningJobDestination {
  const SignerSigningJobDestination({required this.s3});

  final SignerSigningJobDestinationS3 s3;

  Map<String, Object?> encode() => {'s3': s3.encode()};
}

/// Typed helper for the `destination.s3` block of
/// `aws_signer_signing_job` (derived from provider schema).
@immutable
final class SignerSigningJobDestinationS3 {
  const SignerSigningJobDestinationS3({required this.bucket, this.prefix});

  final TfArg<String> bucket;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `aws_signer_signing_job` (derived from provider schema).
@immutable
final class SignerSigningJobSource {
  const SignerSigningJobSource({required this.s3});

  final SignerSigningJobSourceS3 s3;

  Map<String, Object?> encode() => {'s3': s3.encode()};
}

/// Typed helper for the `source.s3` block of
/// `aws_signer_signing_job` (derived from provider schema).
@immutable
final class SignerSigningJobSourceS3 {
  const SignerSigningJobSourceS3({
    required this.bucket,
    required this.key,
    required this.version,
  });

  final TfArg<String> bucket;

  final TfArg<String> key;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'key': key.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `aws_signer_signing_job`.
final class AwsSignerSigningJob extends Resource {
  static const String tfType = 'aws_signer_signing_job';

  AwsSignerSigningJob({
    required super.localName,
    TfArg<bool>? ignoreSigningJobFailure,
    required TfArg<String> profileName,
    TfArg<String>? region,
    required SignerSigningJobDestination destination,
    required SignerSigningJobSource source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (ignoreSigningJobFailure != null)
             'ignore_signing_job_failure': ignoreSigningJobFailure,
           'profile_name': profileName,
           if (region != null) 'region': region,
           'destination': TfArg.literal(destination.encode()),
           'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSignerSigningJobSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `completed_at` attribute.
  TfRef<String> get completedAt =>
      TfRef.attribute<String>(this, 'completed_at');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `job_invoker` attribute.
  TfRef<String> get jobInvoker => TfRef.attribute<String>(this, 'job_invoker');

  /// Reference to `job_owner` attribute.
  TfRef<String> get jobOwner => TfRef.attribute<String>(this, 'job_owner');

  /// Reference to `platform_display_name` attribute.
  TfRef<String> get platformDisplayName =>
      TfRef.attribute<String>(this, 'platform_display_name');

  /// Reference to `platform_id` attribute.
  TfRef<String> get platformId => TfRef.attribute<String>(this, 'platform_id');

  /// Reference to `profile_version` attribute.
  TfRef<String> get profileVersion =>
      TfRef.attribute<String>(this, 'profile_version');

  /// Reference to `requested_by` attribute.
  TfRef<String> get requestedBy =>
      TfRef.attribute<String>(this, 'requested_by');

  /// Reference to `revocation_record` attribute.
  TfRef<List<Map<String, Object?>>> get revocationRecord =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'revocation_record');

  /// Reference to `signature_expires_at` attribute.
  TfRef<String> get signatureExpiresAt =>
      TfRef.attribute<String>(this, 'signature_expires_at');

  /// Reference to `signed_object` attribute.
  TfRef<List<Map<String, Object?>>> get signedObject =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'signed_object');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
