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
    'policy_duration_seconds': ?policyDurationSeconds?.toTfJson(),
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
           'custom_event_data': ?customEventData,
           'destinations': ?destinations,
           'name': name,
           'notification_target': ?notificationTarget,
           'region': ?region,
           'tags': ?tags,
           'timeout_in_seconds': ?timeoutInSeconds,
           if (playerLatencyPolicy != null)
             'player_latency_policy': TfArg.literal([
               for (final e in playerLatencyPolicy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftGameSessionQueueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGameliftGameSessionQueue>`.
  RefTo<AwsGameliftGameSessionQueue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `custom_event_data` attribute.
  TfRef<String> get customEventDataRef =>
      TfRef.attribute<String>(this, 'custom_event_data');

  /// Reference to `destinations` attribute.
  TfRef<List<String>> get destinationsRef =>
      TfRef.attribute<List<String>>(this, 'destinations');

  /// Reference to `notification_target` attribute.
  TfRef<String> get notificationTargetRef =>
      TfRef.attribute<String>(this, 'notification_target');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout_in_seconds` attribute.
  TfRef<num> get timeoutInSecondsRef =>
      TfRef.attribute<num>(this, 'timeout_in_seconds');
}
