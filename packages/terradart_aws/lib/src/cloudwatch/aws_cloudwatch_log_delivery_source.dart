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
           'region': ?region,
           'resource_arn': resourceArn,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogDeliverySourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogDeliverySource>`.
  RefTo<AwsCloudwatchLogDeliverySource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `log_type` attribute.
  TfRef<String> get logTypeRef => TfRef.attribute<String>(this, 'log_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
