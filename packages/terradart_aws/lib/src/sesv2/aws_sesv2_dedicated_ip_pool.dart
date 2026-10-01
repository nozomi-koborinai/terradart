// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_dedicated_ip_pool`.
const Set<String> _awsSesv2DedicatedIpPoolSensitive = <String>{};

/// Sesv2 Dedicated Ip Pool Scaling enum for `scaling_mode`.
extension type const Sesv2DedicatedIpPoolScalingMode._(TfArg<String> _)
    implements TfArg<String> {
  Sesv2DedicatedIpPoolScalingMode.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2DedicatedIpPoolScalingMode.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2DedicatedIpPoolScalingMode.arg(TfArg<String> arg) : this._(arg);

  static const standard = Sesv2DedicatedIpPoolScalingMode._(
    TfArgLiteral('STANDARD'),
  );
  static const managed = Sesv2DedicatedIpPoolScalingMode._(
    TfArgLiteral('MANAGED'),
  );

  static const List<Sesv2DedicatedIpPoolScalingMode> values = [
    standard,
    managed,
  ];
}

/// Factory wrapper for `aws_sesv2_dedicated_ip_pool`.
final class AwsSesv2DedicatedIpPool extends Resource {
  static const String tfType = 'aws_sesv2_dedicated_ip_pool';

  AwsSesv2DedicatedIpPool(
    super.localName, {
    required TfArg<String> poolName,
    TfArg<String>? region,
    Sesv2DedicatedIpPoolScalingMode? scalingMode,
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
