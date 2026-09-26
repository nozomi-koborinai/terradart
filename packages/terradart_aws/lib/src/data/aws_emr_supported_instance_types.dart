// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_supported_instance_types`.
const Set<String> _awsEmrSupportedInstanceTypesSensitive = <String>{};

/// Factory wrapper for `aws_emr_supported_instance_types`.
final class DataAwsEmrSupportedInstanceTypes extends Data {
  static const String tfType = 'aws_emr_supported_instance_types';

  DataAwsEmrSupportedInstanceTypes({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> releaseLabel,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'release_label': releaseLabel,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrSupportedInstanceTypesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `supported_instance_types` attribute.
  TfRef<List<Map<String, Object?>>> get supportedInstanceTypes =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'supported_instance_types',
      );
}
