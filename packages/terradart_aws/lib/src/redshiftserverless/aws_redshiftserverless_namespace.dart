// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_namespace`.
const Set<String> _awsRedshiftserverlessNamespaceSensitive = <String>{
  'admin_user_password',
  'admin_username',
};

/// Factory wrapper for `aws_redshiftserverless_namespace`.
final class AwsRedshiftserverlessNamespace extends Resource {
  static const String tfType = 'aws_redshiftserverless_namespace';

  AwsRedshiftserverlessNamespace({
    required super.localName,
    TfArg<String>? adminPasswordSecretKmsKeyId,
    TfArg<String>? adminUserPassword,
    TfArg<String>? adminUserPasswordWo,
    TfArg<num>? adminUserPasswordWoVersion,
    TfArg<String>? adminUsername,
    TfArg<String>? dbName,
    TfArg<String>? defaultIamRoleArn,
    TfArg<List<String>>? iamRoles,
    TfArg<String>? kmsKeyId,
    TfArg<List<String>>? logExports,
    TfArg<bool>? manageAdminPassword,
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
           if (adminUserPassword != null)
             'admin_user_password': adminUserPassword,
           if (adminUserPasswordWo != null)
             'admin_user_password_wo': adminUserPasswordWo,
           if (adminUserPasswordWoVersion != null)
             'admin_user_password_wo_version': adminUserPasswordWoVersion,
           if (adminUsername != null) 'admin_username': adminUsername,
           if (dbName != null) 'db_name': dbName,
           if (defaultIamRoleArn != null)
             'default_iam_role_arn': defaultIamRoleArn,
           if (iamRoles != null) 'iam_roles': iamRoles,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (logExports != null) 'log_exports': logExports,
           if (manageAdminPassword != null)
             'manage_admin_password': manageAdminPassword,
           'namespace_name': namespaceName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessNamespaceSensitive;

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
