// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_foundation_model_agreement`.
const Set<String> _awsBedrockFoundationModelAgreementSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_foundation_model_agreement`.
final class AwsBedrockFoundationModelAgreement extends Resource {
  static const String tfType = 'aws_bedrock_foundation_model_agreement';

  AwsBedrockFoundationModelAgreement({
    required super.localName,
    required TfArg<String> modelId,
    required TfArg<String> offerToken,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'model_id': modelId,
           'offer_token': offerToken,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockFoundationModelAgreementSensitive;
}
