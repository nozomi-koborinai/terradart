// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_workers_custom_domain`.
const Set<String> _cloudflareWorkersCustomDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_custom_domain`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write`
final class CloudflareWorkersCustomDomain extends Resource {
  static const String tfType = 'cloudflare_workers_custom_domain';

  CloudflareWorkersCustomDomain({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? environment,
    required TfArg<String> hostname,
    required TfArg<String> service,
    RefTo<CloudflareZone>? zoneId,
    TfArg<String>? zoneName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'environment': ?environment,
           'hostname': hostname,
           'service': service,
           'zone_id': ?zoneId?.encodeAs('id'),
           'zone_name': ?zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkersCustomDomain>`.
  RefTo<CloudflareWorkersCustomDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cert_id` attribute.
  TfRef<String> get certId => TfRef.attribute<String>(this, 'cert_id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}
