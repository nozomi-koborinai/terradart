// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_traffic_policy`.
const Set<String> _awsRoute53TrafficPolicySensitive = <String>{};

/// Factory wrapper for `aws_route53_traffic_policy`.
final class AwsRoute53TrafficPolicy extends Resource {
  static const String tfType = 'aws_route53_traffic_policy';

  AwsRoute53TrafficPolicy({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> document,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'document': document,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53TrafficPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
