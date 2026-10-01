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

  final ConnectRoutingProfileChannel channel;

  final TfArg<num> concurrency;

  final ConnectRoutingProfileCrossChannelBehavior? crossChannelBehavior;

  Map<String, Object?> encode() => {
    'channel': channel.toTfJson(),
    'concurrency': concurrency.toTfJson(),
    'cross_channel_behavior': ?crossChannelBehavior?.encode(),
  };
}

/// `channel` — derived from the provider schema description.
extension type const ConnectRoutingProfileChannel._(TfArg<String> _)
    implements TfArg<String> {
  ConnectRoutingProfileChannel.variable(String name)
    : this._(TfArg.variable(name));
  ConnectRoutingProfileChannel.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectRoutingProfileChannel.arg(TfArg<String> arg) : this._(arg);

  static const voice = ConnectRoutingProfileChannel._(TfArgLiteral('VOICE'));
  static const chat = ConnectRoutingProfileChannel._(TfArgLiteral('CHAT'));
  static const task = ConnectRoutingProfileChannel._(TfArgLiteral('TASK'));
  static const email = ConnectRoutingProfileChannel._(TfArgLiteral('EMAIL'));

  static const List<ConnectRoutingProfileChannel> values = [
    voice,
    chat,
    task,
    email,
  ];
}

/// Typed helper for the `media_concurrencies.cross_channel_behavior` block of
/// `aws_connect_routing_profile` (derived from provider schema).
@immutable
final class ConnectRoutingProfileCrossChannelBehavior {
  const ConnectRoutingProfileCrossChannelBehavior({required this.behaviorType});

  final ConnectRoutingProfileBehaviorType behaviorType;

  Map<String, Object?> encode() => {'behavior_type': behaviorType.toTfJson()};
}

/// `behavior_type` — derived from the provider schema description.
extension type const ConnectRoutingProfileBehaviorType._(TfArg<String> _)
    implements TfArg<String> {
  ConnectRoutingProfileBehaviorType.variable(String name)
    : this._(TfArg.variable(name));
  ConnectRoutingProfileBehaviorType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectRoutingProfileBehaviorType.arg(TfArg<String> arg) : this._(arg);

  static const routeCurrentChannelOnly = ConnectRoutingProfileBehaviorType._(
    TfArgLiteral('ROUTE_CURRENT_CHANNEL_ONLY'),
  );
  static const routeAnyChannel = ConnectRoutingProfileBehaviorType._(
    TfArgLiteral('ROUTE_ANY_CHANNEL'),
  );

  static const List<ConnectRoutingProfileBehaviorType> values = [
    routeCurrentChannelOnly,
    routeAnyChannel,
  ];
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

  final ConnectRoutingProfileChannel channel;

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

  AwsConnectRoutingProfile(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectRoutingProfile>`.
  RefTo<AwsConnectRoutingProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `routing_profile_id` attribute.
  TfRef<String> get routingProfileId =>
      TfRef.attribute<String>(this, 'routing_profile_id');

  /// Reference to `default_outbound_queue_id` attribute.
  TfRef<String> get defaultOutboundQueueId =>
      TfRef.attribute<String>(this, 'default_outbound_queue_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
