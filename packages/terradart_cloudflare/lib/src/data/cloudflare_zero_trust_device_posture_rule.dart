// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_device_posture_rule.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_rule`.
const Set<String> _cloudflareZeroTrustDevicePostureRuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_posture_rule`.
final class DataCloudflareZeroTrustDevicePostureRule extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_posture_rule';

  DataCloudflareZeroTrustDevicePostureRule(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> ruleId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id'), 'rule_id': ruleId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDevicePostureRuleSensitive;

  /// A reference to the `cloudflare_zero_trust_device_posture_rule` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDevicePostureRule>`.
  RefTo<CloudflareZeroTrustDevicePostureRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');
}
