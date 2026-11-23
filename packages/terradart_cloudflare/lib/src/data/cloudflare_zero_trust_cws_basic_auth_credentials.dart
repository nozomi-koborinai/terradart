// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_basic_auth_credentials`.
const Set<String> _cloudflareZeroTrustCwsBasicAuthCredentialsSensitive =
    <String>{};

/// Data Zero Trust Cws Basic Auth Credentials enum for `direction`.
extension type const DataZeroTrustCwsBasicAuthCredentialsDirection._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthCredentialsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthCredentialsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthCredentialsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsBasicAuthCredentialsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsBasicAuthCredentialsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsBasicAuthCredentialsDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Cws Basic Auth Credentials enum for `order`.
extension type const DataZeroTrustCwsBasicAuthCredentialsOrder._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthCredentialsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthCredentialsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthCredentialsOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const username = DataZeroTrustCwsBasicAuthCredentialsOrder._(
    TfArgLiteral('username'),
  );
  static const createdAt = DataZeroTrustCwsBasicAuthCredentialsOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsBasicAuthCredentialsOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsBasicAuthCredentialsOrder> values = [
    username,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_basic_auth_credentials`.
final class DataCloudflareZeroTrustCwsBasicAuthCredentials extends Data {
  static const String tfType =
      'cloudflare_zero_trust_cws_basic_auth_credentials';

  DataCloudflareZeroTrustCwsBasicAuthCredentials(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? deploymentId,
    DataZeroTrustCwsBasicAuthCredentialsDirection? direction,
    TfArg<num>? maxItems,
    DataZeroTrustCwsBasicAuthCredentialsOrder? order,
    TfArg<String>? username,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'deployment_id': ?deploymentId,
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'username': ?username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsBasicAuthCredentialsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
