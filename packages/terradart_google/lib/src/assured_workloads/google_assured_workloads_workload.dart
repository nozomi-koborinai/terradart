// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_assured_workloads_workload`.
const Set<String> _googleAssuredWorkloadsWorkloadSensitive = <String>{};

/// Assured Workloads Workload Compliance enum for `compliance_regime`.
enum AssuredWorkloadsWorkloadComplianceRegime implements TerraformEnum {
  complianceRegimeUnspecified('COMPLIANCE_REGIME_UNSPECIFIED'),
  il4ComplianceRegime('IL4'),
  cjis('CJIS'),
  fedrampHigh('FEDRAMP_HIGH'),
  fedrampModerate('FEDRAMP_MODERATE'),
  usRegionalAccess('US_REGIONAL_ACCESS'),
  hipaa('HIPAA'),
  hitrust('HITRUST'),
  euRegionsAndSupport('EU_REGIONS_AND_SUPPORT'),
  caRegionsAndSupport('CA_REGIONS_AND_SUPPORT'),
  itar('ITAR'),
  auRegionsAndUsSupport('AU_REGIONS_AND_US_SUPPORT'),
  assuredWorkloadsForPartners('ASSURED_WORKLOADS_FOR_PARTNERS'),
  isrRegions('ISR_REGIONS'),
  isrRegionsAndSupport('ISR_REGIONS_AND_SUPPORT'),
  caProtectedB('CA_PROTECTED_B'),
  il5ComplianceRegime('IL5'),
  il2ComplianceRegime('IL2'),
  jpRegionsAndSupport('JP_REGIONS_AND_SUPPORT'),
  ksaRegionsAndSupportWithSovereigntyControls(
    'KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS',
  ),
  regionalControls('REGIONAL_CONTROLS'),
  healthcareAndLifeSciencesControls('HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS'),
  healthcareAndLifeSciencesControlsUsSupport(
    'HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT',
  ),
  irs1075('IRS_1075');

  const AssuredWorkloadsWorkloadComplianceRegime(this.terraformValue);
  @override
  final String terraformValue;
}

/// Assured Workloads Workload enum for `partner`.
enum AssuredWorkloadsWorkloadPartner implements TerraformEnum {
  partnerUnspecified('PARTNER_UNSPECIFIED'),
  localControlsByS3ns('LOCAL_CONTROLS_BY_S3NS'),
  sovereignControlsByTSystems('SOVEREIGN_CONTROLS_BY_T_SYSTEMS'),
  sovereignControlsBySiaMinsait('SOVEREIGN_CONTROLS_BY_SIA_MINSAIT'),
  sovereignControlsByPsn('SOVEREIGN_CONTROLS_BY_PSN'),
  sovereignControlsByCntxt('SOVEREIGN_CONTROLS_BY_CNTXT'),
  sovereignControlsByCntxtNoEkm('SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM'),
  spainDataBoundaryByTelefonica('SPAIN_DATA_BOUNDARY_BY_TELEFONICA');

  const AssuredWorkloadsWorkloadPartner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `kms_settings` block of
/// `google_assured_workloads_workload` (derived from provider schema).
@immutable
final class AssuredWorkloadsWorkloadKmsSettings {
  const AssuredWorkloadsWorkloadKmsSettings({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  final TfArg<String> nextRotationTime;

  final TfArg<String> rotationPeriod;

  Map<String, Object?> encode() => {
    'next_rotation_time': nextRotationTime.toTfJson(),
    'rotation_period': rotationPeriod.toTfJson(),
  };
}

/// Typed helper for the `partner_permissions` block of
/// `google_assured_workloads_workload` (derived from provider schema).
@immutable
final class AssuredWorkloadsWorkloadPartnerPermissions {
  const AssuredWorkloadsWorkloadPartnerPermissions({
    this.assuredWorkloadsMonitoring,
    this.dataLogsViewer,
    this.serviceAccessApprover,
  });

  final TfArg<bool>? assuredWorkloadsMonitoring;

  final TfArg<bool>? dataLogsViewer;

  final TfArg<bool>? serviceAccessApprover;

  Map<String, Object?> encode() => {
    if (assuredWorkloadsMonitoring != null)
      'assured_workloads_monitoring': assuredWorkloadsMonitoring!.toTfJson(),
    if (dataLogsViewer != null) 'data_logs_viewer': dataLogsViewer!.toTfJson(),
    if (serviceAccessApprover != null)
      'service_access_approver': serviceAccessApprover!.toTfJson(),
  };
}

/// Typed helper for the `resource_settings` block of
/// `google_assured_workloads_workload` (derived from provider schema).
@immutable
final class AssuredWorkloadsWorkloadResourceSettings {
  const AssuredWorkloadsWorkloadResourceSettings({
    this.displayName,
    this.resourceId,
    this.resourceType,
  });

  final TfArg<String>? displayName;

  final TfArg<String>? resourceId;

  final TfArg<AssuredWorkloadsWorkloadResourceSettingsResourceType>?
  resourceType;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (resourceId != null) 'resource_id': resourceId!.toTfJson(),
    if (resourceType != null) 'resource_type': resourceType!.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
enum AssuredWorkloadsWorkloadResourceSettingsResourceType
    implements TerraformEnum {
  resourceTypeUnspecified('RESOURCE_TYPE_UNSPECIFIED'),
  consumerProject('CONSUMER_PROJECT'),
  encryptionKeysProject('ENCRYPTION_KEYS_PROJECT'),
  keyring('KEYRING'),
  consumerFolder('CONSUMER_FOLDER');

  const AssuredWorkloadsWorkloadResourceSettingsResourceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `workload_options` block of
/// `google_assured_workloads_workload` (derived from provider schema).
@immutable
final class AssuredWorkloadsWorkloadWorkloadOptions {
  const AssuredWorkloadsWorkloadWorkloadOptions({this.kajEnrollmentType});

  final TfArg<AssuredWorkloadsWorkloadWorkloadOptionsKajEnrollmentType>?
  kajEnrollmentType;

  Map<String, Object?> encode() => {
    if (kajEnrollmentType != null)
      'kaj_enrollment_type': kajEnrollmentType!.toTfJson(),
  };
}

/// `kaj_enrollment_type` — derived from the provider schema description.
enum AssuredWorkloadsWorkloadWorkloadOptionsKajEnrollmentType
    implements TerraformEnum {
  kajEnrollmentTypeUnspecified('KAJ_ENROLLMENT_TYPE_UNSPECIFIED'),
  fullKaj('FULL_KAJ'),
  ekmOnly('EKM_ONLY'),
  keyAccessTransparencyOff('KEY_ACCESS_TRANSPARENCY_OFF');

  const AssuredWorkloadsWorkloadWorkloadOptionsKajEnrollmentType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_assured_workloads_workload`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleAssuredWorkloadsWorkload extends Resource {
  static const String tfType = 'google_assured_workloads_workload';

  GoogleAssuredWorkloadsWorkload({
    required super.localName,
    TfArg<String>? billingAccount,
    required TfArg<AssuredWorkloadsWorkloadComplianceRegime> complianceRegime,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<bool>? enableSovereignControls,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> organization,
    TfArg<AssuredWorkloadsWorkloadPartner>? partner,
    TfArg<String>? partnerServicesBillingAccount,
    TfArg<String>? provisionedResourcesParent,
    TfArg<bool>? violationNotificationsEnabled,
    AssuredWorkloadsWorkloadKmsSettings? kmsSettings,
    AssuredWorkloadsWorkloadPartnerPermissions? partnerPermissions,
    List<AssuredWorkloadsWorkloadResourceSettings>? resourceSettings,
    AssuredWorkloadsWorkloadWorkloadOptions? workloadOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (billingAccount != null) 'billing_account': billingAccount,
           'compliance_regime': complianceRegime,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           if (enableSovereignControls != null)
             'enable_sovereign_controls': enableSovereignControls,
           if (labels != null) 'labels': labels,
           'location': location,
           'organization': organization,
           if (partner != null) 'partner': partner,
           if (partnerServicesBillingAccount != null)
             'partner_services_billing_account': partnerServicesBillingAccount,
           if (provisionedResourcesParent != null)
             'provisioned_resources_parent': provisionedResourcesParent,
           if (violationNotificationsEnabled != null)
             'violation_notifications_enabled': violationNotificationsEnabled,
           if (kmsSettings != null)
             'kms_settings': TfArg.literal(kmsSettings.encode()),
           if (partnerPermissions != null)
             'partner_permissions': TfArg.literal(partnerPermissions.encode()),
           if (resourceSettings != null)
             'resource_settings': TfArg.literal([
               for (final e in resourceSettings) e.encode(),
             ]),
           if (workloadOptions != null)
             'workload_options': TfArg.literal(workloadOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAssuredWorkloadsWorkloadSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `compliance_status` attribute.
  TfRef<List<Map<String, Object?>>> get complianceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'compliance_status');

  /// Reference to `compliant_but_disallowed_services` attribute.
  TfRef<List<String>> get compliantButDisallowedServices =>
      TfRef.attribute<List<String>>(this, 'compliant_but_disallowed_services');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `ekm_provisioning_response` attribute.
  TfRef<List<Map<String, Object?>>> get ekmProvisioningResponse =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ekm_provisioning_response',
      );

  /// Reference to `kaj_enrollment_state` attribute.
  TfRef<String> get kajEnrollmentState =>
      TfRef.attribute<String>(this, 'kaj_enrollment_state');

  /// Reference to `resources` attribute.
  TfRef<List<Map<String, Object?>>> get resources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resources');

  /// Reference to `saa_enrollment_response` attribute.
  TfRef<List<Map<String, Object?>>> get saaEnrollmentResponse =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'saa_enrollment_response',
      );

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
