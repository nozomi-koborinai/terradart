// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool_provider_key`.
const Set<String> _googleIamWorkforcePoolProviderKeySensitive = <String>{};

/// Typed helper for the `key_data` block of
/// `google_iam_workforce_pool_provider_key` (derived from provider schema).
@immutable
final class IamWorkforcePoolProviderKeyKeyData {
  const IamWorkforcePoolProviderKeyKeyData({required this.keySpec});

  final TfArg<IamWorkforcePoolProviderKeyKeyDataKeySpec> keySpec;

  Map<String, Object?> encode() => {'key_spec': keySpec.toTfJson()};
}

/// `key_spec` — derived from the provider schema description.
enum IamWorkforcePoolProviderKeyKeyDataKeySpec implements TerraformEnum {
  rsa2048('RSA_2048'),
  rsa3072('RSA_3072'),
  rsa4096('RSA_4096');

  const IamWorkforcePoolProviderKeyKeyDataKeySpec(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_iam_workforce_pool_provider_key`.
///
/// Represents a public key configuration for a Workforce Pool Provider. The key
/// can be configured in your identity provider to encrypt SAML assertions.
/// Google holds the corresponding private key, which it uses to decrypt
/// encrypted tokens.
///
/// Workforce pool provider key — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleIamWorkforcePoolProviderKey extends Resource {
  static const String tfType = 'google_iam_workforce_pool_provider_key';

  GoogleIamWorkforcePoolProviderKey({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> keyId,
    required TfArg<String> location,
    required TfArg<String> providerId,
    required TfArg<String> use,
    required TfArg<String> workforcePoolId,
    required IamWorkforcePoolProviderKeyKeyData keyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'key_id': keyId,
           'location': location,
           'provider_id': providerId,
           'use': use,
           'workforce_pool_id': workforcePoolId,
           'key_data': TfArg.literal(keyData.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkforcePoolProviderKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
