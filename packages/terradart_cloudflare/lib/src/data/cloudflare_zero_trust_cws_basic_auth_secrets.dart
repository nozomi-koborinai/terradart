// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_basic_auth_secrets`.
const Set<String> _cloudflareZeroTrustCwsBasicAuthSecretsSensitive = <String>{};

/// Data Zero Trust Cws Basic Auth Secrets enum for `direction`.
extension type const DataZeroTrustCwsBasicAuthSecretsDirection._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthSecretsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthSecretsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthSecretsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsBasicAuthSecretsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsBasicAuthSecretsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsBasicAuthSecretsDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Cws Basic Auth Secrets enum for `order`.
extension type const DataZeroTrustCwsBasicAuthSecretsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthSecretsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthSecretsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthSecretsOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const createdAt = DataZeroTrustCwsBasicAuthSecretsOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataZeroTrustCwsBasicAuthSecretsOrder> values = [createdAt];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_basic_auth_secrets`.
final class DataCloudflareZeroTrustCwsBasicAuthSecrets extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_basic_auth_secrets';

  DataCloudflareZeroTrustCwsBasicAuthSecrets(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> credentialId,
    DataZeroTrustCwsBasicAuthSecretsDirection? direction,
    TfArg<num>? maxItems,
    DataZeroTrustCwsBasicAuthSecretsOrder? order,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'credential_id': credentialId,
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsBasicAuthSecretsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `credential_id` attribute.
  TfRef<String> get credentialId =>
      TfRef.attribute<String>(this, 'credential_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
