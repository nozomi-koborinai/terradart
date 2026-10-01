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

  final List<LakeformationDataLakeSettingsPermissions>? permissions;

  final TfArg<String>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
    'principal': ?principal?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
extension type const LakeformationDataLakeSettingsPermissions._(TfArg<String> _)
    implements TfArg<String> {
  LakeformationDataLakeSettingsPermissions.variable(String name)
    : this._(TfArg.variable(name));
  LakeformationDataLakeSettingsPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const LakeformationDataLakeSettingsPermissions.arg(TfArg<String> arg)
    : this._(arg);

  static const all = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('ALL'),
  );
  static const select = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('SELECT'),
  );
  static const alter = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('ALTER'),
  );
  static const drop = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('DROP'),
  );
  static const delete = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('DELETE'),
  );
  static const insert = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('INSERT'),
  );
  static const describe = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('DESCRIBE'),
  );
  static const createDatabase = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('CREATE_DATABASE'),
  );
  static const createTable = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('CREATE_TABLE'),
  );
  static const dataLocationAccess = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('DATA_LOCATION_ACCESS'),
  );
  static const createLfTag = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('CREATE_LF_TAG'),
  );
  static const associate = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('ASSOCIATE'),
  );
  static const grantWithLfTagExpression =
      LakeformationDataLakeSettingsPermissions._(
        TfArgLiteral('GRANT_WITH_LF_TAG_EXPRESSION'),
      );
  static const createLfTagExpression =
      LakeformationDataLakeSettingsPermissions._(
        TfArgLiteral('CREATE_LF_TAG_EXPRESSION'),
      );
  static const createCatalog = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('CREATE_CATALOG'),
  );
  static const superUser = LakeformationDataLakeSettingsPermissions._(
    TfArgLiteral('SUPER_USER'),
  );

  static const List<LakeformationDataLakeSettingsPermissions> values = [
    all,
    select,
    alter,
    drop,
    delete,
    insert,
    describe,
    createDatabase,
    createTable,
    dataLocationAccess,
    createLfTag,
    associate,
    grantWithLfTagExpression,
    createLfTagExpression,
    createCatalog,
    superUser,
  ];
}

/// Typed helper for the `create_table_default_permissions` block of
/// `aws_lakeformation_data_lake_settings` (derived from provider schema).
@immutable
final class LakeformationDataLakeSettingsCreateTableDefaultPermissions {
  const LakeformationDataLakeSettingsCreateTableDefaultPermissions({
    this.permissions,
    this.principal,
  });

  final List<LakeformationDataLakeSettingsPermissions>? permissions;

  final TfArg<String>? principal;

  Map<String, Object?> encode() => {
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
    'principal': ?principal?.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_data_lake_settings`.
final class AwsLakeformationDataLakeSettings extends Resource {
  static const String tfType = 'aws_lakeformation_data_lake_settings';

  AwsLakeformationDataLakeSettings(
    super.localName, {
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

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `external_data_filtering_allow_list` attribute.
  TfRef<List<String>> get externalDataFilteringAllowList =>
      TfRef.attribute<List<String>>(this, 'external_data_filtering_allow_list');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `read_only_admins` attribute.
  TfRef<List<String>> get readOnlyAdmins =>
      TfRef.attribute<List<String>>(this, 'read_only_admins');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `trusted_resource_owners` attribute.
  TfRef<List<String>> get trustedResourceOwners =>
      TfRef.attribute<List<String>>(this, 'trusted_resource_owners');
}
