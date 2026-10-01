// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_dedicated_ip_pool`.
const Set<String> _awsSesv2DedicatedIpPoolSensitive = <String>{};

/// Sesv2 Dedicated Ip Pool Scaling enum for `scaling_mode`.
enum Sesv2DedicatedIpPoolScalingMode implements TerraformEnum {
  standard('STANDARD'),
  managed('MANAGED');

  const Sesv2DedicatedIpPoolScalingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sesv2_dedicated_ip_pool`.
final class AwsSesv2DedicatedIpPool extends Resource {
  static const String tfType = 'aws_sesv2_dedicated_ip_pool';

  AwsSesv2DedicatedIpPool(
    super.localName, {
    required TfArg<String> poolName,
    TfArg<String>? region,
    TfArg<Sesv2DedicatedIpPoolScalingMode>? scalingMode,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pool_name': poolName,
           'region': ?region,
           'scaling_mode': ?scalingMode,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2DedicatedIpPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2DedicatedIpPool>`.
  RefTo<AwsSesv2DedicatedIpPool> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `pool_name` attribute.
  TfRef<String> get poolName => TfRef.attribute<String>(this, 'pool_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scaling_mode` attribute.
  TfRef<String> get scalingMode =>
      TfRef.attribute<String>(this, 'scaling_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
