// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_signalr_shared_private_link_resource`.
const Set<String> _azurermSignalrSharedPrivateLinkResourceSensitive =
    <String>{};

/// Factory wrapper for `azurerm_signalr_shared_private_link_resource`.
final class AzurermSignalrSharedPrivateLinkResource extends Resource {
  static const String tfType = 'azurerm_signalr_shared_private_link_resource';

  AzurermSignalrSharedPrivateLinkResource(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? requestMessage,
    required TfArg<String> signalrServiceId,
    required TfArg<String> subResourceName,
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
           'signalr_service_id': signalrServiceId,
           'sub_resource_name': subResourceName,
           'target_resource_id': targetResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSignalrSharedPrivateLinkResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSignalrSharedPrivateLinkResource>`.
  RefTo<AzurermSignalrSharedPrivateLinkResource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `request_message` attribute.
  TfRef<String> get requestMessage =>
      TfRef.attribute<String>(this, 'request_message');

  /// Reference to `signalr_service_id` attribute.
  TfRef<String> get signalrServiceId =>
      TfRef.attribute<String>(this, 'signalr_service_id');

  /// Reference to `sub_resource_name` attribute.
  TfRef<String> get subResourceName =>
      TfRef.attribute<String>(this, 'sub_resource_name');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
