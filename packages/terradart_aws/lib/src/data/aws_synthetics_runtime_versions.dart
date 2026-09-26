// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_synthetics_runtime_versions`.
const Set<String> _awsSyntheticsRuntimeVersionsSensitive = <String>{};

/// Factory wrapper for `aws_synthetics_runtime_versions`.
final class DataAwsSyntheticsRuntimeVersions extends Data {
  static const String tfType = 'aws_synthetics_runtime_versions';

  DataAwsSyntheticsRuntimeVersions({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSyntheticsRuntimeVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `runtime_versions` attribute.
  TfRef<List<Map<String, Object?>>> get runtimeVersions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'runtime_versions');
}
