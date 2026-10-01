// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../elb/aws_lb_listener.dart';

/// Sensitive field paths for `aws_lb_listener`.
const Set<String> _awsLbListenerSensitive = <String>{};

/// Factory wrapper for `aws_lb_listener`.
final class DataAwsLbListener extends Data {
  static const String tfType = 'aws_lb_listener';

  DataAwsLbListener(
    super.localName, {
    TfArg<String>? arn,
    TfArg<String>? loadBalancerArn,
    TfArg<num>? port,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': ?arn,
           'load_balancer_arn': ?loadBalancerArn,
           'port': ?port,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbListenerSensitive;

  /// A reference to the `aws_lb_listener` this data source reads, for
  /// arguments typed `RefTo<AwsLbListener>`.
  RefTo<AwsLbListener> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alpn_policy` attribute.
  TfRef<String> get alpnPolicy => TfRef.attribute<String>(this, 'alpn_policy');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `default_action` attribute.
  TfRef<List<Map<String, Object?>>> get defaultAction =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'default_action');

  /// Reference to `mutual_authentication` attribute.
  TfRef<List<Map<String, Object?>>> get mutualAuthentication =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'mutual_authentication',
      );

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicy => TfRef.attribute<String>(this, 'ssl_policy');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `load_balancer_arn` attribute.
  TfRef<String> get loadBalancerArn =>
      TfRef.attribute<String>(this, 'load_balancer_arn');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
