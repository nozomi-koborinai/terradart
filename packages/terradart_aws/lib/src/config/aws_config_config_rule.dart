// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_config_rule`.
const Set<String> _awsConfigConfigRuleSensitive = <String>{};

/// Config Config Rule Maximum Execution enum for `maximum_execution_frequency`.
enum ConfigConfigRuleMaximumExecutionFrequency implements TerraformEnum {
  oneHour('One_Hour'),
  threeHours('Three_Hours'),
  sixHours('Six_Hours'),
  twelveHours('Twelve_Hours'),
  twentyfourHours('TwentyFour_Hours');

  const ConfigConfigRuleMaximumExecutionFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_mode` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleEvaluationMode {
  const ConfigConfigRuleEvaluationMode({this.mode});

  final TfArg<ConfigConfigRuleEvaluationModeMode>? mode;

  Map<String, Object?> encode() => {if (mode != null) 'mode': mode!.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum ConfigConfigRuleEvaluationModeMode implements TerraformEnum {
  detective('DETECTIVE'),
  proactive('PROACTIVE');

  const ConfigConfigRuleEvaluationModeMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scope` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleScope {
  const ConfigConfigRuleScope({
    this.complianceResourceId,
    this.complianceResourceTypes,
    this.tagKey,
    this.tagValue,
  });

  final TfArg<String>? complianceResourceId;

  final TfArg<List<Object?>>? complianceResourceTypes;

  final TfArg<String>? tagKey;

  final TfArg<String>? tagValue;

  Map<String, Object?> encode() => {
    if (complianceResourceId != null)
      'compliance_resource_id': complianceResourceId!.toTfJson(),
    if (complianceResourceTypes != null)
      'compliance_resource_types': complianceResourceTypes!.toTfJson(),
    if (tagKey != null) 'tag_key': tagKey!.toTfJson(),
    if (tagValue != null) 'tag_value': tagValue!.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleSource {
  const ConfigConfigRuleSource({
    required this.owner,
    this.sourceIdentifier,
    this.customPolicyDetails,
    this.sourceDetail,
  });

  final TfArg<ConfigConfigRuleSourceOwner> owner;

  final TfArg<String>? sourceIdentifier;

  final ConfigConfigRuleSourceCustomPolicyDetails? customPolicyDetails;

  final List<ConfigConfigRuleSourceSourceDetail>? sourceDetail;

  Map<String, Object?> encode() => {
    'owner': owner.toTfJson(),
    if (sourceIdentifier != null)
      'source_identifier': sourceIdentifier!.toTfJson(),
    if (customPolicyDetails != null)
      'custom_policy_details': customPolicyDetails!.encode(),
    if (sourceDetail != null)
      'source_detail': [for (final e in sourceDetail!) e.encode()],
  };
}

/// `owner` — derived from the provider schema description.
enum ConfigConfigRuleSourceOwner implements TerraformEnum {
  customLambda('CUSTOM_LAMBDA'),
  aws('AWS'),
  customPolicy('CUSTOM_POLICY');

  const ConfigConfigRuleSourceOwner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source.custom_policy_details` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleSourceCustomPolicyDetails {
  const ConfigConfigRuleSourceCustomPolicyDetails({
    this.enableDebugLogDelivery,
    required this.policyRuntime,
    required this.policyText,
  });

  final TfArg<bool>? enableDebugLogDelivery;

  final TfArg<String> policyRuntime;

  final TfArg<String> policyText;

  Map<String, Object?> encode() => {
    if (enableDebugLogDelivery != null)
      'enable_debug_log_delivery': enableDebugLogDelivery!.toTfJson(),
    'policy_runtime': policyRuntime.toTfJson(),
    'policy_text': policyText.toTfJson(),
  };
}

/// Typed helper for the `source.source_detail` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleSourceSourceDetail {
  const ConfigConfigRuleSourceSourceDetail({
    this.eventSource,
    this.maximumExecutionFrequency,
    this.messageType,
  });

  final TfArg<ConfigConfigRuleSourceSourceDetailEventSource>? eventSource;

  final TfArg<ConfigConfigRuleSourceSourceDetailMaximumExecutionFrequency>?
  maximumExecutionFrequency;

  final TfArg<ConfigConfigRuleSourceSourceDetailMessageType>? messageType;

  Map<String, Object?> encode() => {
    if (eventSource != null) 'event_source': eventSource!.toTfJson(),
    if (maximumExecutionFrequency != null)
      'maximum_execution_frequency': maximumExecutionFrequency!.toTfJson(),
    if (messageType != null) 'message_type': messageType!.toTfJson(),
  };
}

/// `event_source` — derived from the provider schema description.
enum ConfigConfigRuleSourceSourceDetailEventSource implements TerraformEnum {
  awsConfig('aws.config');

  const ConfigConfigRuleSourceSourceDetailEventSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// `maximum_execution_frequency` — derived from the provider schema description.
enum ConfigConfigRuleSourceSourceDetailMaximumExecutionFrequency
    implements TerraformEnum {
  oneHour('One_Hour'),
  threeHours('Three_Hours'),
  sixHours('Six_Hours'),
  twelveHours('Twelve_Hours'),
  twentyfourHours('TwentyFour_Hours');

  const ConfigConfigRuleSourceSourceDetailMaximumExecutionFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `message_type` — derived from the provider schema description.
enum ConfigConfigRuleSourceSourceDetailMessageType implements TerraformEnum {
  configurationitemchangenotification('ConfigurationItemChangeNotification'),
  configurationsnapshotdeliverycompleted(
    'ConfigurationSnapshotDeliveryCompleted',
  ),
  schedulednotification('ScheduledNotification'),
  oversizedconfigurationitemchangenotification(
    'OversizedConfigurationItemChangeNotification',
  );

  const ConfigConfigRuleSourceSourceDetailMessageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_config_config_rule`.
final class AwsConfigConfigRule extends Resource {
  static const String tfType = 'aws_config_config_rule';

  AwsConfigConfigRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? inputParameters,
    TfArg<ConfigConfigRuleMaximumExecutionFrequency>? maximumExecutionFrequency,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<ConfigConfigRuleEvaluationMode>? evaluationMode,
    ConfigConfigRuleScope? scope,
    required ConfigConfigRuleSource source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (inputParameters != null) 'input_parameters': inputParameters,
           if (maximumExecutionFrequency != null)
             'maximum_execution_frequency': maximumExecutionFrequency,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (evaluationMode != null)
             'evaluation_mode': TfArg.literal([
               for (final e in evaluationMode) e.encode(),
             ]),
           if (scope != null) 'scope': TfArg.literal(scope.encode()),
           'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConfigRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigConfigRule>`.
  RefTo<AwsConfigConfigRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');
}
