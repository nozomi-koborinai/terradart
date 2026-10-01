// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector_logging`.
const Set<String> _awsChimeVoiceConnectorLoggingSensitive = <String>{};

/// Factory wrapper for `aws_chime_voice_connector_logging`.
final class AwsChimeVoiceConnectorLogging extends Resource {
  static const String tfType = 'aws_chime_voice_connector_logging';

  AwsChimeVoiceConnectorLogging(
    super.localName, {
    TfArg<bool>? enableMediaMetricLogs,
    TfArg<bool>? enableSipLogs,
    TfArg<String>? region,
    required TfArg<String> voiceConnectorId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enable_media_metric_logs': ?enableMediaMetricLogs,
           'enable_sip_logs': ?enableSipLogs,
           'region': ?region,
           'voice_connector_id': voiceConnectorId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimeVoiceConnectorLoggingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimeVoiceConnectorLogging>`.
  RefTo<AwsChimeVoiceConnectorLogging> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enable_media_metric_logs` attribute.
  TfRef<bool> get enableMediaMetricLogs =>
      TfRef.attribute<bool>(this, 'enable_media_metric_logs');

  /// Reference to `enable_sip_logs` attribute.
  TfRef<bool> get enableSipLogs =>
      TfRef.attribute<bool>(this, 'enable_sip_logs');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `voice_connector_id` attribute.
  TfRef<String> get voiceConnectorId =>
      TfRef.attribute<String>(this, 'voice_connector_id');
}
