// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssm/aws_ssm_patch_baseline.dart';

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
           'default_baseline': ?defaultBaseline,
           'name_prefix': ?namePrefix,
           'operating_system': ?operatingSystem,
           'owner': owner,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmPatchBaselineSensitive;

  /// A reference to the `aws_ssm_patch_baseline` this data source reads, for
  /// arguments typed `RefTo<AwsSsmPatchBaseline>`.
  RefTo<AwsSsmPatchBaseline> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `default_baseline` attribute.
  TfRef<bool> get defaultBaselineRef =>
      TfRef.attribute<bool>(this, 'default_baseline');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `operating_system` attribute.
  TfRef<String> get operatingSystemRef =>
      TfRef.attribute<String>(this, 'operating_system');

  /// Reference to `owner` attribute.
  TfRef<String> get ownerRef => TfRef.attribute<String>(this, 'owner');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
