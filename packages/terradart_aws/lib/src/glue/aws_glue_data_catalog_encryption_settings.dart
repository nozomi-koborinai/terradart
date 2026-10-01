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
final class GlueDataCatalogEncryptionSettings {
  const GlueDataCatalogEncryptionSettings({
    required this.connectionPasswordEncryption,
    required this.encryptionAtRest,
  });

  final GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption
  connectionPasswordEncryption;

  final GlueDataCatalogEncryptionSettingsEncryptionAtRest encryptionAtRest;

  @internal
  Map<String, Object?> encode() => {
    'connection_password_encryption': connectionPasswordEncryption.encode(),
    'encryption_at_rest': encryptionAtRest.encode(),
  };
}

/// Typed helper for the `data_catalog_encryption_settings.connection_password_encryption` block of
/// `aws_glue_data_catalog_encryption_settings` (derived from provider schema).
@immutable
final class GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption {
  const GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption({
    this.awsKmsKeyId,
    required this.returnConnectionPasswordEncrypted,
  });

  final TfArg<String>? awsKmsKeyId;

  final TfArg<bool> returnConnectionPasswordEncrypted;

  @internal
  Map<String, Object?> encode() => {
    'aws_kms_key_id': ?awsKmsKeyId?.toTfJson(),
    'return_connection_password_encrypted': returnConnectionPasswordEncrypted
        .toTfJson(),
  };
}

/// Typed helper for the `data_catalog_encryption_settings.encryption_at_rest` block of
/// `aws_glue_data_catalog_encryption_settings` (derived from provider schema).
@immutable
final class GlueDataCatalogEncryptionSettingsEncryptionAtRest {
  const GlueDataCatalogEncryptionSettingsEncryptionAtRest({
    required this.catalogEncryptionMode,
    this.catalogEncryptionServiceRole,
    this.sseAwsKmsKeyId,
  });

  final GlueDataCatalogEncryptionSettingsCatalogEncryptionMode
  catalogEncryptionMode;

  final TfArg<String>? catalogEncryptionServiceRole;

  final TfArg<String>? sseAwsKmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'catalog_encryption_mode': catalogEncryptionMode.toTfJson(),
    'catalog_encryption_service_role': ?catalogEncryptionServiceRole
        ?.toTfJson(),
    'sse_aws_kms_key_id': ?sseAwsKmsKeyId?.toTfJson(),
  };
}

/// `catalog_encryption_mode` — derived from the provider schema description.
extension type const GlueDataCatalogEncryptionSettingsCatalogEncryptionMode._(
  TfArg<String> _
) implements TfArg<String> {
  GlueDataCatalogEncryptionSettingsCatalogEncryptionMode.variable(String name)
    : this._(TfArg.variable(name));
  GlueDataCatalogEncryptionSettingsCatalogEncryptionMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GlueDataCatalogEncryptionSettingsCatalogEncryptionMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const disabled =
      GlueDataCatalogEncryptionSettingsCatalogEncryptionMode._(
        TfArgLiteral('DISABLED'),
      );
  static const sseKms =
      GlueDataCatalogEncryptionSettingsCatalogEncryptionMode._(
        TfArgLiteral('SSE-KMS'),
      );
  static const sseKmsWithServiceRole =
      GlueDataCatalogEncryptionSettingsCatalogEncryptionMode._(
        TfArgLiteral('SSE-KMS-WITH-SERVICE-ROLE'),
      );

  static const List<GlueDataCatalogEncryptionSettingsCatalogEncryptionMode>
  values = [disabled, sseKms, sseKmsWithServiceRole];
}

/// Factory wrapper for `aws_glue_data_catalog_encryption_settings`.
final class AwsGlueDataCatalogEncryptionSettings extends Resource {
  static const String tfType = 'aws_glue_data_catalog_encryption_settings';

  AwsGlueDataCatalogEncryptionSettings(
    super.localName, {
    TfArg<String>? catalogId,
    TfArg<String>? region,
    required GlueDataCatalogEncryptionSettings dataCatalogEncryptionSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'region': ?region,
           'data_catalog_encryption_settings': TfArg.literal(
             dataCatalogEncryptionSettings.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlueDataCatalogEncryptionSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueDataCatalogEncryptionSettings>`.
  RefTo<AwsGlueDataCatalogEncryptionSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
