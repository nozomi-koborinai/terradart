// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastic_beanstalk_hosted_zone`.
const Set<String> _awsElasticBeanstalkHostedZoneSensitive = <String>{};

/// Factory wrapper for `aws_elastic_beanstalk_hosted_zone`.
final class DataAwsElasticBeanstalkHostedZone extends Data {
  static const String tfType = 'aws_elastic_beanstalk_hosted_zone';

  DataAwsElasticBeanstalkHostedZone({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsElasticBeanstalkHostedZoneSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
