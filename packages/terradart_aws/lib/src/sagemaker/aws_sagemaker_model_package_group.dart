// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_model_package_group`.
const Set<String> _awsSagemakerModelPackageGroupSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_model_package_group`.
final class AwsSagemakerModelPackageGroup extends Resource {
  static const String tfType = 'aws_sagemaker_model_package_group';

  AwsSagemakerModelPackageGroup({
    required super.localName,
    TfArg<String>? modelPackageGroupDescription,
    required TfArg<String> modelPackageGroupName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (modelPackageGroupDescription != null)
             'model_package_group_description': modelPackageGroupDescription,
           'model_package_group_name': modelPackageGroupName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerModelPackageGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
