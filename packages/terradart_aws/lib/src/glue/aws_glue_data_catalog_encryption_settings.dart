// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_data_catalog_encryption_settings`.
const Set<String> _awsGlueDataCatalogEncryptionSettingsSensitive = <String>{};

/// Typed helper for the `data_catalog_encryption_settings` block of
/// `aws_glue_data_catalog_encryption_settings` (derived from provider schema).
@immutable
final class GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings {
  const GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings({
    required this.connectionPasswordEncryption,
    required this.encryptionAtRest,
  });

  final GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption
  connectionPasswordEncryption;

  final GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest
  encryptionAtRest;

  Map<String, Object?> encode() => {
    'connection_password_encryption': connectionPasswordEncryption.encode(),
    'encryption_at_rest': encryptionAtRest.encode(),
  };
}

/// Typed helper for the `data_catalog_encryption_settings.connection_password_encryption` block of
/// `aws_glue_data_catalog_encryption_settings` (derived from provider schema).
@immutable
final class GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption {
  const GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption({
    this.awsKmsKeyId,
    required this.returnConnectionPasswordEncrypted,
  });

  final TfArg<String>? awsKmsKeyId;

  final TfArg<bool> returnConnectionPasswordEncrypted;

  Map<String, Object?> encode() => {
    if (awsKmsKeyId != null) 'aws_kms_key_id': awsKmsKeyId!.toTfJson(),
    'return_connection_password_encrypted': returnConnectionPasswordEncrypted
        .toTfJson(),
  };
}

/// Typed helper for the `data_catalog_encryption_settings.encryption_at_rest` block of
/// `aws_glue_data_catalog_encryption_settings` (derived from provider schema).
@immutable
final class GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest {
  const GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest({
    required this.catalogEncryptionMode,
    this.catalogEncryptionServiceRole,
    this.sseAwsKmsKeyId,
  });

  final TfArg<String> catalogEncryptionMode;

  final TfArg<String>? catalogEncryptionServiceRole;

  final TfArg<String>? sseAwsKmsKeyId;

  Map<String, Object?> encode() => {
    'catalog_encryption_mode': catalogEncryptionMode.toTfJson(),
    if (catalogEncryptionServiceRole != null)
      'catalog_encryption_service_role': catalogEncryptionServiceRole!
          .toTfJson(),
    if (sseAwsKmsKeyId != null)
      'sse_aws_kms_key_id': sseAwsKmsKeyId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_data_catalog_encryption_settings`.
final class AwsGlueDataCatalogEncryptionSettings extends Resource {
  static const String tfType = 'aws_glue_data_catalog_encryption_settings';

  AwsGlueDataCatalogEncryptionSettings({
    required super.localName,
    TfArg<String>? catalogId,
    TfArg<String>? region,
    required GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings
    dataCatalogEncryptionSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (region != null) 'region': region,
           'data_catalog_encryption_settings': TfArg.literal(
             dataCatalogEncryptionSettings.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlueDataCatalogEncryptionSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
