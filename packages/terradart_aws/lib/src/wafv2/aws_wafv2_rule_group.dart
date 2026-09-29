// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_rule_group`.
const Set<String> _awsWafv2RuleGroupSensitive = <String>{};

/// Wafv2 Rule Group enum for `scope`.
enum Wafv2RuleGroupScope implements TerraformEnum {
  cloudfront('CLOUDFRONT'),
  regional('REGIONAL');

  const Wafv2RuleGroupScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_wafv2_rule_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class Wafv2RuleGroupName {
  const Wafv2RuleGroupName();

  /// Sets `name`.
  const factory Wafv2RuleGroupName.name(TfArg<String> name) =
      Wafv2RuleGroupNameChoice;

  /// Sets `name_prefix`.
  const factory Wafv2RuleGroupName.namePrefix(TfArg<String> namePrefix) =
      Wafv2RuleGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2RuleGroupName.name] choice: sets `name`.
final class Wafv2RuleGroupNameChoice extends Wafv2RuleGroupName {
  const Wafv2RuleGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Wafv2RuleGroupName.namePrefix] choice: sets `name_prefix`.
final class Wafv2RuleGroupNamePrefix extends Wafv2RuleGroupName {
  const Wafv2RuleGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// At most one of `rule`, `rules_json` on `aws_wafv2_rule_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.rule(...)`.
sealed class Wafv2RuleGroupRules {
  const Wafv2RuleGroupRules();

  /// Sets `rule`.
  const factory Wafv2RuleGroupRules.rule(List<Wafv2RuleGroupRule> rule) =
      Wafv2RuleGroupRulesRule;

  /// Sets `rules_json`.
  const factory Wafv2RuleGroupRules.rulesJson(TfArg<String> rulesJson) =
      Wafv2RuleGroupRulesJson;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2RuleGroupRules.rule] choice: sets `rule`.
final class Wafv2RuleGroupRulesRule extends Wafv2RuleGroupRules {
  const Wafv2RuleGroupRulesRule(this.rule);

  final List<Wafv2RuleGroupRule> rule;

  @override
  String get blockKey => 'rule';

  @override
  Map<String, Object?> encode() => {
    'rule': [for (final e in rule) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'rule': TfArg.literal([for (final e in rule) e.encode()]),
  };
}

/// The [Wafv2RuleGroupRules.rulesJson] choice: sets `rules_json`.
final class Wafv2RuleGroupRulesJson extends Wafv2RuleGroupRules {
  const Wafv2RuleGroupRulesJson(this.rulesJson);

  final TfArg<String> rulesJson;

  @override
  String get blockKey => 'rules_json';

  @override
  Map<String, Object?> encode() => {'rules_json': rulesJson.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'rules_json': rulesJson};
}

/// Typed helper for the `custom_response_body` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupCustomResponseBody {
  const Wafv2RuleGroupCustomResponseBody({
    required this.content,
    required this.contentType,
    required this.key,
  });

  final TfArg<String> content;

  final TfArg<String> contentType;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'content_type': contentType.toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Typed helper for the `rule` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRule {
  const Wafv2RuleGroupRule({
    required this.name,
    required this.priority,
    required this.action,
    this.captchaConfig,
    this.ruleLabel,
    required this.statement,
    required this.visibilityConfig,
  });

  final TfArg<String> name;

  final TfArg<num> priority;

  final Wafv2RuleGroupRuleAction action;

  final Wafv2RuleGroupRuleCaptchaConfig? captchaConfig;

  final List<Wafv2RuleGroupRuleRuleLabel>? ruleLabel;

  final Wafv2RuleGroupRuleStatement statement;

  final Wafv2RuleGroupVisibilityConfig visibilityConfig;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'action': action.encode(),
    'captcha_config': ?captchaConfig?.encode(),
    if (ruleLabel != null)
      'rule_label': [for (final e in ruleLabel!) e.encode()],
    'statement': statement.encode(),
    'visibility_config': visibilityConfig.encode(),
  };
}

/// Typed helper for the `rule.action` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleAction {
  const Wafv2RuleGroupRuleAction({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  final Wafv2RuleGroupRuleActionAllow? allow;

  final Wafv2RuleGroupRuleActionBlock? block;

  final Wafv2RuleGroupRuleActionAllow? captcha;

  final Wafv2RuleGroupRuleActionAllow? challenge;

  final Wafv2RuleGroupRuleActionAllow? count;

  Map<String, Object?> encode() => {
    'allow': ?allow?.encode(),
    'block': ?block?.encode(),
    'captcha': ?captcha?.encode(),
    'challenge': ?challenge?.encode(),
    'count': ?count?.encode(),
  };
}

/// Typed helper for the `rule.action.allow` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleActionAllow {
  const Wafv2RuleGroupRuleActionAllow({this.customRequestHandling});

  final Wafv2RuleGroupRuleActionAllowCustomRequestHandling?
  customRequestHandling;

  Map<String, Object?> encode() => {
    'custom_request_handling': ?customRequestHandling?.encode(),
  };
}

/// Typed helper for the `rule.action.allow.custom_request_handling` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleActionAllowCustomRequestHandling {
  const Wafv2RuleGroupRuleActionAllowCustomRequestHandling({
    required this.insertHeader,
  });

  final List<Wafv2RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>
  insertHeader;

  Map<String, Object?> encode() => {
    'insert_header': [for (final e in insertHeader) e.encode()],
  };
}

/// Typed helper for the `rule.action.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader {
  const Wafv2RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `rule.action.block` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleActionBlock {
  const Wafv2RuleGroupRuleActionBlock({this.customResponse});

  final Wafv2RuleGroupRuleActionBlockCustomResponse? customResponse;

  Map<String, Object?> encode() => {
    'custom_response': ?customResponse?.encode(),
  };
}

/// Typed helper for the `rule.action.block.custom_response` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleActionBlockCustomResponse {
  const Wafv2RuleGroupRuleActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<Wafv2RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>?
  responseHeader;

  Map<String, Object?> encode() => {
    'custom_response_body_key': ?customResponseBodyKey?.toTfJson(),
    'response_code': responseCode.toTfJson(),
    if (responseHeader != null)
      'response_header': [for (final e in responseHeader!) e.encode()],
  };
}

/// Typed helper for the `rule.captcha_config` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleCaptchaConfig {
  const Wafv2RuleGroupRuleCaptchaConfig({this.immunityTimeProperty});

  final Wafv2RuleGroupRuleCaptchaConfigImmunityTimeProperty?
  immunityTimeProperty;

  Map<String, Object?> encode() => {
    'immunity_time_property': ?immunityTimeProperty?.encode(),
  };
}

/// Typed helper for the `rule.captcha_config.immunity_time_property` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleCaptchaConfigImmunityTimeProperty {
  const Wafv2RuleGroupRuleCaptchaConfigImmunityTimeProperty({
    this.immunityTime,
  });

  final TfArg<num>? immunityTime;

  Map<String, Object?> encode() => {'immunity_time': ?immunityTime?.toTfJson()};
}

/// Typed helper for the `rule.rule_label` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleRuleLabel {
  const Wafv2RuleGroupRuleRuleLabel({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rule.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleStatement {
  const Wafv2RuleGroupRuleStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.notStatement,
    this.orStatement,
    this.rateBasedStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final Wafv2RuleGroupRuleStatementAndStatement? andStatement;

  final Wafv2RuleGroupRuleStatementAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupRuleStatementByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupRuleStatementGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupRuleStatementIpSetReferenceStatement?
  ipSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupRuleStatementAndStatement? notStatement;

  final Wafv2RuleGroupRuleStatementAndStatement? orStatement;

  final Wafv2RuleGroupRuleStatementRateBasedStatement? rateBasedStatement;

  final Wafv2RuleGroupRuleStatementRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRuleStatementRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementSizeConstraintStatement?
  sizeConstraintStatement;

  final Wafv2RuleGroupRuleStatementSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupRuleStatementXssMatchStatement? xssMatchStatement;

  Map<String, Object?> encode() => {
    'and_statement': ?andStatement?.encode(),
    'asn_match_statement': ?asnMatchStatement?.encode(),
    'byte_match_statement': ?byteMatchStatement?.encode(),
    'geo_match_statement': ?geoMatchStatement?.encode(),
    'ip_set_reference_statement': ?ipSetReferenceStatement?.encode(),
    'label_match_statement': ?labelMatchStatement?.encode(),
    'not_statement': ?notStatement?.encode(),
    'or_statement': ?orStatement?.encode(),
    'rate_based_statement': ?rateBasedStatement?.encode(),
    'regex_match_statement': ?regexMatchStatement?.encode(),
    'regex_pattern_set_reference_statement': ?regexPatternSetReferenceStatement
        ?.encode(),
    'size_constraint_statement': ?sizeConstraintStatement?.encode(),
    'sqli_match_statement': ?sqliMatchStatement?.encode(),
    'xss_match_statement': ?xssMatchStatement?.encode(),
  };
}

/// Typed helper for the `rule.statement.and_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAndStatement {
  const Wafv2RuleGroupRuleStatementAndStatement({required this.statement});

  final List<Wafv2RuleGroupRuleStatementAndStatementStatement> statement;

  Map<String, Object?> encode() => {
    'statement': [for (final e in statement) e.encode()],
  };
}

/// Typed helper for the `rule.statement.and_statement.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAndStatementStatement {
  const Wafv2RuleGroupRuleStatementAndStatementStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.notStatement,
    this.orStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final Wafv2RuleGroupRuleStatementAndStatementStatementAndStatement?
  andStatement;

  final Wafv2RuleGroupRuleStatementAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupRuleStatementByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupRuleStatementGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupRuleStatementIpSetReferenceStatement?
  ipSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupRuleStatementAndStatementStatementAndStatement?
  notStatement;

  final Wafv2RuleGroupRuleStatementAndStatementStatementAndStatement?
  orStatement;

  final Wafv2RuleGroupRuleStatementRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRuleStatementRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementSizeConstraintStatement?
  sizeConstraintStatement;

  final Wafv2RuleGroupRuleStatementSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupRuleStatementXssMatchStatement? xssMatchStatement;

  Map<String, Object?> encode() => {
    'and_statement': ?andStatement?.encode(),
    'asn_match_statement': ?asnMatchStatement?.encode(),
    'byte_match_statement': ?byteMatchStatement?.encode(),
    'geo_match_statement': ?geoMatchStatement?.encode(),
    'ip_set_reference_statement': ?ipSetReferenceStatement?.encode(),
    'label_match_statement': ?labelMatchStatement?.encode(),
    'not_statement': ?notStatement?.encode(),
    'or_statement': ?orStatement?.encode(),
    'regex_match_statement': ?regexMatchStatement?.encode(),
    'regex_pattern_set_reference_statement': ?regexPatternSetReferenceStatement
        ?.encode(),
    'size_constraint_statement': ?sizeConstraintStatement?.encode(),
    'sqli_match_statement': ?sqliMatchStatement?.encode(),
    'xss_match_statement': ?xssMatchStatement?.encode(),
  };
}

/// Typed helper for the `rule.statement.and_statement.statement.and_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAndStatementStatementAndStatement {
  const Wafv2RuleGroupRuleStatementAndStatementStatementAndStatement({
    required this.statement,
  });

  final List<
    Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatement
  >
  statement;

  Map<String, Object?> encode() => {
    'statement': [for (final e in statement) e.encode()],
  };
}

/// Typed helper for the `rule.statement.and_statement.statement.and_statement.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatement {
  const Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.notStatement,
    this.orStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatement?
  andStatement;

  final Wafv2RuleGroupRuleStatementAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupRuleStatementByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupRuleStatementGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupRuleStatementIpSetReferenceStatement?
  ipSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatement?
  notStatement;

  final Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatement?
  orStatement;

  final Wafv2RuleGroupRuleStatementRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRuleStatementRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementSizeConstraintStatement?
  sizeConstraintStatement;

  final Wafv2RuleGroupRuleStatementSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupRuleStatementXssMatchStatement? xssMatchStatement;

  Map<String, Object?> encode() => {
    'and_statement': ?andStatement?.encode(),
    'asn_match_statement': ?asnMatchStatement?.encode(),
    'byte_match_statement': ?byteMatchStatement?.encode(),
    'geo_match_statement': ?geoMatchStatement?.encode(),
    'ip_set_reference_statement': ?ipSetReferenceStatement?.encode(),
    'label_match_statement': ?labelMatchStatement?.encode(),
    'not_statement': ?notStatement?.encode(),
    'or_statement': ?orStatement?.encode(),
    'regex_match_statement': ?regexMatchStatement?.encode(),
    'regex_pattern_set_reference_statement': ?regexPatternSetReferenceStatement
        ?.encode(),
    'size_constraint_statement': ?sizeConstraintStatement?.encode(),
    'sqli_match_statement': ?sqliMatchStatement?.encode(),
    'xss_match_statement': ?xssMatchStatement?.encode(),
  };
}

/// Typed helper for the `rule.statement.and_statement.statement.and_statement.statement.and_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatement {
  const Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatement({
    required this.statement,
  });

  final List<
    Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatementStatement
  >
  statement;

  Map<String, Object?> encode() => {
    'statement': [for (final e in statement) e.encode()],
  };
}

/// Typed helper for the `rule.statement.and_statement.statement.and_statement.statement.and_statement.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatementStatement {
  const Wafv2RuleGroupRuleStatementAndStatementStatementAndStatementStatementAndStatementStatement({
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final Wafv2RuleGroupRuleStatementAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupRuleStatementByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupRuleStatementGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupRuleStatementIpSetReferenceStatement?
  ipSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupRuleStatementRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRuleStatementRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupRuleStatementSizeConstraintStatement?
  sizeConstraintStatement;

  final Wafv2RuleGroupRuleStatementSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupRuleStatementXssMatchStatement? xssMatchStatement;

  Map<String, Object?> encode() => {
    'asn_match_statement': ?asnMatchStatement?.encode(),
    'byte_match_statement': ?byteMatchStatement?.encode(),
    'geo_match_statement': ?geoMatchStatement?.encode(),
    'ip_set_reference_statement': ?ipSetReferenceStatement?.encode(),
    'label_match_statement': ?labelMatchStatement?.encode(),
    'regex_match_statement': ?regexMatchStatement?.encode(),
    'regex_pattern_set_reference_statement': ?regexPatternSetReferenceStatement
        ?.encode(),
    'size_constraint_statement': ?sizeConstraintStatement?.encode(),
    'sqli_match_statement': ?sqliMatchStatement?.encode(),
    'xss_match_statement': ?xssMatchStatement?.encode(),
  };
}

/// Typed helper for the `rule.statement.asn_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAsnMatchStatement {
  const Wafv2RuleGroupRuleStatementAsnMatchStatement({
    required this.asnList,
    this.forwardedIpConfig,
  });

  final TfArg<List<Object?>> asnList;

  final Wafv2RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig?
  forwardedIpConfig;

  Map<String, Object?> encode() => {
    'asn_list': asnList.toTfJson(),
    'forwarded_ip_config': ?forwardedIpConfig?.encode(),
  };
}

/// Typed helper for the `rule.statement.asn_match_statement.forwarded_ip_config` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig {
  const Wafv2RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
  });

  final TfArg<String> fallbackBehavior;

  final TfArg<String> headerName;

  Map<String, Object?> encode() => {
    'fallback_behavior': fallbackBehavior.toTfJson(),
    'header_name': headerName.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatement {
  const Wafv2RuleGroupRuleStatementByteMatchStatement({
    required this.positionalConstraint,
    required this.searchString,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> positionalConstraint;

  final TfArg<String> searchString;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch? fieldToMatch;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >?
  preParseTextTransformation;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'positional_constraint': positionalConstraint.toTfJson(),
    'search_string': searchString.toTfJson(),
    'field_to_match': ?fieldToMatch?.encode(),
    if (preParseTextTransformation != null)
      'pre_parse_text_transformation': [
        for (final e in preParseTextTransformation!) e.encode(),
      ],
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch({
    this.allQueryArguments,
    this.body,
    this.cookies,
    this.headerOrder,
    this.headers,
    this.ja3Fingerprint,
    this.ja4Fingerprint,
    this.jsonBody,
    this.method,
    this.queryString,
    this.singleHeader,
    this.singleQueryArgument,
    this.uriFragment,
    this.uriPath,
  });

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  allQueryArguments;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchBody? body;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchCookies?
  cookies;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeaderOrder
  >?
  headerOrder;

  final List<Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeaders>?
  headers;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint?
  ja3Fingerprint;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint?
  ja4Fingerprint;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJsonBody?
  jsonBody;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  method;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  queryString;

  final Wafv2RuleGroupRuleRuleLabel? singleHeader;

  final Wafv2RuleGroupRuleRuleLabel? singleQueryArgument;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment?
  uriFragment;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  uriPath;

  Map<String, Object?> encode() => {
    'all_query_arguments': ?allQueryArguments?.encode(),
    'body': ?body?.encode(),
    'cookies': ?cookies?.encode(),
    if (headerOrder != null)
      'header_order': [for (final e in headerOrder!) e.encode()],
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    'ja3_fingerprint': ?ja3Fingerprint?.encode(),
    'ja4_fingerprint': ?ja4Fingerprint?.encode(),
    'json_body': ?jsonBody?.encode(),
    'method': ?method?.encode(),
    'query_string': ?queryString?.encode(),
    'single_header': ?singleHeader?.encode(),
    'single_query_argument': ?singleQueryArgument?.encode(),
    'uri_fragment': ?uriFragment?.encode(),
    'uri_path': ?uriPath?.encode(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.all_query_arguments` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.body` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchBody {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  final TfArg<String>? oversizeHandling;

  Map<String, Object?> encode() => {
    'oversize_handling': ?oversizeHandling?.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.cookies` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchCookies {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchCookies({
    required this.matchScope,
    required this.oversizeHandling,
    required this.matchPattern,
  });

  final TfArg<String> matchScope;

  final TfArg<String> oversizeHandling;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchCookiesMatchPattern
  >
  matchPattern;

  Map<String, Object?> encode() => {
    'match_scope': matchScope.toTfJson(),
    'oversize_handling': oversizeHandling.toTfJson(),
    'match_pattern': [for (final e in matchPattern) e.encode()],
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.cookies.match_pattern` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchCookiesMatchPattern {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchCookiesMatchPattern({
    this.excludedCookies,
    this.includedCookies,
    this.all,
  });

  final TfArg<List<Object?>>? excludedCookies;

  final TfArg<List<Object?>>? includedCookies;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  all;

  Map<String, Object?> encode() => {
    'excluded_cookies': ?excludedCookies?.toTfJson(),
    'included_cookies': ?includedCookies?.toTfJson(),
    'all': ?all?.encode(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.header_order` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeaderOrder {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeaderOrder({
    required this.oversizeHandling,
  });

  final TfArg<String> oversizeHandling;

  Map<String, Object?> encode() => {
    'oversize_handling': oversizeHandling.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.headers` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeaders {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeaders({
    required this.matchScope,
    required this.oversizeHandling,
    required this.matchPattern,
  });

  final TfArg<String> matchScope;

  final TfArg<String> oversizeHandling;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeadersMatchPattern
  matchPattern;

  Map<String, Object?> encode() => {
    'match_scope': matchScope.toTfJson(),
    'oversize_handling': oversizeHandling.toTfJson(),
    'match_pattern': matchPattern.encode(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.headers.match_pattern` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeadersMatchPattern {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchHeadersMatchPattern({
    this.excludedHeaders,
    this.includedHeaders,
    this.all,
  });

  final TfArg<List<Object?>>? excludedHeaders;

  final TfArg<List<Object?>>? includedHeaders;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  all;

  Map<String, Object?> encode() => {
    'excluded_headers': ?excludedHeaders?.toTfJson(),
    'included_headers': ?includedHeaders?.toTfJson(),
    'all': ?all?.encode(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.ja3_fingerprint` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  final TfArg<String> fallbackBehavior;

  Map<String, Object?> encode() => {
    'fallback_behavior': fallbackBehavior.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.json_body` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJsonBody {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJsonBody({
    this.invalidFallbackBehavior,
    required this.matchScope,
    this.oversizeHandling,
    required this.matchPattern,
  });

  final TfArg<String>? invalidFallbackBehavior;

  final TfArg<String> matchScope;

  final TfArg<String>? oversizeHandling;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern
  matchPattern;

  Map<String, Object?> encode() => {
    'invalid_fallback_behavior': ?invalidFallbackBehavior?.toTfJson(),
    'match_scope': matchScope.toTfJson(),
    'oversize_handling': ?oversizeHandling?.toTfJson(),
    'match_pattern': matchPattern.encode(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.json_body.match_pattern` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern({
    this.includedPaths,
    this.all,
  });

  final TfArg<List<Object?>>? includedPaths;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  all;

  Map<String, Object?> encode() => {
    'included_paths': ?includedPaths?.toTfJson(),
    'all': ?all?.encode(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.uri_fragment` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment {
  const Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  final TfArg<String>? fallbackBehavior;

  Map<String, Object?> encode() => {
    'fallback_behavior': ?fallbackBehavior?.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.pre_parse_text_transformation` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation {
  const Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation({
    required this.priority,
    required this.type,
  });

  final TfArg<num> priority;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.geo_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementGeoMatchStatement {
  const Wafv2RuleGroupRuleStatementGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  final TfArg<List<Object?>> countryCodes;

  final Wafv2RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig?
  forwardedIpConfig;

  Map<String, Object?> encode() => {
    'country_codes': countryCodes.toTfJson(),
    'forwarded_ip_config': ?forwardedIpConfig?.encode(),
  };
}

/// Typed helper for the `rule.statement.ip_set_reference_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementIpSetReferenceStatement {
  const Wafv2RuleGroupRuleStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  final TfArg<String> arn;

  final Wafv2RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig?
  ipSetForwardedIpConfig;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'ip_set_forwarded_ip_config': ?ipSetForwardedIpConfig?.encode(),
  };
}

/// Typed helper for the `rule.statement.ip_set_reference_statement.ip_set_forwarded_ip_config` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig {
  const Wafv2RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
    required this.position,
  });

  final TfArg<String> fallbackBehavior;

  final TfArg<String> headerName;

  final TfArg<String> position;

  Map<String, Object?> encode() => {
    'fallback_behavior': fallbackBehavior.toTfJson(),
    'header_name': headerName.toTfJson(),
    'position': position.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.label_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementLabelMatchStatement {
  const Wafv2RuleGroupRuleStatementLabelMatchStatement({
    required this.key,
    required this.scope,
  });

  final TfArg<String> key;

  final TfArg<String> scope;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.regex_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementRegexMatchStatement {
  const Wafv2RuleGroupRuleStatementRegexMatchStatement({
    required this.regexString,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> regexString;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch? fieldToMatch;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >?
  preParseTextTransformation;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'regex_string': regexString.toTfJson(),
    'field_to_match': ?fieldToMatch?.encode(),
    if (preParseTextTransformation != null)
      'pre_parse_text_transformation': [
        for (final e in preParseTextTransformation!) e.encode(),
      ],
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.regex_pattern_set_reference_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementRegexPatternSetReferenceStatement {
  const Wafv2RuleGroupRuleStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> arn;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch? fieldToMatch;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >?
  preParseTextTransformation;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'field_to_match': ?fieldToMatch?.encode(),
    if (preParseTextTransformation != null)
      'pre_parse_text_transformation': [
        for (final e in preParseTextTransformation!) e.encode(),
      ],
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.size_constraint_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementSizeConstraintStatement {
  const Wafv2RuleGroupRuleStatementSizeConstraintStatement({
    required this.comparisonOperator,
    required this.size,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> comparisonOperator;

  final TfArg<num> size;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch? fieldToMatch;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >?
  preParseTextTransformation;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'size': size.toTfJson(),
    'field_to_match': ?fieldToMatch?.encode(),
    if (preParseTextTransformation != null)
      'pre_parse_text_transformation': [
        for (final e in preParseTextTransformation!) e.encode(),
      ],
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.sqli_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementSqliMatchStatement {
  const Wafv2RuleGroupRuleStatementSqliMatchStatement({
    this.sensitivityLevel,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String>? sensitivityLevel;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch? fieldToMatch;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >?
  preParseTextTransformation;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'sensitivity_level': ?sensitivityLevel?.toTfJson(),
    'field_to_match': ?fieldToMatch?.encode(),
    if (preParseTextTransformation != null)
      'pre_parse_text_transformation': [
        for (final e in preParseTextTransformation!) e.encode(),
      ],
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.xss_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementXssMatchStatement {
  const Wafv2RuleGroupRuleStatementXssMatchStatement({
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatch? fieldToMatch;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >?
  preParseTextTransformation;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'field_to_match': ?fieldToMatch?.encode(),
    if (preParseTextTransformation != null)
      'pre_parse_text_transformation': [
        for (final e in preParseTextTransformation!) e.encode(),
      ],
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.rate_based_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleStatementRateBasedStatement {
  const Wafv2RuleGroupRuleStatementRateBasedStatement({
    this.aggregateKeyType,
    this.evaluationWindowSec,
    required this.limit,
    this.customKey,
    this.forwardedIpConfig,
    this.scopeDownStatement,
  });

  final TfArg<Wafv2RuleGroupRuleStatementRateBasedStatementAggregateKeyType>?
  aggregateKeyType;

  final TfArg<num>? evaluationWindowSec;

  final TfArg<num> limit;

  final List<Wafv2RuleGroupRuleStatementRateBasedStatementCustomKey>? customKey;

  final Wafv2RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig?
  forwardedIpConfig;

  final Wafv2RuleGroupRuleStatementAndStatementStatement? scopeDownStatement;

  Map<String, Object?> encode() => {
    'aggregate_key_type': ?aggregateKeyType?.toTfJson(),
    'evaluation_window_sec': ?evaluationWindowSec?.toTfJson(),
    'limit': limit.toTfJson(),
    if (customKey != null)
      'custom_key': [for (final e in customKey!) e.encode()],
    'forwarded_ip_config': ?forwardedIpConfig?.encode(),
    'scope_down_statement': ?scopeDownStatement?.encode(),
  };
}

/// `aggregate_key_type` — derived from the provider schema description.
enum Wafv2RuleGroupRuleStatementRateBasedStatementAggregateKeyType
    implements TerraformEnum {
  ip('IP'),
  forwardedIp('FORWARDED_IP'),
  customKeys('CUSTOM_KEYS'),
  constant('CONSTANT');

  const Wafv2RuleGroupRuleStatementRateBasedStatementAggregateKeyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.statement.rate_based_statement.custom_key` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleStatementRateBasedStatementCustomKey {
  const Wafv2RuleGroupRuleStatementRateBasedStatementCustomKey({
    this.asn,
    this.cookie,
    this.forwardedIp,
    this.header,
    this.httpMethod,
    this.ip,
    this.ja3Fingerprint,
    this.ja4Fingerprint,
    this.labelNamespace,
    this.queryArgument,
    this.queryString,
    this.uriPath,
  });

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  asn;

  final Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyCookie? cookie;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  forwardedIp;

  final Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyCookie? header;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  httpMethod;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchAllQueryArguments?
  ip;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint?
  ja3Fingerprint;

  final Wafv2RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint?
  ja4Fingerprint;

  final Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace?
  labelNamespace;

  final Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyCookie?
  queryArgument;

  final Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString?
  queryString;

  final Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString?
  uriPath;

  Map<String, Object?> encode() => {
    'asn': ?asn?.encode(),
    'cookie': ?cookie?.encode(),
    'forwarded_ip': ?forwardedIp?.encode(),
    'header': ?header?.encode(),
    'http_method': ?httpMethod?.encode(),
    'ip': ?ip?.encode(),
    'ja3_fingerprint': ?ja3Fingerprint?.encode(),
    'ja4_fingerprint': ?ja4Fingerprint?.encode(),
    'label_namespace': ?labelNamespace?.encode(),
    'query_argument': ?queryArgument?.encode(),
    'query_string': ?queryString?.encode(),
    'uri_path': ?uriPath?.encode(),
  };
}

/// Typed helper for the `rule.statement.rate_based_statement.custom_key.cookie` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyCookie {
  const Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyCookie({
    required this.name,
    required this.textTransformation,
  });

  final TfArg<String> name;

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.rate_based_statement.custom_key.label_namespace` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace {
  const Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace({
    required this.namespace,
  });

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {'namespace': namespace.toTfJson()};
}

/// Typed helper for the `rule.statement.rate_based_statement.custom_key.query_string` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString {
  const Wafv2RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString({
    required this.textTransformation,
  });

  final List<
    Wafv2RuleGroupRuleStatementByteMatchStatementPreParseTextTransformation
  >
  textTransformation;

  Map<String, Object?> encode() => {
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `visibility_config` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupVisibilityConfig {
  const Wafv2RuleGroupVisibilityConfig({
    required this.cloudwatchMetricsEnabled,
    required this.metricName,
    required this.sampledRequestsEnabled,
  });

  final TfArg<bool> cloudwatchMetricsEnabled;

  final TfArg<String> metricName;

  final TfArg<bool> sampledRequestsEnabled;

  Map<String, Object?> encode() => {
    'cloudwatch_metrics_enabled': cloudwatchMetricsEnabled.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'sampled_requests_enabled': sampledRequestsEnabled.toTfJson(),
  };
}

/// Factory wrapper for `aws_wafv2_rule_group`.
final class AwsWafv2RuleGroup extends Resource {
  static const String tfType = 'aws_wafv2_rule_group';

  AwsWafv2RuleGroup({
    required super.localName,
    required TfArg<num> capacity,
    TfArg<String>? description,
    Wafv2RuleGroupName? name,
    TfArg<String>? region,
    Wafv2RuleGroupRules? rules,
    required TfArg<Wafv2RuleGroupScope> scope,
    TfArg<Map<String, String>>? tags,
    List<Wafv2RuleGroupCustomResponseBody>? customResponseBody,
    required Wafv2RuleGroupVisibilityConfig visibilityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity': capacity,
           'description': ?description,
           ...?name?.argMap,
           'region': ?region,
           ...?rules?.argMap,
           'scope': scope,
           'tags': ?tags,
           if (customResponseBody != null)
             'custom_response_body': TfArg.literal([
               for (final e in customResponseBody) e.encode(),
             ]),
           'visibility_config': TfArg.literal(visibilityConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2RuleGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafv2RuleGroup>`.
  RefTo<AwsWafv2RuleGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');
}
