// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_group`.
const Set<String> _azurermApiManagementGroupSensitive = <String>{};

/// Api Management Group enum for `type`.
extension type const ApiManagementGroupType._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementGroupType.variable(String name) : this._(TfArg.variable(name));
  ApiManagementGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementGroupType.arg(TfArg<String> arg) : this._(arg);

  static const custom = ApiManagementGroupType._(TfArgLiteral('custom'));
  static const external = ApiManagementGroupType._(TfArgLiteral('external'));
  static const system = ApiManagementGroupType._(TfArgLiteral('system'));

  static const List<ApiManagementGroupType> values = [custom, external, system];
}

/// Factory wrapper for `azurerm_api_management_group`.
final class AzurermApiManagementGroup extends Resource {
  static const String tfType = 'azurerm_api_management_group';

  AzurermApiManagementGroup(
    super.localName, {
    required TfArg<String> apiManagementName,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? externalId,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    ApiManagementGroupType? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'description': ?description,
           'display_name': displayName,
           'external_id': ?externalId,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementGroup>`.
  RefTo<AzurermApiManagementGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `external_id` attribute.
  TfRef<String> get externalId => TfRef.attribute<String>(this, 'external_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
