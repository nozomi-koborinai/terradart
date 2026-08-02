// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring_iam_policy`.
const Set<String> _googleKmsKeyRingIamPolicySensitive = <String>{};

/// Factory wrapper for `google_kms_key_ring_iam_policy`.
///
/// Authoritative IAM policy for a Cloud KMS key ring.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleKmsKeyRingIamMember] for single-principal grants.
final class GoogleKmsKeyRingIamPolicy extends Resource {
  static const String tfType = 'google_kms_key_ring_iam_policy';

  GoogleKmsKeyRingIamPolicy({
    required super.localName,
    required TfArg<String> keyRingId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'key_ring_id': keyRingId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
