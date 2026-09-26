// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_game_session_queue`.
const Set<String> _awsGameliftGameSessionQueueSensitive = <String>{};

/// Typed helper for the `player_latency_policy` block of
/// `aws_gamelift_game_session_queue` (derived from provider schema).
@immutable
final class GameliftGameSessionQueuePlayerLatencyPolicy {
  const GameliftGameSessionQueuePlayerLatencyPolicy({
    required this.maximumIndividualPlayerLatencyMilliseconds,
    this.policyDurationSeconds,
  });

  final TfArg<num> maximumIndividualPlayerLatencyMilliseconds;

  final TfArg<num>? policyDurationSeconds;

  Map<String, Object?> encode() => {
    'maximum_individual_player_latency_milliseconds':
        maximumIndividualPlayerLatencyMilliseconds.toTfJson(),
    if (policyDurationSeconds != null)
      'policy_duration_seconds': policyDurationSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_game_session_queue`.
final class AwsGameliftGameSessionQueue extends Resource {
  static const String tfType = 'aws_gamelift_game_session_queue';

  AwsGameliftGameSessionQueue({
    required super.localName,
    TfArg<String>? customEventData,
    TfArg<List<String>>? destinations,
    required TfArg<String> name,
    TfArg<String>? notificationTarget,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeoutInSeconds,
    List<GameliftGameSessionQueuePlayerLatencyPolicy>? playerLatencyPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customEventData != null) 'custom_event_data': customEventData,
           if (destinations != null) 'destinations': destinations,
           'name': name,
           if (notificationTarget != null)
             'notification_target': notificationTarget,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (timeoutInSeconds != null) 'timeout_in_seconds': timeoutInSeconds,
           if (playerLatencyPolicy != null)
             'player_latency_policy': TfArg.literal([
               for (final e in playerLatencyPolicy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftGameSessionQueueSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
