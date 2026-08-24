// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    TfArg<String>? environment,
    required TfArg<String> hostname,
    required TfArg<String> service,
    TfArg<String>? zoneId,
    TfArg<String>? zoneName,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (environment != null) 'environment': environment,
           'hostname': hostname,
           'service': service,
           if (zoneId != null) 'zone_id': zoneId,
           if (zoneName != null) 'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCustomDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cert_id` attribute.
  TfRef<String> get certId => TfRef.attribute<String>(this, 'cert_id');
}
