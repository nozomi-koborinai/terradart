// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_shield_discovery_operation`.
const Set<String> _cloudflareApiShieldDiscoveryOperationSensitive = <String>{};

/// Api Shield Discovery Operation enum for `state`.
enum ApiShieldDiscoveryOperationState implements TerraformEnum {
  review('review'),
  ignored('ignored');

  const ApiShieldDiscoveryOperationState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_api_shield_discovery_operation`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Domain API Gateway`
final class CloudflareApiShieldDiscoveryOperation extends Resource {
  static const String tfType = 'cloudflare_api_shield_discovery_operation';

  CloudflareApiShieldDiscoveryOperation({
    required super.localName,
    required TfArg<String> operationId,
    TfArg<ApiShieldDiscoveryOperationState>? state,
    TfArg<String>? zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'operation_id': operationId,
           if (state != null) 'state': state,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldDiscoveryOperationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
