// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_protect_configuration`.
const Set<String> _awsPinpointsmsvoicev2ProtectConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_pinpointsmsvoicev2_protect_configuration`.
final class AwsPinpointsmsvoicev2ProtectConfiguration extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_protect_configuration';

  AwsPinpointsmsvoicev2ProtectConfiguration(
    super.localName, {
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<Map<String, String>>? mmsCountryRules,
    TfArg<Map<String, String>>? rcsCountryRules,
    TfArg<String>? region,
    TfArg<Map<String, String>>? smsCountryRules,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? voiceCountryRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'mms_country_rules': ?mmsCountryRules,
           'rcs_country_rules': ?rcsCountryRules,
           'region': ?region,
           'sms_country_rules': ?smsCountryRules,
           'tags': ?tags,
           'voice_country_rules': ?voiceCountryRules,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2ProtectConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2ProtectConfiguration>`.
  RefTo<AwsPinpointsmsvoicev2ProtectConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_default` attribute.
  TfRef<bool> get accountDefault =>
      TfRef.attribute<bool>(this, 'account_default');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `mms_country_rules` attribute.
  TfRef<Map<String, String>> get mmsCountryRules =>
      TfRef.attribute<Map<String, String>>(this, 'mms_country_rules');

  /// Reference to `rcs_country_rules` attribute.
  TfRef<Map<String, String>> get rcsCountryRules =>
      TfRef.attribute<Map<String, String>>(this, 'rcs_country_rules');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sms_country_rules` attribute.
  TfRef<Map<String, String>> get smsCountryRules =>
      TfRef.attribute<Map<String, String>>(this, 'sms_country_rules');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `voice_country_rules` attribute.
  TfRef<Map<String, String>> get voiceCountryRules =>
      TfRef.attribute<Map<String, String>>(this, 'voice_country_rules');
}
