// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl_logging_configuration`.
const Set<String> _awsWafv2WebAclLoggingConfigurationSensitive = <String>{};

/// Typed helper for the `logging_filter` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationLoggingFilter {
  const Wafv2WebAclLoggingConfigurationLoggingFilter({
    required this.defaultBehavior,
    required this.filter,
  });

  final TfArg<Wafv2WebAclLoggingConfigurationLoggingFilterDefaultBehavior>
  defaultBehavior;

  final List<Wafv2WebAclLoggingConfigurationLoggingFilterFilter> filter;

  Map<String, Object?> encode() => {
    'default_behavior': defaultBehavior.toTfJson(),
    'filter': [for (final e in filter) e.encode()],
  };
}

/// `default_behavior` — derived from the provider schema description.
enum Wafv2WebAclLoggingConfigurationLoggingFilterDefaultBehavior
    implements TerraformEnum {
  keep('KEEP'),
  drop('DROP');

  const Wafv2WebAclLoggingConfigurationLoggingFilterDefaultBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_filter.filter` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationLoggingFilterFilter {
  const Wafv2WebAclLoggingConfigurationLoggingFilterFilter({
    required this.behavior,
    required this.requirement,
    required this.condition,
  });

  final TfArg<Wafv2WebAclLoggingConfigurationLoggingFilterFilterBehavior>
  behavior;

  final TfArg<Wafv2WebAclLoggingConfigurationLoggingFilterFilterRequirement>
  requirement;

  final List<Wafv2WebAclLoggingConfigurationLoggingFilterFilterCondition>
  condition;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'requirement': requirement.toTfJson(),
    'condition': [for (final e in condition) e.encode()],
  };
}

/// `behavior` — derived from the provider schema description.
enum Wafv2WebAclLoggingConfigurationLoggingFilterFilterBehavior
    implements TerraformEnum {
  keep('KEEP'),
  drop('DROP');

  const Wafv2WebAclLoggingConfigurationLoggingFilterFilterBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `requirement` — derived from the provider schema description.
enum Wafv2WebAclLoggingConfigurationLoggingFilterFilterRequirement
    implements TerraformEnum {
  meetsAll('MEETS_ALL'),
  meetsAny('MEETS_ANY');

  const Wafv2WebAclLoggingConfigurationLoggingFilterFilterRequirement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_filter.filter.condition` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationLoggingFilterFilterCondition {
  const Wafv2WebAclLoggingConfigurationLoggingFilterFilterCondition({
    this.actionCondition,
    this.labelNameCondition,
  });

  final Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition?
  actionCondition;

  final Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition?
  labelNameCondition;

  Map<String, Object?> encode() => {
    'action_condition': ?actionCondition?.encode(),
    'label_name_condition': ?labelNameCondition?.encode(),
  };
}

/// Typed helper for the `logging_filter.filter.condition.action_condition` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition {
  const Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition({
    required this.action,
  });

  final TfArg<
    Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionAction
  >
  action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// `action` — derived from the provider schema description.
enum Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionAction
    implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK'),
  count('COUNT'),
  captcha('CAPTCHA'),
  challenge('CHALLENGE'),
  monetize('MONETIZE'),
  excludedAsCount('EXCLUDED_AS_COUNT');

  const Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_filter.filter.condition.label_name_condition` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition {
  const Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameCondition({
    required this.labelName,
  });

  final TfArg<String> labelName;

  Map<String, Object?> encode() => {'label_name': labelName.toTfJson()};
}

/// Typed helper for the `redacted_fields` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationRedactedFields {
  const Wafv2WebAclLoggingConfigurationRedactedFields({
    this.method,
    this.queryString,
    this.singleHeader,
    this.uriPath,
  });

  final Wafv2WebAclLoggingConfigurationRedactedFieldsMethod? method;

  final Wafv2WebAclLoggingConfigurationRedactedFieldsQueryString? queryString;

  final Wafv2WebAclLoggingConfigurationRedactedFieldsSingleHeader? singleHeader;

  final Wafv2WebAclLoggingConfigurationRedactedFieldsUriPath? uriPath;

  Map<String, Object?> encode() => {
    'method': ?method?.encode(),
    'query_string': ?queryString?.encode(),
    'single_header': ?singleHeader?.encode(),
    'uri_path': ?uriPath?.encode(),
  };
}

/// Typed helper for the `redacted_fields.method` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationRedactedFieldsMethod {
  const Wafv2WebAclLoggingConfigurationRedactedFieldsMethod();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `redacted_fields.query_string` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationRedactedFieldsQueryString {
  const Wafv2WebAclLoggingConfigurationRedactedFieldsQueryString();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `redacted_fields.single_header` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationRedactedFieldsSingleHeader {
  const Wafv2WebAclLoggingConfigurationRedactedFieldsSingleHeader({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `redacted_fields.uri_path` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationRedactedFieldsUriPath {
  const Wafv2WebAclLoggingConfigurationRedactedFieldsUriPath();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_wafv2_web_acl_logging_configuration`.
final class AwsWafv2WebAclLoggingConfiguration extends Resource {
  static const String tfType = 'aws_wafv2_web_acl_logging_configuration';

  AwsWafv2WebAclLoggingConfiguration({
    required super.localName,
    required TfArg<List<String>> logDestinationConfigs,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    Wafv2WebAclLoggingConfigurationLoggingFilter? loggingFilter,
    List<Wafv2WebAclLoggingConfigurationRedactedFields>? redactedFields,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_destination_configs': logDestinationConfigs,
           'region': ?region,
           'resource_arn': resourceArn,
           if (loggingFilter != null)
             'logging_filter': TfArg.literal(loggingFilter.encode()),
           if (redactedFields != null)
             'redacted_fields': TfArg.literal([
               for (final e in redactedFields) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWafv2WebAclLoggingConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafv2WebAclLoggingConfiguration>`.
  RefTo<AwsWafv2WebAclLoggingConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_destination_configs` attribute.
  TfRef<List<String>> get logDestinationConfigsRef =>
      TfRef.attribute<List<String>>(this, 'log_destination_configs');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');
}
