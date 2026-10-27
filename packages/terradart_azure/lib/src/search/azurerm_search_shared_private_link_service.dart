// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_search_shared_private_link_service`.
const Set<String> _azurermSearchSharedPrivateLinkServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_search_shared_private_link_service`.
final class AzurermSearchSharedPrivateLinkService extends Resource {
  static const String tfType = 'azurerm_search_shared_private_link_service';

  AzurermSearchSharedPrivateLinkService(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? requestMessage,
    required TfArg<String> searchServiceId,
    required TfArg<String> subresourceName,
    required TfArg<String> targetResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'request_message': ?requestMessage,
           'search_service_id': searchServiceId,
           'subresource_name': subresourceName,
           'target_resource_id': targetResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSearchSharedPrivateLinkServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSearchSharedPrivateLinkService>`.
  RefTo<AzurermSearchSharedPrivateLinkService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `request_message` attribute.
  TfRef<String> get requestMessage =>
      TfRef.attribute<String>(this, 'request_message');

  /// Reference to `search_service_id` attribute.
  TfRef<String> get searchServiceId =>
      TfRef.attribute<String>(this, 'search_service_id');

  /// Reference to `subresource_name` attribute.
  TfRef<String> get subresourceName =>
      TfRef.attribute<String>(this, 'subresource_name');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
