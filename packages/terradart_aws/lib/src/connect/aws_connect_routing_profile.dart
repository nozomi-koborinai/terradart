// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_routing_profile`.
const Set<String> _awsConnectRoutingProfileSensitive = <String>{};

/// Typed helper for the `media_concurrencies` block of
/// `aws_connect_routing_profile` (derived from provider schema).
@immutable
final class ConnectRoutingProfileMediaConcurrencies {
  const ConnectRoutingProfileMediaConcurrencies({
    required this.channel,
    required this.concurrency,
    this.crossChannelBehavior,
  });

  final TfArg<String> channel;

  final TfArg<num> concurrency;

  final ConnectRoutingProfileMediaConcurrenciesCrossChannelBehavior?
  crossChannelBehavior;

  Map<String, Object?> encode() => {
    'channel': channel.toTfJson(),
    'concurrency': concurrency.toTfJson(),
    if (crossChannelBehavior != null)
      'cross_channel_behavior': crossChannelBehavior!.encode(),
  };
}

/// Typed helper for the `media_concurrencies.cross_channel_behavior` block of
/// `aws_connect_routing_profile` (derived from provider schema).
@immutable
final class ConnectRoutingProfileMediaConcurrenciesCrossChannelBehavior {
  const ConnectRoutingProfileMediaConcurrenciesCrossChannelBehavior({
    required this.behaviorType,
  });

  final TfArg<String> behaviorType;

  Map<String, Object?> encode() => {'behavior_type': behaviorType.toTfJson()};
}

/// Typed helper for the `queue_configs` block of
/// `aws_connect_routing_profile` (derived from provider schema).
@immutable
final class ConnectRoutingProfileQueueConfigs {
  const ConnectRoutingProfileQueueConfigs({
    required this.channel,
    required this.delay,
    required this.priority,
    required this.queueId,
  });

  final TfArg<String> channel;

  final TfArg<num> delay;

  final TfArg<num> priority;

  final TfArg<String> queueId;

  Map<String, Object?> encode() => {
    'channel': channel.toTfJson(),
    'delay': delay.toTfJson(),
    'priority': priority.toTfJson(),
    'queue_id': queueId.toTfJson(),
  };
}

/// Factory wrapper for `aws_connect_routing_profile`.
final class AwsConnectRoutingProfile extends Resource {
  static const String tfType = 'aws_connect_routing_profile';

  AwsConnectRoutingProfile({
    required super.localName,
    required TfArg<String> defaultOutboundQueueId,
    required TfArg<String> description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<ConnectRoutingProfileMediaConcurrencies> mediaConcurrencies,
    List<ConnectRoutingProfileQueueConfigs>? queueConfigs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_outbound_queue_id': defaultOutboundQueueId,
           'description': description,
           'instance_id': instanceId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'media_concurrencies': TfArg.literal([
             for (final e in mediaConcurrencies) e.encode(),
           ]),
           if (queueConfigs != null)
             'queue_configs': TfArg.literal([
               for (final e in queueConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectRoutingProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `routing_profile_id` attribute.
  TfRef<String> get routingProfileId =>
      TfRef.attribute<String>(this, 'routing_profile_id');
}
