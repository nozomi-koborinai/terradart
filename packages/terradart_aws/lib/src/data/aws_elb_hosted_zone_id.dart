// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elb_hosted_zone_id`.
const Set<String> _awsElbHostedZoneIdSensitive = <String>{};

/// Factory wrapper for `aws_elb_hosted_zone_id`.
final class DataAwsElbHostedZoneId extends Data {
  static const String tfType = 'aws_elb_hosted_zone_id';

  DataAwsElbHostedZoneId({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsElbHostedZoneIdSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
