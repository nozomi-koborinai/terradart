// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_managed_private_endpoint`.
const Set<String> _azurermDataFactoryManagedPrivateEndpointSensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_factory_managed_private_endpoint`.
final class AzurermDataFactoryManagedPrivateEndpoint extends Resource {
  static const String tfType = 'azurerm_data_factory_managed_private_endpoint';

  AzurermDataFactoryManagedPrivateEndpoint(
    super.localName, {
    required TfArg<String> dataFactoryId,
    TfArg<List<String>>? fqdns,
    required TfArg<String> name,
    TfArg<String>? subresourceName,
    required TfArg<String> targetResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_factory_id': dataFactoryId,
           'fqdns': ?fqdns,
           'name': name,
           'subresource_name': ?subresourceName,
           'target_resource_id': targetResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryManagedPrivateEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryManagedPrivateEndpoint>`.
  RefTo<AzurermDataFactoryManagedPrivateEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `fqdns` attribute.
  TfRef<List<String>> get fqdns => TfRef.attribute<List<String>>(this, 'fqdns');

  /// Reference to `subresource_name` attribute.
  TfRef<String> get subresourceName =>
      TfRef.attribute<String>(this, 'subresource_name');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
