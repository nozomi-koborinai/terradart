// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_patch_baselines`.
const Set<String> _awsSsmPatchBaselinesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ssm_patch_baselines` (derived from provider schema).
@immutable
final class DataSsmPatchBaselinesFilter {
  const DataSsmPatchBaselinesFilter({required this.key, required this.values});

  final TfArg<String> key;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_patch_baselines`.
final class DataAwsSsmPatchBaselines extends Data {
  static const String tfType = 'aws_ssm_patch_baselines';

  DataAwsSsmPatchBaselines(
    super.localName, {
    TfArg<bool>? defaultBaselines,
    TfArg<String>? region,
    List<DataSsmPatchBaselinesFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_baselines': ?defaultBaselines,
           'region': ?region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmPatchBaselinesSensitive;

  /// Reference to `baseline_identities` attribute.
  TfRef<List<Map<String, Object?>>> get baselineIdentities =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'baseline_identities');

  /// Reference to `default_baselines` attribute.
  TfRef<bool> get defaultBaselines =>
      TfRef.attribute<bool>(this, 'default_baselines');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
