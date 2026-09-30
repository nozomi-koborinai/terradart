// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../accountaccess/aws_accountaccess_application.dart';

/// Sensitive field paths for `aws_accountaccess_application`.
const Set<String> _awsAccountaccessApplicationSensitive = <String>{};

/// Factory wrapper for `aws_accountaccess_application`.
final class DataAwsAccountaccessApplication extends Data {
  static const String tfType = 'aws_accountaccess_application';

  DataAwsAccountaccessApplication({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? identityCenterInstanceArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': ?arn,
           'identity_center_instance_arn': ?identityCenterInstanceArn,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountaccessApplicationSensitive;

  /// A reference to the `aws_accountaccess_application` this data source reads, for
  /// arguments typed `RefTo<AwsAccountaccessApplication>`.
  RefTo<AwsAccountaccessApplication> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `identity_source` attribute.
  TfRef<List<Map<String, Object?>>> get identitySource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity_source');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `arn` attribute.
  TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');

  /// Reference to `identity_center_instance_arn` attribute.
  TfRef<String> get identityCenterInstanceArnRef =>
      TfRef.attribute<String>(this, 'identity_center_instance_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
