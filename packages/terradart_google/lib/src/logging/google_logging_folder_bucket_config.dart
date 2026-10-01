// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_logging_folder_bucket_config`.
const Set<String> _googleLoggingFolderBucketConfigSensitive = <String>{};

/// Typed helper for the `cmek_settings` block of
/// `google_logging_folder_bucket_config` (derived from provider schema).
@immutable
final class LoggingFolderBucketConfigCmekSettings {
  const LoggingFolderBucketConfigCmekSettings({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `index_configs` block of
/// `google_logging_folder_bucket_config` (derived from provider schema).
@immutable
final class LoggingFolderBucketConfigIndexConfigs {
  const LoggingFolderBucketConfigIndexConfigs({
    required this.fieldPath,
    required this.type,
  });

  final TfArg<String> fieldPath;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'field_path': fieldPath.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `google_logging_folder_bucket_config`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleLoggingFolderBucketConfig extends Resource {
  static const String tfType = 'google_logging_folder_bucket_config';

  GoogleLoggingFolderBucketConfig({
    required super.localName,
    required TfArg<String> bucketId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> folder,
    required TfArg<String> location,
    TfArg<num>? retentionDays,
    LoggingFolderBucketConfigCmekSettings? cmekSettings,
    List<LoggingFolderBucketConfigIndexConfigs>? indexConfigs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'folder': folder,
           'location': location,
           'retention_days': ?retentionDays,
           if (cmekSettings != null)
             'cmek_settings': TfArg.literal(cmekSettings.encode()),
           if (indexConfigs != null)
             'index_configs': TfArg.literal([
               for (final e in indexConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingFolderBucketConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingFolderBucketConfig>`.
  RefTo<GoogleLoggingFolderBucketConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `bucket_id` attribute.
  TfRef<String> get bucketId => TfRef.attribute<String>(this, 'bucket_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `retention_days` attribute.
  TfRef<num> get retentionDays => TfRef.attribute<num>(this, 'retention_days');
}
