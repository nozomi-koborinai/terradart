// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_security_compliance_framework_deployment`.
const Set<String> _googleCloudSecurityComplianceFrameworkDeploymentSensitive =
    <String>{};

/// Typed helper for the `cloud_control_metadata` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadata {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadata({
    required this.enforcementMode,
    required this.cloudControlDetails,
  });

  final TfArg<String> enforcementMode;

  final CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetails
  cloudControlDetails;

  Map<String, Object?> encode() => {
    'enforcement_mode': enforcementMode.toTfJson(),
    'cloud_control_details': cloudControlDetails.encode(),
  };
}

/// Typed helper for the `cloud_control_metadata.cloud_control_details` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetails {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetails({
    required this.majorRevisionId,
    required this.name,
    this.parameters,
  });

  final TfArg<String> majorRevisionId;

  final TfArg<String> name;

  final List<
    CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'major_revision_id': majorRevisionId.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `cloud_control_metadata.cloud_control_details.parameters` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParameters {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParameters({
    required this.name,
    required this.parameterValue,
  });

  final TfArg<String> name;

  final CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValue
  parameterValue;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameter_value': parameterValue.encode(),
  };
}

/// Typed helper for the `cloud_control_metadata.cloud_control_details.parameters.parameter_value` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValue {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.oneofValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValue?
  oneofValue;

  final CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (oneofValue != null) 'oneof_value': oneofValue!.encode(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `cloud_control_metadata.cloud_control_details.parameters.parameter_value.oneof_value` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValue {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  final TfArg<String>? name;

  final CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValueParameterValue?
  parameterValue;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (parameterValue != null) 'parameter_value': parameterValue!.encode(),
  };
}

/// Typed helper for the `cloud_control_metadata.cloud_control_details.parameters.parameter_value.oneof_value.parameter_value` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValueParameterValue {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringValue,
    this.stringListValue,
  });

  final TfArg<bool>? boolValue;

  final TfArg<num>? numberValue;

  final TfArg<String>? stringValue;

  final CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValueParameterValueStringListValue?
  stringListValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (numberValue != null) 'number_value': numberValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
    if (stringListValue != null) 'string_list_value': stringListValue!.encode(),
  };
}

/// Typed helper for the `cloud_control_metadata.cloud_control_details.parameters.parameter_value.oneof_value.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValueParameterValueStringListValue {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `cloud_control_metadata.cloud_control_details.parameters.parameter_value.string_list_value` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueStringListValue {
  const CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetailsParametersParameterValueStringListValue({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `framework` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentFramework {
  const CloudSecurityComplianceFrameworkDeploymentFramework({
    required this.framework,
    required this.majorRevisionId,
  });

  final TfArg<String> framework;

  final TfArg<String> majorRevisionId;

  Map<String, Object?> encode() => {
    'framework': framework.toTfJson(),
    'major_revision_id': majorRevisionId.toTfJson(),
  };
}

/// Typed helper for the `target_resource_config` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentTargetResourceConfig {
  const CloudSecurityComplianceFrameworkDeploymentTargetResourceConfig({
    this.existingTargetResource,
    this.targetResourceCreationConfig,
  });

  final TfArg<String>? existingTargetResource;

  final CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig?
  targetResourceCreationConfig;

  Map<String, Object?> encode() => {
    if (existingTargetResource != null)
      'existing_target_resource': existingTargetResource!.toTfJson(),
    if (targetResourceCreationConfig != null)
      'target_resource_creation_config': targetResourceCreationConfig!.encode(),
  };
}

/// Typed helper for the `target_resource_config.target_resource_creation_config` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig {
  const CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig({
    this.folderCreationConfig,
    this.projectCreationConfig,
  });

  final CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig?
  folderCreationConfig;

  final CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig?
  projectCreationConfig;

  Map<String, Object?> encode() => {
    if (folderCreationConfig != null)
      'folder_creation_config': folderCreationConfig!.encode(),
    if (projectCreationConfig != null)
      'project_creation_config': projectCreationConfig!.encode(),
  };
}

/// Typed helper for the `target_resource_config.target_resource_creation_config.folder_creation_config` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig {
  const CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig({
    required this.folderDisplayName,
    required this.parent,
  });

  final TfArg<String> folderDisplayName;

  final TfArg<String> parent;

  Map<String, Object?> encode() => {
    'folder_display_name': folderDisplayName.toTfJson(),
    'parent': parent.toTfJson(),
  };
}

/// Typed helper for the `target_resource_config.target_resource_creation_config.project_creation_config` block of
/// `google_cloud_security_compliance_framework_deployment` (derived from provider schema).
@immutable
final class CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig {
  const CloudSecurityComplianceFrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig({
    required this.billingAccountId,
    required this.parent,
    required this.projectDisplayName,
  });

  final TfArg<String> billingAccountId;

  final TfArg<String> parent;

  final TfArg<String> projectDisplayName;

  Map<String, Object?> encode() => {
    'billing_account_id': billingAccountId.toTfJson(),
    'parent': parent.toTfJson(),
    'project_display_name': projectDisplayName.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_security_compliance_framework_deployment`.
///
/// Framework deployments represent the assignment of a framework to a target
/// resource. Supported target resources are organizations, folders, and
/// projects.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudSecurityComplianceFrameworkDeployment extends Resource {
  static const String tfType =
      'google_cloud_security_compliance_framework_deployment';

  GoogleCloudSecurityComplianceFrameworkDeployment({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> frameworkDeploymentId,
    TfArg<String>? location,
    TfArg<String>? parent,
    required List<
      CloudSecurityComplianceFrameworkDeploymentCloudControlMetadata
    >
    cloudControlMetadata,
    required CloudSecurityComplianceFrameworkDeploymentFramework framework,
    required CloudSecurityComplianceFrameworkDeploymentTargetResourceConfig
    targetResourceConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'framework_deployment_id': frameworkDeploymentId,
           if (location != null) 'location': location,
           if (parent != null) 'parent': parent,
           'cloud_control_metadata': TfArg.literal([
             for (final e in cloudControlMetadata) e.encode(),
           ]),
           'framework': TfArg.literal(framework.encode()),
           'target_resource_config': TfArg.literal(
             targetResourceConfig.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudSecurityComplianceFrameworkDeploymentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_control_deployment_references` attribute.
  TfRef<List<Map<String, Object?>>> get cloudControlDeploymentReferences =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cloud_control_deployment_references',
      );

  /// Reference to `computed_target_resource` attribute.
  TfRef<String> get computedTargetResource =>
      TfRef.attribute<String>(this, 'computed_target_resource');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deployment_state` attribute.
  TfRef<String> get deploymentState =>
      TfRef.attribute<String>(this, 'deployment_state');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `target_resource_display_name` attribute.
  TfRef<String> get targetResourceDisplayName =>
      TfRef.attribute<String>(this, 'target_resource_display_name');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
