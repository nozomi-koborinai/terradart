// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_cws_basic_auth_credential.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_basic_auth_credential`.
const Set<String> _cloudflareZeroTrustCwsBasicAuthCredentialSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_cws_basic_auth_credential` (derived from provider schema).
@immutable
final class DataZeroTrustCwsBasicAuthCredentialFilter {
  const DataZeroTrustCwsBasicAuthCredentialFilter({
    this.deploymentId,
    this.direction,
    this.order,
    this.username,
  });

  final TfArg<String>? deploymentId;

  final DataZeroTrustCwsBasicAuthCredentialDirection? direction;

  final DataZeroTrustCwsBasicAuthCredentialOrder? order;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'deployment_id': ?deploymentId?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustCwsBasicAuthCredentialDirection._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthCredentialDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthCredentialDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthCredentialDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustCwsBasicAuthCredentialDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustCwsBasicAuthCredentialDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustCwsBasicAuthCredentialDirection> values = [
    asc,
    desc,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataZeroTrustCwsBasicAuthCredentialOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustCwsBasicAuthCredentialOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustCwsBasicAuthCredentialOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustCwsBasicAuthCredentialOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const username = DataZeroTrustCwsBasicAuthCredentialOrder._(
    TfArgLiteral('username'),
  );
  static const createdAt = DataZeroTrustCwsBasicAuthCredentialOrder._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustCwsBasicAuthCredentialOrder._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustCwsBasicAuthCredentialOrder> values = [
    username,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_basic_auth_credential`.
final class DataCloudflareZeroTrustCwsBasicAuthCredential extends Data {
  static const String tfType =
      'cloudflare_zero_trust_cws_basic_auth_credential';

  DataCloudflareZeroTrustCwsBasicAuthCredential(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? credentialId,
    DataZeroTrustCwsBasicAuthCredentialFilter? filter,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'credential_id': ?credentialId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsBasicAuthCredentialSensitive;

  /// A reference to the `cloudflare_zero_trust_cws_basic_auth_credential` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCwsBasicAuthCredential>`.
  RefTo<CloudflareZeroTrustCwsBasicAuthCredential> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `credential_id` attribute.
  TfRef<String> get credentialId =>
      TfRef.attribute<String>(this, 'credential_id');
}
