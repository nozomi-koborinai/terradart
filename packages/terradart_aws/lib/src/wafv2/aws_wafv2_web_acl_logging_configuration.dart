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

  final Wafv2WebAclLoggingConfigurationDefaultBehavior defaultBehavior;

  final List<Wafv2WebAclLoggingConfigurationFilter> filter;

  @internal
  Map<String, Object?> encode() => {
    'default_behavior': defaultBehavior.toTfJson(),
    'filter': [for (final e in filter) e.encode()],
  };
}

/// `default_behavior` — derived from the provider schema description.
extension type const Wafv2WebAclLoggingConfigurationDefaultBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  Wafv2WebAclLoggingConfigurationDefaultBehavior.variable(String name)
    : this._(TfArg.variable(name));
  Wafv2WebAclLoggingConfigurationDefaultBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2WebAclLoggingConfigurationDefaultBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const keep = Wafv2WebAclLoggingConfigurationDefaultBehavior._(
    TfArgLiteral('KEEP'),
  );
  static const drop = Wafv2WebAclLoggingConfigurationDefaultBehavior._(
    TfArgLiteral('DROP'),
  );

  static const List<Wafv2WebAclLoggingConfigurationDefaultBehavior> values = [
    keep,
    drop,
  ];
}

/// Typed helper for the `logging_filter.filter` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationFilter {
  const Wafv2WebAclLoggingConfigurationFilter({
    required this.behavior,
    required this.requirement,
    required this.condition,
  });

  final Wafv2WebAclLoggingConfigurationBehavior behavior;

  final Wafv2WebAclLoggingConfigurationRequirement requirement;

  final List<Wafv2WebAclLoggingConfigurationCondition> condition;

  @internal
  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'requirement': requirement.toTfJson(),
    'condition': [for (final e in condition) e.encode()],
  };
}

/// `behavior` — derived from the provider schema description.
extension type const Wafv2WebAclLoggingConfigurationBehavior._(TfArg<String> _)
    implements TfArg<String> {
  Wafv2WebAclLoggingConfigurationBehavior.variable(String name)
    : this._(TfArg.variable(name));
  Wafv2WebAclLoggingConfigurationBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2WebAclLoggingConfigurationBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const keep = Wafv2WebAclLoggingConfigurationBehavior._(
    TfArgLiteral('KEEP'),
  );
  static const drop = Wafv2WebAclLoggingConfigurationBehavior._(
    TfArgLiteral('DROP'),
  );

  static const List<Wafv2WebAclLoggingConfigurationBehavior> values = [
    keep,
    drop,
  ];
}

/// `requirement` — derived from the provider schema description.
extension type const Wafv2WebAclLoggingConfigurationRequirement._(
  TfArg<String> _
) implements TfArg<String> {
  Wafv2WebAclLoggingConfigurationRequirement.variable(String name)
    : this._(TfArg.variable(name));
  Wafv2WebAclLoggingConfigurationRequirement.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2WebAclLoggingConfigurationRequirement.arg(TfArg<String> arg)
    : this._(arg);

  static const meetsAll = Wafv2WebAclLoggingConfigurationRequirement._(
    TfArgLiteral('MEETS_ALL'),
  );
  static const meetsAny = Wafv2WebAclLoggingConfigurationRequirement._(
    TfArgLiteral('MEETS_ANY'),
  );

  static const List<Wafv2WebAclLoggingConfigurationRequirement> values = [
    meetsAll,
    meetsAny,
  ];
}

/// Typed helper for the `logging_filter.filter.condition` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationCondition {
  const Wafv2WebAclLoggingConfigurationCondition({
    this.actionCondition,
    this.labelNameCondition,
  });

  final Wafv2WebAclLoggingConfigurationActionCondition? actionCondition;

  final Wafv2WebAclLoggingConfigurationLabelNameCondition? labelNameCondition;

  @internal
  Map<String, Object?> encode() => {
    'action_condition': ?actionCondition?.encode(),
    'label_name_condition': ?labelNameCondition?.encode(),
  };
}

/// Typed helper for the `logging_filter.filter.condition.action_condition` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationActionCondition {
  const Wafv2WebAclLoggingConfigurationActionCondition({required this.action});

  final Wafv2WebAclLoggingConfigurationAction action;

  @internal
  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// `action` — derived from the provider schema description.
extension type const Wafv2WebAclLoggingConfigurationAction._(TfArg<String> _)
    implements TfArg<String> {
  Wafv2WebAclLoggingConfigurationAction.variable(String name)
    : this._(TfArg.variable(name));
  Wafv2WebAclLoggingConfigurationAction.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2WebAclLoggingConfigurationAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = Wafv2WebAclLoggingConfigurationAction._(
    TfArgLiteral('ALLOW'),
  );
  static const block = Wafv2WebAclLoggingConfigurationAction._(
    TfArgLiteral('BLOCK'),
  );
  static const count = Wafv2WebAclLoggingConfigurationAction._(
    TfArgLiteral('COUNT'),
  );
  static const captcha = Wafv2WebAclLoggingConfigurationAction._(
    TfArgLiteral('CAPTCHA'),
  );
  static const challenge = Wafv2WebAclLoggingConfigurationAction._(
    TfArgLiteral('CHALLENGE'),
  );
  static const monetize = Wafv2WebAclLoggingConfigurationAction._(
    TfArgLiteral('MONETIZE'),
  );
  static const excludedAsCount = Wafv2WebAclLoggingConfigurationAction._(
    TfArgLiteral('EXCLUDED_AS_COUNT'),
  );

  static const List<Wafv2WebAclLoggingConfigurationAction> values = [
    allow,
    block,
    count,
    captcha,
    challenge,
    monetize,
    excludedAsCount,
  ];
}

/// Typed helper for the `logging_filter.filter.condition.label_name_condition` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationLabelNameCondition {
  const Wafv2WebAclLoggingConfigurationLabelNameCondition({
    required this.labelName,
  });

  final TfArg<String> labelName;

  @internal
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

  final Wafv2WebAclLoggingConfigurationMethod? method;

  final Wafv2WebAclLoggingConfigurationQueryString? queryString;

  final Wafv2WebAclLoggingConfigurationSingleHeader? singleHeader;

  final Wafv2WebAclLoggingConfigurationUriPath? uriPath;

  @internal
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
final class Wafv2WebAclLoggingConfigurationMethod {
  const Wafv2WebAclLoggingConfigurationMethod();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `redacted_fields.query_string` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationQueryString {
  const Wafv2WebAclLoggingConfigurationQueryString();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `redacted_fields.single_header` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationSingleHeader {
  const Wafv2WebAclLoggingConfigurationSingleHeader({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `redacted_fields.uri_path` block of
/// `aws_wafv2_web_acl_logging_configuration` (derived from provider schema).
@immutable
final class Wafv2WebAclLoggingConfigurationUriPath {
  const Wafv2WebAclLoggingConfigurationUriPath();

  @internal
  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_wafv2_web_acl_logging_configuration`.
final class AwsWafv2WebAclLoggingConfiguration extends Resource {
  static const String tfType = 'aws_wafv2_web_acl_logging_configuration';

  AwsWafv2WebAclLoggingConfiguration(
    super.localName, {
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
  TfRef<List<String>> get logDestinationConfigs =>
      TfRef.attribute<List<String>>(this, 'log_destination_configs');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
