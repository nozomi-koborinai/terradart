// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_use_case_for_model_access`.
const Set<String> _awsBedrockUseCaseForModelAccessSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_use_case_for_model_access`.
final class DataAwsBedrockUseCaseForModelAccess extends Data {
  static const String tfType = 'aws_bedrock_use_case_for_model_access';

  DataAwsBedrockUseCaseForModelAccess({
    required super.localName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsBedrockUseCaseForModelAccessSensitive;

  /// Reference to `form_data` attribute.
  TfRef<String> get formData => TfRef.attribute<String>(this, 'form_data');
}
