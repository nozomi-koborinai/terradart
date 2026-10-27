// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../portal/azurerm_portal_dashboard.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_portal_dashboard`.
const Set<String> _azurermPortalDashboardSensitive = <String>{};

/// Factory wrapper for `azurerm_portal_dashboard`.
final class DataAzurermPortalDashboard extends Data {
  static const String tfType = 'azurerm_portal_dashboard';

  DataAzurermPortalDashboard(
    super.localName, {
    TfArg<String>? dashboardProperties,
    TfArg<String>? displayName,
    TfArg<String>? name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dashboard_properties': ?dashboardProperties,
           'display_name': ?displayName,
           'name': ?name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPortalDashboardSensitive;

  /// A reference to the `azurerm_portal_dashboard` this data source reads, for
  /// arguments typed `RefTo<AzurermPortalDashboard>`.
  RefTo<AzurermPortalDashboard> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `dashboard_properties` attribute.
  TfRef<String> get dashboardProperties =>
      TfRef.attribute<String>(this, 'dashboard_properties');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
