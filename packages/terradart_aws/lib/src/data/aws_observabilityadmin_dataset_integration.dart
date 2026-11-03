// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../observabilityadmin/aws_observabilityadmin_dataset_integration.dart';

/// Sensitive field paths for `aws_observabilityadmin_dataset_integration`.
const Set<String> _awsObservabilityadminDatasetIntegrationSensitive =
    <String>{};

/// Factory wrapper for `aws_observabilityadmin_dataset_integration`.
final class DataAwsObservabilityadminDatasetIntegration extends Data {
  static const String tfType = 'aws_observabilityadmin_dataset_integration';

  DataAwsObservabilityadminDatasetIntegration(
    super.localName, {
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'region': ?region});

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminDatasetIntegrationSensitive;

  /// A reference to the `aws_observabilityadmin_dataset_integration` this data source reads, for
  /// arguments typed `RefTo<AwsObservabilityadminDatasetIntegration>`.
  RefTo<AwsObservabilityadminDatasetIntegration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
