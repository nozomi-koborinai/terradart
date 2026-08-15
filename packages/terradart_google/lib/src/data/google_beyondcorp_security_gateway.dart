// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway`.
const Set<String> _googleBeyondcorpSecurityGatewaySensitive = <String>{};

/// Factory wrapper for `google_beyondcorp_security_gateway`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBeyondcorpSecurityGateway extends Data {
  static const String tfType = 'google_beyondcorp_security_gateway';

  DataGoogleBeyondcorpSecurityGateway({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> securityGatewayId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           'security_gateway_id': securityGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBeyondcorpSecurityGatewaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delegating_service_account` attribute.
  TfRef<String> get delegatingServiceAccount =>
      TfRef.attribute<String>(this, 'delegating_service_account');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `external_ips` attribute.
  TfRef<List<String>> get externalIps =>
      TfRef.attribute<List<String>>(this, 'external_ips');

  /// Reference to `hubs` attribute.
  TfRef<List<Map<String, Object?>>> get hubs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hubs');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logging` attribute.
  TfRef<List<Map<String, Object?>>> get logging =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logging');

  /// Reference to `proxy_protocol_config` attribute.
  TfRef<List<Map<String, Object?>>> get proxyProtocolConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'proxy_protocol_config',
      );

  /// Reference to `service_discovery` attribute.
  TfRef<List<Map<String, Object?>>> get serviceDiscovery =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_discovery');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
