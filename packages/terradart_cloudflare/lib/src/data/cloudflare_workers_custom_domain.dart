// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_custom_domain`.
const Set<String> _cloudflareWorkersCustomDomainSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_workers_custom_domain` (derived from provider schema).
@immutable
final class DataWorkersCustomDomainFilter {
  const DataWorkersCustomDomainFilter({
    this.environment,
    this.hostname,
    this.service,
    this.zoneId,
    this.zoneName,
  });

  final TfArg<String>? environment;

  final TfArg<String>? hostname;

  final TfArg<String>? service;

  final TfArg<String>? zoneId;

  final TfArg<String>? zoneName;

  Map<String, Object?> encode() => {
    if (environment != null) 'environment': environment!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
    if (zoneId != null) 'zone_id': zoneId!.toTfJson(),
    if (zoneName != null) 'zone_name': zoneName!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_workers_custom_domain`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write`
final class DataCloudflareWorkersCustomDomain extends Data {
  static const String tfType = 'cloudflare_workers_custom_domain';

  DataCloudflareWorkersCustomDomain({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? domainId,
    DataWorkersCustomDomainFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (domainId != null) 'domain_id': domainId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCustomDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cert_id` attribute.
  TfRef<String> get certId => TfRef.attribute<String>(this, 'cert_id');

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
