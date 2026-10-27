// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_volume_bucket_with_server.dart';

/// Sensitive field paths for `azurerm_netapp_volume_bucket_with_server`.
const Set<String> _azurermNetappVolumeBucketWithServerSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_volume_bucket_with_server`.
final class DataAzurermNetappVolumeBucketWithServer extends Data {
  static const String tfType = 'azurerm_netapp_volume_bucket_with_server';

  DataAzurermNetappVolumeBucketWithServer(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> netappVolumeId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'netapp_volume_id': netappVolumeId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetappVolumeBucketWithServerSensitive;

  /// A reference to the `azurerm_netapp_volume_bucket_with_server` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappVolumeBucketWithServer>`.
  RefTo<AzurermNetappVolumeBucketWithServer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `file_system_cifs_username` attribute.
  TfRef<String> get fileSystemCifsUsername =>
      TfRef.attribute<String>(this, 'file_system_cifs_username');

  /// Reference to `file_system_nfs_user` attribute.
  TfRef<List<Map<String, Object?>>> get fileSystemNfsUser =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'file_system_nfs_user');

  /// Reference to `key_vault` attribute.
  TfRef<List<Map<String, Object?>>> get keyVault =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'key_vault');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `permissions` attribute.
  TfRef<String> get permissions => TfRef.attribute<String>(this, 'permissions');

  /// Reference to `server` attribute.
  TfRef<List<Map<String, Object?>>> get server =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'server');

  /// Reference to `server_certificate_common_name` attribute.
  TfRef<String> get serverCertificateCommonName =>
      TfRef.attribute<String>(this, 'server_certificate_common_name');

  /// Reference to `server_certificate_expiry_date` attribute.
  TfRef<String> get serverCertificateExpiryDate =>
      TfRef.attribute<String>(this, 'server_certificate_expiry_date');

  /// Reference to `server_ip_address` attribute.
  TfRef<String> get serverIpAddress =>
      TfRef.attribute<String>(this, 'server_ip_address');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `netapp_volume_id` attribute.
  TfRef<String> get netappVolumeId =>
      TfRef.attribute<String>(this, 'netapp_volume_id');
}
