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

  final TfArg<ConfigConfigRuleMode>? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum ConfigConfigRuleMode implements TerraformEnum {
  detective('DETECTIVE'),
  proactive('PROACTIVE');

  const ConfigConfigRuleMode(this.terraformValue);
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

  final TfArg<List<String>>? complianceResourceTypes;

  final TfArg<String>? tagKey;

  final TfArg<String>? tagValue;

  Map<String, Object?> encode() => {
    'compliance_resource_id': ?complianceResourceId?.toTfJson(),
    'compliance_resource_types': ?complianceResourceTypes?.toTfJson(),
    'tag_key': ?tagKey?.toTfJson(),
    'tag_value': ?tagValue?.toTfJson(),
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

  final TfArg<ConfigConfigRuleOwner> owner;

  final TfArg<String>? sourceIdentifier;

  final ConfigConfigRuleCustomPolicyDetails? customPolicyDetails;

  final List<ConfigConfigRuleSourceDetail>? sourceDetail;

  Map<String, Object?> encode() => {
    'owner': owner.toTfJson(),
    'source_identifier': ?sourceIdentifier?.toTfJson(),
    'custom_policy_details': ?customPolicyDetails?.encode(),
    if (sourceDetail != null)
      'source_detail': [for (final e in sourceDetail!) e.encode()],
  };
}

/// `owner` — derived from the provider schema description.
enum ConfigConfigRuleOwner implements TerraformEnum {
  customLambda('CUSTOM_LAMBDA'),
  aws('AWS'),
  customPolicy('CUSTOM_POLICY');

  const ConfigConfigRuleOwner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source.custom_policy_details` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleCustomPolicyDetails {
  const ConfigConfigRuleCustomPolicyDetails({
    this.enableDebugLogDelivery,
    required this.policyRuntime,
    required this.policyText,
  });

  final TfArg<bool>? enableDebugLogDelivery;

  final TfArg<String> policyRuntime;

  final TfArg<String> policyText;

  Map<String, Object?> encode() => {
    'enable_debug_log_delivery': ?enableDebugLogDelivery?.toTfJson(),
    'policy_runtime': policyRuntime.toTfJson(),
    'policy_text': policyText.toTfJson(),
  };
}

/// Typed helper for the `source.source_detail` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleSourceDetail {
  const ConfigConfigRuleSourceDetail({
    this.eventSource,
    this.maximumExecutionFrequency,
    this.messageType,
  });

  final TfArg<ConfigConfigRuleEventSource>? eventSource;

  final TfArg<ConfigConfigRuleSourceDetailMaximumExecutionFrequency>?
  maximumExecutionFrequency;

  final TfArg<ConfigConfigRuleMessageType>? messageType;

  Map<String, Object?> encode() => {
    'event_source': ?eventSource?.toTfJson(),
    'maximum_execution_frequency': ?maximumExecutionFrequency?.toTfJson(),
    'message_type': ?messageType?.toTfJson(),
  };
}

/// `event_source` — derived from the provider schema description.
enum ConfigConfigRuleEventSource implements TerraformEnum {
  awsConfig('aws.config');

  const ConfigConfigRuleEventSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// `maximum_execution_frequency` — derived from the provider schema description.
enum ConfigConfigRuleSourceDetailMaximumExecutionFrequency
    implements TerraformEnum {
  oneHour('One_Hour'),
  threeHours('Three_Hours'),
  sixHours('Six_Hours'),
  twelveHours('Twelve_Hours'),
  twentyfourHours('TwentyFour_Hours');

  const ConfigConfigRuleSourceDetailMaximumExecutionFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `message_type` — derived from the provider schema description.
enum ConfigConfigRuleMessageType implements TerraformEnum {
  configurationitemchangenotification('ConfigurationItemChangeNotification'),
  configurationsnapshotdeliverycompleted(
    'ConfigurationSnapshotDeliveryCompleted',
  ),
  schedulednotification('ScheduledNotification'),
  oversizedconfigurationitemchangenotification(
    'OversizedConfigurationItemChangeNotification',
  );

  const ConfigConfigRuleMessageType(this.terraformValue);
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
           'description': ?description,
           'input_parameters': ?inputParameters,
           'maximum_execution_frequency': ?maximumExecutionFrequency,
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `input_parameters` attribute.
  TfRef<String> get inputParametersRef =>
      TfRef.attribute<String>(this, 'input_parameters');

  /// Reference to `maximum_execution_frequency` attribute.
  TfRef<String> get maximumExecutionFrequencyRef =>
      TfRef.attribute<String>(this, 'maximum_execution_frequency');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
