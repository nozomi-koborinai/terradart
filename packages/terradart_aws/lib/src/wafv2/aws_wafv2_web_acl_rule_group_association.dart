// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl_rule_group_association`.
const Set<String> _awsWafv2WebAclRuleGroupAssociationSensitive = <String>{};

/// Typed helper for the `managed_rule_group` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroup {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroup({
    required this.name,
    required this.vendorName,
    this.version,
    this.managedRuleGroupConfigs,
    this.ruleActionOverride,
  });

  final TfArg<String> name;

  final TfArg<String> vendorName;

  final TfArg<String>? version;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs
  >?
  managedRuleGroupConfigs;

  final List<Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride>?
  ruleActionOverride;

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
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs({
    this.awsManagedRulesAcfpRuleSet,
    this.awsManagedRulesAntiDdosRuleSet,
    this.awsManagedRulesAtpRuleSet,
    this.awsManagedRulesBotControlRuleSet,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet
  >?
  awsManagedRulesAcfpRuleSet;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet
  >?
  awsManagedRulesAntiDdosRuleSet;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet
  >?
  awsManagedRulesAtpRuleSet;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet
  >?
  awsManagedRulesBotControlRuleSet;

  Map<String, Object?> encode() => {
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
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet({
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
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection
  >?
  requestInspection;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection({
    required this.payloadType,
    this.addressFields,
    this.emailField,
    this.passwordField,
    this.phoneNumberFields,
    this.usernameField,
  });

  final TfArg<String> payloadType;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields
  >?
  addressFields;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailField
  >?
  emailField;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField
  >?
  passwordField;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields
  >?
  phoneNumberFields;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.address_fields` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields({
    required this.identifiers,
  });

  final TfArg<List<Object?>> identifiers;

  Map<String, Object?> encode() => {'identifiers': identifiers.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.email_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailField {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.password_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.phone_number_fields` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields({
    required this.identifiers,
  });

  final TfArg<List<Object?>> identifiers;

  Map<String, Object?> encode() => {'identifiers': identifiers.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.username_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains
  >?
  bodyContains;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader
  >?
  header;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionJson
  >?
  json;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.body_contains` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.json` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionJson {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionJson({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.status_code` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet({
    this.sensitivityToBlock,
    this.clientSideActionConfig,
  });

  final TfArg<String>? sensitivityToBlock;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig({
    this.challenge,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge
  >?
  challenge;

  Map<String, Object?> encode() => {
    if (challenge != null)
      'challenge': [for (final e in challenge!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config.challenge` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge({
    this.sensitivity,
    required this.usageOfAction,
    this.exemptUriRegularExpression,
  });

  final TfArg<String>? sensitivity;

  final TfArg<String> usageOfAction;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config.challenge.exempt_uri_regular_expression` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression({
    this.regexString,
  });

  final TfArg<String>? regexString;

  Map<String, Object?> encode() => {
    if (regexString != null) 'regex_string': regexString!.toTfJson(),
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet({
    this.enableRegexInPath,
    required this.loginPath,
    this.requestInspection,
    this.responseInspection,
  });

  final TfArg<bool>? enableRegexInPath;

  final TfArg<String> loginPath;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection
  >?
  requestInspection;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.request_inspection` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection({
    required this.payloadType,
    this.passwordField,
    this.usernameField,
  });

  final TfArg<String> payloadType;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionPasswordField
  >?
  passwordField;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionUsernameField
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.request_inspection.password_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionPasswordField {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionPasswordField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.request_inspection.username_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionUsernameField {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionUsernameField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.response_inspection` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionBodyContains
  >?
  bodyContains;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionHeader
  >?
  header;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson
  >?
  json;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionStatusCode
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.response_inspection.body_contains` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionBodyContains {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionBodyContains({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.response_inspection.header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionHeader {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionHeader({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.response_inspection.json` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set.response_inspection.status_code` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionStatusCode {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionStatusCode({
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

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_bot_control_rule_set` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet({
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

/// Typed helper for the `managed_rule_group.rule_action_override` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride({
    required this.name,
    this.actionToUse,
  });

  final TfArg<String> name;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse
  >?
  actionToUse;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (actionToUse != null)
      'action_to_use': [for (final e in actionToUse!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow
  >?
  allow;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock
  >?
  block;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha
  >?
  captcha;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge
  >?
  challenge;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount
  >?
  count;

  Map<String, Object?> encode() => {
    if (allow != null) 'allow': [for (final e in allow!) e.encode()],
    if (block != null) 'block': [for (final e in block!) e.encode()],
    if (captcha != null) 'captcha': [for (final e in captcha!) e.encode()],
    if (challenge != null)
      'challenge': [for (final e in challenge!) e.encode()],
    if (count != null) 'count': [for (final e in count!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.allow` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.allow.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.block` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock({
    this.customResponse,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse
  >?
  customResponse;

  Map<String, Object?> encode() => {
    if (customResponse != null)
      'custom_response': [for (final e in customResponse!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.block.custom_response` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader
  >?
  responseHeader;

  Map<String, Object?> encode() => {
    if (customResponseBodyKey != null)
      'custom_response_body_key': customResponseBodyKey!.toTfJson(),
    'response_code': responseCode.toTfJson(),
    if (responseHeader != null)
      'response_header': [for (final e in responseHeader!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.block.custom_response.response_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader({
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

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.captcha` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.captcha.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.captcha.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.challenge` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.challenge.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.challenge.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.count` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.count.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.count.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `rule_group_reference` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReference {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReference({
    required this.arn,
    this.ruleActionOverride,
  });

  final TfArg<String> arn;

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride
  >?
  ruleActionOverride;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (ruleActionOverride != null)
      'rule_action_override': [for (final e in ruleActionOverride!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride({
    required this.name,
    this.actionToUse,
  });

  final TfArg<String> name;

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse
  >?
  actionToUse;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (actionToUse != null)
      'action_to_use': [for (final e in actionToUse!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow
  >?
  allow;

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock
  >?
  block;

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha
  >?
  captcha;

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge
  >?
  challenge;

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount
  >?
  count;

  Map<String, Object?> encode() => {
    if (allow != null) 'allow': [for (final e in allow!) e.encode()],
    if (block != null) 'block': [for (final e in block!) e.encode()],
    if (captcha != null) 'captcha': [for (final e in captcha!) e.encode()],
    if (challenge != null)
      'challenge': [for (final e in challenge!) e.encode()],
    if (count != null) 'count': [for (final e in count!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.allow` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.allow.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.block` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock({
    this.customResponse,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse
  >?
  customResponse;

  Map<String, Object?> encode() => {
    if (customResponse != null)
      'custom_response': [for (final e in customResponse!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.block.custom_response` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader
  >?
  responseHeader;

  Map<String, Object?> encode() => {
    if (customResponseBodyKey != null)
      'custom_response_body_key': customResponseBodyKey!.toTfJson(),
    'response_code': responseCode.toTfJson(),
    if (responseHeader != null)
      'response_header': [for (final e in responseHeader!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.block.custom_response.response_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader({
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

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.captcha` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.captcha.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.captcha.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.challenge` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.challenge.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.challenge.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.count` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount({
    this.customRequestHandling,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling
  >?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.count.custom_request_handling` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling({
    this.insertHeader,
  });

  final List<
    Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader
  >?
  insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `rule_group_reference.rule_action_override.action_to_use.count.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader {
  const Wafv2WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader({
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

/// Typed helper for the `visibility_config` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationVisibilityConfig {
  const Wafv2WebAclRuleGroupAssociationVisibilityConfig({
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

/// Factory wrapper for `aws_wafv2_web_acl_rule_group_association`.
///
/// Associates a WAFv2 Rule Group (custom or managed) with a Web ACL by adding a
/// rule that references the Rule Group.
final class AwsWafv2WebAclRuleGroupAssociation extends Resource {
  static const String tfType = 'aws_wafv2_web_acl_rule_group_association';

  AwsWafv2WebAclRuleGroupAssociation({
    required super.localName,
    TfArg<String>? overrideAction,
    required TfArg<num> priority,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    required TfArg<String> webAclArn,
    List<Wafv2WebAclRuleGroupAssociationManagedRuleGroup>? managedRuleGroup,
    List<Wafv2WebAclRuleGroupAssociationRuleGroupReference>? ruleGroupReference,
    List<Wafv2WebAclRuleGroupAssociationVisibilityConfig>? visibilityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (overrideAction != null) 'override_action': overrideAction,
           'priority': priority,
           if (region != null) 'region': region,
           'rule_name': ruleName,
           'web_acl_arn': webAclArn,
           if (managedRuleGroup != null)
             'managed_rule_group': TfArg.literal([
               for (final e in managedRuleGroup) e.encode(),
             ]),
           if (ruleGroupReference != null)
             'rule_group_reference': TfArg.literal([
               for (final e in ruleGroupReference) e.encode(),
             ]),
           if (visibilityConfig != null)
             'visibility_config': TfArg.literal([
               for (final e in visibilityConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWafv2WebAclRuleGroupAssociationSensitive;
}
