// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_redshiftserverless_namespace`.
const Set<String> _awsRedshiftserverlessNamespaceSensitive = <String>{
  'admin_user_password',
  'admin_username',
};

/// Redshiftserverless Namespace Log enum for `log_exports`.
extension type const RedshiftserverlessNamespaceLogExports._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftserverlessNamespaceLogExports.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftserverlessNamespaceLogExports.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftserverlessNamespaceLogExports.arg(TfArg<String> arg)
    : this._(arg);

  static const useractivitylog = RedshiftserverlessNamespaceLogExports._(
    TfArgLiteral('useractivitylog'),
  );
  static const userlog = RedshiftserverlessNamespaceLogExports._(
    TfArgLiteral('userlog'),
  );
  static const connectionlog = RedshiftserverlessNamespaceLogExports._(
    TfArgLiteral('connectionlog'),
  );

  static const List<RedshiftserverlessNamespaceLogExports> values = [
    useractivitylog,
    userlog,
    connectionlog,
  ];
}

/// At most one of `admin_user_password`, `admin_user_password_wo`, `manage_admin_password` on `aws_redshiftserverless_namespace`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.adminUserPassword(...)`.
sealed class RedshiftserverlessNamespaceAdminPassword {
  const RedshiftserverlessNamespaceAdminPassword();

  /// Sets `admin_user_password`.
  const factory RedshiftserverlessNamespaceAdminPassword.adminUserPassword(
    TfArg<String> adminUserPassword,
  ) = RedshiftserverlessNamespaceAdminPasswordAdminUserPassword;

  /// Sets `admin_user_password_wo`.
  const factory RedshiftserverlessNamespaceAdminPassword.adminUserPasswordWo(
    TfArg<String> adminUserPasswordWo,
  ) = RedshiftserverlessNamespaceAdminPasswordAdminUserPasswordWo;

  /// Sets `manage_admin_password`.
  const factory RedshiftserverlessNamespaceAdminPassword.manageAdminPassword(
    TfArg<bool> manageAdminPassword,
  ) = RedshiftserverlessNamespaceManageAdminPassword;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedshiftserverlessNamespaceAdminPassword.adminUserPassword] choice: sets `admin_user_password`.
final class RedshiftserverlessNamespaceAdminPasswordAdminUserPassword
    extends RedshiftserverlessNamespaceAdminPassword {
  const RedshiftserverlessNamespaceAdminPasswordAdminUserPassword(
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

/// The [RedshiftserverlessNamespaceAdminPassword.adminUserPasswordWo] choice: sets `admin_user_password_wo`.
final class RedshiftserverlessNamespaceAdminPasswordAdminUserPasswordWo
    extends RedshiftserverlessNamespaceAdminPassword {
  const RedshiftserverlessNamespaceAdminPasswordAdminUserPasswordWo(
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

/// The [RedshiftserverlessNamespaceAdminPassword.manageAdminPassword] choice: sets `manage_admin_password`.
final class RedshiftserverlessNamespaceManageAdminPassword
    extends RedshiftserverlessNamespaceAdminPassword {
  const RedshiftserverlessNamespaceManageAdminPassword(
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

  AwsRedshiftserverlessNamespace(
    super.localName, {
    TfArg<String>? adminPasswordSecretKmsKeyId,
    RedshiftserverlessNamespaceAdminPassword? adminPassword,
    TfArg<num>? adminUserPasswordWoVersion,
    TfArg<String>? adminUsername,
    TfArg<String>? dbName,
    TfArg<String>? defaultIamRoleArn,
    TfArg<List<String>>? iamRoles,
    RefTo<AwsKmsKey>? kmsKeyId,
    List<RedshiftserverlessNamespaceLogExports>? logExports,
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
           'admin_password_secret_kms_key_id': ?adminPasswordSecretKmsKeyId,
           ...?adminPassword?.argMap,
           'admin_user_password_wo_version': ?adminUserPasswordWoVersion,
           'admin_username': ?adminUsername,
           'db_name': ?dbName,
           'default_iam_role_arn': ?defaultIamRoleArn,
           'iam_roles': ?iamRoles,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           if (logExports != null)
             'log_exports': TfArg.literal([
               for (final e in logExports) e.toTfJson(),
             ]),
           'namespace_name': namespaceName,
           'region': ?region,
           'tags': ?tags,
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

  /// Reference to `admin_password_secret_kms_key_id` attribute.
  TfRef<String> get adminPasswordSecretKmsKeyId =>
      TfRef.attribute<String>(this, 'admin_password_secret_kms_key_id');

  /// Reference to `admin_user_password` attribute.
  TfRef<String> get adminUserPassword =>
      TfRef.attribute<String>(this, 'admin_user_password');

  /// Reference to `admin_user_password_wo_version` attribute.
  TfRef<num> get adminUserPasswordWoVersion =>
      TfRef.attribute<num>(this, 'admin_user_password_wo_version');

  /// Reference to `admin_username` attribute.
  TfRef<String> get adminUsername =>
      TfRef.attribute<String>(this, 'admin_username');

  /// Reference to `db_name` attribute.
  TfRef<String> get dbName => TfRef.attribute<String>(this, 'db_name');

  /// Reference to `default_iam_role_arn` attribute.
  TfRef<String> get defaultIamRoleArn =>
      TfRef.attribute<String>(this, 'default_iam_role_arn');

  /// Reference to `iam_roles` attribute.
  TfRef<List<String>> get iamRoles =>
      TfRef.attribute<List<String>>(this, 'iam_roles');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `log_exports` attribute.
  TfRef<List<String>> get logExports =>
      TfRef.attribute<List<String>>(this, 'log_exports');

  /// Reference to `manage_admin_password` attribute.
  TfRef<bool> get manageAdminPassword =>
      TfRef.attribute<bool>(this, 'manage_admin_password');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
