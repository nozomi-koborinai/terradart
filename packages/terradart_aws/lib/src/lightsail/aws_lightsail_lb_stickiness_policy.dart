// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_lb_stickiness_policy`.
const Set<String> _awsLightsailLbStickinessPolicySensitive = <String>{};

/// Factory wrapper for `aws_lightsail_lb_stickiness_policy`.
final class AwsLightsailLbStickinessPolicy extends Resource {
  static const String tfType = 'aws_lightsail_lb_stickiness_policy';

  AwsLightsailLbStickinessPolicy({
    required super.localName,
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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailLbStickinessPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
