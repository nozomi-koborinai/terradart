// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector_streaming`.
const Set<String> _awsChimeVoiceConnectorStreamingSensitive = <String>{};

/// Typed helper for the `media_insights_configuration` block of
/// `aws_chime_voice_connector_streaming` (derived from provider schema).
@immutable
final class ChimeVoiceConnectorStreamingMediaInsightsConfiguration {
  const ChimeVoiceConnectorStreamingMediaInsightsConfiguration({
    this.configurationArn,
    this.disabled,
  });

  final TfArg<String>? configurationArn;

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {
    if (configurationArn != null)
      'configuration_arn': configurationArn!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Factory wrapper for `aws_chime_voice_connector_streaming`.
final class AwsChimeVoiceConnectorStreaming extends Resource {
  static const String tfType = 'aws_chime_voice_connector_streaming';

  AwsChimeVoiceConnectorStreaming({
    required super.localName,
    required TfArg<num> dataRetention,
    TfArg<bool>? disabled,
    TfArg<String>? region,
    TfArg<List<String>>? streamingNotificationTargets,
    required TfArg<String> voiceConnectorId,
    ChimeVoiceConnectorStreamingMediaInsightsConfiguration?
    mediaInsightsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_retention': dataRetention,
           if (disabled != null) 'disabled': disabled,
           if (region != null) 'region': region,
           if (streamingNotificationTargets != null)
             'streaming_notification_targets': streamingNotificationTargets,
           'voice_connector_id': voiceConnectorId,
           if (mediaInsightsConfiguration != null)
             'media_insights_configuration': TfArg.literal(
               mediaInsightsConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimeVoiceConnectorStreamingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
