// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_extended_location_custom_location`.
const Set<String> _azurermExtendedLocationCustomLocationSensitive = <String>{};

/// Typed helper for the `authentication` block of
/// `azurerm_extended_location_custom_location` (derived from provider schema).
@immutable
final class ExtendedLocationCustomLocationAuthentication {
  const ExtendedLocationCustomLocationAuthentication({
    this.type,
    required this.value,
  });

  final TfArg<String>? type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_extended_location_custom_location`.
final class AzurermExtendedLocationCustomLocation extends Resource {
  static const String tfType = 'azurerm_extended_location_custom_location';

  AzurermExtendedLocationCustomLocation(
    super.localName, {
    required TfArg<List<String>> clusterExtensionIds,
    TfArg<String>? displayName,
    required TfArg<String> hostResourceId,
    TfArg<String>? hostType,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> namespace,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    ExtendedLocationCustomLocationAuthentication? authentication,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_extension_ids': clusterExtensionIds,
           'display_name': ?displayName,
           'host_resource_id': hostResourceId,
           'host_type': ?hostType,
           'location': location,
           'name': name,
           'namespace': namespace,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (authentication != null)
             'authentication': TfArg.literal(authentication.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermExtendedLocationCustomLocationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExtendedLocationCustomLocation>`.
  RefTo<AzurermExtendedLocationCustomLocation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_extension_ids` attribute.
  TfRef<List<String>> get clusterExtensionIds =>
      TfRef.attribute<List<String>>(this, 'cluster_extension_ids');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `host_resource_id` attribute.
  TfRef<String> get hostResourceId =>
      TfRef.attribute<String>(this, 'host_resource_id');

  /// Reference to `host_type` attribute.
  TfRef<String> get hostType => TfRef.attribute<String>(this, 'host_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
