// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_security_compliance_framework`.
const Set<String> _googleCloudSecurityComplianceFrameworkSensitive = <String>{};

/// Typed helper for the `cloud_control_details` block of
/// `google_cloud_security_compliance_framework` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkCloudControlDetails {
  const CloudSecurityComplianceFrameworkCloudControlDetails({
    required this.majorRevisionId,
    required this.name,
    this.parameters,
  });

  final TfArg<String> majorRevisionId;

  final TfArg<String> name;

  final List<CloudSecurityComplianceFrameworkCloudControlDetailsParameters>?
  parameters;

  Map<String, Object?> encode() => {
    'major_revision_id': majorRevisionId.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `cloud_control_details.parameters` block of
/// `google_cloud_security_compliance_framework` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkCloudControlDetailsParameters {
  const CloudSecurityComplianceFrameworkCloudControlDetailsParameters({
    required this.name,
    required this.parameterValue,
  });

  final TfArg<String> name;

  final CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValue
  parameterValue;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value': parameterValue.encode(),
  };
}

/// Typed helper for the `cloud_control_details.parameters.parameter_value` block of
/// `google_cloud_security_compliance_framework` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValue {
  const CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValue?
  oneofValue;

  final CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (oneofValue != null) 'oneof_value': oneofValue!.encode(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `cloud_control_details.parameters.parameter_value.oneof_value` block of
/// `google_cloud_security_compliance_framework` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValue {
  const CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValueParameterValue?
  parameterValue;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (parameterValue != null) 'parameter_value': parameterValue!.encode(),
  };
}

/// Typed helper for the `cloud_control_details.parameters.parameter_value.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_framework` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValueParameterValue {
  const CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValueParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `cloud_control_details.parameters.parameter_value.oneof_value.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_framework` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValueParameterValueStringListValue {
  const CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `cloud_control_details.parameters.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_framework` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueStringListValue {
  const CloudSecurityComplianceFrameworkCloudControlDetailsParametersParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Factory wrapper for `google_cloud_security_compliance_framework`.
///
/// Frameworks allow you to monitor and enforce compliance and security
/// requirements. Manage compliance by assigning built-in or custom frameworks
/// to resources.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudSecurityComplianceFramework extends Resource {
  static const String tfType = 'google_cloud_security_compliance_framework';

  GoogleCloudSecurityComplianceFramework({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> frameworkId,
    required TfArg<String> location,
    TfArg<String>? parent,
    List<CloudSecurityComplianceFrameworkCloudControlDetails>?
    cloudControlDetails,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           'framework_id': frameworkId,
           'location': location,
           if (parent != null) 'parent': parent,
           if (cloudControlDetails != null)
             'cloud_control_details': TfArg.literal([
               for (final e in cloudControlDetails) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudSecurityComplianceFrameworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `category` attribute.
  TfRef<List<String>> get category =>
      TfRef.attribute<List<String>>(this, 'category');

  /// Reference to `major_revision_id` attribute.
  TfRef<String> get majorRevisionId =>
      TfRef.attribute<String>(this, 'major_revision_id');

  /// Reference to `supported_cloud_providers` attribute.
  TfRef<List<String>> get supportedCloudProviders =>
      TfRef.attribute<List<String>>(this, 'supported_cloud_providers');

  /// Reference to `supported_enforcement_modes` attribute.
  TfRef<List<String>> get supportedEnforcementModes =>
      TfRef.attribute<List<String>>(this, 'supported_enforcement_modes');

  /// Reference to `supported_target_resource_types` attribute.
  TfRef<List<String>> get supportedTargetResourceTypes =>
      TfRef.attribute<List<String>>(this, 'supported_target_resource_types');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
