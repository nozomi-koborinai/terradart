// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_securityposture_posture`.
const Set<String> _googleSecurityposturePostureSensitive = <String>{};

/// Securityposture Posture enum for `state`.
extension type const SecurityposturePostureState._(TfArg<String> _)
    implements TfArg<String> {
  SecurityposturePostureState.variable(String name)
    : this._(TfArg.variable(name));
  SecurityposturePostureState.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityposturePostureState.arg(TfArg<String> arg) : this._(arg);

  static const deprecated = SecurityposturePostureState._(
    TfArgLiteral('DEPRECATED'),
  );
  static const draft = SecurityposturePostureState._(TfArgLiteral('DRAFT'));
  static const active = SecurityposturePostureState._(TfArgLiteral('ACTIVE'));

  static const List<SecurityposturePostureState> values = [
    deprecated,
    draft,
    active,
  ];
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

  final List<SecurityposturePosturePolicies> policies;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'policy_set_id': policySetId.toTfJson(),
    'policies': [for (final e in policies) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePolicies {
  const SecurityposturePosturePolicies({
    this.description,
    required this.policyId,
    this.complianceStandards,
    required this.constraint,
  });

  final TfArg<String>? description;

  final TfArg<String> policyId;

  final List<SecurityposturePostureComplianceStandards>? complianceStandards;

  final SecurityposturePostureConstraint constraint;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
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
final class SecurityposturePostureComplianceStandards {
  const SecurityposturePostureComplianceStandards({
    this.control,
    this.standard,
  });

  final TfArg<String>? control;

  final TfArg<String>? standard;

  @internal
  Map<String, Object?> encode() => {
    'control': ?control?.toTfJson(),
    'standard': ?standard?.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureConstraint {
  const SecurityposturePostureConstraint({
    this.orgPolicyConstraint,
    this.orgPolicyConstraintCustom,
    this.securityHealthAnalyticsCustomModule,
    this.securityHealthAnalyticsModule,
  });

  final SecurityposturePostureOrgPolicyConstraint? orgPolicyConstraint;

  final SecurityposturePostureOrgPolicyConstraintCustom?
  orgPolicyConstraintCustom;

  final SecurityposturePostureSecurityHealthAnalyticsCustomModule?
  securityHealthAnalyticsCustomModule;

  final SecurityposturePostureSecurityHealthAnalyticsModule?
  securityHealthAnalyticsModule;

  @internal
  Map<String, Object?> encode() => {
    'org_policy_constraint': ?orgPolicyConstraint?.encode(),
    'org_policy_constraint_custom': ?orgPolicyConstraintCustom?.encode(),
    'security_health_analytics_custom_module':
        ?securityHealthAnalyticsCustomModule?.encode(),
    'security_health_analytics_module': ?securityHealthAnalyticsModule
        ?.encode(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureOrgPolicyConstraint {
  const SecurityposturePostureOrgPolicyConstraint({
    required this.cannedConstraintId,
    required this.policyRules,
  });

  final TfArg<String> cannedConstraintId;

  final List<SecurityposturePosturePolicyRules> policyRules;

  @internal
  Map<String, Object?> encode() => {
    'canned_constraint_id': cannedConstraintId.toTfJson(),
    'policy_rules': [for (final e in policyRules) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint.policy_rules` block of
/// `google_securityposture_posture` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SecurityposturePosturePolicyRules {
  const SecurityposturePosturePolicyRules({
    this.allowAll,
    this.denyAll,
    this.enforce,
    this.condition,
    this.values,
  });

  final TfArg<bool>? allowAll;

  final TfArg<bool>? denyAll;

  final TfArg<bool>? enforce;

  final SecurityposturePostureCondition? condition;

  final SecurityposturePostureValues? values;

  @internal
  Map<String, Object?> encode() => {
    'allow_all': ?allowAll?.toTfJson(),
    'deny_all': ?denyAll?.toTfJson(),
    'enforce': ?enforce?.toTfJson(),
    'condition': ?condition?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint.policy_rules.condition` block of
/// `google_securityposture_posture` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SecurityposturePostureCondition {
  const SecurityposturePostureCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint.policy_rules.values` block of
/// `google_securityposture_posture` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SecurityposturePostureValues {
  const SecurityposturePostureValues({this.allowedValues, this.deniedValues});

  final TfArg<List<String>>? allowedValues;

  final TfArg<List<String>>? deniedValues;

  @internal
  Map<String, Object?> encode() => {
    'allowed_values': ?allowedValues?.toTfJson(),
    'denied_values': ?deniedValues?.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint_custom` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureOrgPolicyConstraintCustom {
  const SecurityposturePostureOrgPolicyConstraintCustom({
    this.customConstraint,
    required this.policyRules,
  });

  final SecurityposturePostureCustomConstraint? customConstraint;

  final List<SecurityposturePosturePolicyRules> policyRules;

  @internal
  Map<String, Object?> encode() => {
    'custom_constraint': ?customConstraint?.encode(),
    'policy_rules': [for (final e in policyRules) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies.constraint.org_policy_constraint_custom.custom_constraint` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureCustomConstraint {
  const SecurityposturePostureCustomConstraint({
    required this.actionType,
    required this.condition,
    this.description,
    this.displayName,
    required this.methodTypes,
    required this.name,
    required this.resourceTypes,
  });

  final SecurityposturePostureActionType actionType;

  final TfArg<String> condition;

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<List<String>> methodTypes;

  final TfArg<String> name;

  final TfArg<List<String>> resourceTypes;

  @internal
  Map<String, Object?> encode() => {
    'action_type': actionType.toTfJson(),
    'condition': condition.toTfJson(),
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'method_types': methodTypes.toTfJson(),
    'name': name.toTfJson(),
    'resource_types': resourceTypes.toTfJson(),
  };
}

/// `action_type` — derived from the provider schema description.
extension type const SecurityposturePostureActionType._(TfArg<String> _)
    implements TfArg<String> {
  SecurityposturePostureActionType.variable(String name)
    : this._(TfArg.variable(name));
  SecurityposturePostureActionType.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityposturePostureActionType.arg(TfArg<String> arg) : this._(arg);

  static const allow = SecurityposturePostureActionType._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = SecurityposturePostureActionType._(TfArgLiteral('DENY'));

  static const List<SecurityposturePostureActionType> values = [allow, deny];
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureSecurityHealthAnalyticsCustomModule {
  const SecurityposturePostureSecurityHealthAnalyticsCustomModule({
    this.displayName,
    this.moduleEnablementState,
    required this.config,
  });

  final TfArg<String>? displayName;

  final SecurityposturePostureModuleEnablementState? moduleEnablementState;

  final SecurityposturePostureConfig config;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'module_enablement_state': ?moduleEnablementState?.toTfJson(),
    'config': config.encode(),
  };
}

/// `module_enablement_state` — derived from the provider schema description.
extension type const SecurityposturePostureModuleEnablementState._(
  TfArg<String> _
) implements TfArg<String> {
  SecurityposturePostureModuleEnablementState.variable(String name)
    : this._(TfArg.variable(name));
  SecurityposturePostureModuleEnablementState.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityposturePostureModuleEnablementState.arg(TfArg<String> arg)
    : this._(arg);

  static const enablementStateUnspecified =
      SecurityposturePostureModuleEnablementState._(
        TfArgLiteral('ENABLEMENT_STATE_UNSPECIFIED'),
      );
  static const enabled = SecurityposturePostureModuleEnablementState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SecurityposturePostureModuleEnablementState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SecurityposturePostureModuleEnablementState> values = [
    enablementStateUnspecified,
    enabled,
    disabled,
  ];
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureConfig {
  const SecurityposturePostureConfig({
    this.description,
    this.recommendation,
    required this.severity,
    this.customOutput,
    required this.predicate,
    required this.resourceSelector,
  });

  final TfArg<String>? description;

  final TfArg<String>? recommendation;

  final SecurityposturePostureSeverity severity;

  final SecurityposturePostureCustomOutput? customOutput;

  final SecurityposturePosturePredicate predicate;

  final SecurityposturePostureResourceSelector resourceSelector;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'recommendation': ?recommendation?.toTfJson(),
    'severity': severity.toTfJson(),
    'custom_output': ?customOutput?.encode(),
    'predicate': predicate.encode(),
    'resource_selector': resourceSelector.encode(),
  };
}

/// `severity` — derived from the provider schema description.
extension type const SecurityposturePostureSeverity._(TfArg<String> _)
    implements TfArg<String> {
  SecurityposturePostureSeverity.variable(String name)
    : this._(TfArg.variable(name));
  SecurityposturePostureSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityposturePostureSeverity.arg(TfArg<String> arg) : this._(arg);

  static const severityUnspecified = SecurityposturePostureSeverity._(
    TfArgLiteral('SEVERITY_UNSPECIFIED'),
  );
  static const critical = SecurityposturePostureSeverity._(
    TfArgLiteral('CRITICAL'),
  );
  static const high = SecurityposturePostureSeverity._(TfArgLiteral('HIGH'));
  static const medium = SecurityposturePostureSeverity._(
    TfArgLiteral('MEDIUM'),
  );
  static const low = SecurityposturePostureSeverity._(TfArgLiteral('LOW'));

  static const List<SecurityposturePostureSeverity> values = [
    severityUnspecified,
    critical,
    high,
    medium,
    low,
  ];
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureCustomOutput {
  const SecurityposturePostureCustomOutput({this.properties});

  final List<SecurityposturePostureProperties>? properties;

  @internal
  Map<String, Object?> encode() => {
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureProperties {
  const SecurityposturePostureProperties({
    required this.name,
    this.valueExpression,
  });

  final TfArg<String> name;

  final SecurityposturePostureValueExpression? valueExpression;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_expression': ?valueExpression?.encode(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.custom_output.properties.value_expression` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureValueExpression {
  const SecurityposturePostureValueExpression({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.predicate` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePosturePredicate {
  const SecurityposturePosturePredicate({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_custom_module.config.resource_selector` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureResourceSelector {
  const SecurityposturePostureResourceSelector({required this.resourceTypes});

  final TfArg<List<String>> resourceTypes;

  @internal
  Map<String, Object?> encode() => {'resource_types': resourceTypes.toTfJson()};
}

/// Typed helper for the `policy_sets.policies.constraint.security_health_analytics_module` block of
/// `google_securityposture_posture` (derived from provider schema).
@immutable
final class SecurityposturePostureSecurityHealthAnalyticsModule {
  const SecurityposturePostureSecurityHealthAnalyticsModule({
    this.moduleEnablementState,
    required this.moduleName,
  });

  final SecurityposturePostureModuleEnablementState? moduleEnablementState;

  final TfArg<String> moduleName;

  @internal
  Map<String, Object?> encode() => {
    'module_enablement_state': ?moduleEnablementState?.toTfJson(),
    'module_name': moduleName.toTfJson(),
  };
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

  GoogleSecurityposturePosture(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> parent,
    required TfArg<String> postureId,
    required SecurityposturePostureState state,
    required List<SecurityposturePosturePolicySets> policySets,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecurityposturePosture>`.
  RefTo<GoogleSecurityposturePosture> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `posture_id` attribute.
  TfRef<String> get postureId => TfRef.attribute<String>(this, 'posture_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
