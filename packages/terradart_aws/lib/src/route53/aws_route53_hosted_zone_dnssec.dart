// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_hosted_zone_dnssec`.
const Set<String> _awsRoute53HostedZoneDnssecSensitive = <String>{};

/// Factory wrapper for `aws_route53_hosted_zone_dnssec`.
final class AwsRoute53HostedZoneDnssec extends Resource {
  static const String tfType = 'aws_route53_hosted_zone_dnssec';

  AwsRoute53HostedZoneDnssec({
    required super.localName,
    required TfArg<String> hostedZoneId,
    TfArg<String>? signingStatus,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hosted_zone_id': hostedZoneId,
           if (signingStatus != null) 'signing_status': signingStatus,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53HostedZoneDnssecSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
