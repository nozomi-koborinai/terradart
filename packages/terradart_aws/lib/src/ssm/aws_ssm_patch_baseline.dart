// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_patch_baseline`.
const Set<String> _awsSsmPatchBaselineSensitive = <String>{};

/// Ssm Patch Baseline Approved Patches Compliance enum for `approved_patches_compliance_level`.
enum SsmPatchBaselineApprovedPatchesComplianceLevel implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW'),
  informational('INFORMATIONAL'),
  unspecified('UNSPECIFIED');

  const SsmPatchBaselineApprovedPatchesComplianceLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssm Patch Baseline Available Security Updates Compliance enum for `available_security_updates_compliance_status`.
enum SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus
    implements TerraformEnum {
  compliant('COMPLIANT'),
  nonCompliant('NON_COMPLIANT');

  const SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Ssm Patch Baseline Operating enum for `operating_system`.
enum SsmPatchBaselineOperatingSystem implements TerraformEnum {
  windows('WINDOWS'),
  amazonLinux('AMAZON_LINUX'),
  amazonLinux2('AMAZON_LINUX_2'),
  amazonLinux2022('AMAZON_LINUX_2022'),
  ubuntu('UBUNTU'),
  redhatEnterpriseLinux('REDHAT_ENTERPRISE_LINUX'),
  suse('SUSE'),
  centos('CENTOS'),
  oracleLinux('ORACLE_LINUX'),
  debian('DEBIAN'),
  macos('MACOS'),
  raspbian('RASPBIAN'),
  rockyLinux('ROCKY_LINUX'),
  almaLinux('ALMA_LINUX'),
  amazonLinux2023('AMAZON_LINUX_2023');

  const SsmPatchBaselineOperatingSystem(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssm Patch Baseline Rejected Patches enum for `rejected_patches_action`.
enum SsmPatchBaselineRejectedPatchesAction implements TerraformEnum {
  allowAsDependency('ALLOW_AS_DEPENDENCY'),
  block('BLOCK');

  const SsmPatchBaselineRejectedPatchesAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `approval_rule` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselineApprovalRule {
  const SsmPatchBaselineApprovalRule({
    this.approveAfterDays,
    this.approveUntilDate,
    this.complianceLevel,
    this.enableNonSecurity,
    required this.patchFilter,
  });

  final TfArg<num>? approveAfterDays;

  final TfArg<String>? approveUntilDate;

  final TfArg<SsmPatchBaselineApprovalRuleComplianceLevel>? complianceLevel;

  final TfArg<bool>? enableNonSecurity;

  final List<SsmPatchBaselineApprovalRulePatchFilter> patchFilter;

  Map<String, Object?> encode() => {
    if (approveAfterDays != null)
      'approve_after_days': approveAfterDays!.toTfJson(),
    if (approveUntilDate != null)
      'approve_until_date': approveUntilDate!.toTfJson(),
    if (complianceLevel != null)
      'compliance_level': complianceLevel!.toTfJson(),
    if (enableNonSecurity != null)
      'enable_non_security': enableNonSecurity!.toTfJson(),
    'patch_filter': [for (final e in patchFilter) e.encode()],
  };
}

/// `compliance_level` — derived from the provider schema description.
enum SsmPatchBaselineApprovalRuleComplianceLevel implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW'),
  informational('INFORMATIONAL'),
  unspecified('UNSPECIFIED');

  const SsmPatchBaselineApprovalRuleComplianceLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `approval_rule.patch_filter` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselineApprovalRulePatchFilter {
  const SsmPatchBaselineApprovalRulePatchFilter({
    required this.key,
    required this.values,
  });

  final TfArg<SsmPatchBaselineApprovalRulePatchFilterKey> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum SsmPatchBaselineApprovalRulePatchFilterKey implements TerraformEnum {
  arch('ARCH'),
  advisoryId('ADVISORY_ID'),
  bugzillaId('BUGZILLA_ID'),
  patchSet('PATCH_SET'),
  product('PRODUCT'),
  productFamily('PRODUCT_FAMILY'),
  classification('CLASSIFICATION'),
  cveId('CVE_ID'),
  epoch('EPOCH'),
  msrcSeverity('MSRC_SEVERITY'),
  name('NAME'),
  patchId('PATCH_ID'),
  section('SECTION'),
  priority('PRIORITY'),
  repository('REPOSITORY'),
  release('RELEASE'),
  severity('SEVERITY'),
  security('SECURITY'),
  version('VERSION');

  const SsmPatchBaselineApprovalRulePatchFilterKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `global_filter` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselineGlobalFilter {
  const SsmPatchBaselineGlobalFilter({required this.key, required this.values});

  final TfArg<SsmPatchBaselineGlobalFilterKey> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum SsmPatchBaselineGlobalFilterKey implements TerraformEnum {
  arch('ARCH'),
  advisoryId('ADVISORY_ID'),
  bugzillaId('BUGZILLA_ID'),
  patchSet('PATCH_SET'),
  product('PRODUCT'),
  productFamily('PRODUCT_FAMILY'),
  classification('CLASSIFICATION'),
  cveId('CVE_ID'),
  epoch('EPOCH'),
  msrcSeverity('MSRC_SEVERITY'),
  name('NAME'),
  patchId('PATCH_ID'),
  section('SECTION'),
  priority('PRIORITY'),
  repository('REPOSITORY'),
  release('RELEASE'),
  severity('SEVERITY'),
  security('SECURITY'),
  version('VERSION');

  const SsmPatchBaselineGlobalFilterKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselineSource {
  const SsmPatchBaselineSource({
    required this.configuration,
    required this.name,
    required this.products,
  });

  final TfArg<String> configuration;

  final TfArg<String> name;

  final TfArg<List<Object?>> products;

  Map<String, Object?> encode() => {
    'configuration': configuration.toTfJson(),
    'name': name.toTfJson(),
    'products': products.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_patch_baseline`.
final class AwsSsmPatchBaseline extends Resource {
  static const String tfType = 'aws_ssm_patch_baseline';

  AwsSsmPatchBaseline({
    required super.localName,
    TfArg<List<String>>? approvedPatches,
    TfArg<SsmPatchBaselineApprovedPatchesComplianceLevel>?
    approvedPatchesComplianceLevel,
    TfArg<bool>? approvedPatchesEnableNonSecurity,
    TfArg<SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus>?
    availableSecurityUpdatesComplianceStatus,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<SsmPatchBaselineOperatingSystem>? operatingSystem,
    TfArg<String>? region,
    TfArg<List<String>>? rejectedPatches,
    TfArg<SsmPatchBaselineRejectedPatchesAction>? rejectedPatchesAction,
    TfArg<Map<String, String>>? tags,
    List<SsmPatchBaselineApprovalRule>? approvalRule,
    List<SsmPatchBaselineGlobalFilter>? globalFilter,
    List<SsmPatchBaselineSource>? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (approvedPatches != null) 'approved_patches': approvedPatches,
           if (approvedPatchesComplianceLevel != null)
             'approved_patches_compliance_level':
                 approvedPatchesComplianceLevel,
           if (approvedPatchesEnableNonSecurity != null)
             'approved_patches_enable_non_security':
                 approvedPatchesEnableNonSecurity,
           if (availableSecurityUpdatesComplianceStatus != null)
             'available_security_updates_compliance_status':
                 availableSecurityUpdatesComplianceStatus,
           if (description != null) 'description': description,
           'name': name,
           if (operatingSystem != null) 'operating_system': operatingSystem,
           if (region != null) 'region': region,
           if (rejectedPatches != null) 'rejected_patches': rejectedPatches,
           if (rejectedPatchesAction != null)
             'rejected_patches_action': rejectedPatchesAction,
           if (tags != null) 'tags': tags,
           if (approvalRule != null)
             'approval_rule': TfArg.literal([
               for (final e in approvalRule) e.encode(),
             ]),
           if (globalFilter != null)
             'global_filter': TfArg.literal([
               for (final e in globalFilter) e.encode(),
             ]),
           if (source != null)
             'source': TfArg.literal([for (final e in source) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmPatchBaselineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');
}
