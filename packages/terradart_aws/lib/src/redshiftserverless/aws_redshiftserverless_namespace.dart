// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_namespace`.
const Set<String> _awsRedshiftserverlessNamespaceSensitive = <String>{
  'admin_user_password',
  'admin_username',
};

/// Redshiftserverless Namespace Log enum for `log_exports`.
enum RedshiftserverlessNamespaceLogExports implements TerraformEnum {
  useractivitylog('useractivitylog'),
  userlog('userlog'),
  connectionlog('connectionlog');

  const RedshiftserverlessNamespaceLogExports(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `admin_user_password`, `admin_user_password_wo`, `manage_admin_password` on `aws_redshiftserverless_namespace`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.adminUserPassword(...)`.
sealed class RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword {
  const RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword();

  /// Sets `admin_user_password`.
  const factory RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword.adminUserPassword(
    TfArg<String> adminUserPassword,
  ) = RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordAdminUserPassword;

  /// Sets `admin_user_password_wo`.
  const factory RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword.adminUserPasswordWo(
    TfArg<String> adminUserPasswordWo,
  ) = RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordAdminUserPasswordWo;

  /// Sets `manage_admin_password`.
  const factory RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword.manageAdminPassword(
    TfArg<bool> manageAdminPassword,
  ) = RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordManageAdminPassword;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword.adminUserPassword] choice: sets `admin_user_password`.
final class RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordAdminUserPassword
    extends
        RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword {
  const RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordAdminUserPassword(
    this.adminUserPassword,
  );

  final TfArg<String> adminUserPassword;

  @override
  String get blockKey => 'admin_user_password';

  @override
  Map<String, Object?> encode() => {
    'admin_user_password': adminUserPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'admin_user_password': adminUserPassword,
  };
}

/// The [RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword.adminUserPasswordWo] choice: sets `admin_user_password_wo`.
final class RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordAdminUserPasswordWo
    extends
        RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword {
  const RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordAdminUserPasswordWo(
    this.adminUserPasswordWo,
  );

  final TfArg<String> adminUserPasswordWo;

  @override
  String get blockKey => 'admin_user_password_wo';

  @override
  Map<String, Object?> encode() => {
    'admin_user_password_wo': adminUserPasswordWo.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'admin_user_password_wo': adminUserPasswordWo,
  };
}

/// The [RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword.manageAdminPassword] choice: sets `manage_admin_password`.
final class RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordManageAdminPassword
    extends
        RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword {
  const RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPasswordManageAdminPassword(
    this.manageAdminPassword,
  );

  final TfArg<bool> manageAdminPassword;

  @override
  String get blockKey => 'manage_admin_password';

  @override
  Map<String, Object?> encode() => {
    'manage_admin_password': manageAdminPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'manage_admin_password': manageAdminPassword,
  };
}

/// Factory wrapper for `aws_redshiftserverless_namespace`.
final class AwsRedshiftserverlessNamespace extends Resource {
  static const String tfType = 'aws_redshiftserverless_namespace';

  AwsRedshiftserverlessNamespace({
    required super.localName,
    TfArg<String>? adminPasswordSecretKmsKeyId,
    RedshiftserverlessNamespaceAdminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword?
    adminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword,
    TfArg<num>? adminUserPasswordWoVersion,
    TfArg<String>? adminUsername,
    TfArg<String>? dbName,
    TfArg<String>? defaultIamRoleArn,
    TfArg<List<String>>? iamRoles,
    TfArg<String>? kmsKeyId,
    List<TfArg<RedshiftserverlessNamespaceLogExports>>? logExports,
    required TfArg<String> namespaceName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (adminPasswordSecretKmsKeyId != null)
             'admin_password_secret_kms_key_id': adminPasswordSecretKmsKeyId,
           ...?adminUserPasswordOrAdminUserPasswordWoOrManageAdminPassword
               ?.argMap,
           if (adminUserPasswordWoVersion != null)
             'admin_user_password_wo_version': adminUserPasswordWoVersion,
           if (adminUsername != null) 'admin_username': adminUsername,
           if (dbName != null) 'db_name': dbName,
           if (defaultIamRoleArn != null)
             'default_iam_role_arn': defaultIamRoleArn,
           if (iamRoles != null) 'iam_roles': iamRoles,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (logExports != null)
             'log_exports': TfArg.literal([
               for (final e in logExports) e.toTfJson(),
             ]),
           'namespace_name': namespaceName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftserverlessNamespace>`.
  RefTo<AwsRedshiftserverlessNamespace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_password_secret_arn` attribute.
  TfRef<String> get adminPasswordSecretArn =>
      TfRef.attribute<String>(this, 'admin_password_secret_arn');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
