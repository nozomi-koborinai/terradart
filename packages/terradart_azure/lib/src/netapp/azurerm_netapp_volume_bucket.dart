// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_netapp_volume_bucket`.
const Set<String> _azurermNetappVolumeBucketSensitive = <String>{};

/// Typed helper for the `file_system_nfs_user` block of
/// `azurerm_netapp_volume_bucket` (derived from provider schema).
@immutable
final class NetappVolumeBucketFileSystemNfsUser {
  const NetappVolumeBucketFileSystemNfsUser({
    required this.groupId,
    required this.userId,
  });

  final TfArg<num> groupId;

  final TfArg<num> userId;

  @internal
  Map<String, Object?> encode() => {
    'group_id': groupId.toTfJson(),
    'user_id': userId.toTfJson(),
  };
}

/// Typed helper for the `key_vault` block of
/// `azurerm_netapp_volume_bucket` (derived from provider schema).
@immutable
final class NetappVolumeBucketKeyVault {
  const NetappVolumeBucketKeyVault({
    required this.certificateKeyVaultUri,
    required this.certificateName,
    required this.credentialsKeyVaultUri,
    required this.credentialsSecretName,
  });

  final TfArg<String> certificateKeyVaultUri;

  final TfArg<String> certificateName;

  final TfArg<String> credentialsKeyVaultUri;

  final TfArg<String> credentialsSecretName;

  @internal
  Map<String, Object?> encode() => {
    'certificate_key_vault_uri': certificateKeyVaultUri.toTfJson(),
    'certificate_name': certificateName.toTfJson(),
    'credentials_key_vault_uri': credentialsKeyVaultUri.toTfJson(),
    'credentials_secret_name': credentialsSecretName.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_netapp_volume_bucket`.
final class AzurermNetappVolumeBucket extends Resource {
  static const String tfType = 'azurerm_netapp_volume_bucket';

  AzurermNetappVolumeBucket(
    super.localName, {
    TfArg<String>? fileSystemCifsUsername,
    required TfArg<String> name,
    TfArg<String>? path,
    TfArg<String>? permissions,
    required TfArg<String> volumeId,
    NetappVolumeBucketFileSystemNfsUser? fileSystemNfsUser,
    NetappVolumeBucketKeyVault? keyVault,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_cifs_username': ?fileSystemCifsUsername,
           'name': name,
           'path': ?path,
           'permissions': ?permissions,
           'volume_id': volumeId,
           if (fileSystemNfsUser != null)
             'file_system_nfs_user': TfArg.literal(fileSystemNfsUser.encode()),
           if (keyVault != null) 'key_vault': TfArg.literal(keyVault.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappVolumeBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappVolumeBucket>`.
  RefTo<AzurermNetappVolumeBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `file_system_cifs_username` attribute.
  TfRef<String> get fileSystemCifsUsername =>
      TfRef.attribute<String>(this, 'file_system_cifs_username');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `permissions` attribute.
  TfRef<String> get permissions => TfRef.attribute<String>(this, 'permissions');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');
}
