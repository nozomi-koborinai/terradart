// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_provisioned_model_throughput`.
const Set<String> _awsBedrockProvisionedModelThroughputSensitive = <String>{};

/// Bedrock Provisioned Model Throughput Commitment enum for `commitment_duration`.
enum BedrockProvisionedModelThroughputCommitmentDuration
    implements TerraformEnum {
  onemonth('OneMonth'),
  sixmonths('SixMonths');

  const BedrockProvisionedModelThroughputCommitmentDuration(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrock_provisioned_model_throughput`.
final class AwsBedrockProvisionedModelThroughput extends Resource {
  static const String tfType = 'aws_bedrock_provisioned_model_throughput';

  AwsBedrockProvisionedModelThroughput({
    required super.localName,
    TfArg<BedrockProvisionedModelThroughputCommitmentDuration>?
    commitmentDuration,
    required TfArg<String> modelArn,
    required TfArg<num> modelUnits,
    required TfArg<String> provisionedModelName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'commitment_duration': ?commitmentDuration,
           'model_arn': modelArn,
           'model_units': modelUnits,
           'provisioned_model_name': provisionedModelName,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockProvisionedModelThroughputSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockProvisionedModelThroughput>`.
  RefTo<AwsBedrockProvisionedModelThroughput> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `provisioned_model_arn` attribute.
  TfRef<String> get provisionedModelArn =>
      TfRef.attribute<String>(this, 'provisioned_model_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
