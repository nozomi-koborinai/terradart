// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_provisioned_model_throughput`.
const Set<String> _awsBedrockProvisionedModelThroughputSensitive = <String>{};

/// Bedrock Provisioned Model Throughput Commitment enum for `commitment_duration`.
extension type const BedrockProvisionedModelThroughputCommitmentDuration._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockProvisionedModelThroughputCommitmentDuration.variable(String name)
    : this._(TfArg.variable(name));
  BedrockProvisionedModelThroughputCommitmentDuration.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockProvisionedModelThroughputCommitmentDuration.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const onemonth = BedrockProvisionedModelThroughputCommitmentDuration._(
    TfArgLiteral('OneMonth'),
  );
  static const sixmonths =
      BedrockProvisionedModelThroughputCommitmentDuration._(
        TfArgLiteral('SixMonths'),
      );

  static const List<BedrockProvisionedModelThroughputCommitmentDuration>
  values = [onemonth, sixmonths];
}

/// Factory wrapper for `aws_bedrock_provisioned_model_throughput`.
final class AwsBedrockProvisionedModelThroughput extends Resource {
  static const String tfType = 'aws_bedrock_provisioned_model_throughput';

  AwsBedrockProvisionedModelThroughput(
    super.localName, {
    BedrockProvisionedModelThroughputCommitmentDuration? commitmentDuration,
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

  /// Reference to `commitment_duration` attribute.
  TfRef<String> get commitmentDuration =>
      TfRef.attribute<String>(this, 'commitment_duration');

  /// Reference to `model_arn` attribute.
  TfRef<String> get modelArn => TfRef.attribute<String>(this, 'model_arn');

  /// Reference to `model_units` attribute.
  TfRef<num> get modelUnits => TfRef.attribute<num>(this, 'model_units');

  /// Reference to `provisioned_model_name` attribute.
  TfRef<String> get provisionedModelName =>
      TfRef.attribute<String>(this, 'provisioned_model_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
