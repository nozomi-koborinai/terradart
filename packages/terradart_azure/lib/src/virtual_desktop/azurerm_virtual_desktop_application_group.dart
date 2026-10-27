// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_desktop_application_group`.
const Set<String> _azurermVirtualDesktopApplicationGroupSensitive = <String>{};

/// Virtual Desktop Application Group enum for `type`.
extension type const VirtualDesktopApplicationGroupType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualDesktopApplicationGroupType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopApplicationGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopApplicationGroupType.arg(TfArg<String> arg) : this._(arg);

  static const desktop = VirtualDesktopApplicationGroupType._(
    TfArgLiteral('Desktop'),
  );
  static const remoteapp = VirtualDesktopApplicationGroupType._(
    TfArgLiteral('RemoteApp'),
  );

  static const List<VirtualDesktopApplicationGroupType> values = [
    desktop,
    remoteapp,
  ];
}

/// Factory wrapper for `azurerm_virtual_desktop_application_group`.
final class AzurermVirtualDesktopApplicationGroup extends Resource {
  static const String tfType = 'azurerm_virtual_desktop_application_group';

  AzurermVirtualDesktopApplicationGroup(
    super.localName, {
    TfArg<String>? defaultDesktopDisplayName,
    TfArg<String>? description,
    TfArg<String>? friendlyName,
    required TfArg<String> hostPoolId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required VirtualDesktopApplicationGroupType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_desktop_display_name': ?defaultDesktopDisplayName,
           'description': ?description,
           'friendly_name': ?friendlyName,
           'host_pool_id': hostPoolId,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualDesktopApplicationGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualDesktopApplicationGroup>`.
  RefTo<AzurermVirtualDesktopApplicationGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_desktop_display_name` attribute.
  TfRef<String> get defaultDesktopDisplayName =>
      TfRef.attribute<String>(this, 'default_desktop_display_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `host_pool_id` attribute.
  TfRef<String> get hostPoolId => TfRef.attribute<String>(this, 'host_pool_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
