// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_pubsub_shared_private_link_resource`.
const Set<String> _azurermWebPubsubSharedPrivateLinkResourceSensitive =
    <String>{};

/// Factory wrapper for `azurerm_web_pubsub_shared_private_link_resource`.
final class AzurermWebPubsubSharedPrivateLinkResource extends Resource {
  static const String tfType =
      'azurerm_web_pubsub_shared_private_link_resource';

  AzurermWebPubsubSharedPrivateLinkResource(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? requestMessage,
    required TfArg<String> subresourceName,
    required TfArg<String> targetResourceId,
    required TfArg<String> webPubsubId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'request_message': ?requestMessage,
           'subresource_name': subresourceName,
           'target_resource_id': targetResourceId,
           'web_pubsub_id': webPubsubId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermWebPubsubSharedPrivateLinkResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebPubsubSharedPrivateLinkResource>`.
  RefTo<AzurermWebPubsubSharedPrivateLinkResource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `request_message` attribute.
  TfRef<String> get requestMessage =>
      TfRef.attribute<String>(this, 'request_message');

  /// Reference to `subresource_name` attribute.
  TfRef<String> get subresourceName =>
      TfRef.attribute<String>(this, 'subresource_name');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `web_pubsub_id` attribute.
  TfRef<String> get webPubsubId =>
      TfRef.attribute<String>(this, 'web_pubsub_id');
}
