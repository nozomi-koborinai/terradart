// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_app_cookie_stickiness_policy`.
const Set<String> _awsAppCookieStickinessPolicySensitive = <String>{};

/// Factory wrapper for `aws_app_cookie_stickiness_policy`.
final class AwsAppCookieStickinessPolicy extends Resource {
  static const String tfType = 'aws_app_cookie_stickiness_policy';

  AwsAppCookieStickinessPolicy(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppCookieStickinessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppCookieStickinessPolicy>`.
  RefTo<AwsAppCookieStickinessPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cookie_name` attribute.
  TfRef<String> get cookieName => TfRef.attribute<String>(this, 'cookie_name');

  /// Reference to `lb_port` attribute.
  TfRef<num> get lbPort => TfRef.attribute<num>(this, 'lb_port');

  /// Reference to `load_balancer` attribute.
  TfRef<String> get loadBalancer =>
      TfRef.attribute<String>(this, 'load_balancer');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
