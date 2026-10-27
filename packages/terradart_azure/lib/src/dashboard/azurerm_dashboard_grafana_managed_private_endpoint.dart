// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dashboard_grafana_managed_private_endpoint`.
const Set<String> _azurermDashboardGrafanaManagedPrivateEndpointSensitive =
    <String>{};

/// Factory wrapper for `azurerm_dashboard_grafana_managed_private_endpoint`.
final class AzurermDashboardGrafanaManagedPrivateEndpoint extends Resource {
  static const String tfType =
      'azurerm_dashboard_grafana_managed_private_endpoint';

  AzurermDashboardGrafanaManagedPrivateEndpoint(
    super.localName, {
    required TfArg<String> grafanaId,
    TfArg<List<String>>? groupIds,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> privateLinkResourceId,
    TfArg<String>? privateLinkResourceRegion,
    TfArg<String>? privateLinkServiceUrl,
    TfArg<String>? requestMessage,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'grafana_id': grafanaId,
           'group_ids': ?groupIds,
           'location': location,
           'name': name,
           'private_link_resource_id': privateLinkResourceId,
           'private_link_resource_region': ?privateLinkResourceRegion,
           'private_link_service_url': ?privateLinkServiceUrl,
           'request_message': ?requestMessage,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDashboardGrafanaManagedPrivateEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDashboardGrafanaManagedPrivateEndpoint>`.
  RefTo<AzurermDashboardGrafanaManagedPrivateEndpoint> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `grafana_id` attribute.
  TfRef<String> get grafanaId => TfRef.attribute<String>(this, 'grafana_id');

  /// Reference to `group_ids` attribute.
  TfRef<List<String>> get groupIds =>
      TfRef.attribute<List<String>>(this, 'group_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_link_resource_id` attribute.
  TfRef<String> get privateLinkResourceId =>
      TfRef.attribute<String>(this, 'private_link_resource_id');

  /// Reference to `private_link_resource_region` attribute.
  TfRef<String> get privateLinkResourceRegion =>
      TfRef.attribute<String>(this, 'private_link_resource_region');

  /// Reference to `private_link_service_url` attribute.
  TfRef<String> get privateLinkServiceUrl =>
      TfRef.attribute<String>(this, 'private_link_service_url');

  /// Reference to `request_message` attribute.
  TfRef<String> get requestMessage =>
      TfRef.attribute<String>(this, 'request_message');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
