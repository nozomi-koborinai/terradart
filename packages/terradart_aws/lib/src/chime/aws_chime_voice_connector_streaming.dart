// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector_streaming`.
const Set<String> _awsChimeVoiceConnectorStreamingSensitive = <String>{};

/// Chime Voice Connector Streaming Streaming Notification enum for `streaming_notification_targets`.
enum ChimeVoiceConnectorStreamingStreamingNotificationTargets
    implements TerraformEnum {
  eventbridge('EventBridge'),
  sns('SNS'),
  sqs('SQS');

  const ChimeVoiceConnectorStreamingStreamingNotificationTargets(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

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
    'configuration_arn': ?configurationArn?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
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
    List<TfArg<ChimeVoiceConnectorStreamingStreamingNotificationTargets>>?
    streamingNotificationTargets,
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
           'disabled': ?disabled,
           'region': ?region,
           if (streamingNotificationTargets != null)
             'streaming_notification_targets': TfArg.literal([
               for (final e in streamingNotificationTargets) e.toTfJson(),
             ]),
           'voice_connector_id': voiceConnectorId,
           if (mediaInsightsConfiguration != null)
             'media_insights_configuration': TfArg.literal(
               mediaInsightsConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimeVoiceConnectorStreamingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimeVoiceConnectorStreaming>`.
  RefTo<AwsChimeVoiceConnectorStreaming> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_retention` attribute.
  TfRef<num> get dataRetentionRef =>
      TfRef.attribute<num>(this, 'data_retention');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabledRef => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `streaming_notification_targets` attribute.
  TfRef<List<String>> get streamingNotificationTargetsRef =>
      TfRef.attribute<List<String>>(this, 'streaming_notification_targets');

  /// Reference to `voice_connector_id` attribute.
  TfRef<String> get voiceConnectorIdRef =>
      TfRef.attribute<String>(this, 'voice_connector_id');
}
