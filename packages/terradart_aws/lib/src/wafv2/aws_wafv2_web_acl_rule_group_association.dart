// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl_rule_group_association`.
const Set<String> _awsWafv2WebAclRuleGroupAssociationSensitive = <String>{};

/// Wafv2 Web Acl Rule Group Association Override enum for `override_action`.
extension type const Wafv2WebAclRuleGroupAssociationOverrideAction._(
  TfArg<String> _
) implements TfArg<String> {
  Wafv2WebAclRuleGroupAssociationOverrideAction.variable(String name)
    : this._(TfArg.variable(name));
  Wafv2WebAclRuleGroupAssociationOverrideAction.expression(String template)
    : this._(TfArg.expression(template));
  const Wafv2WebAclRuleGroupAssociationOverrideAction.arg(TfArg<String> arg)
    : this._(arg);

  static const none = Wafv2WebAclRuleGroupAssociationOverrideAction._(
    TfArgLiteral('none'),
  );
  static const count = Wafv2WebAclRuleGroupAssociationOverrideAction._(
    TfArgLiteral('count'),
  );

  static const List<Wafv2WebAclRuleGroupAssociationOverrideAction> values = [
    none,
    count,
  ];
}

/// Exactly one of `managed_rule_group`, `rule_group_reference` on `aws_wafv2_web_acl_rule_group_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.managedRuleGroup(...)`.
sealed class Wafv2WebAclRuleGroupAssociationSource {
  const Wafv2WebAclRuleGroupAssociationSource();

  /// Sets `managed_rule_group`.
  const factory Wafv2WebAclRuleGroupAssociationSource.managedRuleGroup(
    List<Wafv2WebAclRuleGroupAssociationManagedRuleGroup> managedRuleGroup,
  ) = Wafv2WebAclRuleGroupAssociationSourceManagedRuleGroup;

  /// Sets `rule_group_reference`.
  const factory Wafv2WebAclRuleGroupAssociationSource.ruleGroupReference(
    List<Wafv2WebAclRuleGroupAssociationRuleGroupReference> ruleGroupReference,
  ) = Wafv2WebAclRuleGroupAssociationSourceRuleGroupReference;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2WebAclRuleGroupAssociationSource.managedRuleGroup] choice: sets `managed_rule_group`.
final class Wafv2WebAclRuleGroupAssociationSourceManagedRuleGroup
    extends Wafv2WebAclRuleGroupAssociationSource {
  const Wafv2WebAclRuleGroupAssociationSourceManagedRuleGroup(
    this.managedRuleGroup,
  );

  final List<Wafv2WebAclRuleGroupAssociationManagedRuleGroup> managedRuleGroup;

  @override
  String get blockKey => 'managed_rule_group';

  @override
  Map<String, Object?> encode() => {
    'managed_rule_group': [for (final e in managedRuleGroup) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'managed_rule_group': TfArg.literal([
      for (final e in managedRuleGroup) e.encode(),
    ]),
  };
}

/// The [Wafv2WebAclRuleGroupAssociationSource.ruleGroupReference] choice: sets `rule_group_reference`.
final class Wafv2WebAclRuleGroupAssociationSourceRuleGroupReference
    extends Wafv2WebAclRuleGroupAssociationSource {
  const Wafv2WebAclRuleGroupAssociationSourceRuleGroupReference(
    this.ruleGroupReference,
  );

  final List<Wafv2WebAclRuleGroupAssociationRuleGroupReference>
  ruleGroupReference;

  @override
  String get blockKey => 'rule_group_reference';

  @override
  Map<String, Object?> encode() => {
    'rule_group_reference': [for (final e in ruleGroupReference) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'rule_group_reference': TfArg.literal([
      for (final e in ruleGroupReference) e.encode(),
    ]),
  };
}

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

  final List<Wafv2WebAclRuleGroupAssociationManagedRuleGroupConfigs>?
  managedRuleGroupConfigs;

  final List<Wafv2WebAclRuleGroupAssociationRuleActionOverride>?
  ruleActionOverride;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'vendor_name': vendorName.toTfJson(),
    'version': ?version?.toTfJson(),
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
final class Wafv2WebAclRuleGroupAssociationManagedRuleGroupConfigs {
  const Wafv2WebAclRuleGroupAssociationManagedRuleGroupConfigs({
    this.awsManagedRulesAcfpRuleSet,
    this.awsManagedRulesAntiDdosRuleSet,
    this.awsManagedRulesAtpRuleSet,
    this.awsManagedRulesBotControlRuleSet,
  });

  final List<Wafv2WebAclRuleGroupAssociationAwsManagedRulesAcfpRuleSet>?
  awsManagedRulesAcfpRuleSet;

  final List<Wafv2WebAclRuleGroupAssociationAwsManagedRulesAntiDdosRuleSet>?
  awsManagedRulesAntiDdosRuleSet;

  final List<Wafv2WebAclRuleGroupAssociationAwsManagedRulesAtpRuleSet>?
  awsManagedRulesAtpRuleSet;

  final List<Wafv2WebAclRuleGroupAssociationAwsManagedRulesBotControlRuleSet>?
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
final class Wafv2WebAclRuleGroupAssociationAwsManagedRulesAcfpRuleSet {
  const Wafv2WebAclRuleGroupAssociationAwsManagedRulesAcfpRuleSet({
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
    Wafv2WebAclRuleGroupAssociationAwsManagedRulesAcfpRuleSetRequestInspection
  >?
  requestInspection;

  final List<Wafv2WebAclRuleGroupAssociationResponseInspection>?
  responseInspection;

  Map<String, Object?> encode() => {
    'creation_path': creationPath.toTfJson(),
    'enable_regex_in_path': ?enableRegexInPath?.toTfJson(),
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
final class Wafv2WebAclRuleGroupAssociationAwsManagedRulesAcfpRuleSetRequestInspection {
  const Wafv2WebAclRuleGroupAssociationAwsManagedRulesAcfpRuleSetRequestInspection({
    required this.payloadType,
    this.addressFields,
    this.emailField,
    this.passwordField,
    this.phoneNumberFields,
    this.usernameField,
  });

  final TfArg<String> payloadType;

  final List<Wafv2WebAclRuleGroupAssociationAddressFields>? addressFields;

  final List<Wafv2WebAclRuleGroupAssociationEmailField>? emailField;

  final List<Wafv2WebAclRuleGroupAssociationPasswordField>? passwordField;

  final List<Wafv2WebAclRuleGroupAssociationPhoneNumberFields>?
  phoneNumberFields;

  final List<Wafv2WebAclRuleGroupAssociationUsernameField>? usernameField;

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
final class Wafv2WebAclRuleGroupAssociationAddressFields {
  const Wafv2WebAclRuleGroupAssociationAddressFields({
    required this.identifiers,
  });

  final TfArg<List<String>> identifiers;

  Map<String, Object?> encode() => {'identifiers': identifiers.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.email_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationEmailField {
  const Wafv2WebAclRuleGroupAssociationEmailField({required this.identifier});

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.password_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationPasswordField {
  const Wafv2WebAclRuleGroupAssociationPasswordField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.phone_number_fields` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationPhoneNumberFields {
  const Wafv2WebAclRuleGroupAssociationPhoneNumberFields({
    required this.identifiers,
  });

  final TfArg<List<String>> identifiers;

  Map<String, Object?> encode() => {'identifiers': identifiers.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.request_inspection.username_field` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationUsernameField {
  const Wafv2WebAclRuleGroupAssociationUsernameField({
    required this.identifier,
  });

  final TfArg<String> identifier;

  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationResponseInspection {
  const Wafv2WebAclRuleGroupAssociationResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  final List<Wafv2WebAclRuleGroupAssociationBodyContains>? bodyContains;

  final List<Wafv2WebAclRuleGroupAssociationHeader>? header;

  final List<Wafv2WebAclRuleGroupAssociationJson>? json;

  final List<Wafv2WebAclRuleGroupAssociationStatusCode>? statusCode;

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
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationBodyContains {
  const Wafv2WebAclRuleGroupAssociationBodyContains({
    required this.failureStrings,
    required this.successStrings,
  });

  final TfArg<List<String>> failureStrings;

  final TfArg<List<String>> successStrings;

  Map<String, Object?> encode() => {
    'failure_strings': failureStrings.toTfJson(),
    'success_strings': successStrings.toTfJson(),
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationHeader {
  const Wafv2WebAclRuleGroupAssociationHeader({
    required this.failureValues,
    required this.name,
    required this.successValues,
  });

  final TfArg<List<String>> failureValues;

  final TfArg<String> name;

  final TfArg<List<String>> successValues;

  Map<String, Object?> encode() => {
    'failure_values': failureValues.toTfJson(),
    'name': name.toTfJson(),
    'success_values': successValues.toTfJson(),
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.json` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationJson {
  const Wafv2WebAclRuleGroupAssociationJson({
    required this.failureValues,
    required this.identifier,
    required this.successValues,
  });

  final TfArg<List<String>> failureValues;

  final TfArg<String> identifier;

  final TfArg<List<String>> successValues;

  Map<String, Object?> encode() => {
    'failure_values': failureValues.toTfJson(),
    'identifier': identifier.toTfJson(),
    'success_values': successValues.toTfJson(),
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_acfp_rule_set.response_inspection.status_code` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationStatusCode {
  const Wafv2WebAclRuleGroupAssociationStatusCode({
    required this.failureCodes,
    required this.successCodes,
  });

  final TfArg<List<num>> failureCodes;

  final TfArg<List<num>> successCodes;

  Map<String, Object?> encode() => {
    'failure_codes': failureCodes.toTfJson(),
    'success_codes': successCodes.toTfJson(),
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationAwsManagedRulesAntiDdosRuleSet {
  const Wafv2WebAclRuleGroupAssociationAwsManagedRulesAntiDdosRuleSet({
    this.sensitivityToBlock,
    this.clientSideActionConfig,
  });

  final TfArg<String>? sensitivityToBlock;

  final List<Wafv2WebAclRuleGroupAssociationClientSideActionConfig>?
  clientSideActionConfig;

  Map<String, Object?> encode() => {
    'sensitivity_to_block': ?sensitivityToBlock?.toTfJson(),
    if (clientSideActionConfig != null)
      'client_side_action_config': [
        for (final e in clientSideActionConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationClientSideActionConfig {
  const Wafv2WebAclRuleGroupAssociationClientSideActionConfig({this.challenge});

  final List<Wafv2WebAclRuleGroupAssociationClientSideActionConfigChallenge>?
  challenge;

  Map<String, Object?> encode() => {
    if (challenge != null)
      'challenge': [for (final e in challenge!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.client_side_action_config.challenge` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationClientSideActionConfigChallenge {
  const Wafv2WebAclRuleGroupAssociationClientSideActionConfigChallenge({
    this.sensitivity,
    required this.usageOfAction,
    this.exemptUriRegularExpression,
  });

  final TfArg<String>? sensitivity;

  final TfArg<String> usageOfAction;

  final List<Wafv2WebAclRuleGroupAssociationExemptUriRegularExpression>?
  exemptUriRegularExpression;

  Map<String, Object?> encode() => {
    'sensitivity': ?sensitivity?.toTfJson(),
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
final class Wafv2WebAclRuleGroupAssociationExemptUriRegularExpression {
  const Wafv2WebAclRuleGroupAssociationExemptUriRegularExpression({
    this.regexString,
  });

  final TfArg<String>? regexString;

  Map<String, Object?> encode() => {'regex_string': ?regexString?.toTfJson()};
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_atp_rule_set` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationAwsManagedRulesAtpRuleSet {
  const Wafv2WebAclRuleGroupAssociationAwsManagedRulesAtpRuleSet({
    this.enableRegexInPath,
    required this.loginPath,
    this.requestInspection,
    this.responseInspection,
  });

  final TfArg<bool>? enableRegexInPath;

  final TfArg<String> loginPath;

  final List<
    Wafv2WebAclRuleGroupAssociationAwsManagedRulesAtpRuleSetRequestInspection
  >?
  requestInspection;

  final List<Wafv2WebAclRuleGroupAssociationResponseInspection>?
  responseInspection;

  Map<String, Object?> encode() => {
    'enable_regex_in_path': ?enableRegexInPath?.toTfJson(),
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
final class Wafv2WebAclRuleGroupAssociationAwsManagedRulesAtpRuleSetRequestInspection {
  const Wafv2WebAclRuleGroupAssociationAwsManagedRulesAtpRuleSetRequestInspection({
    required this.payloadType,
    this.passwordField,
    this.usernameField,
  });

  final TfArg<String> payloadType;

  final List<Wafv2WebAclRuleGroupAssociationPasswordField>? passwordField;

  final List<Wafv2WebAclRuleGroupAssociationUsernameField>? usernameField;

  Map<String, Object?> encode() => {
    'payload_type': payloadType.toTfJson(),
    if (passwordField != null)
      'password_field': [for (final e in passwordField!) e.encode()],
    if (usernameField != null)
      'username_field': [for (final e in usernameField!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.managed_rule_group_configs.aws_managed_rules_bot_control_rule_set` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
@immutable
final class Wafv2WebAclRuleGroupAssociationAwsManagedRulesBotControlRuleSet {
  const Wafv2WebAclRuleGroupAssociationAwsManagedRulesBotControlRuleSet({
    this.enableMachineLearning,
    required this.inspectionLevel,
  });

  final TfArg<bool>? enableMachineLearning;

  final TfArg<String> inspectionLevel;

  Map<String, Object?> encode() => {
    'enable_machine_learning': ?enableMachineLearning?.toTfJson(),
    'inspection_level': inspectionLevel.toTfJson(),
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationRuleActionOverride {
  const Wafv2WebAclRuleGroupAssociationRuleActionOverride({
    required this.name,
    this.actionToUse,
  });

  final TfArg<String> name;

  final List<Wafv2WebAclRuleGroupAssociationActionToUse>? actionToUse;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (actionToUse != null)
      'action_to_use': [for (final e in actionToUse!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationActionToUse {
  const Wafv2WebAclRuleGroupAssociationActionToUse({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  final List<Wafv2WebAclRuleGroupAssociationAllow>? allow;

  final List<Wafv2WebAclRuleGroupAssociationBlock>? block;

  final List<Wafv2WebAclRuleGroupAssociationCaptcha>? captcha;

  final List<Wafv2WebAclRuleGroupAssociationChallenge>? challenge;

  final List<Wafv2WebAclRuleGroupAssociationCount>? count;

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
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationAllow {
  const Wafv2WebAclRuleGroupAssociationAllow({this.customRequestHandling});

  final List<Wafv2WebAclRuleGroupAssociationCustomRequestHandling>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationCustomRequestHandling {
  const Wafv2WebAclRuleGroupAssociationCustomRequestHandling({
    this.insertHeader,
  });

  final List<Wafv2WebAclRuleGroupAssociationInsertHeader>? insertHeader;

  Map<String, Object?> encode() => {
    if (insertHeader != null)
      'insert_header': [for (final e in insertHeader!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationInsertHeader {
  const Wafv2WebAclRuleGroupAssociationInsertHeader({
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
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationBlock {
  const Wafv2WebAclRuleGroupAssociationBlock({this.customResponse});

  final List<Wafv2WebAclRuleGroupAssociationCustomResponse>? customResponse;

  Map<String, Object?> encode() => {
    if (customResponse != null)
      'custom_response': [for (final e in customResponse!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.block.custom_response` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationCustomResponse {
  const Wafv2WebAclRuleGroupAssociationCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<Wafv2WebAclRuleGroupAssociationResponseHeader>? responseHeader;

  Map<String, Object?> encode() => {
    'custom_response_body_key': ?customResponseBodyKey?.toTfJson(),
    'response_code': responseCode.toTfJson(),
    if (responseHeader != null)
      'response_header': [for (final e in responseHeader!) e.encode()],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.block.custom_response.response_header` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationResponseHeader {
  const Wafv2WebAclRuleGroupAssociationResponseHeader({
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
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationCaptcha {
  const Wafv2WebAclRuleGroupAssociationCaptcha({this.customRequestHandling});

  final List<Wafv2WebAclRuleGroupAssociationCustomRequestHandling>?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.challenge` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationChallenge {
  const Wafv2WebAclRuleGroupAssociationChallenge({this.customRequestHandling});

  final List<Wafv2WebAclRuleGroupAssociationCustomRequestHandling>?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
  };
}

/// Typed helper for the `managed_rule_group.rule_action_override.action_to_use.count` block of
/// `aws_wafv2_web_acl_rule_group_association` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclRuleGroupAssociationCount {
  const Wafv2WebAclRuleGroupAssociationCount({this.customRequestHandling});

  final List<Wafv2WebAclRuleGroupAssociationCustomRequestHandling>?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': [
        for (final e in customRequestHandling!) e.encode(),
      ],
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

  final List<Wafv2WebAclRuleGroupAssociationRuleActionOverride>?
  ruleActionOverride;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (ruleActionOverride != null)
      'rule_action_override': [for (final e in ruleActionOverride!) e.encode()],
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

  AwsWafv2WebAclRuleGroupAssociation(
    super.localName, {
    Wafv2WebAclRuleGroupAssociationOverrideAction? overrideAction,
    required TfArg<num> priority,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    required TfArg<String> webAclArn,
    required Wafv2WebAclRuleGroupAssociationSource source,
    List<Wafv2WebAclRuleGroupAssociationVisibilityConfig>? visibilityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'override_action': ?overrideAction,
           'priority': priority,
           'region': ?region,
           'rule_name': ruleName,
           'web_acl_arn': webAclArn,
           ...source.argMap,
           if (visibilityConfig != null)
             'visibility_config': TfArg.literal([
               for (final e in visibilityConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWafv2WebAclRuleGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafv2WebAclRuleGroupAssociation>`.
  RefTo<AwsWafv2WebAclRuleGroupAssociation> get ref => RefTo.of(this);

  /// Reference to `override_action` attribute.
  TfRef<String> get overrideAction =>
      TfRef.attribute<String>(this, 'override_action');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `web_acl_arn` attribute.
  TfRef<String> get webAclArn => TfRef.attribute<String>(this, 'web_acl_arn');
}
