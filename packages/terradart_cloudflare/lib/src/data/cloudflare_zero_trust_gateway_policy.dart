// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_policy`.
const Set<String> _cloudflareZeroTrustGatewayPolicySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_policy`.
final class DataCloudflareZeroTrustGatewayPolicy extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_policy';

  DataCloudflareZeroTrustGatewayPolicy({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> ruleId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'rule_id': ruleId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustGatewayPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `device_posture` attribute.
  TfRef<String> get devicePosture =>
      TfRef.attribute<String>(this, 'device_posture');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `filters` attribute.
  TfRef<List<String>> get filters =>
      TfRef.attribute<List<String>>(this, 'filters');

  /// Reference to `identity` attribute.
  TfRef<String> get identity => TfRef.attribute<String>(this, 'identity');

  /// Reference to `precedence` attribute.
  TfRef<num> get precedence => TfRef.attribute<num>(this, 'precedence');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnly => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `sharable` attribute.
  TfRef<bool> get sharable => TfRef.attribute<bool>(this, 'sharable');

  /// Reference to `source_account` attribute.
  TfRef<String> get sourceAccount =>
      TfRef.attribute<String>(this, 'source_account');

  /// Reference to `traffic` attribute.
  TfRef<String> get traffic => TfRef.attribute<String>(this, 'traffic');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `warning_status` attribute.
  TfRef<String> get warningStatus =>
      TfRef.attribute<String>(this, 'warning_status');
}
