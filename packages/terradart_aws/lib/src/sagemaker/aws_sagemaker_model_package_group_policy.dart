// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_model_package_group_policy`.
const Set<String> _awsSagemakerModelPackageGroupPolicySensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_model_package_group_policy`.
final class AwsSagemakerModelPackageGroupPolicy extends Resource {
  static const String tfType = 'aws_sagemaker_model_package_group_policy';

  AwsSagemakerModelPackageGroupPolicy({
    required super.localName,
    required TfArg<String> modelPackageGroupName,
    TfArg<String>? region,
    required TfArg<String> resourcePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'model_package_group_name': modelPackageGroupName,
           if (region != null) 'region': region,
           'resource_policy': resourcePolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerModelPackageGroupPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
