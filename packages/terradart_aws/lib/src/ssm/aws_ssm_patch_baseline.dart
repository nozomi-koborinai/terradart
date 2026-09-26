// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_patch_baseline`.
const Set<String> _awsSsmPatchBaselineSensitive = <String>{};

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

  final TfArg<String>? complianceLevel;

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

/// Typed helper for the `approval_rule.patch_filter` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselineApprovalRulePatchFilter {
  const SsmPatchBaselineApprovalRulePatchFilter({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `global_filter` block of
/// `aws_ssm_patch_baseline` (derived from provider schema).
@immutable
final class SsmPatchBaselineGlobalFilter {
  const SsmPatchBaselineGlobalFilter({required this.key, required this.values});

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

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
    TfArg<String>? approvedPatchesComplianceLevel,
    TfArg<bool>? approvedPatchesEnableNonSecurity,
    TfArg<String>? availableSecurityUpdatesComplianceStatus,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? operatingSystem,
    TfArg<String>? region,
    TfArg<List<String>>? rejectedPatches,
    TfArg<String>? rejectedPatchesAction,
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
