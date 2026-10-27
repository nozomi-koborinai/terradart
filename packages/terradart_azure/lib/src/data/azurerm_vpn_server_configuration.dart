// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../vpn/azurerm_vpn_server_configuration.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_vpn_server_configuration`.
const Set<String> _azurermVpnServerConfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_vpn_server_configuration`.
final class DataAzurermVpnServerConfiguration extends Data {
  static const String tfType = 'azurerm_vpn_server_configuration';

  DataAzurermVpnServerConfiguration(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVpnServerConfigurationSensitive;

  /// A reference to the `azurerm_vpn_server_configuration` this data source reads, for
  /// arguments typed `RefTo<AzurermVpnServerConfiguration>`.
  RefTo<AzurermVpnServerConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `azure_active_directory_authentication` attribute.
  TfRef<List<Map<String, Object?>>> get azureActiveDirectoryAuthentication =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azure_active_directory_authentication',
      );

  /// Reference to `client_revoked_certificate` attribute.
  TfRef<List<Map<String, Object?>>> get clientRevokedCertificate =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'client_revoked_certificate',
      );

  /// Reference to `client_root_certificate` attribute.
  TfRef<List<Map<String, Object?>>> get clientRootCertificate =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'client_root_certificate',
      );

  /// Reference to `ipsec_policy` attribute.
  TfRef<List<Map<String, Object?>>> get ipsecPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipsec_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `radius` attribute.
  TfRef<List<Map<String, Object?>>> get radius =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'radius');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpn_authentication_types` attribute.
  TfRef<List<String>> get vpnAuthenticationTypes =>
      TfRef.attribute<List<String>>(this, 'vpn_authentication_types');

  /// Reference to `vpn_protocols` attribute.
  TfRef<List<String>> get vpnProtocols =>
      TfRef.attribute<List<String>>(this, 'vpn_protocols');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
