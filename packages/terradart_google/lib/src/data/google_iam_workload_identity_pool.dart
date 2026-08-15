// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool`.
const Set<String> _googleIamWorkloadIdentityPoolSensitive = <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamWorkloadIdentityPool extends Data {
  static const String tfType = 'google_iam_workload_identity_pool';

  DataGoogleIamWorkloadIdentityPool({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> workloadIdentityPoolId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           'workload_identity_pool_id': workloadIdentityPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkloadIdentityPoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attestation_rules` attribute.
  TfRef<List<Map<String, Object?>>> get attestationRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attestation_rules');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `inline_certificate_issuance_config` attribute.
  TfRef<List<Map<String, Object?>>> get inlineCertificateIssuanceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'inline_certificate_issuance_config',
      );

  /// Reference to `inline_trust_config` attribute.
  TfRef<List<Map<String, Object?>>> get inlineTrustConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'inline_trust_config');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
