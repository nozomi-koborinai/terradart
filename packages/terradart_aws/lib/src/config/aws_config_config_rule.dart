// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_config_rule`.
const Set<String> _awsConfigConfigRuleSensitive = <String>{};

/// Config Config Rule Maximum Execution enum for `maximum_execution_frequency`.
extension type const ConfigConfigRuleMaximumExecutionFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  ConfigConfigRuleMaximumExecutionFrequency.variable(String name)
    : this._(TfArg.variable(name));
  ConfigConfigRuleMaximumExecutionFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigConfigRuleMaximumExecutionFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const oneHour = ConfigConfigRuleMaximumExecutionFrequency._(
    TfArgLiteral('One_Hour'),
  );
  static const threeHours = ConfigConfigRuleMaximumExecutionFrequency._(
    TfArgLiteral('Three_Hours'),
  );
  static const sixHours = ConfigConfigRuleMaximumExecutionFrequency._(
    TfArgLiteral('Six_Hours'),
  );
  static const twelveHours = ConfigConfigRuleMaximumExecutionFrequency._(
    TfArgLiteral('Twelve_Hours'),
  );
  static const twentyfourHours = ConfigConfigRuleMaximumExecutionFrequency._(
    TfArgLiteral('TwentyFour_Hours'),
  );

  static const List<ConfigConfigRuleMaximumExecutionFrequency> values = [
    oneHour,
    threeHours,
    sixHours,
    twelveHours,
    twentyfourHours,
  ];
}

/// Typed helper for the `evaluation_mode` block of
/// `aws_config_config_rule` (derived from provider schema).
@immutable
final class ConfigConfigRuleEvaluationMode {
  const ConfigConfigRuleEvaluationMode({this.mode});

  final ConfigConfigRuleMode? mode;

  @internal
  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const ConfigConfigRuleMode._(TfArg<String> _)
    implements TfArg<String> {
  ConfigConfigRuleMode.variable(String name) : this._(TfArg.variable(name));
  ConfigConfigRuleMode.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigConfigRuleMode.arg(TfArg<String> arg) : this._(arg);

  static const detective = ConfigConfigRuleMode._(TfArgLiteral('DETECTIVE'));
  static const proactive = ConfigConfigRuleMode._(TfArgLiteral('PROACTIVE'));

  static const List<ConfigConfigRuleMode> values = [detective, proactive];
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

  @internal
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

  final ConfigConfigRuleOwner owner;

  final TfArg<String>? sourceIdentifier;

  final ConfigConfigRuleCustomPolicyDetails? customPolicyDetails;

  final List<ConfigConfigRuleSourceDetail>? sourceDetail;

  @internal
  Map<String, Object?> encode() => {
    'owner': owner.toTfJson(),
    'source_identifier': ?sourceIdentifier?.toTfJson(),
    'custom_policy_details': ?customPolicyDetails?.encode(),
    if (sourceDetail != null)
      'source_detail': [for (final e in sourceDetail!) e.encode()],
  };
}

/// `owner` — derived from the provider schema description.
extension type const ConfigConfigRuleOwner._(TfArg<String> _)
    implements TfArg<String> {
  ConfigConfigRuleOwner.variable(String name) : this._(TfArg.variable(name));
  ConfigConfigRuleOwner.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigConfigRuleOwner.arg(TfArg<String> arg) : this._(arg);

  static const customLambda = ConfigConfigRuleOwner._(
    TfArgLiteral('CUSTOM_LAMBDA'),
  );
  static const aws = ConfigConfigRuleOwner._(TfArgLiteral('AWS'));
  static const customPolicy = ConfigConfigRuleOwner._(
    TfArgLiteral('CUSTOM_POLICY'),
  );

  static const List<ConfigConfigRuleOwner> values = [
    customLambda,
    aws,
    customPolicy,
  ];
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

  @internal
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

  final ConfigConfigRuleEventSource? eventSource;

  final ConfigConfigRuleSourceDetailMaximumExecutionFrequency?
  maximumExecutionFrequency;

  final ConfigConfigRuleMessageType? messageType;

  @internal
  Map<String, Object?> encode() => {
    'event_source': ?eventSource?.toTfJson(),
    'maximum_execution_frequency': ?maximumExecutionFrequency?.toTfJson(),
    'message_type': ?messageType?.toTfJson(),
  };
}

/// `event_source` — derived from the provider schema description.
extension type const ConfigConfigRuleEventSource._(TfArg<String> _)
    implements TfArg<String> {
  ConfigConfigRuleEventSource.variable(String name)
    : this._(TfArg.variable(name));
  ConfigConfigRuleEventSource.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigConfigRuleEventSource.arg(TfArg<String> arg) : this._(arg);

  static const awsConfig = ConfigConfigRuleEventSource._(
    TfArgLiteral('aws.config'),
  );

  static const List<ConfigConfigRuleEventSource> values = [awsConfig];
}

/// `maximum_execution_frequency` — derived from the provider schema description.
extension type const ConfigConfigRuleSourceDetailMaximumExecutionFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  ConfigConfigRuleSourceDetailMaximumExecutionFrequency.variable(String name)
    : this._(TfArg.variable(name));
  ConfigConfigRuleSourceDetailMaximumExecutionFrequency.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ConfigConfigRuleSourceDetailMaximumExecutionFrequency.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const oneHour =
      ConfigConfigRuleSourceDetailMaximumExecutionFrequency._(
        TfArgLiteral('One_Hour'),
      );
  static const threeHours =
      ConfigConfigRuleSourceDetailMaximumExecutionFrequency._(
        TfArgLiteral('Three_Hours'),
      );
  static const sixHours =
      ConfigConfigRuleSourceDetailMaximumExecutionFrequency._(
        TfArgLiteral('Six_Hours'),
      );
  static const twelveHours =
      ConfigConfigRuleSourceDetailMaximumExecutionFrequency._(
        TfArgLiteral('Twelve_Hours'),
      );
  static const twentyfourHours =
      ConfigConfigRuleSourceDetailMaximumExecutionFrequency._(
        TfArgLiteral('TwentyFour_Hours'),
      );

  static const List<ConfigConfigRuleSourceDetailMaximumExecutionFrequency>
  values = [oneHour, threeHours, sixHours, twelveHours, twentyfourHours];
}

/// `message_type` — derived from the provider schema description.
extension type const ConfigConfigRuleMessageType._(TfArg<String> _)
    implements TfArg<String> {
  ConfigConfigRuleMessageType.variable(String name)
    : this._(TfArg.variable(name));
  ConfigConfigRuleMessageType.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigConfigRuleMessageType.arg(TfArg<String> arg) : this._(arg);

  static const configurationitemchangenotification =
      ConfigConfigRuleMessageType._(
        TfArgLiteral('ConfigurationItemChangeNotification'),
      );
  static const configurationsnapshotdeliverycompleted =
      ConfigConfigRuleMessageType._(
        TfArgLiteral('ConfigurationSnapshotDeliveryCompleted'),
      );
  static const schedulednotification = ConfigConfigRuleMessageType._(
    TfArgLiteral('ScheduledNotification'),
  );
  static const oversizedconfigurationitemchangenotification =
      ConfigConfigRuleMessageType._(
        TfArgLiteral('OversizedConfigurationItemChangeNotification'),
      );

  static const List<ConfigConfigRuleMessageType> values = [
    configurationitemchangenotification,
    configurationsnapshotdeliverycompleted,
    schedulednotification,
    oversizedconfigurationitemchangenotification,
  ];
}

/// Factory wrapper for `aws_config_config_rule`.
final class AwsConfigConfigRule extends Resource {
  static const String tfType = 'aws_config_config_rule';

  AwsConfigConfigRule(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? inputParameters,
    ConfigConfigRuleMaximumExecutionFrequency? maximumExecutionFrequency,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `input_parameters` attribute.
  TfRef<String> get inputParameters =>
      TfRef.attribute<String>(this, 'input_parameters');

  /// Reference to `maximum_execution_frequency` attribute.
  TfRef<String> get maximumExecutionFrequency =>
      TfRef.attribute<String>(this, 'maximum_execution_frequency');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
