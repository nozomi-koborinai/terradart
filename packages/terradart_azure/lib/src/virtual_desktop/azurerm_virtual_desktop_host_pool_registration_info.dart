// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_desktop_host_pool_registration_info`.
const Set<String> _azurermVirtualDesktopHostPoolRegistrationInfoSensitive =
    <String>{'token'};

/// Factory wrapper for `azurerm_virtual_desktop_host_pool_registration_info`.
final class AzurermVirtualDesktopHostPoolRegistrationInfo extends Resource {
  static const String tfType =
      'azurerm_virtual_desktop_host_pool_registration_info';

  AzurermVirtualDesktopHostPoolRegistrationInfo(
    super.localName, {
    required TfArg<String> expirationDate,
    required TfArg<String> hostpoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'expiration_date': expirationDate, 'hostpool_id': hostpoolId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualDesktopHostPoolRegistrationInfoSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualDesktopHostPoolRegistrationInfo>`.
  RefTo<AzurermVirtualDesktopHostPoolRegistrationInfo> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `hostpool_id` attribute.
  TfRef<String> get hostpoolId => TfRef.attribute<String>(this, 'hostpool_id');
}
