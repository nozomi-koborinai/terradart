// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_pubsub_private_link_resource`.
const Set<String> _azurermWebPubsubPrivateLinkResourceSensitive = <String>{};

/// Factory wrapper for `azurerm_web_pubsub_private_link_resource`.
final class DataAzurermWebPubsubPrivateLinkResource extends Data {
  static const String tfType = 'azurerm_web_pubsub_private_link_resource';

  DataAzurermWebPubsubPrivateLinkResource(
    super.localName, {
    required TfArg<String> webPubsubId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'web_pubsub_id': webPubsubId});

  @override
  Set<String> get sensitiveFields =>
      _azurermWebPubsubPrivateLinkResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `shared_private_link_resource_types` attribute.
  TfRef<List<Map<String, Object?>>> get sharedPrivateLinkResourceTypes =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'shared_private_link_resource_types',
      );

  /// Reference to `web_pubsub_id` attribute.
  TfRef<String> get webPubsubId =>
      TfRef.attribute<String>(this, 'web_pubsub_id');
}
