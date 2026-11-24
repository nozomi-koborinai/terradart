// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_account_default_protect_configuration`.
const Set<String>
_awsPinpointsmsvoicev2AccountDefaultProtectConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_pinpointsmsvoicev2_account_default_protect_configuration`.
final class AwsPinpointsmsvoicev2AccountDefaultProtectConfiguration
    extends Resource {
  static const String tfType =
      'aws_pinpointsmsvoicev2_account_default_protect_configuration';

  AwsPinpointsmsvoicev2AccountDefaultProtectConfiguration(
    super.localName, {
    required TfArg<String> protectConfigurationId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'protect_configuration_id': protectConfigurationId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2AccountDefaultProtectConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2AccountDefaultProtectConfiguration>`.
  RefTo<AwsPinpointsmsvoicev2AccountDefaultProtectConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protect_configuration_id` attribute.
  TfRef<String> get protectConfigurationId =>
      TfRef.attribute<String>(this, 'protect_configuration_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
