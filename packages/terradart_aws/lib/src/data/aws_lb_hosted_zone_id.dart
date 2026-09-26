// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_hosted_zone_id`.
const Set<String> _awsLbHostedZoneIdSensitive = <String>{};

/// Factory wrapper for `aws_lb_hosted_zone_id`.
final class DataAwsLbHostedZoneId extends Data {
  static const String tfType = 'aws_lb_hosted_zone_id';

  DataAwsLbHostedZoneId({
    required super.localName,
    TfArg<String>? loadBalancerType,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (loadBalancerType != null) 'load_balancer_type': loadBalancerType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbHostedZoneIdSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
