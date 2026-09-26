// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl_rule`.
const Set<String> _awsWafv2WebAclRuleSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleAction {
  const Wafv2WebAclRuleAction({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  final List<Wafv2WebAclRuleActionAllow>? allow;

  final List<Wafv2WebAclRuleActionBlock>? block;

  final List<Wafv2WebAclRuleActionAllow>? captcha;

  final List<Wafv2WebAclRuleActionAllow>? challenge;

  final List<Wafv2WebAclRuleActionAllow>? count;

  Map<String, Object?> encode() => {
    if (allow != null) 'allow': [for (final e in allow!) e.encode()],
    if (block != null) 'block': [for (final e in block!) e.encode()],
    if (captcha != null) 'captcha': [for (final e in captcha!) e.encode()],
    if (challenge != null)
      'challenge': [for (final e in challenge!) e.encode()],
    if (count != null) 'count': [for (final e in count!) e.encode()],
  };
}

/// Typed helper for the `action.allow` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleActionAllow {
  const Wafv2WebAclRuleActionAllow({this.customRequestHandling});

  final List<Wafv2WebAclRuleActionAllowCustomRequestHandling>?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `action.allow.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleActionAllowCustomRequestHandling {
  const Wafv2WebAclRuleActionAllowCustomRequestHandling({this.insertHeader});

  final List<Wafv2WebAclRuleActionAllowCustomRequestHandlingInsertHeader>?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `action.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleActionAllowCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleActionAllowCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `action.block` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleActionBlock {
  const Wafv2WebAclRuleActionBlock({this.customResponse});

  final List<Wafv2WebAclRuleActionBlockCustomResponse>? customResponse;

  Map<String, Object?> encode() => {
    if (customResponse != null)
      'custom_response': [for (final e in customResponse!) e.encode()],
  };
}

/// Typed helper for the `action.block.custom_response` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleActionBlockCustomResponse {
  const Wafv2WebAclRuleActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<Wafv2WebAclRuleActionAllowCustomRequestHandlingInsertHeader>?
  responseHeader;

  Map<String, Object?> encode() => {
    if (customResponseBodyKey != null)
      'custom_response_body_key': customResponseBodyKey!.toTfJson(),
    'response_code': responseCode.toTfJson(),
    if (responseHeader != null)
      'response_header': [for (final e in responseHeader!) e.encode()],
  };
}

/// Typed helper for the `captcha_config` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleCaptchaConfig {
  const Wafv2WebAclRuleCaptchaConfig({this.immunityTimeProperty});

  final List<Wafv2WebAclRuleCaptchaConfigImmunityTimeProperty>?
  immunityTimeProperty;

  Map<String, Object?> encode() => {
    if (immunityTimeProperty != null)
      'immunity_time_property': [
        for (final e in immunityTimeProperty!) e.encode(),
      ],
  };
}

/// Typed helper for the `captcha_config.immunity_time_property` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleCaptchaConfigImmunityTimeProperty {
  const Wafv2WebAclRuleCaptchaConfigImmunityTimeProperty({this.immunityTime});

  final TfArg<num>? immunityTime;

  Map<String, Object?> encode() => {
    if (immunityTime != null) 'immunity_time': immunityTime!.toTfJson(),
  };
}

/// Typed helper for the `override_action` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleOverrideAction {
  const Wafv2WebAclRuleOverrideAction({this.count, this.none});

  final List<Wafv2WebAclRuleOverrideActionCount>? count;

  final List<Wafv2WebAclRuleOverrideActionCount>? none;

  Map<String, Object?> encode() => {
    if (count != null) 'count': [for (final e in count!) e.encode()],
    if (none != null) 'none': [for (final e in none!) e.encode()],
  };
}

/// Typed helper for the `override_action.count` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleOverrideActionCount {
  const Wafv2WebAclRuleOverrideActionCount();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rule_label` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleRuleLabel {
  const Wafv2WebAclRuleRuleLabel({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleStatement {
  const Wafv2WebAclRuleStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.managedRuleGroupStatement,
    this.notStatement,
    this.orStatement,
    this.rateBasedStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.ruleGroupReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final List<Wafv2WebAclRuleStatementAndStatement>? andStatement;

  final List<Wafv2WebAclRuleStatementAsnMatchStatement>? asnMatchStatement;

  final List<Wafv2WebAclRuleStatementByteMatchStatement>? byteMatchStatement;

  final List<Wafv2WebAclRuleStatementGeoMatchStatement>? geoMatchStatement;

  final List<Wafv2WebAclRuleStatementIpSetReferenceStatement>?
  ipSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementLabelMatchStatement>? labelMatchStatement;

  final List<Wafv2WebAclRuleStatementManagedRuleGroupStatement>?
  managedRuleGroupStatement;

  final List<Wafv2WebAclRuleStatementAndStatement>? notStatement;

  final List<Wafv2WebAclRuleStatementAndStatement>? orStatement;

  final List<Wafv2WebAclRuleStatementRateBasedStatement>? rateBasedStatement;

  final List<Wafv2WebAclRuleStatementRegexMatchStatement>? regexMatchStatement;

  final List<Wafv2WebAclRuleStatementRegexPatternSetReferenceStatement>?
  regexPatternSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementRuleGroupReferenceStatement>?
  ruleGroupReferenceStatement;

  final List<Wafv2WebAclRuleStatementSizeConstraintStatement>?
  sizeConstraintStatement;

  final List<Wafv2WebAclRuleStatementSqliMatchStatement>? sqliMatchStatement;

  final List<Wafv2WebAclRuleStatementXssMatchStatement>? xssMatchStatement;

  Map<String, Object?> encode() => {
    if (andStatement != null)
      'and_statement': [for (final e in andStatement!) e.encode()],
    if (asnMatchStatement != null)
      'asn_match_statement': [for (final e in asnMatchStatement!) e.encode()],
    if (byteMatchStatement != null)
      'byte_match_statement': [for (final e in byteMatchStatement!) e.encode()],
    if (geoMatchStatement != null)
      'geo_match_statement': [for (final e in geoMatchStatement!) e.encode()],
    if (ipSetReferenceStatement != null)
      'ip_set_reference_statement': [
        for (final e in ipSetReferenceStatement!) e.encode(),
      ],
    if (labelMatchStatement != null)
      'label_match_statement': [
        for (final e in labelMatchStatement!) e.encode(),
      ],
    if (managedRuleGroupStatement != null)
      'managed_rule_group_statement': [
        for (final e in managedRuleGroupStatement!) e.encode(),
      ],
    if (notStatement != null)
      'not_statement': [for (final e in notStatement!) e.encode()],
    if (orStatement != null)
      'or_statement': [for (final e in orStatement!) e.encode()],
    if (rateBasedStatement != null)
      'rate_based_statement': [for (final e in rateBasedStatement!) e.encode()],
    if (regexMatchStatement != null)
      'regex_match_statement': [
        for (final e in regexMatchStatement!) e.encode(),
      ],
    if (regexPatternSetReferenceStatement != null)
      'regex_pattern_set_reference_statement': [
        for (final e in regexPatternSetReferenceStatement!) e.encode(),
      ],
    if (ruleGroupReferenceStatement != null)
      'rule_group_reference_statement': [
        for (final e in ruleGroupReferenceStatement!) e.encode(),
      ],
    if (sizeConstraintStatement != null)
      'size_constraint_statement': [
        for (final e in sizeConstraintStatement!) e.encode(),
      ],
    if (sqliMatchStatement != null)
      'sqli_match_statement': [for (final e in sqliMatchStatement!) e.encode()],
    if (xssMatchStatement != null)
      'xss_match_statement': [for (final e in xssMatchStatement!) e.encode()],
  };
}

/// Typed helper for the `statement.and_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAndStatement {
  const Wafv2WebAclRuleStatementAndStatement({this.statement});

  final List<Wafv2WebAclRuleStatementAndStatementStatement>? statement;

  Map<String, Object?> encode() => {
    if (statement != null)
      'statement': [for (final e in statement!) e.encode()],
  };
}

/// Typed helper for the `statement.and_statement.statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAndStatementStatement {
  const Wafv2WebAclRuleStatementAndStatementStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.managedRuleGroupStatement,
    this.notStatement,
    this.orStatement,
    this.rateBasedStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.ruleGroupReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final List<Wafv2WebAclRuleStatementAndStatementStatementAndStatement>?
  andStatement;

  final List<Wafv2WebAclRuleStatementAsnMatchStatement>? asnMatchStatement;

  final List<Wafv2WebAclRuleStatementByteMatchStatement>? byteMatchStatement;

  final List<Wafv2WebAclRuleStatementGeoMatchStatement>? geoMatchStatement;

  final List<Wafv2WebAclRuleStatementIpSetReferenceStatement>?
  ipSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementLabelMatchStatement>? labelMatchStatement;

  final List<Wafv2WebAclRuleStatementManagedRuleGroupStatement>?
  managedRuleGroupStatement;

  final List<Wafv2WebAclRuleStatementAndStatementStatementAndStatement>?
  notStatement;

  final List<Wafv2WebAclRuleStatementAndStatementStatementAndStatement>?
  orStatement;

  final List<Wafv2WebAclRuleStatementRateBasedStatement>? rateBasedStatement;

  final List<Wafv2WebAclRuleStatementRegexMatchStatement>? regexMatchStatement;

  final List<Wafv2WebAclRuleStatementRegexPatternSetReferenceStatement>?
  regexPatternSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementRuleGroupReferenceStatement>?
  ruleGroupReferenceStatement;

  final List<Wafv2WebAclRuleStatementSizeConstraintStatement>?
  sizeConstraintStatement;

  final List<Wafv2WebAclRuleStatementSqliMatchStatement>? sqliMatchStatement;

  final List<Wafv2WebAclRuleStatementXssMatchStatement>? xssMatchStatement;

  Map<String, Object?> encode() => {
    if (andStatement != null)
      'and_statement': [for (final e in andStatement!) e.encode()],
    if (asnMatchStatement != null)
      'asn_match_statement': [for (final e in asnMatchStatement!) e.encode()],
    if (byteMatchStatement != null)
      'byte_match_statement': [for (final e in byteMatchStatement!) e.encode()],
    if (geoMatchStatement != null)
      'geo_match_statement': [for (final e in geoMatchStatement!) e.encode()],
    if (ipSetReferenceStatement != null)
      'ip_set_reference_statement': [
        for (final e in ipSetReferenceStatement!) e.encode(),
      ],
    if (labelMatchStatement != null)
      'label_match_statement': [
        for (final e in labelMatchStatement!) e.encode(),
      ],
    if (managedRuleGroupStatement != null)
      'managed_rule_group_statement': [
        for (final e in managedRuleGroupStatement!) e.encode(),
      ],
    if (notStatement != null)
      'not_statement': [for (final e in notStatement!) e.encode()],
    if (orStatement != null)
      'or_statement': [for (final e in orStatement!) e.encode()],
    if (rateBasedStatement != null)
      'rate_based_statement': [for (final e in rateBasedStatement!) e.encode()],
    if (regexMatchStatement != null)
      'regex_match_statement': [
        for (final e in regexMatchStatement!) e.encode(),
      ],
    if (regexPatternSetReferenceStatement != null)
      'regex_pattern_set_reference_statement': [
        for (final e in regexPatternSetReferenceStatement!) e.encode(),
      ],
    if (ruleGroupReferenceStatement != null)
      'rule_group_reference_statement': [
        for (final e in ruleGroupReferenceStatement!) e.encode(),
      ],
    if (sizeConstraintStatement != null)
      'size_constraint_statement': [
        for (final e in sizeConstraintStatement!) e.encode(),
      ],
    if (sqliMatchStatement != null)
      'sqli_match_statement': [for (final e in sqliMatchStatement!) e.encode()],
    if (xssMatchStatement != null)
      'xss_match_statement': [for (final e in xssMatchStatement!) e.encode()],
  };
}

/// Typed helper for the `statement.and_statement.statement.and_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAndStatementStatementAndStatement {
  const Wafv2WebAclRuleStatementAndStatementStatementAndStatement({
    this.statement,
  });

  final List<
    Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatement
  >?
  statement;

  Map<String, Object?> encode() => {
    if (statement != null)
      'statement': [for (final e in statement!) e.encode()],
  };
}

/// Typed helper for the `statement.and_statement.statement.and_statement.statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatement {
  const Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.managedRuleGroupStatement,
    this.notStatement,
    this.orStatement,
    this.rateBasedStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.ruleGroupReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final List<
    Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatement
  >?
  andStatement;

  final List<Wafv2WebAclRuleStatementAsnMatchStatement>? asnMatchStatement;

  final List<Wafv2WebAclRuleStatementByteMatchStatement>? byteMatchStatement;

  final List<Wafv2WebAclRuleStatementGeoMatchStatement>? geoMatchStatement;

  final List<Wafv2WebAclRuleStatementIpSetReferenceStatement>?
  ipSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementLabelMatchStatement>? labelMatchStatement;

  final List<Wafv2WebAclRuleStatementManagedRuleGroupStatement>?
  managedRuleGroupStatement;

  final List<
    Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatement
  >?
  notStatement;

  final List<
    Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatement
  >?
  orStatement;

  final List<Wafv2WebAclRuleStatementRateBasedStatement>? rateBasedStatement;

  final List<Wafv2WebAclRuleStatementRegexMatchStatement>? regexMatchStatement;

  final List<Wafv2WebAclRuleStatementRegexPatternSetReferenceStatement>?
  regexPatternSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementRuleGroupReferenceStatement>?
  ruleGroupReferenceStatement;

  final List<Wafv2WebAclRuleStatementSizeConstraintStatement>?
  sizeConstraintStatement;

  final List<Wafv2WebAclRuleStatementSqliMatchStatement>? sqliMatchStatement;

  final List<Wafv2WebAclRuleStatementXssMatchStatement>? xssMatchStatement;

  Map<String, Object?> encode() => {
    if (andStatement != null)
      'and_statement': [for (final e in andStatement!) e.encode()],
    if (asnMatchStatement != null)
      'asn_match_statement': [for (final e in asnMatchStatement!) e.encode()],
    if (byteMatchStatement != null)
      'byte_match_statement': [for (final e in byteMatchStatement!) e.encode()],
    if (geoMatchStatement != null)
      'geo_match_statement': [for (final e in geoMatchStatement!) e.encode()],
    if (ipSetReferenceStatement != null)
      'ip_set_reference_statement': [
        for (final e in ipSetReferenceStatement!) e.encode(),
      ],
    if (labelMatchStatement != null)
      'label_match_statement': [
        for (final e in labelMatchStatement!) e.encode(),
      ],
    if (managedRuleGroupStatement != null)
      'managed_rule_group_statement': [
        for (final e in managedRuleGroupStatement!) e.encode(),
      ],
    if (notStatement != null)
      'not_statement': [for (final e in notStatement!) e.encode()],
    if (orStatement != null)
      'or_statement': [for (final e in orStatement!) e.encode()],
    if (rateBasedStatement != null)
      'rate_based_statement': [for (final e in rateBasedStatement!) e.encode()],
    if (regexMatchStatement != null)
      'regex_match_statement': [
        for (final e in regexMatchStatement!) e.encode(),
      ],
    if (regexPatternSetReferenceStatement != null)
      'regex_pattern_set_reference_statement': [
        for (final e in regexPatternSetReferenceStatement!) e.encode(),
      ],
    if (ruleGroupReferenceStatement != null)
      'rule_group_reference_statement': [
        for (final e in ruleGroupReferenceStatement!) e.encode(),
      ],
    if (sizeConstraintStatement != null)
      'size_constraint_statement': [
        for (final e in sizeConstraintStatement!) e.encode(),
      ],
    if (sqliMatchStatement != null)
      'sqli_match_statement': [for (final e in sqliMatchStatement!) e.encode()],
    if (xssMatchStatement != null)
      'xss_match_statement': [for (final e in xssMatchStatement!) e.encode()],
  };
}

/// Typed helper for the `statement.and_statement.statement.and_statement.statement.and_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatement {
  const Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatement({
    this.statement,
  });

  final List<
    Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatementStatement
  >?
  statement;

  Map<String, Object?> encode() => {
    if (statement != null)
      'statement': [for (final e in statement!) e.encode()],
  };
}

/// Typed helper for the `statement.and_statement.statement.and_statement.statement.and_statement.statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatementStatement {
  const Wafv2WebAclRuleStatementAndStatementStatementAndStatementStatementAndStatementStatement({
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.managedRuleGroupStatement,
    this.rateBasedStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.ruleGroupReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  final List<Wafv2WebAclRuleStatementAsnMatchStatement>? asnMatchStatement;

  final List<Wafv2WebAclRuleStatementByteMatchStatement>? byteMatchStatement;

  final List<Wafv2WebAclRuleStatementGeoMatchStatement>? geoMatchStatement;

  final List<Wafv2WebAclRuleStatementIpSetReferenceStatement>?
  ipSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementLabelMatchStatement>? labelMatchStatement;

  final List<Wafv2WebAclRuleStatementManagedRuleGroupStatement>?
  managedRuleGroupStatement;

  final List<Wafv2WebAclRuleStatementRateBasedStatement>? rateBasedStatement;

  final List<Wafv2WebAclRuleStatementRegexMatchStatement>? regexMatchStatement;

  final List<Wafv2WebAclRuleStatementRegexPatternSetReferenceStatement>?
  regexPatternSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementRuleGroupReferenceStatement>?
  ruleGroupReferenceStatement;

  final List<Wafv2WebAclRuleStatementSizeConstraintStatement>?
  sizeConstraintStatement;

  final List<Wafv2WebAclRuleStatementSqliMatchStatement>? sqliMatchStatement;

  final List<Wafv2WebAclRuleStatementXssMatchStatement>? xssMatchStatement;

  Map<String, Object?> encode() => {
    if (asnMatchStatement != null)
      'asn_match_statement': [for (final e in asnMatchStatement!) e.encode()],
    if (byteMatchStatement != null)
      'byte_match_statement': [for (final e in byteMatchStatement!) e.encode()],
    if (geoMatchStatement != null)
      'geo_match_statement': [for (final e in geoMatchStatement!) e.encode()],
    if (ipSetReferenceStatement != null)
      'ip_set_reference_statement': [
        for (final e in ipSetReferenceStatement!) e.encode(),
      ],
    if (labelMatchStatement != null)
      'label_match_statement': [
        for (final e in labelMatchStatement!) e.encode(),
      ],
    if (managedRuleGroupStatement != null)
      'managed_rule_group_statement': [
        for (final e in managedRuleGroupStatement!) e.encode(),
      ],
    if (rateBasedStatement != null)
      'rate_based_statement': [for (final e in rateBasedStatement!) e.encode()],
    if (regexMatchStatement != null)
      'regex_match_statement': [
        for (final e in regexMatchStatement!) e.encode(),
      ],
    if (regexPatternSetReferenceStatement != null)
      'regex_pattern_set_reference_statement': [
        for (final e in regexPatternSetReferenceStatement!) e.encode(),
      ],
    if (ruleGroupReferenceStatement != null)
      'rule_group_reference_statement': [
        for (final e in ruleGroupReferenceStatement!) e.encode(),
      ],
    if (sizeConstraintStatement != null)
      'size_constraint_statement': [
        for (final e in sizeConstraintStatement!) e.encode(),
      ],
    if (sqliMatchStatement != null)
      'sqli_match_statement': [for (final e in sqliMatchStatement!) e.encode()],
    if (xssMatchStatement != null)
      'xss_match_statement': [for (final e in xssMatchStatement!) e.encode()],
  };
}

/// Typed helper for the `statement.asn_match_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAsnMatchStatement {
  const Wafv2WebAclRuleStatementAsnMatchStatement({
    required this.asnList,
    this.forwardedIpConfig,
  });

  final TfArg<List<Object?>> asnList;

  final List<Wafv2WebAclRuleStatementAsnMatchStatementForwardedIpConfig>?
  forwardedIpConfig;

  Map<String, Object?> encode() => {
    'asn_list': asnList.toTfJson(),
    if (forwardedIpConfig != null)
      'forwarded_ip_config': [for (final e in forwardedIpConfig!) e.encode()],
  };
}

/// Typed helper for the `statement.asn_match_statement.forwarded_ip_config` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementAsnMatchStatementForwardedIpConfig {
  const Wafv2WebAclRuleStatementAsnMatchStatementForwardedIpConfig({
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

/// Typed helper for the `statement.byte_match_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatement {
  const Wafv2WebAclRuleStatementByteMatchStatement({
    required this.positionalConstraint,
    required this.searchString,
    this.fieldToMatch,
    this.textTransformation,
  });

  final TfArg<String> positionalConstraint;

  final TfArg<String> searchString;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch>?
  fieldToMatch;

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    'positional_constraint': positionalConstraint.toTfJson(),
    'search_string': searchString.toTfJson(),
    if (fieldToMatch != null)
      'field_to_match': [for (final e in fieldToMatch!) e.encode()],
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch({
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

  final List<Wafv2WebAclRuleOverrideActionCount>? allQueryArguments;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchBody>? body;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchCookies>?
  cookies;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeaderOrder>?
  headerOrder;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeaders>?
  headers;

  final List<
    Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint
  >?
  ja3Fingerprint;

  final List<
    Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint
  >?
  ja4Fingerprint;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJsonBody>?
  jsonBody;

  final List<Wafv2WebAclRuleOverrideActionCount>? method;

  final List<Wafv2WebAclRuleOverrideActionCount>? queryString;

  final List<Wafv2WebAclRuleRuleLabel>? singleHeader;

  final List<Wafv2WebAclRuleRuleLabel>? singleQueryArgument;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchUriFragment>?
  uriFragment;

  final List<Wafv2WebAclRuleOverrideActionCount>? uriPath;

  Map<String, Object?> encode() => {
    if (allQueryArguments != null)
      'all_query_arguments': [for (final e in allQueryArguments!) e.encode()],
    if (body != null) 'body': [for (final e in body!) e.encode()],
    if (cookies != null) 'cookies': [for (final e in cookies!) e.encode()],
    if (headerOrder != null)
      'header_order': [for (final e in headerOrder!) e.encode()],
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (ja3Fingerprint != null)
      'ja3_fingerprint': [for (final e in ja3Fingerprint!) e.encode()],
    if (ja4Fingerprint != null)
      'ja4_fingerprint': [for (final e in ja4Fingerprint!) e.encode()],
    if (jsonBody != null) 'json_body': [for (final e in jsonBody!) e.encode()],
    if (method != null) 'method': [for (final e in method!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
    if (singleHeader != null)
      'single_header': [for (final e in singleHeader!) e.encode()],
    if (singleQueryArgument != null)
      'single_query_argument': [
        for (final e in singleQueryArgument!) e.encode(),
      ],
    if (uriFragment != null)
      'uri_fragment': [for (final e in uriFragment!) e.encode()],
    if (uriPath != null) 'uri_path': [for (final e in uriPath!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.body` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchBody {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  final TfArg<String>? oversizeHandling;

  Map<String, Object?> encode() => {
    if (oversizeHandling != null)
      'oversize_handling': oversizeHandling!.toTfJson(),
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.cookies` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchCookies {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchCookies({
    required this.matchScope,
    required this.oversizeHandling,
    this.matchPattern,
  });

  final TfArg<String> matchScope;

  final TfArg<String> oversizeHandling;

  final List<
    Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchCookiesMatchPattern
  >?
  matchPattern;

  Map<String, Object?> encode() => {
    'match_scope': matchScope.toTfJson(),
    'oversize_handling': oversizeHandling.toTfJson(),
    if (matchPattern != null)
      'match_pattern': [for (final e in matchPattern!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.cookies.match_pattern` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchCookiesMatchPattern {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchCookiesMatchPattern({
    this.excludedCookies,
    this.includedCookies,
    this.all,
  });

  final TfArg<List<Object?>>? excludedCookies;

  final TfArg<List<Object?>>? includedCookies;

  final List<Wafv2WebAclRuleOverrideActionCount>? all;

  Map<String, Object?> encode() => {
    if (excludedCookies != null)
      'excluded_cookies': excludedCookies!.toTfJson(),
    if (includedCookies != null)
      'included_cookies': includedCookies!.toTfJson(),
    if (all != null) 'all': [for (final e in all!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.header_order` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeaderOrder {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeaderOrder({
    required this.oversizeHandling,
  });

  final TfArg<String> oversizeHandling;

  Map<String, Object?> encode() => {
    'oversize_handling': oversizeHandling.toTfJson(),
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.headers` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeaders {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeaders({
    required this.matchScope,
    required this.oversizeHandling,
    this.matchPattern,
  });

  final TfArg<String> matchScope;

  final TfArg<String> oversizeHandling;

  final List<
    Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeadersMatchPattern
  >?
  matchPattern;

  Map<String, Object?> encode() => {
    'match_scope': matchScope.toTfJson(),
    'oversize_handling': oversizeHandling.toTfJson(),
    if (matchPattern != null)
      'match_pattern': [for (final e in matchPattern!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.headers.match_pattern` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeadersMatchPattern {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchHeadersMatchPattern({
    this.excludedHeaders,
    this.includedHeaders,
    this.all,
  });

  final TfArg<List<Object?>>? excludedHeaders;

  final TfArg<List<Object?>>? includedHeaders;

  final List<Wafv2WebAclRuleOverrideActionCount>? all;

  Map<String, Object?> encode() => {
    if (excludedHeaders != null)
      'excluded_headers': excludedHeaders!.toTfJson(),
    if (includedHeaders != null)
      'included_headers': includedHeaders!.toTfJson(),
    if (all != null) 'all': [for (final e in all!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.ja3_fingerprint` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  final TfArg<String> fallbackBehavior;

  Map<String, Object?> encode() => {
    'fallback_behavior': fallbackBehavior.toTfJson(),
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.json_body` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJsonBody {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJsonBody({
    this.invalidFallbackBehavior,
    required this.matchScope,
    this.oversizeHandling,
    this.matchPattern,
  });

  final TfArg<String>? invalidFallbackBehavior;

  final TfArg<String> matchScope;

  final TfArg<String>? oversizeHandling;

  final List<
    Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern
  >?
  matchPattern;

  Map<String, Object?> encode() => {
    if (invalidFallbackBehavior != null)
      'invalid_fallback_behavior': invalidFallbackBehavior!.toTfJson(),
    'match_scope': matchScope.toTfJson(),
    if (oversizeHandling != null)
      'oversize_handling': oversizeHandling!.toTfJson(),
    if (matchPattern != null)
      'match_pattern': [for (final e in matchPattern!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.json_body.match_pattern` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern({
    this.includedPaths,
    this.all,
  });

  final TfArg<List<Object?>>? includedPaths;

  final List<Wafv2WebAclRuleOverrideActionCount>? all;

  Map<String, Object?> encode() => {
    if (includedPaths != null) 'included_paths': includedPaths!.toTfJson(),
    if (all != null) 'all': [for (final e in all!) e.encode()],
  };
}

/// Typed helper for the `statement.byte_match_statement.field_to_match.uri_fragment` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchUriFragment {
  const Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  final TfArg<String>? fallbackBehavior;

  Map<String, Object?> encode() => {
    if (fallbackBehavior != null)
      'fallback_behavior': fallbackBehavior!.toTfJson(),
  };
}

/// Typed helper for the `statement.byte_match_statement.text_transformation` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementByteMatchStatementTextTransformation {
  const Wafv2WebAclRuleStatementByteMatchStatementTextTransformation({
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

/// Typed helper for the `statement.geo_match_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementGeoMatchStatement {
  const Wafv2WebAclRuleStatementGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  final TfArg<List<Object?>> countryCodes;

  final List<Wafv2WebAclRuleStatementAsnMatchStatementForwardedIpConfig>?
  forwardedIpConfig;

  Map<String, Object?> encode() => {
    'country_codes': countryCodes.toTfJson(),
    if (forwardedIpConfig != null)
      'forwarded_ip_config': [for (final e in forwardedIpConfig!) e.encode()],
  };
}

/// Typed helper for the `statement.ip_set_reference_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementIpSetReferenceStatement {
  const Wafv2WebAclRuleStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  final TfArg<String> arn;

  final List<
    Wafv2WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig
  >?
  ipSetForwardedIpConfig;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (ipSetForwardedIpConfig != null)
      'ip_set_forwarded_ip_config': [
        for (final e in ipSetForwardedIpConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `statement.ip_set_reference_statement.ip_set_forwarded_ip_config` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig {
  const Wafv2WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig({
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

/// Typed helper for the `statement.label_match_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementLabelMatchStatement {
  const Wafv2WebAclRuleStatementLabelMatchStatement({
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

/// Typed helper for the `statement.managed_rule_group_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatement {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatement({
    required this.name,
    required this.vendorName,
    this.version,
    this.managedRuleGroupConfigs,
    this.ruleActionOverride,
    this.scopeDownStatement,
  });

  final TfArg<String> name;

  final TfArg<String> vendorName;

  final TfArg<String>? version;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigs
  >?
  managedRuleGroupConfigs;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride
  >?
  ruleActionOverride;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement
  >?
  scopeDownStatement;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'vendor_name': vendorName.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (managedRuleGroupConfigs != null)
      'managed_rule_group_configs': [
        for (final e in managedRuleGroupConfigs!) e.encode(),
      ],
    if (ruleActionOverride != null)
      'rule_action_override': [for (final e in ruleActionOverride!) e.encode()],
    if (scopeDownStatement != null)
      'scope_down_statement': [for (final e in scopeDownStatement!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigs {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigs({
    this.loginPath,
    this.payloadType,
    this.awsManagedRulesAcfpRuleSet,
    this.awsManagedRulesAntiDdosRuleSet,
    this.awsManagedRulesAtpRuleSet,
    this.awsManagedRulesBotControlRuleSet,
    this.passwordField,
    this.usernameField,
  });

  final TfArg<String>? loginPath;

  final TfArg<String>? payloadType;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet
  >?
  awsManagedRulesAcfpRuleSet;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet
  >?
  awsManagedRulesAntiDdosRuleSet;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet
  >?
  awsManagedRulesAtpRuleSet;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet
  >?
  awsManagedRulesBotControlRuleSet;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField
  >?
  passwordField;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField
  >?
  usernameField;

  Map<String, Object?> encode() => {
    if (loginPath != null) 'login_path': loginPath!.toTfJson(),
    if (payloadType != null) 'payload_type': payloadType!.toTfJson(),
    if (awsManagedRulesAcfpRuleSet != null)
      'aws_managed_rules_acfp_rule_set': [
        for (final e in awsManagedRulesAcfpRuleSet!) e.encode(),
      ],
    if (awsManagedRulesAntiDdosRuleSet != null)
      'aws_managed_rules_anti_ddos_rule_set': [
        for (final e in awsManagedRulesAntiDdosRuleSet!) e.encode(),
      ],
    if (awsManagedRulesAtpRuleSet != null)
      'aws_managed_rules_atp_rule_set': [
        for (final e in awsManagedRulesAtpRuleSet!) e.encode(),
      ],
    if (awsManagedRulesBotControlRuleSet != null)
      'aws_managed_rules_bot_control_rule_set': [
        for (final e in awsManagedRulesBotControlRuleSet!) e.encode(),
      ],
    if (passwordField != null)
      'password_field': [for (final e in passwordField!) e.encode()],
    if (usernameField != null)
      'username_field': [for (final e in usernameField!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet({
    required this.creationPath,
    this.enableRegexInPath,
    required this.registrationPagePath,
    this.requestInspection,
    this.responseInspection,
  });

  final TfArg<String> creationPath;

  final TfArg<bool>? enableRegexInPath;

  final TfArg<String> registrationPagePath;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection
  >?
  requestInspection;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection
  >?
  responseInspection;

  Map<String, Object?> encode() => {
    'creation_path': creationPath.toTfJson(),
    if (enableRegexInPath != null)
      'enable_regex_in_path': enableRegexInPath!.toTfJson(),
    'registration_page_path': registrationPagePath.toTfJson(),
    if (requestInspection != null)
      'request_inspection': [for (final e in requestInspection!) e.encode()],
    if (responseInspection != null)
      'response_inspection': [for (final e in responseInspection!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection({
    required this.payloadType,
    this.addressFields,
    this.emailField,
    this.passwordField,
    this.phoneNumberFields,
    this.usernameField,
  });

  final TfArg<String> payloadType;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields
  >?
  addressFields;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField
  >?
  emailField;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField
  >?
  passwordField;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields
  >?
  phoneNumberFields;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField
  >?
  usernameField;

  Map<String, Object?> encode() => {
    'payload_type': payloadType.toTfJson(),
    if (addressFields != null)
      'address_fields': [for (final e in addressFields!) e.encode()],
    if (emailField != null)
      'email_field': [for (final e in emailField!) e.encode()],
    if (passwordField != null)
      'password_field': [for (final e in passwordField!) e.encode()],
    if (phoneNumberFields != null)
      'phone_number_fields': [for (final e in phoneNumberFields!) e.encode()],
    if (usernameField != null)
      'username_field': [for (final e in usernameField!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.address_fields` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields({
    required this.identifiers,
  });

  final TfArg<List<Object?>> identifiers;

  Map<String, Object?> encode() => {'identifiers': identifiers.toTfJson()};
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.password_field` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains
  >?
  bodyContains;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader
  >?
  header;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionJson
  >?
  json;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode
  >?
  statusCode;

  Map<String, Object?> encode() => {
    if (bodyContains != null)
      'body_contains': [for (final e in bodyContains!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (json != null) 'json': [for (final e in json!) e.encode()],
    if (statusCode != null)
      'status_code': [for (final e in statusCode!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.body_contains` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains({
    required this.failureStrings,
    required this.successStrings,
  });

  final TfArg<List<Object?>> failureStrings;

  final TfArg<List<Object?>> successStrings;

  Map<String, Object?> encode() => {
    'failure_strings': failureStrings.toTfJson(),
    'success_strings': successStrings.toTfJson(),
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.header` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader({
    required this.failureValues,
    required this.name,
    required this.successValues,
  });

  final TfArg<List<Object?>> failureValues;

  final TfArg<String> name;

  final TfArg<List<Object?>> successValues;

  Map<String, Object?> encode() => {
    'failure_values': failureValues.toTfJson(),
    'name': name.toTfJson(),
    'success_values': successValues.toTfJson(),
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.json` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionJson {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionJson({
    required this.failureValues,
    required this.identifier,
    required this.successValues,
  });

  final TfArg<List<Object?>> failureValues;

  final TfArg<String> identifier;

  final TfArg<List<Object?>> successValues;

  Map<String, Object?> encode() => {
    'failure_values': failureValues.toTfJson(),
    'identifier': identifier.toTfJson(),
    'success_values': successValues.toTfJson(),
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.status_code` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode({
    required this.failureCodes,
    required this.successCodes,
  });

  final TfArg<List<Object?>> failureCodes;

  final TfArg<List<Object?>> successCodes;

  Map<String, Object?> encode() => {
    'failure_codes': failureCodes.toTfJson(),
    'success_codes': successCodes.toTfJson(),
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet({
    this.sensitivityToBlock,
    this.clientSideActionConfig,
  });

  final TfArg<String>? sensitivityToBlock;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig
  >?
  clientSideActionConfig;

  Map<String, Object?> encode() => {
    if (sensitivityToBlock != null)
      'sensitivity_to_block': sensitivityToBlock!.toTfJson(),
    if (clientSideActionConfig != null)
      'client_side_action_config': [
        for (final e in clientSideActionConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig({
    this.challenge,
  });

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge
  >?
  challenge;

  Map<String, Object?> encode() => {
    if (challenge != null)
      'challenge': [for (final e in challenge!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config.challenge` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge({
    this.sensitivity,
    required this.usageOfAction,
    this.exemptUriRegularExpression,
  });

  final TfArg<String>? sensitivity;

  final TfArg<String> usageOfAction;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression
  >?
  exemptUriRegularExpression;

  Map<String, Object?> encode() => {
    if (sensitivity != null) 'sensitivity': sensitivity!.toTfJson(),
    'usage_of_action': usageOfAction.toTfJson(),
    if (exemptUriRegularExpression != null)
      'exempt_uri_regular_expression': [
        for (final e in exemptUriRegularExpression!) e.encode(),
      ],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config.challenge.exempt_uri_regular_expression` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression({
    this.regexString,
  });

  final TfArg<String>? regexString;

  Map<String, Object?> encode() => {
    if (regexString != null) 'regex_string': regexString!.toTfJson(),
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_atp_rule_set` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet({
    this.enableRegexInPath,
    required this.loginPath,
    this.requestInspection,
    this.responseInspection,
  });

  final TfArg<bool>? enableRegexInPath;

  final TfArg<String> loginPath;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection
  >?
  requestInspection;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection
  >?
  responseInspection;

  Map<String, Object?> encode() => {
    if (enableRegexInPath != null)
      'enable_regex_in_path': enableRegexInPath!.toTfJson(),
    'login_path': loginPath.toTfJson(),
    if (requestInspection != null)
      'request_inspection': [for (final e in requestInspection!) e.encode()],
    if (responseInspection != null)
      'response_inspection': [for (final e in responseInspection!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_atp_rule_set.request_inspection` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection({
    required this.payloadType,
    this.passwordField,
    this.usernameField,
  });

  final TfArg<String> payloadType;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField
  >?
  passwordField;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsPasswordField
  >?
  usernameField;

  Map<String, Object?> encode() => {
    'payload_type': payloadType.toTfJson(),
    if (passwordField != null)
      'password_field': [for (final e in passwordField!) e.encode()],
    if (usernameField != null)
      'username_field': [for (final e in usernameField!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.managed_rule_group_configs.aws_managed_rules_bot_control_rule_set` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet({
    this.enableMachineLearning,
    required this.inspectionLevel,
  });

  final TfArg<bool>? enableMachineLearning;

  final TfArg<String> inspectionLevel;

  Map<String, Object?> encode() => {
    if (enableMachineLearning != null)
      'enable_machine_learning': enableMachineLearning!.toTfJson(),
    'inspection_level': inspectionLevel.toTfJson(),
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.rule_action_override` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride({
    required this.name,
    this.actionToUse,
  });

  final TfArg<String> name;

  final List<Wafv2WebAclRuleAction>? actionToUse;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (actionToUse != null)
      'action_to_use': [for (final e in actionToUse!) e.encode()],
  };
}

/// Typed helper for the `statement.managed_rule_group_statement.scope_down_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement {
  const Wafv2WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement({
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

  final List<Wafv2WebAclRuleStatementAsnMatchStatement>? asnMatchStatement;

  final List<Wafv2WebAclRuleStatementByteMatchStatement>? byteMatchStatement;

  final List<Wafv2WebAclRuleStatementGeoMatchStatement>? geoMatchStatement;

  final List<Wafv2WebAclRuleStatementIpSetReferenceStatement>?
  ipSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementLabelMatchStatement>? labelMatchStatement;

  final List<Wafv2WebAclRuleStatementRegexMatchStatement>? regexMatchStatement;

  final List<Wafv2WebAclRuleStatementRegexPatternSetReferenceStatement>?
  regexPatternSetReferenceStatement;

  final List<Wafv2WebAclRuleStatementSizeConstraintStatement>?
  sizeConstraintStatement;

  final List<Wafv2WebAclRuleStatementSqliMatchStatement>? sqliMatchStatement;

  final List<Wafv2WebAclRuleStatementXssMatchStatement>? xssMatchStatement;

  Map<String, Object?> encode() => {
    if (asnMatchStatement != null)
      'asn_match_statement': [for (final e in asnMatchStatement!) e.encode()],
    if (byteMatchStatement != null)
      'byte_match_statement': [for (final e in byteMatchStatement!) e.encode()],
    if (geoMatchStatement != null)
      'geo_match_statement': [for (final e in geoMatchStatement!) e.encode()],
    if (ipSetReferenceStatement != null)
      'ip_set_reference_statement': [
        for (final e in ipSetReferenceStatement!) e.encode(),
      ],
    if (labelMatchStatement != null)
      'label_match_statement': [
        for (final e in labelMatchStatement!) e.encode(),
      ],
    if (regexMatchStatement != null)
      'regex_match_statement': [
        for (final e in regexMatchStatement!) e.encode(),
      ],
    if (regexPatternSetReferenceStatement != null)
      'regex_pattern_set_reference_statement': [
        for (final e in regexPatternSetReferenceStatement!) e.encode(),
      ],
    if (sizeConstraintStatement != null)
      'size_constraint_statement': [
        for (final e in sizeConstraintStatement!) e.encode(),
      ],
    if (sqliMatchStatement != null)
      'sqli_match_statement': [for (final e in sqliMatchStatement!) e.encode()],
    if (xssMatchStatement != null)
      'xss_match_statement': [for (final e in xssMatchStatement!) e.encode()],
  };
}

/// Typed helper for the `statement.regex_match_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRegexMatchStatement {
  const Wafv2WebAclRuleStatementRegexMatchStatement({
    required this.regexString,
    this.fieldToMatch,
    this.textTransformation,
  });

  final TfArg<String> regexString;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch>?
  fieldToMatch;

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    'regex_string': regexString.toTfJson(),
    if (fieldToMatch != null)
      'field_to_match': [for (final e in fieldToMatch!) e.encode()],
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.regex_pattern_set_reference_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRegexPatternSetReferenceStatement {
  const Wafv2WebAclRuleStatementRegexPatternSetReferenceStatement({
    required this.arn,
    this.fieldToMatch,
    this.textTransformation,
  });

  final TfArg<String> arn;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch>?
  fieldToMatch;

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (fieldToMatch != null)
      'field_to_match': [for (final e in fieldToMatch!) e.encode()],
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.size_constraint_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementSizeConstraintStatement {
  const Wafv2WebAclRuleStatementSizeConstraintStatement({
    required this.comparisonOperator,
    required this.size,
    this.fieldToMatch,
    this.textTransformation,
  });

  final TfArg<String> comparisonOperator;

  final TfArg<num> size;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch>?
  fieldToMatch;

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'size': size.toTfJson(),
    if (fieldToMatch != null)
      'field_to_match': [for (final e in fieldToMatch!) e.encode()],
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.sqli_match_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementSqliMatchStatement {
  const Wafv2WebAclRuleStatementSqliMatchStatement({
    this.sensitivityLevel,
    this.fieldToMatch,
    this.textTransformation,
  });

  final TfArg<String>? sensitivityLevel;

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch>?
  fieldToMatch;

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    if (sensitivityLevel != null)
      'sensitivity_level': sensitivityLevel!.toTfJson(),
    if (fieldToMatch != null)
      'field_to_match': [for (final e in fieldToMatch!) e.encode()],
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.xss_match_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementXssMatchStatement {
  const Wafv2WebAclRuleStatementXssMatchStatement({
    this.fieldToMatch,
    this.textTransformation,
  });

  final List<Wafv2WebAclRuleStatementByteMatchStatementFieldToMatch>?
  fieldToMatch;

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    if (fieldToMatch != null)
      'field_to_match': [for (final e in fieldToMatch!) e.encode()],
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.rate_based_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRateBasedStatement {
  const Wafv2WebAclRuleStatementRateBasedStatement({
    required this.aggregateKeyType,
    this.evaluationWindowSec,
    required this.limit,
    this.customKeys,
    this.forwardedIpConfig,
    this.scopeDownStatement,
  });

  final TfArg<String> aggregateKeyType;

  final TfArg<num>? evaluationWindowSec;

  final TfArg<num> limit;

  final List<Wafv2WebAclRuleStatementRateBasedStatementCustomKeys>? customKeys;

  final List<Wafv2WebAclRuleStatementAsnMatchStatementForwardedIpConfig>?
  forwardedIpConfig;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement
  >?
  scopeDownStatement;

  Map<String, Object?> encode() => {
    'aggregate_key_type': aggregateKeyType.toTfJson(),
    if (evaluationWindowSec != null)
      'evaluation_window_sec': evaluationWindowSec!.toTfJson(),
    'limit': limit.toTfJson(),
    if (customKeys != null)
      'custom_keys': [for (final e in customKeys!) e.encode()],
    if (forwardedIpConfig != null)
      'forwarded_ip_config': [for (final e in forwardedIpConfig!) e.encode()],
    if (scopeDownStatement != null)
      'scope_down_statement': [for (final e in scopeDownStatement!) e.encode()],
  };
}

/// Typed helper for the `statement.rate_based_statement.custom_keys` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRateBasedStatementCustomKeys {
  const Wafv2WebAclRuleStatementRateBasedStatementCustomKeys({
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

  final List<Wafv2WebAclRuleOverrideActionCount>? asn;

  final List<Wafv2WebAclRuleStatementRateBasedStatementCustomKeysCookie>?
  cookie;

  final List<Wafv2WebAclRuleOverrideActionCount>? forwardedIp;

  final List<Wafv2WebAclRuleStatementRateBasedStatementCustomKeysCookie>?
  header;

  final List<Wafv2WebAclRuleOverrideActionCount>? httpMethod;

  final List<Wafv2WebAclRuleOverrideActionCount>? ip;

  final List<
    Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint
  >?
  ja3Fingerprint;

  final List<
    Wafv2WebAclRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint
  >?
  ja4Fingerprint;

  final List<
    Wafv2WebAclRuleStatementRateBasedStatementCustomKeysLabelNamespace
  >?
  labelNamespace;

  final List<Wafv2WebAclRuleStatementRateBasedStatementCustomKeysCookie>?
  queryArgument;

  final List<Wafv2WebAclRuleStatementRateBasedStatementCustomKeysQueryString>?
  queryString;

  final List<Wafv2WebAclRuleStatementRateBasedStatementCustomKeysQueryString>?
  uriPath;

  Map<String, Object?> encode() => {
    if (asn != null) 'asn': [for (final e in asn!) e.encode()],
    if (cookie != null) 'cookie': [for (final e in cookie!) e.encode()],
    if (forwardedIp != null)
      'forwarded_ip': [for (final e in forwardedIp!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (httpMethod != null)
      'http_method': [for (final e in httpMethod!) e.encode()],
    if (ip != null) 'ip': [for (final e in ip!) e.encode()],
    if (ja3Fingerprint != null)
      'ja3_fingerprint': [for (final e in ja3Fingerprint!) e.encode()],
    if (ja4Fingerprint != null)
      'ja4_fingerprint': [for (final e in ja4Fingerprint!) e.encode()],
    if (labelNamespace != null)
      'label_namespace': [for (final e in labelNamespace!) e.encode()],
    if (queryArgument != null)
      'query_argument': [for (final e in queryArgument!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
    if (uriPath != null) 'uri_path': [for (final e in uriPath!) e.encode()],
  };
}

/// Typed helper for the `statement.rate_based_statement.custom_keys.cookie` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRateBasedStatementCustomKeysCookie {
  const Wafv2WebAclRuleStatementRateBasedStatementCustomKeysCookie({
    required this.name,
    this.textTransformation,
  });

  final TfArg<String> name;

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.rate_based_statement.custom_keys.label_namespace` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRateBasedStatementCustomKeysLabelNamespace {
  const Wafv2WebAclRuleStatementRateBasedStatementCustomKeysLabelNamespace({
    required this.namespace,
  });

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {'namespace': namespace.toTfJson()};
}

/// Typed helper for the `statement.rate_based_statement.custom_keys.query_string` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRateBasedStatementCustomKeysQueryString {
  const Wafv2WebAclRuleStatementRateBasedStatementCustomKeysQueryString({
    this.textTransformation,
  });

  final List<Wafv2WebAclRuleStatementByteMatchStatementTextTransformation>?
  textTransformation;

  Map<String, Object?> encode() => {
    if (textTransformation != null)
      'text_transformation': [for (final e in textTransformation!) e.encode()],
  };
}

/// Typed helper for the `statement.rule_group_reference_statement` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleStatementRuleGroupReferenceStatement {
  const Wafv2WebAclRuleStatementRuleGroupReferenceStatement({
    required this.arn,
    this.excludedRule,
    this.ruleActionOverride,
  });

  final TfArg<String> arn;

  final List<Wafv2WebAclRuleRuleLabel>? excludedRule;

  final List<
    Wafv2WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride
  >?
  ruleActionOverride;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (excludedRule != null)
      'excluded_rule': [for (final e in excludedRule!) e.encode()],
    if (ruleActionOverride != null)
      'rule_action_override': [for (final e in ruleActionOverride!) e.encode()],
  };
}

/// Typed helper for the `visibility_config` block of
/// `aws_wafv2_web_acl_rule` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleVisibilityConfig {
  const Wafv2WebAclRuleVisibilityConfig({
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

/// Factory wrapper for `aws_wafv2_web_acl_rule`.
final class AwsWafv2WebAclRule extends Resource {
  static const String tfType = 'aws_wafv2_web_acl_rule';

  AwsWafv2WebAclRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? region,
    required TfArg<String> webAclArn,
    List<Wafv2WebAclRuleAction>? action,
    List<Wafv2WebAclRuleCaptchaConfig>? captchaConfig,
    List<Wafv2WebAclRuleCaptchaConfig>? challengeConfig,
    List<Wafv2WebAclRuleOverrideAction>? overrideAction,
    List<Wafv2WebAclRuleRuleLabel>? ruleLabel,
    List<Wafv2WebAclRuleStatement>? statement,
    List<Wafv2WebAclRuleVisibilityConfig>? visibilityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'priority': priority,
           if (region != null) 'region': region,
           'web_acl_arn': webAclArn,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (captchaConfig != null)
             'captcha_config': TfArg.literal([
               for (final e in captchaConfig) e.encode(),
             ]),
           if (challengeConfig != null)
             'challenge_config': TfArg.literal([
               for (final e in challengeConfig) e.encode(),
             ]),
           if (overrideAction != null)
             'override_action': TfArg.literal([
               for (final e in overrideAction) e.encode(),
             ]),
           if (ruleLabel != null)
             'rule_label': TfArg.literal([
               for (final e in ruleLabel) e.encode(),
             ]),
           if (statement != null)
             'statement': TfArg.literal([
               for (final e in statement) e.encode(),
             ]),
           if (visibilityConfig != null)
             'visibility_config': TfArg.literal([
               for (final e in visibilityConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2WebAclRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
