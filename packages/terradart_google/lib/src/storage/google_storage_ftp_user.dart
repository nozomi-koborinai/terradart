// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_ftp_user`.
const Set<String> _googleStorageFtpUserSensitive = <String>{};

/// Factory wrapper for `google_storage_ftp_user`.
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
    TfArg<List<Map<String, dynamic>>>? storageDirectoryMappings,
    TfArg<Map<String, dynamic>>? userCredentials,
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
             'storage_directory_mappings': storageDirectoryMappings,
           if (userCredentials != null) 'user_credentials': userCredentials,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageFtpUserSensitive;
}
