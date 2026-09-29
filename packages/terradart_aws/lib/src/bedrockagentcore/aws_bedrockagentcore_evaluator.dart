// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_evaluator`.
const Set<String> _awsBedrockagentcoreEvaluatorSensitive = <String>{
  'evaluator_config.llm_as_a_judge.instructions',
};

/// Bedrockagentcore Evaluator enum for `level`.
enum BedrockagentcoreEvaluatorLevel implements TerraformEnum {
  toolCall('TOOL_CALL'),
  trace('TRACE'),
  session('SESSION');

  const BedrockagentcoreEvaluatorLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluator_config` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfig {
  const BedrockagentcoreEvaluatorEvaluatorConfig({
    required this.codeBasedOrLlmAsAJudge,
  });

  final BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge
  codeBasedOrLlmAsAJudge;

  Map<String, Object?> encode() => {...codeBasedOrLlmAsAJudge.encode()};
}

/// Exactly one of `code_based`, `llm_as_a_judge` on the `evaluator_config` block of `aws_bedrockagentcore_evaluator`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.codeBased(...)`.
sealed class BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge {
  const BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge();

  /// Sets `code_based`.
  const factory BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge.codeBased(
    List<BedrockagentcoreEvaluatorEvaluatorConfigCodeBased> codeBased,
  ) = BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudgeCodeBased;

  /// Sets `llm_as_a_judge`.
  const factory BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge.llmAsAJudge(
    List<BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudge> llmAsAJudge,
  ) = BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudgeLlmAsAJudge;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge.codeBased] choice: sets `code_based`.
final class BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudgeCodeBased
    extends BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge {
  const BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudgeCodeBased(
    this.codeBased,
  );

  final List<BedrockagentcoreEvaluatorEvaluatorConfigCodeBased> codeBased;

  @override
  String get blockKey => 'code_based';

  @override
  Map<String, Object?> encode() => {
    'code_based': [for (final e in codeBased) e.encode()],
  };
}

/// The [BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge.llmAsAJudge] choice: sets `llm_as_a_judge`.
final class BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudgeLlmAsAJudge
    extends BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudge {
  const BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedOrLlmAsAJudgeLlmAsAJudge(
    this.llmAsAJudge,
  );

  final List<BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudge> llmAsAJudge;

  @override
  String get blockKey => 'llm_as_a_judge';

  @override
  Map<String, Object?> encode() => {
    'llm_as_a_judge': [for (final e in llmAsAJudge) e.encode()],
  };
}

/// Typed helper for the `evaluator_config.code_based` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigCodeBased {
  const BedrockagentcoreEvaluatorEvaluatorConfigCodeBased({this.lambdaConfig});

  final List<BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig>?
  lambdaConfig;

  Map<String, Object?> encode() => {
    if (lambdaConfig != null)
      'lambda_config': [for (final e in lambdaConfig!) e.encode()],
  };
}

/// Typed helper for the `evaluator_config.code_based.lambda_config` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig {
  const BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig({
    required this.lambdaArn,
    this.lambdaTimeoutInSeconds,
  });

  final TfArg<String> lambdaArn;

  final TfArg<num>? lambdaTimeoutInSeconds;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.toTfJson(),
    if (lambdaTimeoutInSeconds != null)
      'lambda_timeout_in_seconds': lambdaTimeoutInSeconds!.toTfJson(),
  };
}

/// Typed helper for the `evaluator_config.llm_as_a_judge` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudge {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudge({
    required this.instructions,
    this.modelConfig,
    this.ratingScale,
  });

  final TfArg<String> instructions;

  final List<BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig>?
  modelConfig;

  final List<BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale>?
  ratingScale;

  Map<String, Object?> encode() => {
    'instructions': instructions.toTfJson(),
    if (modelConfig != null)
      'model_config': [for (final e in modelConfig!) e.encode()],
    if (ratingScale != null)
      'rating_scale': [for (final e in ratingScale!) e.encode()],
  };
}

/// Typed helper for the `evaluator_config.llm_as_a_judge.model_config` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig({
    this.bedrockEvaluatorModelConfig,
  });

  final List<
    BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig
  >?
  bedrockEvaluatorModelConfig;

  Map<String, Object?> encode() => {
    if (bedrockEvaluatorModelConfig != null)
      'bedrock_evaluator_model_config': [
        for (final e in bedrockEvaluatorModelConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig({
    this.additionalModelRequestFields,
    required this.modelId,
    this.inferenceConfig,
  });

  final TfArg<String>? additionalModelRequestFields;

  final TfArg<String> modelId;

  final List<
    BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig
  >?
  inferenceConfig;

  Map<String, Object?> encode() => {
    if (additionalModelRequestFields != null)
      'additional_model_request_fields': additionalModelRequestFields!
          .toTfJson(),
    'model_id': modelId.toTfJson(),
    if (inferenceConfig != null)
      'inference_config': [for (final e in inferenceConfig!) e.encode()],
  };
}

/// Typed helper for the `evaluator_config.llm_as_a_judge.model_config.bedrock_evaluator_model_config.inference_config` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig({
    this.maxTokens,
    this.stopSequences,
    this.temperature,
    this.topP,
  });

  final TfArg<num>? maxTokens;

  final TfArg<List<Object?>>? stopSequences;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    if (maxTokens != null) 'max_tokens': maxTokens!.toTfJson(),
    if (stopSequences != null) 'stop_sequences': stopSequences!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
    if (topP != null) 'top_p': topP!.toTfJson(),
  };
}

/// Typed helper for the `evaluator_config.llm_as_a_judge.rating_scale` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale({
    required this.categoricalOrNumerical,
  });

  final BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical
  categoricalOrNumerical;

  Map<String, Object?> encode() => {...categoricalOrNumerical.encode()};
}

/// Exactly one of `categorical`, `numerical` on the `evaluator_config.llm_as_a_judge.rating_scale` block of `aws_bedrockagentcore_evaluator`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.categorical(...)`.
sealed class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical();

  /// Sets `categorical`.
  const factory BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical.categorical(
    List<
      BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical
    >
    categorical,
  ) = BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumericalCategorical;

  /// Sets `numerical`.
  const factory BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical.numerical(
    List<
      BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical
    >
    numerical,
  ) = BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumericalNumerical;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical.categorical] choice: sets `categorical`.
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumericalCategorical
    extends
        BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumericalCategorical(
    this.categorical,
  );

  final List<
    BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical
  >
  categorical;

  @override
  String get blockKey => 'categorical';

  @override
  Map<String, Object?> encode() => {
    'categorical': [for (final e in categorical) e.encode()],
  };
}

/// The [BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical.numerical] choice: sets `numerical`.
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumericalNumerical
    extends
        BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumerical {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalOrNumericalNumerical(
    this.numerical,
  );

  final List<
    BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical
  >
  numerical;

  @override
  String get blockKey => 'numerical';

  @override
  Map<String, Object?> encode() => {
    'numerical': [for (final e in numerical) e.encode()],
  };
}

/// Typed helper for the `evaluator_config.llm_as_a_judge.rating_scale.categorical` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical({
    required this.definition,
    required this.label,
  });

  final TfArg<String> definition;

  final TfArg<String> label;

  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    'label': label.toTfJson(),
  };
}

/// Typed helper for the `evaluator_config.llm_as_a_judge.rating_scale.numerical` block of
/// `aws_bedrockagentcore_evaluator` (derived from provider schema).
@immutable
final class BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical {
  const BedrockagentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical({
    required this.definition,
    required this.label,
    required this.value,
  });

  final TfArg<String> definition;

  final TfArg<String> label;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    'label': label.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_evaluator`.
final class AwsBedrockagentcoreEvaluator extends Resource {
  static const String tfType = 'aws_bedrockagentcore_evaluator';

  AwsBedrockagentcoreEvaluator({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> evaluatorName,
    TfArg<String>? kmsKeyArn,
    required TfArg<BedrockagentcoreEvaluatorLevel> level,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreEvaluatorEvaluatorConfig>? evaluatorConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'evaluator_name': evaluatorName,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'level': level,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (evaluatorConfig != null)
             'evaluator_config': TfArg.literal([
               for (final e in evaluatorConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcoreEvaluatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreEvaluator>`.
  RefTo<AwsBedrockagentcoreEvaluator> get ref => RefTo.of(this);

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `evaluator_arn` attribute.
  TfRef<String> get evaluatorArn =>
      TfRef.attribute<String>(this, 'evaluator_arn');

  /// Reference to `evaluator_id` attribute.
  TfRef<String> get evaluatorId =>
      TfRef.attribute<String>(this, 'evaluator_id');

  /// Reference to `locked_for_modification` attribute.
  TfRef<bool> get lockedForModification =>
      TfRef.attribute<bool>(this, 'locked_for_modification');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
