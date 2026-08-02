// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key_iam_policy`.
const Set<String> _googleKmsCryptoKeyIamPolicySensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key_iam_policy`.
///
/// Authoritative IAM policy for a Cloud KMS crypto key.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleKmsCryptoKeyIamMember] for single-principal grants.
final class GoogleKmsCryptoKeyIamPolicy extends Resource {
  static const String tfType = 'google_kms_crypto_key_iam_policy';

  GoogleKmsCryptoKeyIamPolicy({
    required super.localName,
    required TfArg<String> cryptoKeyId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'crypto_key_id': cryptoKeyId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
