// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_instance`.
const Set<String> _awsConnectInstanceSensitive = <String>{};

/// Connect Instance Identity Management enum for `identity_management_type`.
enum ConnectInstanceIdentityManagementType implements TerraformEnum {
  saml('SAML'),
  connectManaged('CONNECT_MANAGED'),
  existingDirectory('EXISTING_DIRECTORY');

  const ConnectInstanceIdentityManagementType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    required TfArg<ConnectInstanceIdentityManagementType>
    identityManagementType,
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
           'auto_resolve_best_voices_enabled': ?autoResolveBestVoicesEnabled,
           'contact_flow_logs_enabled': ?contactFlowLogsEnabled,
           'contact_lens_enabled': ?contactLensEnabled,
           'directory_id': ?directoryId,
           'early_media_enabled': ?earlyMediaEnabled,
           'identity_management_type': identityManagementType,
           'inbound_calls_enabled': inboundCallsEnabled,
           'instance_alias': ?instanceAlias,
           'multi_party_conference_enabled': ?multiPartyConferenceEnabled,
           'outbound_calls_enabled': outboundCallsEnabled,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectInstance>`.
  RefTo<AwsConnectInstance> get ref => RefTo.of(this);

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

  /// Reference to `auto_resolve_best_voices_enabled` attribute.
  TfRef<bool> get autoResolveBestVoicesEnabled =>
      TfRef.attribute<bool>(this, 'auto_resolve_best_voices_enabled');

  /// Reference to `contact_flow_logs_enabled` attribute.
  TfRef<bool> get contactFlowLogsEnabled =>
      TfRef.attribute<bool>(this, 'contact_flow_logs_enabled');

  /// Reference to `contact_lens_enabled` attribute.
  TfRef<bool> get contactLensEnabled =>
      TfRef.attribute<bool>(this, 'contact_lens_enabled');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `early_media_enabled` attribute.
  TfRef<bool> get earlyMediaEnabled =>
      TfRef.attribute<bool>(this, 'early_media_enabled');

  /// Reference to `identity_management_type` attribute.
  TfRef<String> get identityManagementType =>
      TfRef.attribute<String>(this, 'identity_management_type');

  /// Reference to `inbound_calls_enabled` attribute.
  TfRef<bool> get inboundCallsEnabled =>
      TfRef.attribute<bool>(this, 'inbound_calls_enabled');

  /// Reference to `instance_alias` attribute.
  TfRef<String> get instanceAlias =>
      TfRef.attribute<String>(this, 'instance_alias');

  /// Reference to `multi_party_conference_enabled` attribute.
  TfRef<bool> get multiPartyConferenceEnabled =>
      TfRef.attribute<bool>(this, 'multi_party_conference_enabled');

  /// Reference to `outbound_calls_enabled` attribute.
  TfRef<bool> get outboundCallsEnabled =>
      TfRef.attribute<bool>(this, 'outbound_calls_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
