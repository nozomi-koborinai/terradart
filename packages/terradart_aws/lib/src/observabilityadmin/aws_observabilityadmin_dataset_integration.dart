// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_observabilityadmin_dataset_integration`.
const Set<String> _awsObservabilityadminDatasetIntegrationSensitive =
    <String>{};

/// Factory wrapper for `aws_observabilityadmin_dataset_integration`.
final class AwsObservabilityadminDatasetIntegration extends Resource {
  static const String tfType = 'aws_observabilityadmin_dataset_integration';

  AwsObservabilityadminDatasetIntegration(
    super.localName, {
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminDatasetIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsObservabilityadminDatasetIntegration>`.
  RefTo<AwsObservabilityadminDatasetIntegration> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
