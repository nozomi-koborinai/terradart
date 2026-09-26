// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_signer_signing_job`.
const Set<String> _awsSignerSigningJobSensitive = <String>{};

/// Factory wrapper for `aws_signer_signing_job`.
final class DataAwsSignerSigningJob extends Data {
  static const String tfType = 'aws_signer_signing_job';

  DataAwsSignerSigningJob({
    required super.localName,
    required TfArg<String> jobId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'job_id': jobId, if (region != null) 'region': region},
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

  /// Reference to `job_invoker` attribute.
  TfRef<String> get jobInvoker => TfRef.attribute<String>(this, 'job_invoker');

  /// Reference to `job_owner` attribute.
  TfRef<String> get jobOwner => TfRef.attribute<String>(this, 'job_owner');

  /// Reference to `platform_display_name` attribute.
  TfRef<String> get platformDisplayName =>
      TfRef.attribute<String>(this, 'platform_display_name');

  /// Reference to `platform_id` attribute.
  TfRef<String> get platformId => TfRef.attribute<String>(this, 'platform_id');

  /// Reference to `profile_name` attribute.
  TfRef<String> get profileName =>
      TfRef.attribute<String>(this, 'profile_name');

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

  /// Reference to `source` attribute.
  TfRef<List<Map<String, Object?>>> get source =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
