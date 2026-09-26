// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector_assessment_target`.
const Set<String> _awsInspectorAssessmentTargetSensitive = <String>{};

/// Factory wrapper for `aws_inspector_assessment_target`.
final class AwsInspectorAssessmentTarget extends Resource {
  static const String tfType = 'aws_inspector_assessment_target';

  AwsInspectorAssessmentTarget({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? resourceGroupArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (resourceGroupArn != null) 'resource_group_arn': resourceGroupArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspectorAssessmentTargetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
