// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_dedicated_ip_pool`.
const Set<String> _awsSesv2DedicatedIpPoolSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_dedicated_ip_pool`.
final class DataAwsSesv2DedicatedIpPool extends Data {
  static const String tfType = 'aws_sesv2_dedicated_ip_pool';

  DataAwsSesv2DedicatedIpPool({
    required super.localName,
    required TfArg<String> poolName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pool_name': poolName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2DedicatedIpPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dedicated_ips` attribute.
  TfRef<List<Map<String, Object?>>> get dedicatedIps =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dedicated_ips');

  /// Reference to `scaling_mode` attribute.
  TfRef<String> get scalingMode =>
      TfRef.attribute<String>(this, 'scaling_mode');
}
