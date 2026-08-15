// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_organization_bucket_config`.
const Set<String> _googleLoggingOrganizationBucketConfigSensitive = <String>{};

/// Typed helper for the `cmek_settings` block of
/// `google_logging_organization_bucket_config` (derived from provider schema).
@immutable
final class LoggingOrganizationBucketConfigCmekSettings {
  const LoggingOrganizationBucketConfigCmekSettings({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `index_configs` block of
/// `google_logging_organization_bucket_config` (derived from provider schema).
@immutable
final class LoggingOrganizationBucketConfigIndexConfigs {
  const LoggingOrganizationBucketConfigIndexConfigs({
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

/// Factory wrapper for `google_logging_organization_bucket_config`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleLoggingOrganizationBucketConfig extends Resource {
  static const String tfType = 'google_logging_organization_bucket_config';

  GoogleLoggingOrganizationBucketConfig({
    required super.localName,
    required TfArg<String> bucketId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> organization,
    TfArg<num>? retentionDays,
    LoggingOrganizationBucketConfigCmekSettings? cmekSettings,
    List<LoggingOrganizationBucketConfigIndexConfigs>? indexConfigs,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'location': location,
           'organization': organization,
           if (retentionDays != null) 'retention_days': retentionDays,
           if (cmekSettings != null)
             'cmek_settings': TfArg.literal(cmekSettings.encode()),
           if (indexConfigs != null)
             'index_configs': TfArg.literal([
               for (final e in indexConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleLoggingOrganizationBucketConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');
}
