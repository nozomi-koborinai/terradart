// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_cookie_stickiness_policy`.
const Set<String> _awsLbCookieStickinessPolicySensitive = <String>{};

/// Factory wrapper for `aws_lb_cookie_stickiness_policy`.
final class AwsLbCookieStickinessPolicy extends Resource {
  static const String tfType = 'aws_lb_cookie_stickiness_policy';

  AwsLbCookieStickinessPolicy({
    required super.localName,
    TfArg<num>? cookieExpirationPeriod,
    required TfArg<num> lbPort,
    required TfArg<String> loadBalancer,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cookieExpirationPeriod != null)
             'cookie_expiration_period': cookieExpirationPeriod,
           'lb_port': lbPort,
           'load_balancer': loadBalancer,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbCookieStickinessPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
