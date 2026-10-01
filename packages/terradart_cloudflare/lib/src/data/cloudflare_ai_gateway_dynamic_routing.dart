// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ai/cloudflare_ai_gateway_dynamic_routing.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_gateway_dynamic_routing`.
const Set<String> _cloudflareAiGatewayDynamicRoutingSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_gateway_dynamic_routing`.
///
/// Accepted Permissions
///
/// - `AI Gateway Read` - `AI Gateway Write`
final class DataCloudflareAiGatewayDynamicRouting extends Data {
  static const String tfType = 'cloudflare_ai_gateway_dynamic_routing';

  DataCloudflareAiGatewayDynamicRouting(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> gatewayId,
    required TfArg<String> id,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'gateway_id': gatewayId,
           'id': id,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAiGatewayDynamicRoutingSensitive;

  /// A reference to the `cloudflare_ai_gateway_dynamic_routing` this data source reads, for
  /// arguments typed `RefTo<CloudflareAiGatewayDynamicRouting>`.
  RefTo<CloudflareAiGatewayDynamicRouting> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');
}
