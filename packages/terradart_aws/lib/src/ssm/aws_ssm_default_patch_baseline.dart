// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_default_patch_baseline`.
const Set<String> _awsSsmDefaultPatchBaselineSensitive = <String>{};

/// Factory wrapper for `aws_ssm_default_patch_baseline`.
final class AwsSsmDefaultPatchBaseline extends Resource {
  static const String tfType = 'aws_ssm_default_patch_baseline';

  AwsSsmDefaultPatchBaseline({
    required super.localName,
    required TfArg<String> baselineId,
    required TfArg<String> operatingSystem,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'baseline_id': baselineId,
           'operating_system': operatingSystem,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmDefaultPatchBaselineSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
