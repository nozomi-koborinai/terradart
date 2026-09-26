// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_instance`.
const Set<String> _awsConnectInstanceSensitive = <String>{};

/// Factory wrapper for `aws_connect_instance`.
final class DataAwsConnectInstance extends Data {
  static const String tfType = 'aws_connect_instance';

  DataAwsConnectInstance({
    required super.localName,
    TfArg<String>? instanceAlias,
    TfArg<String>? instanceId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (instanceAlias != null) 'instance_alias': instanceAlias,
           if (instanceId != null) 'instance_id': instanceId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_resolve_best_voices_enabled` attribute.
  TfRef<bool> get autoResolveBestVoicesEnabled =>
      TfRef.attribute<bool>(this, 'auto_resolve_best_voices_enabled');

  /// Reference to `contact_flow_logs_enabled` attribute.
  TfRef<bool> get contactFlowLogsEnabled =>
      TfRef.attribute<bool>(this, 'contact_flow_logs_enabled');

  /// Reference to `contact_lens_enabled` attribute.
  TfRef<bool> get contactLensEnabled =>
      TfRef.attribute<bool>(this, 'contact_lens_enabled');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `early_media_enabled` attribute.
  TfRef<bool> get earlyMediaEnabled =>
      TfRef.attribute<bool>(this, 'early_media_enabled');

  /// Reference to `identity_management_type` attribute.
  TfRef<String> get identityManagementType =>
      TfRef.attribute<String>(this, 'identity_management_type');

  /// Reference to `inbound_calls_enabled` attribute.
  TfRef<bool> get inboundCallsEnabled =>
      TfRef.attribute<bool>(this, 'inbound_calls_enabled');

  /// Reference to `multi_party_conference_enabled` attribute.
  TfRef<bool> get multiPartyConferenceEnabled =>
      TfRef.attribute<bool>(this, 'multi_party_conference_enabled');

  /// Reference to `outbound_calls_enabled` attribute.
  TfRef<bool> get outboundCallsEnabled =>
      TfRef.attribute<bool>(this, 'outbound_calls_enabled');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
