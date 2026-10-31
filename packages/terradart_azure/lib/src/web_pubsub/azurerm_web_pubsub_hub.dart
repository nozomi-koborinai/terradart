// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_pubsub_hub`.
const Set<String> _azurermWebPubsubHubSensitive = <String>{};

/// Typed helper for the `event_handler` block of
/// `azurerm_web_pubsub_hub` (derived from provider schema).
@immutable
final class WebPubsubHubEventHandler {
  const WebPubsubHubEventHandler({
    this.systemEvents,
    required this.urlTemplate,
    this.userEventPattern,
    this.auth,
  });

  final EnumList<WebPubsubHubSystemEvents>? systemEvents;

  final TfArg<String> urlTemplate;

  final TfArg<String>? userEventPattern;

  final WebPubsubHubAuth? auth;

  @internal
  Map<String, Object?> encode() => {
    'system_events': ?systemEvents?.toTfJson(),
    'url_template': urlTemplate.toTfJson(),
    'user_event_pattern': ?userEventPattern?.toTfJson(),
    'auth': ?auth?.encode(),
  };
}

/// `system_events` — derived from the provider schema description.
extension type const WebPubsubHubSystemEvents._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubHubSystemEvents.variable(String name) : this._(TfArg.variable(name));
  WebPubsubHubSystemEvents.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubHubSystemEvents.arg(TfArg<String> arg) : this._(arg);

  static const connect = WebPubsubHubSystemEvents._(TfArgLiteral('connect'));
  static const connected = WebPubsubHubSystemEvents._(
    TfArgLiteral('connected'),
  );
  static const disconnected = WebPubsubHubSystemEvents._(
    TfArgLiteral('disconnected'),
  );

  static const List<WebPubsubHubSystemEvents> values = [
    connect,
    connected,
    disconnected,
  ];
}

/// Typed helper for the `event_handler.auth` block of
/// `azurerm_web_pubsub_hub` (derived from provider schema).
@immutable
final class WebPubsubHubAuth {
  const WebPubsubHubAuth({required this.managedIdentityId});

  final TfArg<String> managedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'managed_identity_id': managedIdentityId.toTfJson(),
  };
}

/// Typed helper for the `event_listener` block of
/// `azurerm_web_pubsub_hub` (derived from provider schema).
@immutable
final class WebPubsubHubEventListener {
  const WebPubsubHubEventListener({
    required this.eventhubName,
    required this.eventhubNamespaceName,
    this.systemEventNameFilter,
    this.userEventNameFilter,
  });

  final TfArg<String> eventhubName;

  final TfArg<String> eventhubNamespaceName;

  final EnumList<WebPubsubHubSystemEventNameFilter>? systemEventNameFilter;

  final TfArg<List<String>>? userEventNameFilter;

  @internal
  Map<String, Object?> encode() => {
    'eventhub_name': eventhubName.toTfJson(),
    'eventhub_namespace_name': eventhubNamespaceName.toTfJson(),
    'system_event_name_filter': ?systemEventNameFilter?.toTfJson(),
    'user_event_name_filter': ?userEventNameFilter?.toTfJson(),
  };
}

/// `system_event_name_filter` — derived from the provider schema description.
extension type const WebPubsubHubSystemEventNameFilter._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubHubSystemEventNameFilter.variable(String name)
    : this._(TfArg.variable(name));
  WebPubsubHubSystemEventNameFilter.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubHubSystemEventNameFilter.arg(TfArg<String> arg) : this._(arg);

  static const connected = WebPubsubHubSystemEventNameFilter._(
    TfArgLiteral('connected'),
  );
  static const disconnected = WebPubsubHubSystemEventNameFilter._(
    TfArgLiteral('disconnected'),
  );

  static const List<WebPubsubHubSystemEventNameFilter> values = [
    connected,
    disconnected,
  ];
}

/// Factory wrapper for `azurerm_web_pubsub_hub`.
final class AzurermWebPubsubHub extends Resource {
  static const String tfType = 'azurerm_web_pubsub_hub';

  AzurermWebPubsubHub(
    super.localName, {
    TfArg<bool>? anonymousConnectionsEnabled,
    required TfArg<String> name,
    required TfArg<String> webPubsubId,
    List<WebPubsubHubEventHandler>? eventHandler,
    List<WebPubsubHubEventListener>? eventListener,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'anonymous_connections_enabled': ?anonymousConnectionsEnabled,
           'name': name,
           'web_pubsub_id': webPubsubId,
           if (eventHandler != null)
             'event_handler': TfArg.literal([
               for (final e in eventHandler) e.encode(),
             ]),
           if (eventListener != null)
             'event_listener': TfArg.literal([
               for (final e in eventListener) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWebPubsubHubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebPubsubHub>`.
  RefTo<AzurermWebPubsubHub> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `anonymous_connections_enabled` attribute.
  TfRef<bool> get anonymousConnectionsEnabled =>
      TfRef.attribute<bool>(this, 'anonymous_connections_enabled');

  /// Reference to `web_pubsub_id` attribute.
  TfRef<String> get webPubsubId =>
      TfRef.attribute<String>(this, 'web_pubsub_id');
}
