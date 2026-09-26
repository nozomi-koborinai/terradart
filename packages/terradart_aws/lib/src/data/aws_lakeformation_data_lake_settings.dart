// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_data_lake_settings`.
const Set<String> _awsLakeformationDataLakeSettingsSensitive = <String>{};

/// Factory wrapper for `aws_lakeformation_data_lake_settings`.
final class DataAwsLakeformationDataLakeSettings extends Data {
  static const String tfType = 'aws_lakeformation_data_lake_settings';

  DataAwsLakeformationDataLakeSettings({
    required super.localName,
    TfArg<String>? catalogId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationDataLakeSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admins` attribute.
  TfRef<List<String>> get admins =>
      TfRef.attribute<List<String>>(this, 'admins');

  /// Reference to `allow_external_data_filtering` attribute.
  TfRef<bool> get allowExternalDataFiltering =>
      TfRef.attribute<bool>(this, 'allow_external_data_filtering');

  /// Reference to `allow_full_table_external_data_access` attribute.
  TfRef<bool> get allowFullTableExternalDataAccess =>
      TfRef.attribute<bool>(this, 'allow_full_table_external_data_access');

  /// Reference to `authorized_session_tag_value_list` attribute.
  TfRef<List<String>> get authorizedSessionTagValueList =>
      TfRef.attribute<List<String>>(this, 'authorized_session_tag_value_list');

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

  /// Reference to `external_data_filtering_allow_list` attribute.
  TfRef<List<String>> get externalDataFilteringAllowList =>
      TfRef.attribute<List<String>>(this, 'external_data_filtering_allow_list');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `read_only_admins` attribute.
  TfRef<List<String>> get readOnlyAdmins =>
      TfRef.attribute<List<String>>(this, 'read_only_admins');

  /// Reference to `trusted_resource_owners` attribute.
  TfRef<List<String>> get trustedResourceOwners =>
      TfRef.attribute<List<String>>(this, 'trusted_resource_owners');
}
