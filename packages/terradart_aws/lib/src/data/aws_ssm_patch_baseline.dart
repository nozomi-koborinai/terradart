// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_patch_baseline`.
const Set<String> _awsSsmPatchBaselineSensitive = <String>{};

/// Factory wrapper for `aws_ssm_patch_baseline`.
final class DataAwsSsmPatchBaseline extends Data {
  static const String tfType = 'aws_ssm_patch_baseline';

  DataAwsSsmPatchBaseline({
    required super.localName,
    TfArg<bool>? defaultBaseline,
    TfArg<String>? namePrefix,
    TfArg<String>? operatingSystem,
    required TfArg<String> owner,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultBaseline != null) 'default_baseline': defaultBaseline,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (operatingSystem != null) 'operating_system': operatingSystem,
           'owner': owner,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmPatchBaselineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `approval_rule` attribute.
  TfRef<List<Map<String, Object?>>> get approvalRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'approval_rule');

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

  /// Reference to `global_filter` attribute.
  TfRef<List<Map<String, Object?>>> get globalFilter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'global_filter');

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');

  /// Reference to `rejected_patches` attribute.
  TfRef<List<String>> get rejectedPatches =>
      TfRef.attribute<List<String>>(this, 'rejected_patches');

  /// Reference to `rejected_patches_action` attribute.
  TfRef<String> get rejectedPatchesAction =>
      TfRef.attribute<String>(this, 'rejected_patches_action');

  /// Reference to `source` attribute.
  TfRef<List<Map<String, Object?>>> get source =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source');
}
