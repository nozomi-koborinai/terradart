// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_security_compliance_cloud_control`.
const Set<String> _googleCloudSecurityComplianceCloudControlSensitive =
    <String>{};

/// Typed helper for the `parameter_spec` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpec {
  const CloudSecurityComplianceCloudControlParameterSpec({
    this.description,
    this.displayName,
    required this.isRequired,
    required this.name,
    required this.valueType,
    this.defaultValue,
    this.subParameters,
    this.substitutionRules,
    this.validation,
  });

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<bool> isRequired;

  final TfArg<String> name;

  final TfArg<String> valueType;

  final CloudSecurityComplianceCloudControlDefaultValue? defaultValue;

  final List<CloudSecurityComplianceCloudControlSubParameters>? subParameters;

  final List<CloudSecurityComplianceCloudControlSubstitutionRules>?
  substitutionRules;

  final CloudSecurityComplianceCloudControlValidation? validation;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'is_required': isRequired.toTfJson(),
    'name': name.toTfJson(),
    'value_type': valueType.toTfJson(),
    'default_value': ?defaultValue?.encode(),
    if (subParameters != null)
      'sub_parameters': [for (final e in subParameters!) e.encode()],
    if (substitutionRules != null)
      'substitution_rules': [for (final e in substitutionRules!) e.encode()],
    'validation': ?validation?.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlDefaultValue {
  const CloudSecurityComplianceCloudControlDefaultValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlOneofValue? oneofValue;

  final CloudSecurityComplianceCloudControlStringListValue? stringListValue;

  @internal
  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'number_value': ?numberValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'oneof_value': ?oneofValue?.encode(),
    'string_list_value': ?stringListValue?.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.oneof_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlOneofValue {
  const CloudSecurityComplianceCloudControlOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceCloudControlParameterValue? parameterValue;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'parameter_value': ?parameterValue?.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlParameterValue {
  const CloudSecurityComplianceCloudControlParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterValueOneofValue? oneofValue;

  final CloudSecurityComplianceCloudControlStringListValue? stringListValue;

  @internal
  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'number_value': ?numberValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'oneof_value': ?oneofValue?.encode(),
    'string_list_value': ?stringListValue?.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.oneof_value.parameter_value.oneof_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlParameterValueOneofValue {
  const CloudSecurityComplianceCloudControlParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceCloudControlOneofValueParameterValue?
  parameterValue;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'parameter_value': ?parameterValue?.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.oneof_value.parameter_value.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlOneofValueParameterValue {
  const CloudSecurityComplianceCloudControlOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlStringListValue? stringListValue;

  @internal
  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'number_value': ?numberValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'string_list_value': ?stringListValue?.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlStringListValue {
  const CloudSecurityComplianceCloudControlStringListValue({
    required this.values,
  });

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.sub_parameters` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlSubParameters {
  const CloudSecurityComplianceCloudControlSubParameters({
    this.description,
    this.displayName,
    required this.isRequired,
    required this.name,
    required this.valueType,
    this.defaultValue,
    this.subParameters,
    this.substitutionRules,
    this.validation,
  });

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<bool> isRequired;

  final TfArg<String> name;

  final TfArg<String> valueType;

  final CloudSecurityComplianceCloudControlDefaultValue? defaultValue;

  final List<CloudSecurityComplianceCloudControlSubParametersSubParameters>?
  subParameters;

  final List<CloudSecurityComplianceCloudControlSubstitutionRules>?
  substitutionRules;

  final CloudSecurityComplianceCloudControlValidation? validation;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'is_required': isRequired.toTfJson(),
    'name': name.toTfJson(),
    'value_type': valueType.toTfJson(),
    'default_value': ?defaultValue?.encode(),
    if (subParameters != null)
      'sub_parameters': [for (final e in subParameters!) e.encode()],
    if (substitutionRules != null)
      'substitution_rules': [for (final e in substitutionRules!) e.encode()],
    'validation': ?validation?.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.sub_parameters` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlSubParametersSubParameters {
  const CloudSecurityComplianceCloudControlSubParametersSubParameters({
    this.description,
    this.displayName,
    required this.isRequired,
    required this.name,
    required this.valueType,
    this.defaultValue,
    this.substitutionRules,
    this.validation,
  });

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<bool> isRequired;

  final TfArg<String> name;

  final TfArg<String> valueType;

  final CloudSecurityComplianceCloudControlSubParametersDefaultValue?
  defaultValue;

  final List<CloudSecurityComplianceCloudControlSubstitutionRules>?
  substitutionRules;

  final CloudSecurityComplianceCloudControlSubParametersValidation? validation;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'is_required': isRequired.toTfJson(),
    'name': name.toTfJson(),
    'value_type': valueType.toTfJson(),
    'default_value': ?defaultValue?.encode(),
    if (substitutionRules != null)
      'substitution_rules': [for (final e in substitutionRules!) e.encode()],
    'validation': ?validation?.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.sub_parameters.default_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlSubParametersDefaultValue {
  const CloudSecurityComplianceCloudControlSubParametersDefaultValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterValueOneofValue? oneofValue;

  final CloudSecurityComplianceCloudControlStringListValue? stringListValue;

  @internal
  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'number_value': ?numberValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'oneof_value': ?oneofValue?.encode(),
    'string_list_value': ?stringListValue?.encode(),
  };
}

/// Typed helper for the `parameter_spec.substitution_rules` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlSubstitutionRules {
  const CloudSecurityComplianceCloudControlSubstitutionRules({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  final CloudSecurityComplianceCloudControlAttributeSubstitutionRule?
  attributeSubstitutionRule;

  final CloudSecurityComplianceCloudControlPlaceholderSubstitutionRule?
  placeholderSubstitutionRule;

  @internal
  Map<String, Object?> encode() => {
    'attribute_substitution_rule': ?attributeSubstitutionRule?.encode(),
    'placeholder_substitution_rule': ?placeholderSubstitutionRule?.encode(),
  };
}

/// Typed helper for the `parameter_spec.substitution_rules.attribute_substitution_rule` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlAttributeSubstitutionRule {
  const CloudSecurityComplianceCloudControlAttributeSubstitutionRule({
    this.attribute,
  });

  final TfArg<String>? attribute;

  @internal
  Map<String, Object?> encode() => {'attribute': ?attribute?.toTfJson()};
}

/// Typed helper for the `parameter_spec.substitution_rules.placeholder_substitution_rule` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlPlaceholderSubstitutionRule {
  const CloudSecurityComplianceCloudControlPlaceholderSubstitutionRule({
    this.attribute,
  });

  final TfArg<String>? attribute;

  @internal
  Map<String, Object?> encode() => {'attribute': ?attribute?.toTfJson()};
}

/// Typed helper for the `parameter_spec.sub_parameters.sub_parameters.validation` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlSubParametersValidation {
  const CloudSecurityComplianceCloudControlSubParametersValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  final CloudSecurityComplianceCloudControlValidationAllowedValues?
  allowedValues;

  final CloudSecurityComplianceCloudControlIntRange? intRange;

  final CloudSecurityComplianceCloudControlRegexpPattern? regexpPattern;

  @internal
  Map<String, Object?> encode() => {
    'allowed_values': ?allowedValues?.encode(),
    'int_range': ?intRange?.encode(),
    'regexp_pattern': ?regexpPattern?.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.sub_parameters.validation.allowed_values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlValidationAllowedValues {
  const CloudSecurityComplianceCloudControlValidationAllowedValues({
    required this.values,
  });

  final List<CloudSecurityComplianceCloudControlAllowedValuesValues> values;

  @internal
  Map<String, Object?> encode() => {
    'values': [for (final e in values) e.encode()],
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.sub_parameters.validation.allowed_values.values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlAllowedValuesValues {
  const CloudSecurityComplianceCloudControlAllowedValuesValues({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterValueOneofValue? oneofValue;

  final CloudSecurityComplianceCloudControlStringListValue? stringListValue;

  @internal
  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'number_value': ?numberValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'oneof_value': ?oneofValue?.encode(),
    'string_list_value': ?stringListValue?.encode(),
  };
}

/// Typed helper for the `parameter_spec.validation.int_range` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlIntRange {
  const CloudSecurityComplianceCloudControlIntRange({
    required this.max,
    required this.min,
  });

  final TfArg<String> max;

  final TfArg<String> min;

  @internal
  Map<String, Object?> encode() => {
    'max': max.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `parameter_spec.validation.regexp_pattern` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlRegexpPattern {
  const CloudSecurityComplianceCloudControlRegexpPattern({
    required this.pattern,
  });

  final TfArg<String> pattern;

  @internal
  Map<String, Object?> encode() => {'pattern': pattern.toTfJson()};
}

/// Typed helper for the `parameter_spec.validation` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlValidation {
  const CloudSecurityComplianceCloudControlValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  final CloudSecurityComplianceCloudControlAllowedValues? allowedValues;

  final CloudSecurityComplianceCloudControlIntRange? intRange;

  final CloudSecurityComplianceCloudControlRegexpPattern? regexpPattern;

  @internal
  Map<String, Object?> encode() => {
    'allowed_values': ?allowedValues?.encode(),
    'int_range': ?intRange?.encode(),
    'regexp_pattern': ?regexpPattern?.encode(),
  };
}

/// Typed helper for the `parameter_spec.validation.allowed_values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlAllowedValues {
  const CloudSecurityComplianceCloudControlAllowedValues({
    required this.values,
  });

  final List<CloudSecurityComplianceCloudControlValues> values;

  @internal
  Map<String, Object?> encode() => {
    'values': [for (final e in values) e.encode()],
  };
}

/// Typed helper for the `parameter_spec.validation.allowed_values.values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudSecurityComplianceCloudControlValues {
  const CloudSecurityComplianceCloudControlValues({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlOneofValue? oneofValue;

  final CloudSecurityComplianceCloudControlStringListValue? stringListValue;

  @internal
  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'number_value': ?numberValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
    'oneof_value': ?oneofValue?.encode(),
    'string_list_value': ?stringListValue?.encode(),
  };
}

/// Typed helper for the `rules` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlRules {
  const CloudSecurityComplianceCloudControlRules({
    this.description,
    required this.ruleActionTypes,
    this.celExpression,
  });

  final TfArg<String>? description;

  final TfArg<List<String>> ruleActionTypes;

  final CloudSecurityComplianceCloudControlCelExpression? celExpression;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'rule_action_types': ruleActionTypes.toTfJson(),
    'cel_expression': ?celExpression?.encode(),
  };
}

/// Typed helper for the `rules.cel_expression` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlCelExpression {
  const CloudSecurityComplianceCloudControlCelExpression({
    required this.expression,
    this.resourceTypesValues,
  });

  final TfArg<String> expression;

  final CloudSecurityComplianceCloudControlResourceTypesValues?
  resourceTypesValues;

  @internal
  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'resource_types_values': ?resourceTypesValues?.encode(),
  };
}

/// Typed helper for the `rules.cel_expression.resource_types_values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlResourceTypesValues {
  const CloudSecurityComplianceCloudControlResourceTypesValues({
    required this.values,
  });

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Factory wrapper for `google_cloud_security_compliance_cloud_control`.
///
/// Cloud controls are the building blocks that make up frameworks. Each cloud
/// control is a unit encapsulating various platform-specific logic for
/// prevention, detection, and audit.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudSecurityComplianceCloudControl extends Resource {
  static const String tfType = 'google_cloud_security_compliance_cloud_control';

  GoogleCloudSecurityComplianceCloudControl(
    super.localName, {
    TfArg<List<String>>? categories,
    required TfArg<String> cloudControlId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<String>? findingCategory,
    required TfArg<String> location,
    TfArg<String>? parent,
    TfArg<String>? remediationSteps,
    TfArg<String>? severity,
    TfArg<List<String>>? supportedCloudProviders,
    List<CloudSecurityComplianceCloudControlParameterSpec>? parameterSpec,
    List<CloudSecurityComplianceCloudControlRules>? rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'categories': ?categories,
           'cloud_control_id': cloudControlId,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'finding_category': ?findingCategory,
           'location': location,
           'parent': ?parent,
           'remediation_steps': ?remediationSteps,
           'severity': ?severity,
           'supported_cloud_providers': ?supportedCloudProviders,
           if (parameterSpec != null)
             'parameter_spec': TfArg.literal([
               for (final e in parameterSpec) e.encode(),
             ]),
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudSecurityComplianceCloudControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudSecurityComplianceCloudControl>`.
  RefTo<GoogleCloudSecurityComplianceCloudControl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `major_revision_id` attribute.
  TfRef<String> get majorRevisionId =>
      TfRef.attribute<String>(this, 'major_revision_id');

  /// Reference to `related_frameworks` attribute.
  TfRef<List<String>> get relatedFrameworks =>
      TfRef.attribute<List<String>>(this, 'related_frameworks');

  /// Reference to `supported_enforcement_modes` attribute.
  TfRef<List<String>> get supportedEnforcementModes =>
      TfRef.attribute<List<String>>(this, 'supported_enforcement_modes');

  /// Reference to `supported_target_resource_types` attribute.
  TfRef<List<String>> get supportedTargetResourceTypes =>
      TfRef.attribute<List<String>>(this, 'supported_target_resource_types');

  /// Reference to `categories` attribute.
  TfRef<List<String>> get categories =>
      TfRef.attribute<List<String>>(this, 'categories');

  /// Reference to `cloud_control_id` attribute.
  TfRef<String> get cloudControlId =>
      TfRef.attribute<String>(this, 'cloud_control_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `finding_category` attribute.
  TfRef<String> get findingCategory =>
      TfRef.attribute<String>(this, 'finding_category');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `remediation_steps` attribute.
  TfRef<String> get remediationSteps =>
      TfRef.attribute<String>(this, 'remediation_steps');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `supported_cloud_providers` attribute.
  TfRef<List<String>> get supportedCloudProviders =>
      TfRef.attribute<List<String>>(this, 'supported_cloud_providers');
}
