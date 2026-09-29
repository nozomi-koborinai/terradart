// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_ftp_user`.
const Set<String> _googleStorageFtpUserSensitive = <String>{};

/// Typed helper for the `storage_directory_mappings` block of
/// `google_storage_ftp_user` (derived from provider schema).
@immutable
final class StorageFtpUserStorageDirectoryMappings {
  const StorageFtpUserStorageDirectoryMappings({
    this.bucket,
    this.bucketPrefix,
    this.directory,
    this.permission,
  });

  final RefTo<GoogleStorageBucket>? bucket;

  final TfArg<String>? bucketPrefix;

  final TfArg<String>? directory;

  final TfArg<StorageFtpUserStorageDirectoryMappingsPermission>? permission;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.encodeAs('name').toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (directory != null) 'directory': directory!.toTfJson(),
    if (permission != null) 'permission': permission!.toTfJson(),
  };
}

/// `permission` — derived from the provider schema description.
enum StorageFtpUserStorageDirectoryMappingsPermission implements TerraformEnum {
  readOnly('READ_ONLY'),
  readWrite('READ_WRITE');

  const StorageFtpUserStorageDirectoryMappingsPermission(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `user_credentials` block of
/// `google_storage_ftp_user` (derived from provider schema).
@immutable
final class StorageFtpUserUserCredentials {
  const StorageFtpUserUserCredentials({
    this.credentialName,
    this.credentialType,
    this.sshPublicKeyBody,
  });

  final TfArg<String>? credentialName;

  final TfArg<String>? credentialType;

  final TfArg<String>? sshPublicKeyBody;

  Map<String, Object?> encode() => {
    if (credentialName != null) 'credential_name': credentialName!.toTfJson(),
    if (credentialType != null) 'credential_type': credentialType!.toTfJson(),
    if (sshPublicKeyBody != null)
      'ssh_public_key_body': sshPublicKeyBody!.toTfJson(),
  };
}

/// Factory wrapper for `google_storage_ftp_user`.
///
/// A Storage FTP User resource supporting directory mappings and user
/// credentials for an SFTP Server.
final class GoogleStorageFtpUser extends Resource {
  static const String tfType = 'google_storage_ftp_user';

  GoogleStorageFtpUser({
    required super.localName,
    required TfArg<String> customerServiceAccount,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> serverId,
    required TfArg<String> userId,
    List<StorageFtpUserStorageDirectoryMappings>? storageDirectoryMappings,
    StorageFtpUserUserCredentials? userCredentials,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_service_account': customerServiceAccount,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'server_id': serverId,
           'user_id': userId,
           if (storageDirectoryMappings != null)
             'storage_directory_mappings': TfArg.literal([
               for (final e in storageDirectoryMappings) e.encode(),
             ]),
           if (userCredentials != null)
             'user_credentials': TfArg.literal(userCredentials.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageFtpUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageFtpUser>`.
  RefTo<GoogleStorageFtpUser> get ref => RefTo.of(this);
}
