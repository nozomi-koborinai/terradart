// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack`.
const Set<String> _awsCloudformationStackSensitive = <String>{};

/// Factory wrapper for `aws_cloudformation_stack`.
final class DataAwsCloudformationStack extends Data {
  static const String tfType = 'aws_cloudformation_stack';

  DataAwsCloudformationStack({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationStackSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capabilities` attribute.
  TfRef<List<String>> get capabilities =>
      TfRef.attribute<List<String>>(this, 'capabilities');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_rollback` attribute.
  TfRef<bool> get disableRollback =>
      TfRef.attribute<bool>(this, 'disable_rollback');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `notification_arns` attribute.
  TfRef<List<String>> get notificationArns =>
      TfRef.attribute<List<String>>(this, 'notification_arns');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `template_body` attribute.
  TfRef<String> get templateBody =>
      TfRef.attribute<String>(this, 'template_body');

  /// Reference to `timeout_in_minutes` attribute.
  TfRef<num> get timeoutInMinutes =>
      TfRef.attribute<num>(this, 'timeout_in_minutes');
}
