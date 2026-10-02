// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_patch_baseline`.
const Set<String> _awsSsmPatchBaselineSensitive = <String>{};

/// Ssm Patch Baseline Approved Patches Compliance enum for `approved_patches_compliance_level`.
extension type const SsmPatchBaselineApprovedPatchesComplianceLevel._(
  TfArg<String> _
) implements TfArg<String> {
  SsmPatchBaselineApprovedPatchesComplianceLevel.variable(String name)
    : this._(TfArg.variable(name));
  SsmPatchBaselineApprovedPatchesComplianceLevel.expression(String template)
    : this._(TfArg.expression(template));
  const SsmPatchBaselineApprovedPatchesComplianceLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const critical = SsmPatchBaselineApprovedPatchesComplianceLevel._(
    TfArgLiteral('CRITICAL'),
  );
  static const high = SsmPatchBaselineApprovedPatchesComplianceLevel._(
    TfArgLiteral('HIGH'),
  );
  static const medium = SsmPatchBaselineApprovedPatchesComplianceLevel._(
    TfArgLiteral('MEDIUM'),
  );
  static const low = SsmPatchBaselineApprovedPatchesComplianceLevel._(
    TfArgLiteral('LOW'),
  );
  static const informational = SsmPatchBaselineApprovedPatchesComplianceLevel._(
    TfArgLiteral('INFORMATIONAL'),
  );
  static const unspecified = SsmPatchBaselineApprovedPatchesComplianceLevel._(
    TfArgLiteral('UNSPECIFIED'),
  );

  static const List<SsmPatchBaselineApprovedPatchesComplianceLevel> values = [
    critical,
    high,
    medium,
    low,
    informational,
    unspecified,
  ];
}

/// Ssm Patch Baseline Available Security Updates Compliance enum for `available_security_updates_compliance_status`.
extension type const SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus._(
  TfArg<String> _
) implements TfArg<String> {
  SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus.variable(String name)
    : this._(TfArg.variable(name));
  SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const compliant =
      SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus._(
        TfArgLiteral('COMPLIANT'),
      );
  static const nonCompliant =
      SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus._(
        TfArgLiteral('NON_COMPLIANT'),
      );

  static const List<SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus>
  values = [compliant, nonCompliant];
}

/// Ssm Patch Baseline Operating enum for `operating_system`.
extension type const SsmPatchBaselineOperatingSystem._(TfArg<String> _)
    implements TfArg<String> {
  SsmPatchBaselineOperatingSystem.variable(String name)
    : this._(TfArg.variable(name));
  SsmPatchBaselineOperatingSystem.expression(String template)
    : this._(TfArg.expression(template));
  const SsmPatchBaselineOperatingSystem.arg(TfArg<String> arg) : this._(arg);

  static const windows = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('WINDOWS'),
  );
  static const amazonLinux = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX'),
  );
  static const amazonLinux2 = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2'),
  );
  static const amazonLinux2022 = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2022'),
  );
  static const ubuntu = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('UBUNTU'),
  );
  static const redhatEnterpriseLinux = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('REDHAT_ENTERPRISE_LINUX'),
  );
  static const suse = SsmPatchBaselineOperatingSystem._(TfArgLiteral('SUSE'));
  static const centos = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('CENTOS'),
  );
  static const oracleLinux = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('ORACLE_LINUX'),
  );
  static const debian = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('DEBIAN'),
  );
  static const macos = SsmPatchBaselineOperatingSystem._(TfArgLiteral('MACOS'));
  static const raspbian = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('RASPBIAN'),
  );
  static const rockyLinux = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('ROCKY_LINUX'),
  );
  static const almaLinux = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('ALMA_LINUX'),
  );
  static const amazonLinux2023 = SsmPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2023'),
  );

  static const List<SsmPatchBaselineOperatingSystem> values = [
    windows,
    amazonLinux,
    amazonLinux2,
    amazonLinux2022,
    ubuntu,
    redhatEnterpriseLinux,
    suse,
    centos,
    oracleLinux,
    debian,
    macos,
    raspbian,
    rockyLinux,
    almaLinux,
    amazonLinux2023,
  ];
}

/// Ssm Patch Baseline Rejected Patches enum for `rejected_patches_action`.
extension type const SsmPatchBaselineRejectedPatchesAction._(TfArg<String> _)
    implements TfArg<String> {
  SsmPatchBaselineRejectedPatchesAction.variable(String name)
    : this._(TfArg.variable(name));
  SsmPatchBaselineRejectedPatchesAction.expression(String template)
    : this._(TfArg.expression(template));
  const SsmPatchBaselineRejectedPatchesAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allowAsDependency = SsmPatchBaselineRejectedPatchesAction._(
    TfArgLiteral('ALLOW_AS_DEPENDENCY'),
  );
  static const block = SsmPatchBaselineRejectedPatchesAction._(
    TfArgLiteral('BLOCK'),
  );

  static const List<SsmPatchBaselineRejectedPatchesAction> values = [
    allowAsDependency,
    block,
  ];
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

  final SsmPatchBaselineComplianceLevel? complianceLevel;

  final TfArg<bool>? enableNonSecurity;

  final List<SsmPatchBaselinePatchFilter> patchFilter;

  @internal
  Map<String, Object?> encode() => {
    'approve_after_days': ?approveAfterDays?.toTfJson(),
    'approve_until_date': ?approveUntilDate?.toTfJson(),
    'compliance_level': ?complianceLevel?.toTfJson(),
    'enable_non_security': ?enableNonSecurity?.toTfJson(),
    'patch_filter': [for (final e in patchFilter) e.encode()],
  };
}

/// `compliance_level` — derived from the provider schema description.
extension type const SsmPatchBaselineComplianceLevel._(TfArg<String> _)
    implements TfArg<String> {
  SsmPatchBaselineComplianceLevel.variable(String name)
    : this._(TfArg.variable(name));
  SsmPatchBaselineComplianceLevel.expression(String template)
    : this._(TfArg.expression(template));
  const SsmPatchBaselineComplianceLevel.arg(TfArg<String> arg) : this._(arg);

  static const critical = SsmPatchBaselineComplianceLevel._(
    TfArgLiteral('CRITICAL'),
  );
  static const high = SsmPatchBaselineComplianceLevel._(TfArgLiteral('HIGH'));
  static const medium = SsmPatchBaselineComplianceLevel._(
    TfArgLiteral('MEDIUM'),
  );
  static const low = SsmPatchBaselineComplianceLevel._(TfArgLiteral('LOW'));
  static const informational = SsmPatchBaselineComplianceLevel._(
    TfArgLiteral('INFORMATIONAL'),
  );
  static const unspecified = SsmPatchBaselineComplianceLevel._(
    TfArgLiteral('UNSPECIFIED'),
  );

  static const List<SsmPatchBaselineComplianceLevel> values = [
    critical,
    high,
    medium,
    low,
    informational,
    unspecified,
  ];
}

/// Typed helper for the `approval_rule.patch_filter` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselinePatchFilter {
  const SsmPatchBaselinePatchFilter({required this.key, required this.values});

  final SsmPatchBaselineKey key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const SsmPatchBaselineKey._(TfArg<String> _)
    implements TfArg<String> {
  SsmPatchBaselineKey.variable(String name) : this._(TfArg.variable(name));
  SsmPatchBaselineKey.expression(String template)
    : this._(TfArg.expression(template));
  const SsmPatchBaselineKey.arg(TfArg<String> arg) : this._(arg);

  static const arch = SsmPatchBaselineKey._(TfArgLiteral('ARCH'));
  static const advisoryId = SsmPatchBaselineKey._(TfArgLiteral('ADVISORY_ID'));
  static const bugzillaId = SsmPatchBaselineKey._(TfArgLiteral('BUGZILLA_ID'));
  static const patchSet = SsmPatchBaselineKey._(TfArgLiteral('PATCH_SET'));
  static const product = SsmPatchBaselineKey._(TfArgLiteral('PRODUCT'));
  static const productFamily = SsmPatchBaselineKey._(
    TfArgLiteral('PRODUCT_FAMILY'),
  );
  static const classification = SsmPatchBaselineKey._(
    TfArgLiteral('CLASSIFICATION'),
  );
  static const cveId = SsmPatchBaselineKey._(TfArgLiteral('CVE_ID'));
  static const epoch = SsmPatchBaselineKey._(TfArgLiteral('EPOCH'));
  static const msrcSeverity = SsmPatchBaselineKey._(
    TfArgLiteral('MSRC_SEVERITY'),
  );
  static const name = SsmPatchBaselineKey._(TfArgLiteral('NAME'));
  static const patchId = SsmPatchBaselineKey._(TfArgLiteral('PATCH_ID'));
  static const section = SsmPatchBaselineKey._(TfArgLiteral('SECTION'));
  static const priority = SsmPatchBaselineKey._(TfArgLiteral('PRIORITY'));
  static const repository = SsmPatchBaselineKey._(TfArgLiteral('REPOSITORY'));
  static const release = SsmPatchBaselineKey._(TfArgLiteral('RELEASE'));
  static const severity = SsmPatchBaselineKey._(TfArgLiteral('SEVERITY'));
  static const security = SsmPatchBaselineKey._(TfArgLiteral('SECURITY'));
  static const version = SsmPatchBaselineKey._(TfArgLiteral('VERSION'));

  static const List<SsmPatchBaselineKey> values = [
    arch,
    advisoryId,
    bugzillaId,
    patchSet,
    product,
    productFamily,
    classification,
    cveId,
    epoch,
    msrcSeverity,
    name,
    patchId,
    section,
    priority,
    repository,
    release,
    severity,
    security,
    version,
  ];
}

/// Typed helper for the `global_filter` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselineGlobalFilter {
  const SsmPatchBaselineGlobalFilter({required this.key, required this.values});

  final SsmPatchBaselineKey key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
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

  final TfArg<List<String>> products;

  @internal
  Map<String, Object?> encode() => {
    'configuration': configuration.toTfJson(),
    'name': name.toTfJson(),
    'products': products.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_patch_baseline`.
final class AwsSsmPatchBaseline extends Resource {
  static const String tfType = 'aws_ssm_patch_baseline';

  AwsSsmPatchBaseline(
    super.localName, {
    TfArg<List<String>>? approvedPatches,
    SsmPatchBaselineApprovedPatchesComplianceLevel?
    approvedPatchesComplianceLevel,
    TfArg<bool>? approvedPatchesEnableNonSecurity,
    SsmPatchBaselineAvailableSecurityUpdatesComplianceStatus?
    availableSecurityUpdatesComplianceStatus,
    TfArg<String>? description,
    required TfArg<String> name,
    SsmPatchBaselineOperatingSystem? operatingSystem,
    TfArg<String>? region,
    TfArg<List<String>>? rejectedPatches,
    SsmPatchBaselineRejectedPatchesAction? rejectedPatchesAction,
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
           'approved_patches': ?approvedPatches,
           'approved_patches_compliance_level': ?approvedPatchesComplianceLevel,
           'approved_patches_enable_non_security':
               ?approvedPatchesEnableNonSecurity,
           'available_security_updates_compliance_status':
               ?availableSecurityUpdatesComplianceStatus,
           'description': ?description,
           'name': name,
           'operating_system': ?operatingSystem,
           'region': ?region,
           'rejected_patches': ?rejectedPatches,
           'rejected_patches_action': ?rejectedPatchesAction,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmPatchBaseline>`.
  RefTo<AwsSsmPatchBaseline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');

  /// Reference to `approved_patches` attribute.
  TfRef<List<String>> get approvedPatches =>
      TfRef.attribute<List<String>>(this, 'approved_patches');

  /// Reference to `approved_patches_compliance_level` attribute.
  TfRef<String> get approvedPatchesComplianceLevel =>
      TfRef.attribute<String>(this, 'approved_patches_compliance_level');

  /// Reference to `approved_patches_enable_non_security` attribute.
  TfRef<bool> get approvedPatchesEnableNonSecurity =>
      TfRef.attribute<bool>(this, 'approved_patches_enable_non_security');

  /// Reference to `available_security_updates_compliance_status` attribute.
  TfRef<String> get availableSecurityUpdatesComplianceStatus =>
      TfRef.attribute<String>(
        this,
        'available_security_updates_compliance_status',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `operating_system` attribute.
  TfRef<String> get operatingSystem =>
      TfRef.attribute<String>(this, 'operating_system');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rejected_patches` attribute.
  TfRef<List<String>> get rejectedPatches =>
      TfRef.attribute<List<String>>(this, 'rejected_patches');

  /// Reference to `rejected_patches_action` attribute.
  TfRef<String> get rejectedPatchesAction =>
      TfRef.attribute<String>(this, 'rejected_patches_action');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
