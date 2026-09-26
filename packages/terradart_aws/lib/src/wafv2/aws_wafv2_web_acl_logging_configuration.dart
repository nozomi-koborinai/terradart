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

  final TfArg<String> defaultBehavior;

  final List<Wafv2WebAclLoggingConfigurationLoggingFilterFilter> filter;

  Map<String, Object?> encode() => {
    'default_behavior': defaultBehavior.toTfJson(),
    'filter': [for (final e in filter) e.encode()],
  };
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

  final TfArg<String> behavior;

  final TfArg<String> requirement;

  final List<Wafv2WebAclLoggingConfigurationLoggingFilterFilterCondition>
  condition;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'requirement': requirement.toTfJson(),
    'condition': [for (final e in condition) e.encode()],
  };
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
    if (actionCondition != null) 'action_condition': actionCondition!.encode(),
    if (labelNameCondition != null)
      'label_name_condition': labelNameCondition!.encode(),
  };
}

/// Typed helper for the `logging_filter.filter.condition.action_condition` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition {
  const Wafv2WebAclLoggingConfigurationLoggingFilterFilterConditionActionCondition({
    required this.action,
  });

  final TfArg<String> action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
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
    if (method != null) 'method': method!.encode(),
    if (queryString != null) 'query_string': queryString!.encode(),
    if (singleHeader != null) 'single_header': singleHeader!.encode(),
    if (uriPath != null) 'uri_path': uriPath!.encode(),
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
           if (region != null) 'region': region,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
