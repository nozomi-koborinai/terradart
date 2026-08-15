// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key_iam_policy`.
const Set<String> _googleKmsCryptoKeyIamPolicySensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsCryptoKeyIamPolicy extends Data {
  static const String tfType = 'google_kms_crypto_key_iam_policy';

  DataGoogleKmsCryptoKeyIamPolicy({
    required super.localName,
    required TfArg<String> cryptoKeyId,
  }) : super(terraformType: tfType, argMap: {'crypto_key_id': cryptoKeyId});

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
