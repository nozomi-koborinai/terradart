// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_basic_auth_secret.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_basic_auth_secret`.
const Set<String> _cloudflareZeroTrustCwsBasicAuthSecretSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_basic_auth_secret` (derived from provider schema).
@immutable
final class DataZeroTrustCwsBasicAuthSecretFilter {
  const DataZeroTrustCwsBasicAuthSecretFilter({this.direction, this.order});

  final DataZeroTrustCwsBasicAuthSecretDirection? direction;

  final DataZeroTrustCwsBasicAuthSecretOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsBasicAuthSecretDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthSecretDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthSecretDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthSecretDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsBasicAuthSecretDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsBasicAuthSecretDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsBasicAuthSecretDirection> values = [
    asc,
    desc,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsBasicAuthSecretOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthSecretOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthSecretOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthSecretOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const createdAt = DataZeroTrustCwsBasicAuthSecretOrder._(
    TfArgLiteral('created_at'),
  );

  static const List<DataZeroTrustCwsBasicAuthSecretOrder> values = [createdAt];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_basic_auth_secret`.
final class DataCloudflareZeroTrustCwsBasicAuthSecret extends Data {
  static const String tfType = 'cloudflare_zero_trust_cws_basic_auth_secret';

  DataCloudflareZeroTrustCwsBasicAuthSecret(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> credentialId,
    TfArg<String>? secretId,
    DataZeroTrustCwsBasicAuthSecretFilter? filter,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'credential_id': credentialId,
           'secret_id': ?secretId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsBasicAuthSecretSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_basic_auth_secret` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsBasicAuthSecret>`.
  RefTo<CloudflareZeroTrustCwsBasicAuthSecret> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `credential_id` attribute.
  TfRef<String> get credentialId =>
      TfRef.attribute<String>(this, 'credential_id');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');
}
