// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_delivery_source`.
const Set<String> _awsCloudwatchLogDeliverySourceSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_delivery_source`.
final class AwsCloudwatchLogDeliverySource extends Resource {
  static const String tfType = 'aws_cloudwatch_log_delivery_source';

  AwsCloudwatchLogDeliverySource({
    required super.localName,
    required TfArg<String> logType,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_type': logType,
           'name': name,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogDeliverySourceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
