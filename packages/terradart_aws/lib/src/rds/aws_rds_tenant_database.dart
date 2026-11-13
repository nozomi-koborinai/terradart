// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_tenant_database`.
const Set<String> _awsRdsTenantDatabaseSensitive = <String>{
  'master_user_password',
  'master_user_password_wo',
};

/// At most one of `master_user_password`, `master_user_password_wo` on `aws_rds_tenant_database`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.masterUserPassword(...)`.
sealed class RdsTenantDatabaseMasterUserPassword {
  const RdsTenantDatabaseMasterUserPassword();

  /// Sets `master_user_password`.
  const factory RdsTenantDatabaseMasterUserPassword.masterUserPassword(
    Sensitive<String> masterUserPassword,
  ) = RdsTenantDatabaseMasterUserPasswordChoice;

  /// Sets `master_user_password_wo`.
  const factory RdsTenantDatabaseMasterUserPassword.masterUserPasswordWo(
    Sensitive<String> masterUserPasswordWo,
  ) = RdsTenantDatabaseMasterUserPasswordWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsTenantDatabaseMasterUserPassword.masterUserPassword] choice: sets `master_user_password`.
final class RdsTenantDatabaseMasterUserPasswordChoice
    extends RdsTenantDatabaseMasterUserPassword {
  const RdsTenantDatabaseMasterUserPasswordChoice(this.masterUserPassword);

  final Sensitive<String> masterUserPassword;

  @internal
  @override
  String get blockKey => 'master_user_password';

  @internal
  @override
  Map<String, Object?> encode() => {
    'master_user_password': masterUserPassword.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'master_user_password': masterUserPassword,
  };
}

/// The [RdsTenantDatabaseMasterUserPassword.masterUserPasswordWo] choice: sets `master_user_password_wo`.
final class RdsTenantDatabaseMasterUserPasswordWo
    extends RdsTenantDatabaseMasterUserPassword {
  const RdsTenantDatabaseMasterUserPasswordWo(this.masterUserPasswordWo);

  final Sensitive<String> masterUserPasswordWo;

  @internal
  @override
  String get blockKey => 'master_user_password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'master_user_password_wo': masterUserPasswordWo.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'master_user_password_wo': masterUserPasswordWo,
  };
}

/// Factory wrapper for `aws_rds_tenant_database`.
final class AwsRdsTenantDatabase extends Resource {
  static const String tfType = 'aws_rds_tenant_database';

  AwsRdsTenantDatabase(
    super.localName, {
    TfArg<String>? characterSetName,
    required TfArg<String> dbInstanceIdentifier,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<bool>? manageMasterUserPassword,
    RdsTenantDatabaseMasterUserPassword? masterUserPassword,
    TfArg<num>? masterUserPasswordWoVersion,
    TfArg<String>? masterUserSecretKmsKeyId,
    required TfArg<String> masterUsername,
    TfArg<String>? ncharCharacterSetName,
    TfArg<String>? region,
    TfArg<bool>? skipFinalSnapshot,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> tenantDbName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'character_set_name': ?characterSetName,
           'db_instance_identifier': dbInstanceIdentifier,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'manage_master_user_password': ?manageMasterUserPassword,
           ...?masterUserPassword?.argMap,
           'master_user_password_wo_version': ?masterUserPasswordWoVersion,
           'master_user_secret_kms_key_id': ?masterUserSecretKmsKeyId,
           'master_username': masterUsername,
           'nchar_character_set_name': ?ncharCharacterSetName,
           'region': ?region,
           'skip_final_snapshot': ?skipFinalSnapshot,
           'tags': ?tags,
           'tenant_db_name': tenantDbName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsTenantDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsTenantDatabase>`.
  RefTo<AwsRdsTenantDatabase> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `master_user_secret` attribute.
  TfRef<List<Map<String, Object?>>> get masterUserSecret =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'master_user_secret');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `tenant_database_resource_id` attribute.
  TfRef<String> get tenantDatabaseResourceId =>
      TfRef.attribute<String>(this, 'tenant_database_resource_id');

  /// Reference to `character_set_name` attribute.
  TfRef<String> get characterSetName =>
      TfRef.attribute<String>(this, 'character_set_name');

  /// Reference to `db_instance_identifier` attribute.
  TfRef<String> get dbInstanceIdentifier =>
      TfRef.attribute<String>(this, 'db_instance_identifier');

  /// Reference to `final_snapshot_identifier` attribute.
  TfRef<String> get finalSnapshotIdentifier =>
      TfRef.attribute<String>(this, 'final_snapshot_identifier');

  /// Reference to `manage_master_user_password` attribute.
  TfRef<bool> get manageMasterUserPassword =>
      TfRef.attribute<bool>(this, 'manage_master_user_password');

  /// Reference to `master_user_password` attribute.
  TfRef<String> get masterUserPassword =>
      TfRef.attribute<String>(this, 'master_user_password');

  /// Reference to `master_user_password_wo_version` attribute.
  TfRef<num> get masterUserPasswordWoVersion =>
      TfRef.attribute<num>(this, 'master_user_password_wo_version');

  /// Reference to `master_user_secret_kms_key_id` attribute.
  TfRef<String> get masterUserSecretKmsKeyId =>
      TfRef.attribute<String>(this, 'master_user_secret_kms_key_id');

  /// Reference to `master_username` attribute.
  TfRef<String> get masterUsername =>
      TfRef.attribute<String>(this, 'master_username');

  /// Reference to `nchar_character_set_name` attribute.
  TfRef<String> get ncharCharacterSetName =>
      TfRef.attribute<String>(this, 'nchar_character_set_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_final_snapshot` attribute.
  TfRef<bool> get skipFinalSnapshot =>
      TfRef.attribute<bool>(this, 'skip_final_snapshot');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_db_name` attribute.
  TfRef<String> get tenantDbName =>
      TfRef.attribute<String>(this, 'tenant_db_name');
}
