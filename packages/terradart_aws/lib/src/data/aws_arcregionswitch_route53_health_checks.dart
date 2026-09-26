// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arcregionswitch_route53_health_checks`.
const Set<String> _awsArcregionswitchRoute53HealthChecksSensitive = <String>{};

/// Factory wrapper for `aws_arcregionswitch_route53_health_checks`.
final class DataAwsArcregionswitchRoute53HealthChecks extends Data {
  static const String tfType = 'aws_arcregionswitch_route53_health_checks';

  DataAwsArcregionswitchRoute53HealthChecks({
    required super.localName,
    required TfArg<String> planArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'plan_arn': planArn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsArcregionswitchRoute53HealthChecksSensitive;

  /// Reference to `health_checks` attribute.
  TfRef<List<Map<String, Object?>>> get healthChecks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_checks');
}
