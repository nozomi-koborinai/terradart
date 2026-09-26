// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_dedicated_ip_pool`.
const Set<String> _awsSesv2DedicatedIpPoolSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_dedicated_ip_pool`.
final class AwsSesv2DedicatedIpPool extends Resource {
  static const String tfType = 'aws_sesv2_dedicated_ip_pool';

  AwsSesv2DedicatedIpPool({
    required super.localName,
    required TfArg<String> poolName,
    TfArg<String>? region,
    TfArg<String>? scalingMode,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pool_name': poolName,
           if (region != null) 'region': region,
           if (scalingMode != null) 'scaling_mode': scalingMode,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2DedicatedIpPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
