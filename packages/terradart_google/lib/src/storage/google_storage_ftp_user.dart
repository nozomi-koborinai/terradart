// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
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

  final TfArg<StorageFtpUserPermission>? permission;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('name').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'directory': ?directory?.toTfJson(),
    'permission': ?permission?.toTfJson(),
  };
}

/// `permission` — derived from the provider schema description.
enum StorageFtpUserPermission implements TerraformEnum {
  readOnly('READ_ONLY'),
  readWrite('READ_WRITE');

  const StorageFtpUserPermission(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `user_credentials` block of
/// `google_storage_ftp_user` (derived from provider schema).
@immutable
final class StorageFtpUserCredentials {
  const StorageFtpUserCredentials({
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
    required RefTo<GoogleServiceAccount> customerServiceAccount,
    List<StorageFtpUserStorageDirectoryMappings>? storageDirectoryMappings,
    StorageFtpUserCredentials? userCredentials,
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
           'customer_service_account': customerServiceAccount.encodeAs('email'),
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

  /// Reference to `customer_service_account` attribute.
  TfRef<String> get customerServiceAccount =>
      TfRef.attribute<String>(this, 'customer_service_account');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
