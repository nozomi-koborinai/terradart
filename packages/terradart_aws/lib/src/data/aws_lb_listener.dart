// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_listener`.
const Set<String> _awsLbListenerSensitive = <String>{};

/// Factory wrapper for `aws_lb_listener`.
final class DataAwsLbListener extends Data {
  static const String tfType = 'aws_lb_listener';

  DataAwsLbListener({
    required super.localName,
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
           if (arn != null) 'arn': arn,
           if (loadBalancerArn != null) 'load_balancer_arn': loadBalancerArn,
           if (port != null) 'port': port,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbListenerSensitive;

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
}
