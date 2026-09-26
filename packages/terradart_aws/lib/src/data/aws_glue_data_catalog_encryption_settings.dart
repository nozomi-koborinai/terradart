// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_data_catalog_encryption_settings`.
const Set<String> _awsGlueDataCatalogEncryptionSettingsSensitive = <String>{};

/// Factory wrapper for `aws_glue_data_catalog_encryption_settings`.
final class DataAwsGlueDataCatalogEncryptionSettings extends Data {
  static const String tfType = 'aws_glue_data_catalog_encryption_settings';

  DataAwsGlueDataCatalogEncryptionSettings({
    required super.localName,
    required TfArg<String> catalogId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': catalogId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlueDataCatalogEncryptionSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_catalog_encryption_settings` attribute.
  TfRef<List<Map<String, Object?>>> get dataCatalogEncryptionSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_catalog_encryption_settings',
      );
}
