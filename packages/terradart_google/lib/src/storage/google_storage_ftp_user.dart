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
    'bucket': ?bucket?.encodeAs('name').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'directory': ?directory?.toTfJson(),
    'permission': ?permission?.toTfJson(),
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
    'credential_name': ?credentialName?.toTfJson(),
    'credential_type': ?credentialType?.toTfJson(),
    'ssh_public_key_body': ?sshPublicKeyBody?.toTfJson(),
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
    required TfArg<String> serverId,
    required TfArg<String> userId,
    required TfArg<String> location,
    required TfArg<String> customerServiceAccount,
    List<StorageFtpUserStorageDirectoryMappings>? storageDirectoryMappings,
    StorageFtpUserUserCredentials? userCredentials,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'server_id': serverId,
           'user_id': userId,
           'location': location,
           'customer_service_account': customerServiceAccount,
           if (storageDirectoryMappings != null)
             'storage_directory_mappings': TfArg.literal([
               for (final e in storageDirectoryMappings) e.encode(),
             ]),
           if (userCredentials != null)
             'user_credentials': TfArg.literal(userCredentials.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageFtpUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageFtpUser>`.
  RefTo<GoogleStorageFtpUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
