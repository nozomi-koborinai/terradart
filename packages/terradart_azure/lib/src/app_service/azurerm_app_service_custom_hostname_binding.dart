// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_service_custom_hostname_binding`.
const Set<String> _azurermAppServiceCustomHostnameBindingSensitive = <String>{};

/// Factory wrapper for `azurerm_app_service_custom_hostname_binding`.
final class AzurermAppServiceCustomHostnameBinding extends Resource {
  static const String tfType = 'azurerm_app_service_custom_hostname_binding';

  AzurermAppServiceCustomHostnameBinding(
    super.localName, {
    required TfArg<String> appServiceName,
    required TfArg<String> hostname,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sslState,
    TfArg<String>? thumbprint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_name': appServiceName,
           'hostname': hostname,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'ssl_state': ?sslState,
           'thumbprint': ?thumbprint,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceCustomHostnameBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceCustomHostnameBinding>`.
  RefTo<AzurermAppServiceCustomHostnameBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `virtual_ip` attribute.
  TfRef<String> get virtualIp => TfRef.attribute<String>(this, 'virtual_ip');

  /// Reference to `app_service_name` attribute.
  TfRef<String> get appServiceName =>
      TfRef.attribute<String>(this, 'app_service_name');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `ssl_state` attribute.
  TfRef<String> get sslState => TfRef.attribute<String>(this, 'ssl_state');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');
}
