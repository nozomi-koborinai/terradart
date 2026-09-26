// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_app_cookie_stickiness_policy`.
const Set<String> _awsAppCookieStickinessPolicySensitive = <String>{};

/// Factory wrapper for `aws_app_cookie_stickiness_policy`.
final class AwsAppCookieStickinessPolicy extends Resource {
  static const String tfType = 'aws_app_cookie_stickiness_policy';

  AwsAppCookieStickinessPolicy({
    required super.localName,
    required TfArg<String> cookieName,
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
           'cookie_name': cookieName,
           'lb_port': lbPort,
           'load_balancer': loadBalancer,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppCookieStickinessPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
