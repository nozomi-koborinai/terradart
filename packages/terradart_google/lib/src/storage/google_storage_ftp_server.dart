// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_ftp_server`.
const Set<String> _googleStorageFtpServerSensitive = <String>{};

/// Factory wrapper for `google_storage_ftp_server`.
final class GoogleStorageFtpServer extends Resource {
  static const String tfType = 'google_storage_ftp_server';

  GoogleStorageFtpServer({
    required super.localName,
    required TfArg<String> accessType,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> serverId,
    TfArg<Map<String, dynamic>>? externalConfig,
    TfArg<Map<String, dynamic>>? internalConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_type': accessType,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'server_id': serverId,
           if (externalConfig != null) 'external_config': externalConfig,
           if (internalConfig != null) 'internal_config': internalConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageFtpServerSensitive;
}
