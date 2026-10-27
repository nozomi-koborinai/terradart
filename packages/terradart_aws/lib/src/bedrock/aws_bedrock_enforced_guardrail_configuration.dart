// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_enforced_guardrail_configuration`.
const Set<String> _awsBedrockEnforcedGuardrailConfigurationSensitive =
    <String>{};

/// Typed helper for the `model_enforcement` block of
/// `aws_bedrock_enforced_guardrail_configuration` (derived from provider schema).
@immutable
final class BedrockEnforcedGuardrailConfigurationModelEnforcement {
  const BedrockEnforcedGuardrailConfigurationModelEnforcement({
    required this.excludedModels,
    required this.includedModels,
  });

  final TfArg<List<String>> excludedModels;

  final TfArg<List<String>> includedModels;

  @internal
  Map<String, Object?> encode() => {
    'excluded_models': excludedModels.toTfJson(),
    'included_models': includedModels.toTfJson(),
  };
}

/// Typed helper for the `selective_content_guarding` block of
/// `aws_bedrock_enforced_guardrail_configuration` (derived from provider schema).
@immutable
final class BedrockEnforcedGuardrailConfigurationSelectiveContentGuarding {
  const BedrockEnforcedGuardrailConfigurationSelectiveContentGuarding({
    this.messages,
    this.system,
  });

  final BedrockEnforcedGuardrailConfigurationMessages? messages;

  final BedrockEnforcedGuardrailConfigurationSystem? system;

  @internal
  Map<String, Object?> encode() => {
    'messages': ?messages?.toTfJson(),
    'system': ?system?.toTfJson(),
  };
}

/// `messages` — derived from the provider schema description.
extension type const BedrockEnforcedGuardrailConfigurationMessages._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockEnforcedGuardrailConfigurationMessages.variable(String name)
    : this._(TfArg.variable(name));
  BedrockEnforcedGuardrailConfigurationMessages.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockEnforcedGuardrailConfigurationMessages.arg(TfArg<String> arg)
    : this._(arg);

  static const selective = BedrockEnforcedGuardrailConfigurationMessages._(
    TfArgLiteral('SELECTIVE'),
  );
  static const comprehensive = BedrockEnforcedGuardrailConfigurationMessages._(
    TfArgLiteral('COMPREHENSIVE'),
  );

  static const List<BedrockEnforcedGuardrailConfigurationMessages> values = [
    selective,
    comprehensive,
  ];
}

/// `system` — derived from the provider schema description.
extension type const BedrockEnforcedGuardrailConfigurationSystem._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockEnforcedGuardrailConfigurationSystem.variable(String name)
    : this._(TfArg.variable(name));
  BedrockEnforcedGuardrailConfigurationSystem.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockEnforcedGuardrailConfigurationSystem.arg(TfArg<String> arg)
    : this._(arg);

  static const selective = BedrockEnforcedGuardrailConfigurationSystem._(
    TfArgLiteral('SELECTIVE'),
  );
  static const comprehensive = BedrockEnforcedGuardrailConfigurationSystem._(
    TfArgLiteral('COMPREHENSIVE'),
  );

  static const List<BedrockEnforcedGuardrailConfigurationSystem> values = [
    selective,
    comprehensive,
  ];
}

/// Factory wrapper for `aws_bedrock_enforced_guardrail_configuration`.
final class AwsBedrockEnforcedGuardrailConfiguration extends Resource {
  static const String tfType = 'aws_bedrock_enforced_guardrail_configuration';

  AwsBedrockEnforcedGuardrailConfiguration(
    super.localName, {
    required TfArg<String> guardrailArn,
    required TfArg<String> guardrailVersion,
    TfArg<String>? region,
    List<BedrockEnforcedGuardrailConfigurationModelEnforcement>?
    modelEnforcement,
    List<BedrockEnforcedGuardrailConfigurationSelectiveContentGuarding>?
    selectiveContentGuarding,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'guardrail_arn': guardrailArn,
           'guardrail_version': guardrailVersion,
           'region': ?region,
           if (modelEnforcement != null)
             'model_enforcement': TfArg.literal([
               for (final e in modelEnforcement) e.encode(),
             ]),
           if (selectiveContentGuarding != null)
             'selective_content_guarding': TfArg.literal([
               for (final e in selectiveContentGuarding) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockEnforcedGuardrailConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockEnforcedGuardrailConfiguration>`.
  RefTo<AwsBedrockEnforcedGuardrailConfiguration> get ref => RefTo.of(this);

  /// Reference to `config_id` attribute.
  TfRef<String> get configId => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `guardrail_id` attribute.
  TfRef<String> get guardrailId =>
      TfRef.attribute<String>(this, 'guardrail_id');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `guardrail_arn` attribute.
  TfRef<String> get guardrailArn =>
      TfRef.attribute<String>(this, 'guardrail_arn');

  /// Reference to `guardrail_version` attribute.
  TfRef<String> get guardrailVersion =>
      TfRef.attribute<String>(this, 'guardrail_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
