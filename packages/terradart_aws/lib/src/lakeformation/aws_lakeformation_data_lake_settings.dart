// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_data_lake_settings`.
const Set<String> _awsLakeformationDataLakeSettingsSensitive = <String>{};

/// Typed helper for the `create_database_default_permissions` block of
/// `aws_lakeformation_data_lake_settings` (derived from provider schema).
@immutable
final class LakeformationDataLakeSettingsCreateDatabaseDefaultPermissions {
  const LakeformationDataLakeSettingsCreateDatabaseDefaultPermissions({
    this.permissions,
    this.principal,
  });

  final TfArg<List<Object?>>? permissions;

  final TfArg<String>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null) 'permissions': permissions!.toTfJson(),
    if (principal != null) 'principal': principal!.toTfJson(),
  };
}

/// Typed helper for the `create_table_default_permissions` block of
/// `aws_lakeformation_data_lake_settings` (derived from provider schema).
@immutable
final class LakeformationDataLakeSettingsCreateTableDefaultPermissions {
  const LakeformationDataLakeSettingsCreateTableDefaultPermissions({
    this.permissions,
    this.principal,
  });

  final TfArg<List<Object?>>? permissions;

  final TfArg<String>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null) 'permissions': permissions!.toTfJson(),
    if (principal != null) 'principal': principal!.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_data_lake_settings`.
final class AwsLakeformationDataLakeSettings extends Resource {
  static const String tfType = 'aws_lakeformation_data_lake_settings';

  AwsLakeformationDataLakeSettings({
    required super.localName,
    TfArg<List<String>>? admins,
    TfArg<bool>? allowExternalDataFiltering,
    TfArg<bool>? allowFullTableExternalDataAccess,
    TfArg<List<String>>? authorizedSessionTagValueList,
    TfArg<String>? catalogId,
    TfArg<List<String>>? externalDataFilteringAllowList,
    TfArg<Map<String, String>>? parameters,
    TfArg<List<String>>? readOnlyAdmins,
    TfArg<String>? region,
    TfArg<List<String>>? trustedResourceOwners,
    List<LakeformationDataLakeSettingsCreateDatabaseDefaultPermissions>?
    createDatabaseDefaultPermissions,
    List<LakeformationDataLakeSettingsCreateTableDefaultPermissions>?
    createTableDefaultPermissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (admins != null) 'admins': admins,
           if (allowExternalDataFiltering != null)
             'allow_external_data_filtering': allowExternalDataFiltering,
           if (allowFullTableExternalDataAccess != null)
             'allow_full_table_external_data_access':
                 allowFullTableExternalDataAccess,
           if (authorizedSessionTagValueList != null)
             'authorized_session_tag_value_list': authorizedSessionTagValueList,
           if (catalogId != null) 'catalog_id': catalogId,
           if (externalDataFilteringAllowList != null)
             'external_data_filtering_allow_list':
                 externalDataFilteringAllowList,
           if (parameters != null) 'parameters': parameters,
           if (readOnlyAdmins != null) 'read_only_admins': readOnlyAdmins,
           if (region != null) 'region': region,
           if (trustedResourceOwners != null)
             'trusted_resource_owners': trustedResourceOwners,
           if (createDatabaseDefaultPermissions != null)
             'create_database_default_permissions': TfArg.literal([
               for (final e in createDatabaseDefaultPermissions) e.encode(),
             ]),
           if (createTableDefaultPermissions != null)
             'create_table_default_permissions': TfArg.literal([
               for (final e in createTableDefaultPermissions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationDataLakeSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
