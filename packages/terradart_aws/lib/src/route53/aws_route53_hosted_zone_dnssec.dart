// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_hosted_zone_dnssec`.
const Set<String> _awsRoute53HostedZoneDnssecSensitive = <String>{};

/// Route53 Hosted Zone Dnssec Signing enum for `signing_status`.
enum Route53HostedZoneDnssecSigningStatus implements TerraformEnum {
  signing('SIGNING'),
  notSigning('NOT_SIGNING');

  const Route53HostedZoneDnssecSigningStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53_hosted_zone_dnssec`.
final class AwsRoute53HostedZoneDnssec extends Resource {
  static const String tfType = 'aws_route53_hosted_zone_dnssec';

  AwsRoute53HostedZoneDnssec(
    super.localName, {
    required TfArg<String> hostedZoneId,
    TfArg<Route53HostedZoneDnssecSigningStatus>? signingStatus,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hosted_zone_id': hostedZoneId,
           'signing_status': ?signingStatus,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53HostedZoneDnssecSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53HostedZoneDnssec>`.
  RefTo<AwsRoute53HostedZoneDnssec> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `signing_status` attribute.
  TfRef<String> get signingStatus =>
      TfRef.attribute<String>(this, 'signing_status');
}
