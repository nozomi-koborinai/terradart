// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_lb_stickiness_policy`.
const Set<String> _awsLightsailLbStickinessPolicySensitive = <String>{};

/// Factory wrapper for `aws_lightsail_lb_stickiness_policy`.
final class AwsLightsailLbStickinessPolicy extends Resource {
  static const String tfType = 'aws_lightsail_lb_stickiness_policy';

  AwsLightsailLbStickinessPolicy(
    super.localName, {
    required TfArg<num> cookieDuration,
    required TfArg<bool> enabled,
    required TfArg<String> lbName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cookie_duration': cookieDuration,
           'enabled': enabled,
           'lb_name': lbName,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailLbStickinessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailLbStickinessPolicy>`.
  RefTo<AwsLightsailLbStickinessPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cookie_duration` attribute.
  TfRef<num> get cookieDuration =>
      TfRef.attribute<num>(this, 'cookie_duration');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `lb_name` attribute.
  TfRef<String> get lbName => TfRef.attribute<String>(this, 'lb_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
