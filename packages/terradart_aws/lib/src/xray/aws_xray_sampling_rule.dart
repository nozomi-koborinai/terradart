// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_sampling_rule`.
const Set<String> _awsXraySamplingRuleSensitive = <String>{};

/// Factory wrapper for `aws_xray_sampling_rule`.
final class AwsXraySamplingRule extends Resource {
  static const String tfType = 'aws_xray_sampling_rule';

  AwsXraySamplingRule(
    super.localName, {
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
           'attributes': ?attributes,
           'fixed_rate': fixedRate,
           'host': host,
           'http_method': httpMethod,
           'priority': priority,
           'region': ?region,
           'reservoir_size': reservoirSize,
           'resource_arn': resourceArn,
           'rule_name': ?ruleName,
           'service_name': serviceName,
           'service_type': serviceType,
           'tags': ?tags,
           'url_path': urlPath,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXraySamplingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsXraySamplingRule>`.
  RefTo<AwsXraySamplingRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attributes` attribute.
  TfRef<Map<String, String>> get attributes =>
      TfRef.attribute<Map<String, String>>(this, 'attributes');

  /// Reference to `fixed_rate` attribute.
  TfRef<num> get fixedRate => TfRef.attribute<num>(this, 'fixed_rate');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `http_method` attribute.
  TfRef<String> get httpMethod => TfRef.attribute<String>(this, 'http_method');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `reservoir_size` attribute.
  TfRef<num> get reservoirSize => TfRef.attribute<num>(this, 'reservoir_size');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `service_type` attribute.
  TfRef<String> get serviceType =>
      TfRef.attribute<String>(this, 'service_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `url_path` attribute.
  TfRef<String> get urlPath => TfRef.attribute<String>(this, 'url_path');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
