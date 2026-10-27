// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../web_pubsub/azurerm_web_pubsub.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_web_pubsub`.
const Set<String> _azurermWebPubsubSensitive = <String>{
  'primary_access_key',
  'primary_connection_string',
  'secondary_access_key',
  'secondary_connection_string',
};

/// Factory wrapper for `azurerm_web_pubsub`.
final class DataAzurermWebPubsub extends Data {
  static const String tfType = 'azurerm_web_pubsub';

  DataAzurermWebPubsub(
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
  Set<String> get sensitiveFields => _azurermWebPubsubSensitive;

  /// A reference to the `azurerm_web_pubsub` this data source reads, for
  /// arguments typed `RefTo<AzurermWebPubsub>`.
  RefTo<AzurermWebPubsub> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aad_auth_enabled` attribute.
  TfRef<bool> get aadAuthEnabled =>
      TfRef.attribute<bool>(this, 'aad_auth_enabled');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `external_ip` attribute.
  TfRef<String> get externalIp => TfRef.attribute<String>(this, 'external_ip');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `live_trace` attribute.
  TfRef<List<Map<String, Object?>>> get liveTrace =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'live_trace');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `public_port` attribute.
  TfRef<num> get publicPort => TfRef.attribute<num>(this, 'public_port');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `server_port` attribute.
  TfRef<num> get serverPort => TfRef.attribute<num>(this, 'server_port');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tls_client_cert_enabled` attribute.
  TfRef<bool> get tlsClientCertEnabled =>
      TfRef.attribute<bool>(this, 'tls_client_cert_enabled');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
