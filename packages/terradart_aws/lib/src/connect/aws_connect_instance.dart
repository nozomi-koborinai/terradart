// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_instance`.
const Set<String> _awsConnectInstanceSensitive = <String>{};

/// Factory wrapper for `aws_connect_instance`.
final class AwsConnectInstance extends Resource {
  static const String tfType = 'aws_connect_instance';

  AwsConnectInstance({
    required super.localName,
    TfArg<bool>? autoResolveBestVoicesEnabled,
    TfArg<bool>? contactFlowLogsEnabled,
    TfArg<bool>? contactLensEnabled,
    TfArg<String>? directoryId,
    TfArg<bool>? earlyMediaEnabled,
    required TfArg<String> identityManagementType,
    required TfArg<bool> inboundCallsEnabled,
    TfArg<String>? instanceAlias,
    TfArg<bool>? multiPartyConferenceEnabled,
    required TfArg<bool> outboundCallsEnabled,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoResolveBestVoicesEnabled != null)
             'auto_resolve_best_voices_enabled': autoResolveBestVoicesEnabled,
           if (contactFlowLogsEnabled != null)
             'contact_flow_logs_enabled': contactFlowLogsEnabled,
           if (contactLensEnabled != null)
             'contact_lens_enabled': contactLensEnabled,
           if (directoryId != null) 'directory_id': directoryId,
           if (earlyMediaEnabled != null)
             'early_media_enabled': earlyMediaEnabled,
           'identity_management_type': identityManagementType,
           'inbound_calls_enabled': inboundCallsEnabled,
           if (instanceAlias != null) 'instance_alias': instanceAlias,
           if (multiPartyConferenceEnabled != null)
             'multi_party_conference_enabled': multiPartyConferenceEnabled,
           'outbound_calls_enabled': outboundCallsEnabled,
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

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
