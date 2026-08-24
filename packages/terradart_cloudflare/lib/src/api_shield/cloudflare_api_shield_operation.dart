// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_shield_operation`.
const Set<String> _cloudflareApiShieldOperationSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield_operation`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShieldOperation extends Resource {
  static const String tfType = 'cloudflare_api_shield_operation';

  CloudflareApiShieldOperation({
    required super.localName,
    required TfArg<String> endpoint,
    required TfArg<String> host,
    required TfArg<String> method,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint': endpoint,
           'host': host,
           'method': method,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldOperationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');
}
