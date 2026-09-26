// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_catalog`.
const Set<String> _awsGlueCatalogSensitive = <String>{};

/// Factory wrapper for `aws_glue_catalog`.
final class DataAwsGlueCatalog extends Data {
  static const String tfType = 'aws_glue_catalog';

  DataAwsGlueCatalog({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsGlueCatalogSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `allow_full_table_external_data_access` attribute.
  TfRef<String> get allowFullTableExternalDataAccess =>
      TfRef.attribute<String>(this, 'allow_full_table_external_data_access');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `catalog_properties` attribute.
  TfRef<List<Map<String, Object?>>> get catalogProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'catalog_properties');

  /// Reference to `create_database_default_permissions` attribute.
  TfRef<List<Map<String, Object?>>> get createDatabaseDefaultPermissions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'create_database_default_permissions',
      );

  /// Reference to `create_table_default_permissions` attribute.
  TfRef<List<Map<String, Object?>>> get createTableDefaultPermissions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'create_table_default_permissions',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `federated_catalog` attribute.
  TfRef<List<Map<String, Object?>>> get federatedCatalog =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'federated_catalog');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_redshift_catalog` attribute.
  TfRef<List<Map<String, Object?>>> get targetRedshiftCatalog =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'target_redshift_catalog',
      );

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
