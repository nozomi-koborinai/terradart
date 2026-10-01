// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_assured_workloads_workload`.
const Set<String> _googleAssuredWorkloadsWorkloadSensitive = <String>{};

/// Assured Workloads Workload Compliance enum for `compliance_regime`.
extension type const AssuredWorkloadsWorkloadComplianceRegime._(TfArg<String> _)
    implements TfArg<String> {
  AssuredWorkloadsWorkloadComplianceRegime.variable(String name)
    : this._(TfArg.variable(name));
  AssuredWorkloadsWorkloadComplianceRegime.expression(String template)
    : this._(TfArg.expression(template));
  const AssuredWorkloadsWorkloadComplianceRegime.arg(TfArg<String> arg)
    : this._(arg);

  static const complianceRegimeUnspecified =
      AssuredWorkloadsWorkloadComplianceRegime._(
        TfArgLiteral('COMPLIANCE_REGIME_UNSPECIFIED'),
      );
  static const il4ComplianceRegime = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('IL4'),
  );
  static const cjis = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('CJIS'),
  );
  static const fedrampHigh = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('FEDRAMP_HIGH'),
  );
  static const fedrampModerate = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('FEDRAMP_MODERATE'),
  );
  static const usRegionalAccess = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('US_REGIONAL_ACCESS'),
  );
  static const hipaa = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('HIPAA'),
  );
  static const hitrust = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('HITRUST'),
  );
  static const euRegionsAndSupport = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('EU_REGIONS_AND_SUPPORT'),
  );
  static const caRegionsAndSupport = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('CA_REGIONS_AND_SUPPORT'),
  );
  static const itar = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('ITAR'),
  );
  static const auRegionsAndUsSupport =
      AssuredWorkloadsWorkloadComplianceRegime._(
        TfArgLiteral('AU_REGIONS_AND_US_SUPPORT'),
      );
  static const assuredWorkloadsForPartners =
      AssuredWorkloadsWorkloadComplianceRegime._(
        TfArgLiteral('ASSURED_WORKLOADS_FOR_PARTNERS'),
      );
  static const isrRegions = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('ISR_REGIONS'),
  );
  static const isrRegionsAndSupport =
      AssuredWorkloadsWorkloadComplianceRegime._(
        TfArgLiteral('ISR_REGIONS_AND_SUPPORT'),
      );
  static const caProtectedB = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('CA_PROTECTED_B'),
  );
  static const il5ComplianceRegime = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('IL5'),
  );
  static const il2ComplianceRegime = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('IL2'),
  );
  static const jpRegionsAndSupport = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('JP_REGIONS_AND_SUPPORT'),
  );
  static const ksaRegionsAndSupportWithSovereigntyControls =
      AssuredWorkloadsWorkloadComplianceRegime._(
        TfArgLiteral('KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS'),
      );
  static const regionalControls = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('REGIONAL_CONTROLS'),
  );
  static const healthcareAndLifeSciencesControls =
      AssuredWorkloadsWorkloadComplianceRegime._(
        TfArgLiteral('HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS'),
      );
  static const healthcareAndLifeSciencesControlsUsSupport =
      AssuredWorkloadsWorkloadComplianceRegime._(
        TfArgLiteral('HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT'),
      );
  static const irs1075 = AssuredWorkloadsWorkloadComplianceRegime._(
    TfArgLiteral('IRS_1075'),
  );

  static const List<AssuredWorkloadsWorkloadComplianceRegime> values = [
    complianceRegimeUnspecified,
    il4ComplianceRegime,
    cjis,
    fedrampHigh,
    fedrampModerate,
    usRegionalAccess,
    hipaa,
    hitrust,
    euRegionsAndSupport,
    caRegionsAndSupport,
    itar,
    auRegionsAndUsSupport,
    assuredWorkloadsForPartners,
    isrRegions,
    isrRegionsAndSupport,
    caProtectedB,
    il5ComplianceRegime,
    il2ComplianceRegime,
    jpRegionsAndSupport,
    ksaRegionsAndSupportWithSovereigntyControls,
    regionalControls,
    healthcareAndLifeSciencesControls,
    healthcareAndLifeSciencesControlsUsSupport,
    irs1075,
  ];
}

/// Assured Workloads Workload enum for `partner`.
extension type const AssuredWorkloadsWorkloadPartner._(TfArg<String> _)
    implements TfArg<String> {
  AssuredWorkloadsWorkloadPartner.variable(String name)
    : this._(TfArg.variable(name));
  AssuredWorkloadsWorkloadPartner.expression(String template)
    : this._(TfArg.expression(template));
  const AssuredWorkloadsWorkloadPartner.arg(TfArg<String> arg) : this._(arg);

  static const partnerUnspecified = AssuredWorkloadsWorkloadPartner._(
    TfArgLiteral('PARTNER_UNSPECIFIED'),
  );
  static const localControlsByS3ns = AssuredWorkloadsWorkloadPartner._(
    TfArgLiteral('LOCAL_CONTROLS_BY_S3NS'),
  );
  static const sovereignControlsByTSystems = AssuredWorkloadsWorkloadPartner._(
    TfArgLiteral('SOVEREIGN_CONTROLS_BY_T_SYSTEMS'),
  );
  static const sovereignControlsBySiaMinsait =
      AssuredWorkloadsWorkloadPartner._(
        TfArgLiteral('SOVEREIGN_CONTROLS_BY_SIA_MINSAIT'),
      );
  static const sovereignControlsByPsn = AssuredWorkloadsWorkloadPartner._(
    TfArgLiteral('SOVEREIGN_CONTROLS_BY_PSN'),
  );
  static const sovereignControlsByCntxt = AssuredWorkloadsWorkloadPartner._(
    TfArgLiteral('SOVEREIGN_CONTROLS_BY_CNTXT'),
  );
  static const sovereignControlsByCntxtNoEkm =
      AssuredWorkloadsWorkloadPartner._(
        TfArgLiteral('SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM'),
      );
  static const spainDataBoundaryByTelefonica =
      AssuredWorkloadsWorkloadPartner._(
        TfArgLiteral('SPAIN_DATA_BOUNDARY_BY_TELEFONICA'),
      );

  static const List<AssuredWorkloadsWorkloadPartner> values = [
    partnerUnspecified,
    localControlsByS3ns,
    sovereignControlsByTSystems,
    sovereignControlsBySiaMinsait,
    sovereignControlsByPsn,
    sovereignControlsByCntxt,
    sovereignControlsByCntxtNoEkm,
    spainDataBoundaryByTelefonica,
  ];
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
    'assured_workloads_monitoring': ?assuredWorkloadsMonitoring?.toTfJson(),
    'data_logs_viewer': ?dataLogsViewer?.toTfJson(),
    'service_access_approver': ?serviceAccessApprover?.toTfJson(),
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

  final AssuredWorkloadsWorkloadResourceType? resourceType;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'resource_id': ?resourceId?.toTfJson(),
    'resource_type': ?resourceType?.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const AssuredWorkloadsWorkloadResourceType._(TfArg<String> _)
    implements TfArg<String> {
  AssuredWorkloadsWorkloadResourceType.variable(String name)
    : this._(TfArg.variable(name));
  AssuredWorkloadsWorkloadResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const AssuredWorkloadsWorkloadResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const resourceTypeUnspecified = AssuredWorkloadsWorkloadResourceType._(
    TfArgLiteral('RESOURCE_TYPE_UNSPECIFIED'),
  );
  static const consumerProject = AssuredWorkloadsWorkloadResourceType._(
    TfArgLiteral('CONSUMER_PROJECT'),
  );
  static const encryptionKeysProject = AssuredWorkloadsWorkloadResourceType._(
    TfArgLiteral('ENCRYPTION_KEYS_PROJECT'),
  );
  static const keyring = AssuredWorkloadsWorkloadResourceType._(
    TfArgLiteral('KEYRING'),
  );
  static const consumerFolder = AssuredWorkloadsWorkloadResourceType._(
    TfArgLiteral('CONSUMER_FOLDER'),
  );

  static const List<AssuredWorkloadsWorkloadResourceType> values = [
    resourceTypeUnspecified,
    consumerProject,
    encryptionKeysProject,
    keyring,
    consumerFolder,
  ];
}

/// Typed helper for the `workload_options` block of
/// `google_assured_workloads_workload` (derived from provider schema).
@immutable
final class AssuredWorkloadsWorkloadOptions {
  const AssuredWorkloadsWorkloadOptions({this.kajEnrollmentType});

  final AssuredWorkloadsWorkloadKajEnrollmentType? kajEnrollmentType;

  Map<String, Object?> encode() => {
    'kaj_enrollment_type': ?kajEnrollmentType?.toTfJson(),
  };
}

/// `kaj_enrollment_type` — derived from the provider schema description.
extension type const AssuredWorkloadsWorkloadKajEnrollmentType._(
  TfArg<String> _
) implements TfArg<String> {
  AssuredWorkloadsWorkloadKajEnrollmentType.variable(String name)
    : this._(TfArg.variable(name));
  AssuredWorkloadsWorkloadKajEnrollmentType.expression(String template)
    : this._(TfArg.expression(template));
  const AssuredWorkloadsWorkloadKajEnrollmentType.arg(TfArg<String> arg)
    : this._(arg);

  static const kajEnrollmentTypeUnspecified =
      AssuredWorkloadsWorkloadKajEnrollmentType._(
        TfArgLiteral('KAJ_ENROLLMENT_TYPE_UNSPECIFIED'),
      );
  static const fullKaj = AssuredWorkloadsWorkloadKajEnrollmentType._(
    TfArgLiteral('FULL_KAJ'),
  );
  static const ekmOnly = AssuredWorkloadsWorkloadKajEnrollmentType._(
    TfArgLiteral('EKM_ONLY'),
  );
  static const keyAccessTransparencyOff =
      AssuredWorkloadsWorkloadKajEnrollmentType._(
        TfArgLiteral('KEY_ACCESS_TRANSPARENCY_OFF'),
      );

  static const List<AssuredWorkloadsWorkloadKajEnrollmentType> values = [
    kajEnrollmentTypeUnspecified,
    fullKaj,
    ekmOnly,
    keyAccessTransparencyOff,
  ];
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

  GoogleAssuredWorkloadsWorkload(
    super.localName, {
    TfArg<String>? billingAccount,
    required AssuredWorkloadsWorkloadComplianceRegime complianceRegime,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<bool>? enableSovereignControls,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> organization,
    AssuredWorkloadsWorkloadPartner? partner,
    TfArg<String>? partnerServicesBillingAccount,
    TfArg<String>? provisionedResourcesParent,
    TfArg<bool>? violationNotificationsEnabled,
    AssuredWorkloadsWorkloadKmsSettings? kmsSettings,
    AssuredWorkloadsWorkloadPartnerPermissions? partnerPermissions,
    List<AssuredWorkloadsWorkloadResourceSettings>? resourceSettings,
    AssuredWorkloadsWorkloadOptions? workloadOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account': ?billingAccount,
           'compliance_regime': complianceRegime,
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'enable_sovereign_controls': ?enableSovereignControls,
           'labels': ?labels,
           'location': location,
           'organization': organization,
           'partner': ?partner,
           'partner_services_billing_account': ?partnerServicesBillingAccount,
           'provisioned_resources_parent': ?provisionedResourcesParent,
           'violation_notifications_enabled': ?violationNotificationsEnabled,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAssuredWorkloadsWorkload>`.
  RefTo<GoogleAssuredWorkloadsWorkload> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `billing_account` attribute.
  TfRef<String> get billingAccount =>
      TfRef.attribute<String>(this, 'billing_account');

  /// Reference to `compliance_regime` attribute.
  TfRef<String> get complianceRegime =>
      TfRef.attribute<String>(this, 'compliance_regime');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_sovereign_controls` attribute.
  TfRef<bool> get enableSovereignControls =>
      TfRef.attribute<bool>(this, 'enable_sovereign_controls');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `partner` attribute.
  TfRef<String> get partner => TfRef.attribute<String>(this, 'partner');

  /// Reference to `partner_services_billing_account` attribute.
  TfRef<String> get partnerServicesBillingAccount =>
      TfRef.attribute<String>(this, 'partner_services_billing_account');

  /// Reference to `provisioned_resources_parent` attribute.
  TfRef<String> get provisionedResourcesParent =>
      TfRef.attribute<String>(this, 'provisioned_resources_parent');

  /// Reference to `violation_notifications_enabled` attribute.
  TfRef<bool> get violationNotificationsEnabled =>
      TfRef.attribute<bool>(this, 'violation_notifications_enabled');
}
