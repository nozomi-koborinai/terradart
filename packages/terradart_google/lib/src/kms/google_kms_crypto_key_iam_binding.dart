// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key_iam_binding`.
const Set<String> _googleKmsCryptoKeyIamBindingSensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud KMS crypto key.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleKmsCryptoKeyIamMember] for additive grants.
final class GoogleKmsCryptoKeyIamBinding extends Resource {
  static const String tfType = 'google_kms_crypto_key_iam_binding';

  GoogleKmsCryptoKeyIamBinding({
    required super.localName,
    required TfArg<String> cryptoKeyId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crypto_key_id': cryptoKeyId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeyIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
