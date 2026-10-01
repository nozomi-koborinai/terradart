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
final class IamWorkforcePoolProviderKeyData {
  const IamWorkforcePoolProviderKeyData({required this.keySpec});

  final IamWorkforcePoolProviderKeySpec keySpec;

  @internal
  Map<String, Object?> encode() => {'key_spec': keySpec.toTfJson()};
}

/// `key_spec` — derived from the provider schema description.
extension type const IamWorkforcePoolProviderKeySpec._(TfArg<String> _)
    implements TfArg<String> {
  IamWorkforcePoolProviderKeySpec.variable(String name)
    : this._(TfArg.variable(name));
  IamWorkforcePoolProviderKeySpec.expression(String template)
    : this._(TfArg.expression(template));
  const IamWorkforcePoolProviderKeySpec.arg(TfArg<String> arg) : this._(arg);

  static const rsa2048 = IamWorkforcePoolProviderKeySpec._(
    TfArgLiteral('RSA_2048'),
  );
  static const rsa3072 = IamWorkforcePoolProviderKeySpec._(
    TfArgLiteral('RSA_3072'),
  );
  static const rsa4096 = IamWorkforcePoolProviderKeySpec._(
    TfArgLiteral('RSA_4096'),
  );

  static const List<IamWorkforcePoolProviderKeySpec> values = [
    rsa2048,
    rsa3072,
    rsa4096,
  ];
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

  GoogleIamWorkforcePoolProviderKey(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> keyId,
    required TfArg<String> location,
    required TfArg<String> providerId,
    required TfArg<String> use,
    required TfArg<String> workforcePoolId,
    required IamWorkforcePoolProviderKeyData keyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePoolProviderKey>`.
  RefTo<GoogleIamWorkforcePoolProviderKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `provider_id` attribute.
  TfRef<String> get providerId => TfRef.attribute<String>(this, 'provider_id');

  /// Reference to `use` attribute.
  TfRef<String> get use => TfRef.attribute<String>(this, 'use');

  /// Reference to `workforce_pool_id` attribute.
  TfRef<String> get workforcePoolId =>
      TfRef.attribute<String>(this, 'workforce_pool_id');
}
