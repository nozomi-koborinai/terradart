// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_sampling_rule`.
const Set<String> _awsXraySamplingRuleSensitive = <String>{};

/// Factory wrapper for `aws_xray_sampling_rule`.
final class AwsXraySamplingRule extends Resource {
  static const String tfType = 'aws_xray_sampling_rule';

  AwsXraySamplingRule({
    required super.localName,
    TfArg<Map<String, String>>? attributes,
    required TfArg<num> fixedRate,
    required TfArg<String> host,
    required TfArg<String> httpMethod,
    required TfArg<num> priority,
    TfArg<String>? region,
    required TfArg<num> reservoirSize,
    required TfArg<String> resourceArn,
    TfArg<String>? ruleName,
    required TfArg<String> serviceName,
    required TfArg<String> serviceType,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> urlPath,
    required TfArg<num> version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (attributes != null) 'attributes': attributes,
           'fixed_rate': fixedRate,
           'host': host,
           'http_method': httpMethod,
           'priority': priority,
           if (region != null) 'region': region,
           'reservoir_size': reservoirSize,
           'resource_arn': resourceArn,
           if (ruleName != null) 'rule_name': ruleName,
           'service_name': serviceName,
           'service_type': serviceType,
           if (tags != null) 'tags': tags,
           'url_path': urlPath,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXraySamplingRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
