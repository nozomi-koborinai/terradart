// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_use_case_for_model_access`.
const Set<String> _awsBedrockUseCaseForModelAccessSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_use_case_for_model_access`.
final class AwsBedrockUseCaseForModelAccess extends Resource {
  static const String tfType = 'aws_bedrock_use_case_for_model_access';

  AwsBedrockUseCaseForModelAccess({
    required super.localName,
    required TfArg<String> formData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'form_data': formData});

  @override
  Set<String> get sensitiveFields => _awsBedrockUseCaseForModelAccessSensitive;
}
