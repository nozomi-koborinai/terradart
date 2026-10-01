// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_rule_group`.
const Set<String> _awsWafv2RuleGroupSensitive = <String>{};

/// Wafv2 Rule Group enum for `scope`.
extension type const Wafv2RuleGroupScope._(TfArg<String> _)
    implements TfArg<String> {
  Wafv2RuleGroupScope.variable(String name) : this._(TfArg.variable(name));
  Wafv2RuleGroupScope.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2RuleGroupScope.arg(TfArg<String> arg) : this._(arg);

  static const cloudfront = Wafv2RuleGroupScope._(TfArgLiteral('CLOUDFRONT'));
  static const regional = Wafv2RuleGroupScope._(TfArgLiteral('REGIONAL'));

  static const List<Wafv2RuleGroupScope> values = [cloudfront, regional];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2RuleGroupName.name] choice: sets `name`.
final class Wafv2RuleGroupNameChoice extends Wafv2RuleGroupName {
  const Wafv2RuleGroupNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Wafv2RuleGroupName.namePrefix] choice: sets `name_prefix`.
final class Wafv2RuleGroupNamePrefix extends Wafv2RuleGroupName {
  const Wafv2RuleGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2RuleGroupRules.rule] choice: sets `rule`.
final class Wafv2RuleGroupRulesRule extends Wafv2RuleGroupRules {
  const Wafv2RuleGroupRulesRule(this.rule);

  final List<Wafv2RuleGroupRule> rule;

  @internal
  @override
  String get blockKey => 'rule';

  @internal
  @override
  Map<String, Object?> encode() => {
    'rule': [for (final e in rule) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'rule': TfArg.literal([for (final e in rule) e.encode()]),
  };
}

/// The [Wafv2RuleGroupRules.rulesJson] choice: sets `rules_json`.
final class Wafv2RuleGroupRulesJson extends Wafv2RuleGroupRules {
  const Wafv2RuleGroupRulesJson(this.rulesJson);

  final TfArg<String> rulesJson;

  @internal
  @override
  String get blockKey => 'rules_json';

  @internal
  @override
  Map<String, Object?> encode() => {'rules_json': rulesJson.toTfJson()};

  @internal
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

  @internal
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

  final Wafv2RuleGroupAction action;

  final Wafv2RuleGroupCaptchaConfig? captchaConfig;

  final List<Wafv2RuleGroupRuleLabel>? ruleLabel;

  final Wafv2RuleGroupStatement statement;

  final Wafv2RuleGroupVisibilityConfig visibilityConfig;

  @internal
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
final class Wafv2RuleGroupAction {
  const Wafv2RuleGroupAction({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  final Wafv2RuleGroupAllow? allow;

  final Wafv2RuleGroupBlock? block;

  final Wafv2RuleGroupAllow? captcha;

  final Wafv2RuleGroupAllow? challenge;

  final Wafv2RuleGroupAllow? count;

  @internal
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
final class Wafv2RuleGroupAllow {
  const Wafv2RuleGroupAllow({this.customRequestHandling});

  final Wafv2RuleGroupCustomRequestHandling? customRequestHandling;

  @internal
  Map<String, Object?> encode() => {
    'custom_request_handling': ?customRequestHandling?.encode(),
  };
}

/// Typed helper for the `rule.action.allow.custom_request_handling` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupCustomRequestHandling {
  const Wafv2RuleGroupCustomRequestHandling({required this.insertHeader});

  final List<Wafv2RuleGroupInsertHeader> insertHeader;

  @internal
  Map<String, Object?> encode() => {
    'insert_header': [for (final e in insertHeader) e.encode()],
  };
}

/// Typed helper for the `rule.action.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupInsertHeader {
  const Wafv2RuleGroupInsertHeader({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `rule.action.block` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupBlock {
  const Wafv2RuleGroupBlock({this.customResponse});

  final Wafv2RuleGroupCustomResponse? customResponse;

  @internal
  Map<String, Object?> encode() => {
    'custom_response': ?customResponse?.encode(),
  };
}

/// Typed helper for the `rule.action.block.custom_response` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupCustomResponse {
  const Wafv2RuleGroupCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<Wafv2RuleGroupInsertHeader>? responseHeader;

  @internal
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
final class Wafv2RuleGroupCaptchaConfig {
  const Wafv2RuleGroupCaptchaConfig({this.immunityTimeProperty});

  final Wafv2RuleGroupImmunityTimeProperty? immunityTimeProperty;

  @internal
  Map<String, Object?> encode() => {
    'immunity_time_property': ?immunityTimeProperty?.encode(),
  };
}

/// Typed helper for the `rule.captcha_config.immunity_time_property` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupImmunityTimeProperty {
  const Wafv2RuleGroupImmunityTimeProperty({this.immunityTime});

  final TfArg<num>? immunityTime;

  @internal
  Map<String, Object?> encode() => {'immunity_time': ?immunityTime?.toTfJson()};
}

/// Typed helper for the `rule.rule_label` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleLabel {
  const Wafv2RuleGroupRuleLabel({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rule.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupStatement {
  const Wafv2RuleGroupStatement({
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

  final Wafv2RuleGroupAndStatement? andStatement;

  final Wafv2RuleGroupAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupIpSetReferenceStatement? ipSetReferenceStatement;

  final Wafv2RuleGroupLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupAndStatement? notStatement;

  final Wafv2RuleGroupAndStatement? orStatement;

  final Wafv2RuleGroupRateBasedStatement? rateBasedStatement;

  final Wafv2RuleGroupRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupSizeConstraintStatement? sizeConstraintStatement;

  final Wafv2RuleGroupSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupXssMatchStatement? xssMatchStatement;

  @internal
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
final class Wafv2RuleGroupAndStatement {
  const Wafv2RuleGroupAndStatement({required this.statement});

  final List<Wafv2RuleGroupAndStatementStatement> statement;

  @internal
  Map<String, Object?> encode() => {
    'statement': [for (final e in statement) e.encode()],
  };
}

/// Typed helper for the `rule.statement.and_statement.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupAndStatementStatement {
  const Wafv2RuleGroupAndStatementStatement({
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

  final Wafv2RuleGroupStatementAndStatement? andStatement;

  final Wafv2RuleGroupAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupIpSetReferenceStatement? ipSetReferenceStatement;

  final Wafv2RuleGroupLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupStatementAndStatement? notStatement;

  final Wafv2RuleGroupStatementAndStatement? orStatement;

  final Wafv2RuleGroupRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupSizeConstraintStatement? sizeConstraintStatement;

  final Wafv2RuleGroupSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupXssMatchStatement? xssMatchStatement;

  @internal
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
final class Wafv2RuleGroupStatementAndStatement {
  const Wafv2RuleGroupStatementAndStatement({required this.statement});

  final List<Wafv2RuleGroupStatementStatement> statement;

  @internal
  Map<String, Object?> encode() => {
    'statement': [for (final e in statement) e.encode()],
  };
}

/// Typed helper for the `rule.statement.and_statement.statement.and_statement.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupStatementStatement {
  const Wafv2RuleGroupStatementStatement({
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

  final Wafv2RuleGroupAndStatementAndStatement? andStatement;

  final Wafv2RuleGroupAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupIpSetReferenceStatement? ipSetReferenceStatement;

  final Wafv2RuleGroupLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupAndStatementAndStatement? notStatement;

  final Wafv2RuleGroupAndStatementAndStatement? orStatement;

  final Wafv2RuleGroupRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupSizeConstraintStatement? sizeConstraintStatement;

  final Wafv2RuleGroupSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupXssMatchStatement? xssMatchStatement;

  @internal
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
final class Wafv2RuleGroupAndStatementAndStatement {
  const Wafv2RuleGroupAndStatementAndStatement({required this.statement});

  final List<Wafv2RuleGroupRuleStatement> statement;

  @internal
  Map<String, Object?> encode() => {
    'statement': [for (final e in statement) e.encode()],
  };
}

/// Typed helper for the `rule.statement.and_statement.statement.and_statement.statement.and_statement.statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRuleStatement {
  const Wafv2RuleGroupRuleStatement({
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

  final Wafv2RuleGroupAsnMatchStatement? asnMatchStatement;

  final Wafv2RuleGroupByteMatchStatement? byteMatchStatement;

  final Wafv2RuleGroupGeoMatchStatement? geoMatchStatement;

  final Wafv2RuleGroupIpSetReferenceStatement? ipSetReferenceStatement;

  final Wafv2RuleGroupLabelMatchStatement? labelMatchStatement;

  final Wafv2RuleGroupRegexMatchStatement? regexMatchStatement;

  final Wafv2RuleGroupRegexPatternSetReferenceStatement?
  regexPatternSetReferenceStatement;

  final Wafv2RuleGroupSizeConstraintStatement? sizeConstraintStatement;

  final Wafv2RuleGroupSqliMatchStatement? sqliMatchStatement;

  final Wafv2RuleGroupXssMatchStatement? xssMatchStatement;

  @internal
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
final class Wafv2RuleGroupAsnMatchStatement {
  const Wafv2RuleGroupAsnMatchStatement({
    required this.asnList,
    this.forwardedIpConfig,
  });

  final TfArg<List<num>> asnList;

  final Wafv2RuleGroupForwardedIpConfig? forwardedIpConfig;

  @internal
  Map<String, Object?> encode() => {
    'asn_list': asnList.toTfJson(),
    'forwarded_ip_config': ?forwardedIpConfig?.encode(),
  };
}

/// Typed helper for the `rule.statement.asn_match_statement.forwarded_ip_config` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupForwardedIpConfig {
  const Wafv2RuleGroupForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
  });

  final TfArg<String> fallbackBehavior;

  final TfArg<String> headerName;

  @internal
  Map<String, Object?> encode() => {
    'fallback_behavior': fallbackBehavior.toTfJson(),
    'header_name': headerName.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupByteMatchStatement {
  const Wafv2RuleGroupByteMatchStatement({
    required this.positionalConstraint,
    required this.searchString,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> positionalConstraint;

  final TfArg<String> searchString;

  final Wafv2RuleGroupFieldToMatch? fieldToMatch;

  final List<Wafv2RuleGroupPreParseTextTransformation>?
  preParseTextTransformation;

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
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
final class Wafv2RuleGroupFieldToMatch {
  const Wafv2RuleGroupFieldToMatch({
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

  final Wafv2RuleGroupAllQueryArguments? allQueryArguments;

  final Wafv2RuleGroupBody? body;

  final Wafv2RuleGroupCookies? cookies;

  final List<Wafv2RuleGroupHeaderOrder>? headerOrder;

  final List<Wafv2RuleGroupHeaders>? headers;

  final Wafv2RuleGroupJa3Fingerprint? ja3Fingerprint;

  final Wafv2RuleGroupJa3Fingerprint? ja4Fingerprint;

  final Wafv2RuleGroupJsonBody? jsonBody;

  final Wafv2RuleGroupAllQueryArguments? method;

  final Wafv2RuleGroupAllQueryArguments? queryString;

  final Wafv2RuleGroupRuleLabel? singleHeader;

  final Wafv2RuleGroupRuleLabel? singleQueryArgument;

  final Wafv2RuleGroupUriFragment? uriFragment;

  final Wafv2RuleGroupAllQueryArguments? uriPath;

  @internal
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
final class Wafv2RuleGroupAllQueryArguments {
  const Wafv2RuleGroupAllQueryArguments();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.body` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupBody {
  const Wafv2RuleGroupBody({this.oversizeHandling});

  final TfArg<String>? oversizeHandling;

  @internal
  Map<String, Object?> encode() => {
    'oversize_handling': ?oversizeHandling?.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.cookies` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupCookies {
  const Wafv2RuleGroupCookies({
    required this.matchScope,
    required this.oversizeHandling,
    required this.matchPattern,
  });

  final TfArg<String> matchScope;

  final TfArg<String> oversizeHandling;

  final List<Wafv2RuleGroupCookiesMatchPattern> matchPattern;

  @internal
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
final class Wafv2RuleGroupCookiesMatchPattern {
  const Wafv2RuleGroupCookiesMatchPattern({
    this.excludedCookies,
    this.includedCookies,
    this.all,
  });

  final TfArg<List<String>>? excludedCookies;

  final TfArg<List<String>>? includedCookies;

  final Wafv2RuleGroupAllQueryArguments? all;

  @internal
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
final class Wafv2RuleGroupHeaderOrder {
  const Wafv2RuleGroupHeaderOrder({required this.oversizeHandling});

  final TfArg<String> oversizeHandling;

  @internal
  Map<String, Object?> encode() => {
    'oversize_handling': oversizeHandling.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.headers` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupHeaders {
  const Wafv2RuleGroupHeaders({
    required this.matchScope,
    required this.oversizeHandling,
    required this.matchPattern,
  });

  final TfArg<String> matchScope;

  final TfArg<String> oversizeHandling;

  final Wafv2RuleGroupHeadersMatchPattern matchPattern;

  @internal
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
final class Wafv2RuleGroupHeadersMatchPattern {
  const Wafv2RuleGroupHeadersMatchPattern({
    this.excludedHeaders,
    this.includedHeaders,
    this.all,
  });

  final TfArg<List<String>>? excludedHeaders;

  final TfArg<List<String>>? includedHeaders;

  final Wafv2RuleGroupAllQueryArguments? all;

  @internal
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
final class Wafv2RuleGroupJa3Fingerprint {
  const Wafv2RuleGroupJa3Fingerprint({required this.fallbackBehavior});

  final TfArg<String> fallbackBehavior;

  @internal
  Map<String, Object?> encode() => {
    'fallback_behavior': fallbackBehavior.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.json_body` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupJsonBody {
  const Wafv2RuleGroupJsonBody({
    this.invalidFallbackBehavior,
    required this.matchScope,
    this.oversizeHandling,
    required this.matchPattern,
  });

  final TfArg<String>? invalidFallbackBehavior;

  final TfArg<String> matchScope;

  final TfArg<String>? oversizeHandling;

  final Wafv2RuleGroupJsonBodyMatchPattern matchPattern;

  @internal
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
final class Wafv2RuleGroupJsonBodyMatchPattern {
  const Wafv2RuleGroupJsonBodyMatchPattern({this.includedPaths, this.all});

  final TfArg<List<String>>? includedPaths;

  final Wafv2RuleGroupAllQueryArguments? all;

  @internal
  Map<String, Object?> encode() => {
    'included_paths': ?includedPaths?.toTfJson(),
    'all': ?all?.encode(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.field_to_match.uri_fragment` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupUriFragment {
  const Wafv2RuleGroupUriFragment({this.fallbackBehavior});

  final TfArg<String>? fallbackBehavior;

  @internal
  Map<String, Object?> encode() => {
    'fallback_behavior': ?fallbackBehavior?.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.byte_match_statement.pre_parse_text_transformation` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupPreParseTextTransformation {
  const Wafv2RuleGroupPreParseTextTransformation({
    required this.priority,
    required this.type,
  });

  final TfArg<num> priority;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.geo_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupGeoMatchStatement {
  const Wafv2RuleGroupGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  final TfArg<List<String>> countryCodes;

  final Wafv2RuleGroupForwardedIpConfig? forwardedIpConfig;

  @internal
  Map<String, Object?> encode() => {
    'country_codes': countryCodes.toTfJson(),
    'forwarded_ip_config': ?forwardedIpConfig?.encode(),
  };
}

/// Typed helper for the `rule.statement.ip_set_reference_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupIpSetReferenceStatement {
  const Wafv2RuleGroupIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  final TfArg<String> arn;

  final Wafv2RuleGroupIpSetForwardedIpConfig? ipSetForwardedIpConfig;

  @internal
  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'ip_set_forwarded_ip_config': ?ipSetForwardedIpConfig?.encode(),
  };
}

/// Typed helper for the `rule.statement.ip_set_reference_statement.ip_set_forwarded_ip_config` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupIpSetForwardedIpConfig {
  const Wafv2RuleGroupIpSetForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
    required this.position,
  });

  final TfArg<String> fallbackBehavior;

  final TfArg<String> headerName;

  final TfArg<String> position;

  @internal
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
final class Wafv2RuleGroupLabelMatchStatement {
  const Wafv2RuleGroupLabelMatchStatement({
    required this.key,
    required this.scope,
  });

  final TfArg<String> key;

  final TfArg<String> scope;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// Typed helper for the `rule.statement.regex_match_statement` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupRegexMatchStatement {
  const Wafv2RuleGroupRegexMatchStatement({
    required this.regexString,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> regexString;

  final Wafv2RuleGroupFieldToMatch? fieldToMatch;

  final List<Wafv2RuleGroupPreParseTextTransformation>?
  preParseTextTransformation;

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
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
final class Wafv2RuleGroupRegexPatternSetReferenceStatement {
  const Wafv2RuleGroupRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> arn;

  final Wafv2RuleGroupFieldToMatch? fieldToMatch;

  final List<Wafv2RuleGroupPreParseTextTransformation>?
  preParseTextTransformation;

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
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
final class Wafv2RuleGroupSizeConstraintStatement {
  const Wafv2RuleGroupSizeConstraintStatement({
    required this.comparisonOperator,
    required this.size,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String> comparisonOperator;

  final TfArg<num> size;

  final Wafv2RuleGroupFieldToMatch? fieldToMatch;

  final List<Wafv2RuleGroupPreParseTextTransformation>?
  preParseTextTransformation;

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
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
final class Wafv2RuleGroupSqliMatchStatement {
  const Wafv2RuleGroupSqliMatchStatement({
    this.sensitivityLevel,
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final TfArg<String>? sensitivityLevel;

  final Wafv2RuleGroupFieldToMatch? fieldToMatch;

  final List<Wafv2RuleGroupPreParseTextTransformation>?
  preParseTextTransformation;

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
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
final class Wafv2RuleGroupXssMatchStatement {
  const Wafv2RuleGroupXssMatchStatement({
    this.fieldToMatch,
    this.preParseTextTransformation,
    required this.textTransformation,
  });

  final Wafv2RuleGroupFieldToMatch? fieldToMatch;

  final List<Wafv2RuleGroupPreParseTextTransformation>?
  preParseTextTransformation;

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
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
final class Wafv2RuleGroupRateBasedStatement {
  const Wafv2RuleGroupRateBasedStatement({
    this.aggregateKeyType,
    this.evaluationWindowSec,
    required this.limit,
    this.customKey,
    this.forwardedIpConfig,
    this.scopeDownStatement,
  });

  final Wafv2RuleGroupAggregateKeyType? aggregateKeyType;

  final TfArg<num>? evaluationWindowSec;

  final TfArg<num> limit;

  final List<Wafv2RuleGroupCustomKey>? customKey;

  final Wafv2RuleGroupForwardedIpConfig? forwardedIpConfig;

  final Wafv2RuleGroupAndStatementStatement? scopeDownStatement;

  @internal
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
extension type const Wafv2RuleGroupAggregateKeyType._(TfArg<String> _)
    implements TfArg<String> {
  Wafv2RuleGroupAggregateKeyType.variable(String name)
    : this._(TfArg.variable(name));
  Wafv2RuleGroupAggregateKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2RuleGroupAggregateKeyType.arg(TfArg<String> arg) : this._(arg);

  static const ip = Wafv2RuleGroupAggregateKeyType._(TfArgLiteral('IP'));
  static const forwardedIp = Wafv2RuleGroupAggregateKeyType._(
    TfArgLiteral('FORWARDED_IP'),
  );
  static const customKeys = Wafv2RuleGroupAggregateKeyType._(
    TfArgLiteral('CUSTOM_KEYS'),
  );
  static const constant = Wafv2RuleGroupAggregateKeyType._(
    TfArgLiteral('CONSTANT'),
  );

  static const List<Wafv2RuleGroupAggregateKeyType> values = [
    ip,
    forwardedIp,
    customKeys,
    constant,
  ];
}

/// Typed helper for the `rule.statement.rate_based_statement.custom_key` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupCustomKey {
  const Wafv2RuleGroupCustomKey({
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

  final Wafv2RuleGroupAllQueryArguments? asn;

  final Wafv2RuleGroupCookie? cookie;

  final Wafv2RuleGroupAllQueryArguments? forwardedIp;

  final Wafv2RuleGroupCookie? header;

  final Wafv2RuleGroupAllQueryArguments? httpMethod;

  final Wafv2RuleGroupAllQueryArguments? ip;

  final Wafv2RuleGroupJa3Fingerprint? ja3Fingerprint;

  final Wafv2RuleGroupJa3Fingerprint? ja4Fingerprint;

  final Wafv2RuleGroupLabelNamespace? labelNamespace;

  final Wafv2RuleGroupCookie? queryArgument;

  final Wafv2RuleGroupQueryString? queryString;

  final Wafv2RuleGroupQueryString? uriPath;

  @internal
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
final class Wafv2RuleGroupCookie {
  const Wafv2RuleGroupCookie({
    required this.name,
    required this.textTransformation,
  });

  final TfArg<String> name;

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'text_transformation': [for (final e in textTransformation) e.encode()],
  };
}

/// Typed helper for the `rule.statement.rate_based_statement.custom_key.label_namespace` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
@immutable
final class Wafv2RuleGroupLabelNamespace {
  const Wafv2RuleGroupLabelNamespace({required this.namespace});

  final TfArg<String> namespace;

  @internal
  Map<String, Object?> encode() => {'namespace': namespace.toTfJson()};
}

/// Typed helper for the `rule.statement.rate_based_statement.custom_key.query_string` block of
/// `aws_wafv2_rule_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2RuleGroupQueryString {
  const Wafv2RuleGroupQueryString({required this.textTransformation});

  final List<Wafv2RuleGroupPreParseTextTransformation> textTransformation;

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'cloudwatch_metrics_enabled': cloudwatchMetricsEnabled.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'sampled_requests_enabled': sampledRequestsEnabled.toTfJson(),
  };
}

/// Factory wrapper for `aws_wafv2_rule_group`.
final class AwsWafv2RuleGroup extends Resource {
  static const String tfType = 'aws_wafv2_rule_group';

  AwsWafv2RuleGroup(
    super.localName, {
    required TfArg<num> capacity,
    TfArg<String>? description,
    Wafv2RuleGroupName? name,
    TfArg<String>? region,
    Wafv2RuleGroupRules? rules,
    required Wafv2RuleGroupScope scope,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rules_json` attribute.
  TfRef<String> get rulesJson => TfRef.attribute<String>(this, 'rules_json');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
