// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_hyperdrive_config`.
const Set<String> _cloudflareHyperdriveConfigSensitive = <String>{
  'origin.access_client_secret',
  'origin.password',
};

/// Typed helper for the `caching` block of
/// `cloudflare_hyperdrive_config` (derived from provider schema).
@immutable
final class HyperdriveConfigCaching {
  const HyperdriveConfigCaching({
    this.disabled,
    this.maxAge,
    this.staleWhileRevalidate,
  });

  final TfArg<bool>? disabled;

  final TfArg<num>? maxAge;

  final TfArg<num>? staleWhileRevalidate;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
    'stale_while_revalidate': ?staleWhileRevalidate?.toTfJson(),
  };
}

/// Typed helper for the `mtls` block of
/// `cloudflare_hyperdrive_config` (derived from provider schema).
@immutable
final class HyperdriveConfigMtls {
  const HyperdriveConfigMtls({
    this.caCertificateId,
    this.mtlsCertificateId,
    this.sslmode,
  });

  final TfArg<String>? caCertificateId;

  final TfArg<String>? mtlsCertificateId;

  final TfArg<String>? sslmode;

  Map<String, Object?> encode() => {
    'ca_certificate_id': ?caCertificateId?.toTfJson(),
    'mtls_certificate_id': ?mtlsCertificateId?.toTfJson(),
    'sslmode': ?sslmode?.toTfJson(),
  };
}

/// Typed helper for the `origin` block of
/// `cloudflare_hyperdrive_config` (derived from provider schema).
@immutable
final class HyperdriveConfigOrigin {
  const HyperdriveConfigOrigin({
    this.accessClientId,
    this.accessClientSecret,
    required this.database,
    this.host,
    required this.password,
    this.port,
    required this.scheme,
    this.serviceId,
    required this.user,
  });

  final TfArg<String>? accessClientId;

  final TfArg<String>? accessClientSecret;

  final TfArg<String> database;

  final TfArg<String>? host;

  final TfArg<String> password;

  final TfArg<num>? port;

  final TfArg<HyperdriveConfigScheme> scheme;

  final TfArg<String>? serviceId;

  final TfArg<String> user;

  Map<String, Object?> encode() => {
    'access_client_id': ?accessClientId?.toTfJson(),
    'access_client_secret': ?accessClientSecret?.toTfJson(),
    'database': database.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': password.toTfJson(),
    'port': ?port?.toTfJson(),
    'scheme': scheme.toTfJson(),
    'service_id': ?serviceId?.toTfJson(),
    'user': user.toTfJson(),
  };
}

/// `scheme` — derived from the provider schema description.
enum HyperdriveConfigScheme implements TerraformEnum {
  postgres('postgres'),
  postgresql('postgresql'),
  mysql('mysql');

  const HyperdriveConfigScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_hyperdrive_config`.
///
/// Accepted Permissions
///
/// - `Hyperdrive Read` - `Hyperdrive Write`
final class CloudflareHyperdriveConfig extends Resource {
  static const String tfType = 'cloudflare_hyperdrive_config';

  CloudflareHyperdriveConfig({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? integration,
    required TfArg<String> name,
    TfArg<num>? originConnectionLimit,
    HyperdriveConfigCaching? caching,
    HyperdriveConfigMtls? mtls,
    HyperdriveConfigOrigin? origin,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'integration': ?integration,
           'name': name,
           'origin_connection_limit': ?originConnectionLimit,
           if (caching != null) 'caching': TfArg.literal(caching.encode()),
           if (mtls != null) 'mtls': TfArg.literal(mtls.encode()),
           if (origin != null) 'origin': TfArg.literal(origin.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHyperdriveConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareHyperdriveConfig>`.
  RefTo<CloudflareHyperdriveConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `restarted_on` attribute.
  TfRef<String> get restartedOn =>
      TfRef.attribute<String>(this, 'restarted_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `integration` attribute.
  TfRef<String> get integrationRef =>
      TfRef.attribute<String>(this, 'integration');

  /// Reference to `origin_connection_limit` attribute.
  TfRef<num> get originConnectionLimitRef =>
      TfRef.attribute<num>(this, 'origin_connection_limit');
}
