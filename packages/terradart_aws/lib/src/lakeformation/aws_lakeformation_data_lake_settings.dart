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

  final List<
    TfArg<
      LakeformationDataLakeSettingsCreateDatabaseDefaultPermissionsPermissions
    >
  >?
  permissions;

  final TfArg<String>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
    'principal': ?principal?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
enum LakeformationDataLakeSettingsCreateDatabaseDefaultPermissionsPermissions
    implements TerraformEnum {
  all('ALL'),
  select('SELECT'),
  alter('ALTER'),
  drop('DROP'),
  delete('DELETE'),
  insert('INSERT'),
  describe('DESCRIBE'),
  createDatabase('CREATE_DATABASE'),
  createTable('CREATE_TABLE'),
  dataLocationAccess('DATA_LOCATION_ACCESS'),
  createLfTag('CREATE_LF_TAG'),
  associate('ASSOCIATE'),
  grantWithLfTagExpression('GRANT_WITH_LF_TAG_EXPRESSION'),
  createLfTagExpression('CREATE_LF_TAG_EXPRESSION'),
  createCatalog('CREATE_CATALOG'),
  superUser('SUPER_USER');

  const LakeformationDataLakeSettingsCreateDatabaseDefaultPermissionsPermissions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `create_table_default_permissions` block of
/// `aws_lakeformation_data_lake_settings` (derived from provider schema).
@immutable
final class LakeformationDataLakeSettingsCreateTableDefaultPermissions {
  const LakeformationDataLakeSettingsCreateTableDefaultPermissions({
    this.permissions,
    this.principal,
  });

  final List<
    TfArg<LakeformationDataLakeSettingsCreateTableDefaultPermissionsPermissions>
  >?
  permissions;

  final TfArg<String>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
    'principal': ?principal?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
enum LakeformationDataLakeSettingsCreateTableDefaultPermissionsPermissions
    implements TerraformEnum {
  all('ALL'),
  select('SELECT'),
  alter('ALTER'),
  drop('DROP'),
  delete('DELETE'),
  insert('INSERT'),
  describe('DESCRIBE'),
  createDatabase('CREATE_DATABASE'),
  createTable('CREATE_TABLE'),
  dataLocationAccess('DATA_LOCATION_ACCESS'),
  createLfTag('CREATE_LF_TAG'),
  associate('ASSOCIATE'),
  grantWithLfTagExpression('GRANT_WITH_LF_TAG_EXPRESSION'),
  createLfTagExpression('CREATE_LF_TAG_EXPRESSION'),
  createCatalog('CREATE_CATALOG'),
  superUser('SUPER_USER');

  const LakeformationDataLakeSettingsCreateTableDefaultPermissionsPermissions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
           'admins': ?admins,
           'allow_external_data_filtering': ?allowExternalDataFiltering,
           'allow_full_table_external_data_access':
               ?allowFullTableExternalDataAccess,
           'authorized_session_tag_value_list': ?authorizedSessionTagValueList,
           'catalog_id': ?catalogId,
           'external_data_filtering_allow_list':
               ?externalDataFilteringAllowList,
           'parameters': ?parameters,
           'read_only_admins': ?readOnlyAdmins,
           'region': ?region,
           'trusted_resource_owners': ?trustedResourceOwners,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationDataLakeSettings>`.
  RefTo<AwsLakeformationDataLakeSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
