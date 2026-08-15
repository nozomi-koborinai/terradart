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

  final CloudSecurityComplianceCloudControlParameterSpecDefaultValue?
  defaultValue;

  final List<CloudSecurityComplianceCloudControlParameterSpecSubParameters>?
  subParameters;

  final List<CloudSecurityComplianceCloudControlParameterSpecSubstitutionRules>?
  substitutionRules;

  final CloudSecurityComplianceCloudControlParameterSpecValidation? validation;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'is_required': isRequired.toTfJson(),
    'name': name.toTfJson(),
    'value_type': valueType.toTfJson(),
    if (defaultValue != null) 'default_value': defaultValue!.encode(),
    if (subParameters != null)
      'sub_parameters': [for (final e in subParameters!) e.encode()],
    if (substitutionRules != null)
      'substitution_rules': [for (final e in substitutionRules!) e.encode()],
    if (validation != null) 'validation': validation!.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecDefaultValue {
  const CloudSecurityComplianceCloudControlParameterSpecDefaultValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValue?
  oneofValue;

  final CloudSecurityComplianceCloudControlParameterSpecDefaultValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (oneofValue != null) 'oneof_value': oneofValue!.encode(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.oneof_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValue {
  const CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValueParameterValue?
  parameterValue;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (parameterValue != null) 'parameter_value': parameterValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValueParameterValue {
  const CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.default_value.oneof_value.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.default_value.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecDefaultValueStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecDefaultValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.sub_parameters` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParameters {
  const CloudSecurityComplianceCloudControlParameterSpecSubParameters({
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

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValue?
  defaultValue;

  final List<
    CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRules
  >?
  substitutionRules;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidation?
  validation;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'is_required': isRequired.toTfJson(),
    'name': name.toTfJson(),
    'value_type': valueType.toTfJson(),
    if (defaultValue != null) 'default_value': defaultValue!.encode(),
    if (substitutionRules != null)
      'substitution_rules': [for (final e in substitutionRules!) e.encode()],
    if (validation != null) 'validation': validation!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.default_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValue?
  oneofValue;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (oneofValue != null) 'oneof_value': oneofValue!.encode(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.default_value.oneof_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValueParameterValue?
  parameterValue;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (parameterValue != null) 'parameter_value': parameterValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.default_value.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValueParameterValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValueParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.default_value.oneof_value.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValueParameterValueStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.sub_parameters.default_value.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersDefaultValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.sub_parameters.substitution_rules` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRules {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRules({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRulesAttributeSubstitutionRule?
  attributeSubstitutionRule;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRulesPlaceholderSubstitutionRule?
  placeholderSubstitutionRule;

  Map<String, Object?> encode() => {
    if (attributeSubstitutionRule != null)
      'attribute_substitution_rule': attributeSubstitutionRule!.encode(),
    if (placeholderSubstitutionRule != null)
      'placeholder_substitution_rule': placeholderSubstitutionRule!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.substitution_rules.attribute_substitution_rule` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRulesAttributeSubstitutionRule {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRulesAttributeSubstitutionRule({
    this.attribute,
  });

  final TfArg<String>? attribute;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.substitution_rules.placeholder_substitution_rule` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRulesPlaceholderSubstitutionRule {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersSubstitutionRulesPlaceholderSubstitutionRule({
    this.attribute,
  });

  final TfArg<String>? attribute;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.validation` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidation {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValues?
  allowedValues;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationIntRange?
  intRange;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationRegexpPattern?
  regexpPattern;

  Map<String, Object?> encode() => {
    if (allowedValues != null) 'allowed_values': allowedValues!.encode(),
    if (intRange != null) 'int_range': intRange!.encode(),
    if (regexpPattern != null) 'regexp_pattern': regexpPattern!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.allowed_values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValues {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValues({
    required this.values,
  });

  final List<
    CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValues
  >
  values;

  Map<String, Object?> encode() => {
    'values': [for (final e in values) e.encode()],
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.allowed_values.values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValues {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValues({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValue?
  oneofValue;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (oneofValue != null) 'oneof_value': oneofValue!.encode(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.allowed_values.values.oneof_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValueParameterValue?
  parameterValue;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (parameterValue != null) 'parameter_value': parameterValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.allowed_values.values.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValueParameterValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValueParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.allowed_values.values.oneof_value.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValueParameterValueStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesOneofValueParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.allowed_values.values.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationAllowedValuesValuesStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.int_range` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationIntRange {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationIntRange({
    required this.max,
    required this.min,
  });

  final TfArg<String> max;

  final TfArg<String> min;

  Map<String, Object?> encode() => {
    'max': max.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `parameter_spec.sub_parameters.validation.regexp_pattern` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationRegexpPattern {
  const CloudSecurityComplianceCloudControlParameterSpecSubParametersValidationRegexpPattern({
    required this.pattern,
  });

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {'pattern': pattern.toTfJson()};
}

/// Typed helper for the `parameter_spec.substitution_rules` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubstitutionRules {
  const CloudSecurityComplianceCloudControlParameterSpecSubstitutionRules({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  final CloudSecurityComplianceCloudControlParameterSpecSubstitutionRulesAttributeSubstitutionRule?
  attributeSubstitutionRule;

  final CloudSecurityComplianceCloudControlParameterSpecSubstitutionRulesPlaceholderSubstitutionRule?
  placeholderSubstitutionRule;

  Map<String, Object?> encode() => {
    if (attributeSubstitutionRule != null)
      'attribute_substitution_rule': attributeSubstitutionRule!.encode(),
    if (placeholderSubstitutionRule != null)
      'placeholder_substitution_rule': placeholderSubstitutionRule!.encode(),
  };
}

/// Typed helper for the `parameter_spec.substitution_rules.attribute_substitution_rule` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubstitutionRulesAttributeSubstitutionRule {
  const CloudSecurityComplianceCloudControlParameterSpecSubstitutionRulesAttributeSubstitutionRule({
    this.attribute,
  });

  final TfArg<String>? attribute;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
}

/// Typed helper for the `parameter_spec.substitution_rules.placeholder_substitution_rule` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecSubstitutionRulesPlaceholderSubstitutionRule {
  const CloudSecurityComplianceCloudControlParameterSpecSubstitutionRulesPlaceholderSubstitutionRule({
    this.attribute,
  });

  final TfArg<String>? attribute;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
}

/// Typed helper for the `parameter_spec.validation` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidation {
  const CloudSecurityComplianceCloudControlParameterSpecValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  final CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValues?
  allowedValues;

  final CloudSecurityComplianceCloudControlParameterSpecValidationIntRange?
  intRange;

  final CloudSecurityComplianceCloudControlParameterSpecValidationRegexpPattern?
  regexpPattern;

  Map<String, Object?> encode() => {
    if (allowedValues != null) 'allowed_values': allowedValues!.encode(),
    if (intRange != null) 'int_range': intRange!.encode(),
    if (regexpPattern != null) 'regexp_pattern': regexpPattern!.encode(),
  };
}

/// Typed helper for the `parameter_spec.validation.allowed_values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValues {
  const CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValues({
    required this.values,
  });

  final List<
    CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValues
  >
  values;

  Map<String, Object?> encode() => {
    'values': [for (final e in values) e.encode()],
  };
}

/// Typed helper for the `parameter_spec.validation.allowed_values.values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValues {
  const CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValues({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValue?
  oneofValue;

  final CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (oneofValue != null) 'oneof_value': oneofValue!.encode(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.validation.allowed_values.values.oneof_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValue {
  const CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValueParameterValue?
  parameterValue;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (parameterValue != null) 'parameter_value': parameterValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.validation.allowed_values.values.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValueParameterValue {
  const CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValueParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `parameter_spec.validation.allowed_values.values.oneof_value.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValueParameterValueStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesOneofValueParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.validation.allowed_values.values.string_list_value` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesStringListValue {
  const CloudSecurityComplianceCloudControlParameterSpecValidationAllowedValuesValuesStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `parameter_spec.validation.int_range` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationIntRange {
  const CloudSecurityComplianceCloudControlParameterSpecValidationIntRange({
    required this.max,
    required this.min,
  });

  final TfArg<String> max;

  final TfArg<String> min;

  Map<String, Object?> encode() => {
    'max': max.toTfJson(),
    'min': min.toTfJson(),
  };
}

/// Typed helper for the `parameter_spec.validation.regexp_pattern` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlParameterSpecValidationRegexpPattern {
  const CloudSecurityComplianceCloudControlParameterSpecValidationRegexpPattern({
    required this.pattern,
  });

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {'pattern': pattern.toTfJson()};
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

  final TfArg<List<Object?>> ruleActionTypes;

  final CloudSecurityComplianceCloudControlRulesCelExpression? celExpression;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'rule_action_types': ruleActionTypes.toTfJson(),
    if (celExpression != null) 'cel_expression': celExpression!.encode(),
  };
}

/// Typed helper for the `rules.cel_expression` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlRulesCelExpression {
  const CloudSecurityComplianceCloudControlRulesCelExpression({
    required this.expression,
    this.resourceTypesValues,
  });

  final TfArg<String> expression;

  final CloudSecurityComplianceCloudControlRulesCelExpressionResourceTypesValues?
  resourceTypesValues;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    if (resourceTypesValues != null)
      'resource_types_values': resourceTypesValues!.encode(),
  };
}

/// Typed helper for the `rules.cel_expression.resource_types_values` block of
/// `google_cloud_security_compliance_cloud_control` (derived from provider schema).
@immutable
final class CloudSecurityComplianceCloudControlRulesCelExpressionResourceTypesValues {
  const CloudSecurityComplianceCloudControlRulesCelExpressionResourceTypesValues({
    required this.values,
  });

  final TfArg<List<Object?>> values;

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

  GoogleCloudSecurityComplianceCloudControl({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (categories != null) 'categories': categories,
           'cloud_control_id': cloudControlId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           if (findingCategory != null) 'finding_category': findingCategory,
           'location': location,
           if (parent != null) 'parent': parent,
           if (remediationSteps != null) 'remediation_steps': remediationSteps,
           if (severity != null) 'severity': severity,
           if (supportedCloudProviders != null)
             'supported_cloud_providers': supportedCloudProviders,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
