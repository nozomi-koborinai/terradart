// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_patch_group`.
const Set<String> _awsSsmPatchGroupSensitive = <String>{};

/// Factory wrapper for `aws_ssm_patch_group`.
final class AwsSsmPatchGroup extends Resource {
  static const String tfType = 'aws_ssm_patch_group';

  AwsSsmPatchGroup({
    required super.localName,
    required TfArg<String> baselineId,
    required TfArg<String> patchGroup,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'baseline_id': baselineId,
           'patch_group': patchGroup,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmPatchGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmPatchGroup>`.
  RefTo<AwsSsmPatchGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `baseline_id` attribute.
  TfRef<String> get baselineIdRef =>
      TfRef.attribute<String>(this, 'baseline_id');

  /// Reference to `patch_group` attribute.
  TfRef<String> get patchGroupRef =>
      TfRef.attribute<String>(this, 'patch_group');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
