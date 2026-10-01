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

/// Exactly one of `internal_config`, `external_config` on `google_storage_ftp_server`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.internalConfig(...)`.
sealed class StorageFtpServerConfig {
  const StorageFtpServerConfig();

  /// Sets `internal_config`.
  const factory StorageFtpServerConfig.internalConfig(
    StorageFtpServerInternalConfig internalConfig,
  ) = StorageFtpServerInternalConfigChoice;

  /// Sets `external_config`.
  const factory StorageFtpServerConfig.externalConfig(
    StorageFtpServerExternalConfig externalConfig,
  ) = StorageFtpServerExternalConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [StorageFtpServerConfig.internalConfig] choice: sets `internal_config`.
final class StorageFtpServerInternalConfigChoice
    extends StorageFtpServerConfig {
  const StorageFtpServerInternalConfigChoice(this.internalConfig);

  final StorageFtpServerInternalConfig internalConfig;

  @override
  String get blockKey => 'internal_config';

  @override
  Map<String, Object?> encode() => {'internal_config': internalConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'internal_config': TfArg.literal(internalConfig.encode()),
  };
}

/// The [StorageFtpServerConfig.externalConfig] choice: sets `external_config`.
final class StorageFtpServerExternalConfigChoice
    extends StorageFtpServerConfig {
  const StorageFtpServerExternalConfigChoice(this.externalConfig);

  final StorageFtpServerExternalConfig externalConfig;

  @override
  String get blockKey => 'external_config';

  @override
  Map<String, Object?> encode() => {'external_config': externalConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'external_config': TfArg.literal(externalConfig.encode()),
  };
}

/// Typed helper for the `external_config` block of
/// `google_storage_ftp_server` (derived from provider schema).
@immutable
final class StorageFtpServerExternalConfig {
  const StorageFtpServerExternalConfig({this.allowedCidrBlocks});

  final TfArg<List<String>>? allowedCidrBlocks;

  Map<String, Object?> encode() => {
    'allowed_cidr_blocks': ?allowedCidrBlocks?.toTfJson(),
  };
}

/// Typed helper for the `internal_config` block of
/// `google_storage_ftp_server` (derived from provider schema).
@immutable
final class StorageFtpServerInternalConfig {
  const StorageFtpServerInternalConfig({
    this.consumerAcceptList,
    this.consumerRejectList,
  });

  final List<StorageFtpServerConsumerAcceptList>? consumerAcceptList;

  final List<StorageFtpServerConsumerRejectList>? consumerRejectList;

  Map<String, Object?> encode() => {
    if (consumerAcceptList != null)
      'consumer_accept_list': [for (final e in consumerAcceptList!) e.encode()],
    if (consumerRejectList != null)
      'consumer_reject_list': [for (final e in consumerRejectList!) e.encode()],
  };
}

/// Typed helper for the `internal_config.consumer_accept_list` block of
/// `google_storage_ftp_server` (derived from provider schema).
@immutable
final class StorageFtpServerConsumerAcceptList {
  const StorageFtpServerConsumerAcceptList({
    required this.connectionLimit,
    required this.project,
  });

  final TfArg<num> connectionLimit;

  final TfArg<String> project;

  Map<String, Object?> encode() => {
    'connection_limit': connectionLimit.toTfJson(),
    'project': project.toTfJson(),
  };
}

/// Typed helper for the `internal_config.consumer_reject_list` block of
/// `google_storage_ftp_server` (derived from provider schema).
@immutable
final class StorageFtpServerConsumerRejectList {
  const StorageFtpServerConsumerRejectList({required this.project});

  final TfArg<String> project;

  Map<String, Object?> encode() => {'project': project.toTfJson()};
}

/// Factory wrapper for `google_storage_ftp_server`.
///
/// An SFTP Server resource supporting internal and external connectivity
/// configurations.
///
/// `config` carries the access mode: `.internalConfig(...)` for Private
/// Service Connect consumers (with `accessType: .internal`) or
/// `.externalConfig(...)` for allowed CIDR ranges (with
/// `accessType: .external`).
final class GoogleStorageFtpServer extends Resource {
  static const String tfType = 'google_storage_ftp_server';

  GoogleStorageFtpServer(
    super.localName, {
    required TfArg<String> serverId,
    required TfArg<String> location,
    required TfArg<StorageFtpServerAccessType> accessType,
    required StorageFtpServerConfig config,
    TfArg<String>? displayName,
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
           'location': location,
           'access_type': accessType,
           ...config.argMap,
           'display_name': ?displayName,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageFtpServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageFtpServer>`.
  RefTo<GoogleStorageFtpServer> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `access_type` attribute.
  TfRef<String> get accessType => TfRef.attribute<String>(this, 'access_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');
}
