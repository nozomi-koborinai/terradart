// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_ftp_server`.
const Set<String> _googleStorageFtpServerSensitive = <String>{};

/// Storage Ftp Server Access enum for `access_type`.
enum StorageFtpServerAccessType implements TerraformEnum {
  internal('INTERNAL'),
  external('EXTERNAL');

  const StorageFtpServerAccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// The `internal_config` | `external_config` exactly-one-of group.
sealed class StorageFtpServerConfig {
  const StorageFtpServerConfig();

  String get blockKey;

  Map<String, Object?> encode();
}

/// `internal_config`: Private Service Connect access for the listed
/// consumer projects.
@immutable
final class StorageFtpServerInternalConfig extends StorageFtpServerConfig {
  const StorageFtpServerInternalConfig({
    this.consumerAcceptList,
    this.consumerRejectList,
  });

  final List<StorageFtpServerConsumerAccept>? consumerAcceptList;
  final List<StorageFtpServerConsumerReject>? consumerRejectList;

  @override
  String get blockKey => 'internal_config';

  @override
  Map<String, Object?> encode() => {
    if (consumerAcceptList != null)
      'consumer_accept_list': consumerAcceptList!
          .map((e) => e.encode())
          .toList(),
    if (consumerRejectList != null)
      'consumer_reject_list': consumerRejectList!
          .map((e) => e.encode())
          .toList(),
  };
}

/// `external_config`: public access from the allowed CIDR ranges.
@immutable
final class StorageFtpServerExternalConfig extends StorageFtpServerConfig {
  const StorageFtpServerExternalConfig({this.allowedCidrBlocks});

  final TfArg<List<String>>? allowedCidrBlocks;

  @override
  String get blockKey => 'external_config';

  @override
  Map<String, Object?> encode() => {
    if (allowedCidrBlocks != null)
      'allowed_cidr_blocks': allowedCidrBlocks!.toTfJson(),
  };
}

/// One `internal_config.consumer_accept_list` entry.
@immutable
class StorageFtpServerConsumerAccept {
  const StorageFtpServerConsumerAccept({
    required this.project,
    required this.connectionLimit,
  });

  /// `projects/{project}`.
  final TfArg<String> project;
  final TfArg<int> connectionLimit;

  Map<String, Object?> encode() => {
    'project': project.toTfJson(),
    'connection_limit': connectionLimit.toTfJson(),
  };
}

/// One `internal_config.consumer_reject_list` entry.
@immutable
class StorageFtpServerConsumerReject {
  const StorageFtpServerConsumerReject({required this.project});

  /// `projects/{project}`.
  final TfArg<String> project;

  Map<String, Object?> encode() => {'project': project.toTfJson()};
}

/// Factory wrapper for `google_storage_ftp_server`.
///
/// An SFTP Server resource supporting internal and external connectivity
/// configurations.
///
/// `config` is the MM `exactly_one_of` group (`internal_config` |
/// `external_config`), sealed: pass [StorageFtpServerInternalConfig] with
/// `accessType: StorageFtpServerAccessType.internal` or
/// [StorageFtpServerExternalConfig] with
/// `accessType: StorageFtpServerAccessType.external`.
final class GoogleStorageFtpServer extends Resource {
  static const String tfType = 'google_storage_ftp_server';

  GoogleStorageFtpServer({
    required super.localName,
    required TfArg<StorageFtpServerAccessType> accessType,
    required StorageFtpServerConfig config,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> serverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_type': accessType,
           config.blockKey: TfArg.literal(config.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'server_id': serverId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageFtpServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageFtpServer>`.
  RefTo<GoogleStorageFtpServer> get ref => RefTo.of(this);
}
