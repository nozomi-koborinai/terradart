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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmPatchGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
