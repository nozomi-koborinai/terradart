// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_namespace`.
const Set<String> _awsRedshiftserverlessNamespaceSensitive = <String>{};

/// Factory wrapper for `aws_redshiftserverless_namespace`.
final class DataAwsRedshiftserverlessNamespace extends Data {
  static const String tfType = 'aws_redshiftserverless_namespace';

  DataAwsRedshiftserverlessNamespace({
    required super.localName,
    required TfArg<String> namespaceName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'namespace_name': namespaceName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessNamespaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_username` attribute.
  TfRef<String> get adminUsername =>
      TfRef.attribute<String>(this, 'admin_username');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

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

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
