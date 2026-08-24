// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_gateway_dynamic_routing`.
const Set<String> _cloudflareAiGatewayDynamicRoutingSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_gateway_dynamic_routing`.
///
/// Accepted Permissions
///
/// - `AI Gateway Read` - `AI Gateway Write`
final class DataCloudflareAiGatewayDynamicRouting extends Data {
  static const String tfType = 'cloudflare_ai_gateway_dynamic_routing';

  DataCloudflareAiGatewayDynamicRouting({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> gatewayId,
    required TfArg<String> id,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'gateway_id': gatewayId,
           'id': id,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAiGatewayDynamicRoutingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
