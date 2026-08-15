// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_securityposture_posture`.
const Set<String> _googleSecurityposturePostureSensitive = <String>{};

/// Securityposture Posture enum for `state`.
enum SecurityposturePostureState implements TerraformEnum {
  deprecated('DEPRECATED'),
  draft('DRAFT'),
  active('ACTIVE');

  const SecurityposturePostureState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_sets` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySets {
  const SecurityposturePosturePolicySets({
    this.description,
    required this.policySetId,
    required this.policies,
  });

  final TfArg<String>? description;

  final TfArg<String> policySetId;

  final List<SecurityposturePosturePolicySetsPolicies> policies;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'policy_set_id': policySetId.toTfJson(),
    'policies': [for (final e in policies) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPolicies {
  const SecurityposturePosturePolicySetsPolicies({
    this.description,
    required this.policyId,
    this.complianceStandards,
    required this.constraint,
  });

  final TfArg<String>? description;

  final TfArg<String> policyId;

  final List<SecurityposturePosturePolicySetsPoliciesComplianceStandards>?
  complianceStandards;

  final SecurityposturePosturePolicySetsPoliciesConstraint constraint;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'policy_id': policyId.toTfJson(),
    if (complianceStandards != null)
      'compliance_standards': [
        for (final e in complianceStandards!) e.encode(),
      ],
    'constraint': constraint.encode(),
  };
}

/// Typed helper for the `policy_sets.policies.compliance_standards` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesComplianceStandards {
  const SecurityposturePosturePolicySetsPoliciesComplianceStandards({
    this.control,
    this.standard,
  });

  final TfArg<String>? control;

  final TfArg<String>? standard;

  Map<String, Object?> encode() => {
    if (control != null) 'control': control!.toTfJson(),
    if (standard != null) 'standard': standard!.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraint {
  const SecurityposturePosturePolicySetsPoliciesConstraint({
    this.orgPolicyConstraint,
    this.orgPolicyConstraintCustom,
    this.securityHealthAnalyticsCustomModule,
    this.securityHealthAnalyticsModule,
  });

  final SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraint?
  orgPolicyConstraint;

  final SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustom?
  orgPolicyConstraintCustom;

  final SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModule?
  securityHealthAnalyticsCustomModule;

  final SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsModule?
  securityHealthAnalyticsModule;

  Map<String, Object?> encode() => {
    if (orgPolicyConstraint != null)
      'org_policy_constraint': orgPolicyConstraint!.encode(),
    if (orgPolicyConstraintCustom != null)
      'org_policy_constraint_custom': orgPolicyConstraintCustom!.encode(),
    if (securityHealthAnalyticsCustomModule != null)
      'security_health_analytics_custom_module':
          securityHealthAnalyticsCustomModule!.encode(),
    if (securityHealthAnalyticsModule != null)
      'security_health_analytics_module': securityHealthAnalyticsModule!
          .encode(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraint {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraint({
    required this.cannedConstraintId,
    required this.policyRules,
  });

  final TfArg<String> cannedConstraintId;

  final List<
    SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRules
  >
  policyRules;

  Map<String, Object?> encode() => {
    'canned_constraint_id': cannedConstraintId.toTfJson(),
    'policy_rules': [for (final e in policyRules) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint.policy_rules` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRules {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRules({
    this.allowAll,
    this.denyAll,
    this.enforce,
    this.condition,
    this.values,
  });

  final TfArg<bool>? allowAll;

  final TfArg<bool>? denyAll;

  final TfArg<bool>? enforce;

  final SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRulesCondition?
  condition;

  final SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRulesValues?
  values;

  Map<String, Object?> encode() => {
    if (allowAll != null) 'allow_all': allowAll!.toTfJson(),
    if (denyAll != null) 'deny_all': denyAll!.toTfJson(),
    if (enforce != null) 'enforce': enforce!.toTfJson(),
    if (condition != null) 'condition': condition!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint.policy_rules.condition` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRulesCondition {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRulesCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint.policy_rules.values` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRulesValues {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintPolicyRulesValues({
    this.allowedValues,
    this.deniedValues,
  });

  final TfArg<List<Object?>>? allowedValues;

  final TfArg<List<Object?>>? deniedValues;

  Map<String, Object?> encode() => {
    if (allowedValues != null) 'allowed_values': allowedValues!.toTfJson(),
    if (deniedValues != null) 'denied_values': deniedValues!.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint_custom` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustom {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustom({
    this.customConstraint,
    required this.policyRules,
  });

  final SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomCustomConstraint?
  customConstraint;

  final List<
    SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRules
  >
  policyRules;

  Map<String, Object?> encode() => {
    if (customConstraint != null)
      'custom_constraint': customConstraint!.encode(),
    'policy_rules': [for (final e in policyRules) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomCustomConstraint {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomCustomConstraint({
    required this.actionType,
    required this.condition,
    this.description,
    this.displayName,
    required this.methodTypes,
    required this.name,
    required this.resourceTypes,
  });

  final TfArg<
    SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomCustomConstraintActionType
  >
  actionType;

  final TfArg<String> condition;

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<List<Object?>> methodTypes;

  final TfArg<String> name;

  final TfArg<List<Object?>> resourceTypes;

  Map<String, Object?> encode() => {
    'action_type': actionType.toTfJson(),
    'condition': condition.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'method_types': methodTypes.toTfJson(),
    'name': name.toTfJson(),
    'resource_types': resourceTypes.toTfJson(),
  };
}

/// `action_type` — derived from the provider schema description.
enum SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomCustomConstraintActionType
    implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomCustomConstraintActionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRules {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRules({
    this.allowAll,
    this.denyAll,
    this.enforce,
    this.condition,
    this.values,
  });

  final TfArg<bool>? allowAll;

  final TfArg<bool>? denyAll;

  final TfArg<bool>? enforce;

  final SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRulesCondition?
  condition;

  final SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRulesValues?
  values;

  Map<String, Object?> encode() => {
    if (allowAll != null) 'allow_all': allowAll!.toTfJson(),
    if (denyAll != null) 'deny_all': denyAll!.toTfJson(),
    if (enforce != null) 'enforce': enforce!.toTfJson(),
    if (condition != null) 'condition': condition!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.condition` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRulesCondition {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRulesCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint_custom.policy_rules.values` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRulesValues {
  const SecurityposturePosturePolicySetsPoliciesConstraintOrgPolicyConstraintCustomPolicyRulesValues({
    this.allowedValues,
    this.deniedValues,
  });

  final TfArg<List<Object?>>? allowedValues;

  final TfArg<List<Object?>>? deniedValues;

  Map<String, Object?> encode() => {
    if (allowedValues != null) 'allowed_values': allowedValues!.toTfJson(),
    if (deniedValues != null) 'denied_values': deniedValues!.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModule {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModule({
    this.displayName,
    this.moduleEnablementState,
    required this.config,
  });

  final TfArg<String>? displayName;

  final TfArg<
    SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleModuleEnablementState
  >?
  moduleEnablementState;

  final SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfig
  config;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (moduleEnablementState != null)
      'module_enablement_state': moduleEnablementState!.toTfJson(),
    'config': config.encode(),
  };
}

/// `module_enablement_state` — derived from the provider schema description.
enum SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleModuleEnablementState
    implements TerraformEnum {
  enablementStateUnspecified('ENABLEMENT_STATE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleModuleEnablementState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfig {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfig({
    this.description,
    this.recommendation,
    required this.severity,
    this.customOutput,
    required this.predicate,
    required this.resourceSelector,
  });

  final TfArg<String>? description;

  final TfArg<String>? recommendation;

  final TfArg<
    SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigSeverity
  >
  severity;

  final SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput?
  customOutput;

  final SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigPredicate
  predicate;

  final SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector
  resourceSelector;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (recommendation != null) 'recommendation': recommendation!.toTfJson(),
    'severity': severity.toTfJson(),
    if (customOutput != null) 'custom_output': customOutput!.encode(),
    'predicate': predicate.encode(),
    'resource_selector': resourceSelector.encode(),
  };
}

/// `severity` — derived from the provider schema description.
enum SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigSeverity
    implements TerraformEnum {
  severityUnspecified('SEVERITY_UNSPECIFIED'),
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigSeverity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput({
    this.properties,
  });

  final List<
    SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperties
  >?
  properties;

  Map<String, Object?> encode() => {
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperties {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperties({
    required this.name,
    this.valueExpression,
  });

  final TfArg<String> name;

  final SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertiesValueExpression?
  valueExpression;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (valueExpression != null) 'value_expression': valueExpression!.encode(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertiesValueExpression {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertiesValueExpression({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigPredicate {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigPredicate({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector({
    required this.resourceTypes,
  });

  final TfArg<List<Object?>> resourceTypes;

  Map<String, Object?> encode() => {'resource_types': resourceTypes.toTfJson()};
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_module` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsModule {
  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsModule({
    this.moduleEnablementState,
    required this.moduleName,
  });

  final TfArg<
    SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsModuleModuleEnablementState
  >?
  moduleEnablementState;

  final TfArg<String> moduleName;

  Map<String, Object?> encode() => {
    if (moduleEnablementState != null)
      'module_enablement_state': moduleEnablementState!.toTfJson(),
    'module_name': moduleName.toTfJson(),
  };
}

/// `module_enablement_state` — derived from the provider schema description.
enum SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsModuleModuleEnablementState
    implements TerraformEnum {
  enablementStateUnspecified('ENABLEMENT_STATE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const SecurityposturePosturePolicySetsPoliciesConstraintSecurityHealthAnalyticsModuleModuleEnablementState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_securityposture_posture`.
///
/// A Posture represents a collection of policy set including its name, state,
/// description and policy sets. A policy set includes set of policies along
/// with their definition. A posture can be created at the organization level.
/// Every update to a deployed posture creates a new posture revision with an
/// updated revision_id.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleSecurityposturePosture extends Resource {
  static const String tfType = 'google_securityposture_posture';

  GoogleSecurityposturePosture({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> parent,
    required TfArg<String> postureId,
    required TfArg<SecurityposturePostureState> state,
    required List<SecurityposturePosturePolicySets> policySets,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'location': location,
           'parent': parent,
           'posture_id': postureId,
           'state': state,
           'policy_sets': TfArg.literal([
             for (final e in policySets) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecurityposturePostureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
