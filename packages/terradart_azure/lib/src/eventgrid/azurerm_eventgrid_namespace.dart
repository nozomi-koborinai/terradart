// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_namespace`.
const Set<String> _azurermEventgridNamespaceSensitive = <String>{};

/// Eventgrid Namespace Public Network enum for `public_network_access`.
extension type const EventgridNamespacePublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  EventgridNamespacePublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  EventgridNamespacePublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridNamespacePublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = EventgridNamespacePublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = EventgridNamespacePublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );

  static const List<EventgridNamespacePublicNetworkAccess> values = [
    enabled,
    disabled,
  ];
}

/// Eventgrid Namespace enum for `sku`.
extension type const EventgridNamespaceSku._(TfArg<String> _)
    implements TfArg<String> {
  EventgridNamespaceSku.variable(String name) : this._(TfArg.variable(name));
  EventgridNamespaceSku.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridNamespaceSku.arg(TfArg<String> arg) : this._(arg);

  static const standard = EventgridNamespaceSku._(TfArgLiteral('Standard'));

  static const List<EventgridNamespaceSku> values = [standard];
}

/// Typed helper for the `identity` block of
/// `azurerm_eventgrid_namespace` (derived from provider schema).
@immutable
final class EventgridNamespaceIdentity {
  const EventgridNamespaceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `inbound_ip_rule` block of
/// `azurerm_eventgrid_namespace` (derived from provider schema).
@immutable
final class EventgridNamespaceInboundIpRule {
  const EventgridNamespaceInboundIpRule({this.action, required this.ipMask});

  final EventgridNamespaceAction? action;

  final TfArg<String> ipMask;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'ip_mask': ipMask.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const EventgridNamespaceAction._(TfArg<String> _)
    implements TfArg<String> {
  EventgridNamespaceAction.variable(String name) : this._(TfArg.variable(name));
  EventgridNamespaceAction.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridNamespaceAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = EventgridNamespaceAction._(TfArgLiteral('Allow'));

  static const List<EventgridNamespaceAction> values = [allow];
}

/// Typed helper for the `topic_spaces_configuration` block of
/// `azurerm_eventgrid_namespace` (derived from provider schema).
@immutable
final class EventgridNamespaceTopicSpacesConfiguration {
  const EventgridNamespaceTopicSpacesConfiguration({
    this.alternativeAuthenticationNameSource,
    this.maximumClientSessionsPerAuthenticationName,
    this.maximumSessionExpiryInHours,
    this.routeTopicId,
    this.dynamicRoutingEnrichment,
    this.staticRoutingEnrichment,
  });

  final List<EventgridNamespaceAlternativeAuthenticationNameSource>?
  alternativeAuthenticationNameSource;

  final TfArg<num>? maximumClientSessionsPerAuthenticationName;

  final TfArg<num>? maximumSessionExpiryInHours;

  final TfArg<String>? routeTopicId;

  final List<EventgridNamespaceDynamicRoutingEnrichment>?
  dynamicRoutingEnrichment;

  final List<EventgridNamespaceStaticRoutingEnrichment>?
  staticRoutingEnrichment;

  @internal
  Map<String, Object?> encode() => {
    if (alternativeAuthenticationNameSource != null)
      'alternative_authentication_name_source': [
        for (final e in alternativeAuthenticationNameSource!) e.toTfJson(),
      ],
    'maximum_client_sessions_per_authentication_name':
        ?maximumClientSessionsPerAuthenticationName?.toTfJson(),
    'maximum_session_expiry_in_hours': ?maximumSessionExpiryInHours?.toTfJson(),
    'route_topic_id': ?routeTopicId?.toTfJson(),
    if (dynamicRoutingEnrichment != null)
      'dynamic_routing_enrichment': [
        for (final e in dynamicRoutingEnrichment!) e.encode(),
      ],
    if (staticRoutingEnrichment != null)
      'static_routing_enrichment': [
        for (final e in staticRoutingEnrichment!) e.encode(),
      ],
  };
}

/// `alternative_authentication_name_source` — derived from the provider schema description.
extension type const EventgridNamespaceAlternativeAuthenticationNameSource._(
  TfArg<String> _
) implements TfArg<String> {
  EventgridNamespaceAlternativeAuthenticationNameSource.variable(String name)
    : this._(TfArg.variable(name));
  EventgridNamespaceAlternativeAuthenticationNameSource.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const EventgridNamespaceAlternativeAuthenticationNameSource.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const clientcertificatedns =
      EventgridNamespaceAlternativeAuthenticationNameSource._(
        TfArgLiteral('ClientCertificateDns'),
      );
  static const clientcertificateemail =
      EventgridNamespaceAlternativeAuthenticationNameSource._(
        TfArgLiteral('ClientCertificateEmail'),
      );
  static const clientcertificateip =
      EventgridNamespaceAlternativeAuthenticationNameSource._(
        TfArgLiteral('ClientCertificateIp'),
      );
  static const clientcertificatesubject =
      EventgridNamespaceAlternativeAuthenticationNameSource._(
        TfArgLiteral('ClientCertificateSubject'),
      );
  static const clientcertificateuri =
      EventgridNamespaceAlternativeAuthenticationNameSource._(
        TfArgLiteral('ClientCertificateUri'),
      );

  static const List<EventgridNamespaceAlternativeAuthenticationNameSource>
  values = [
    clientcertificatedns,
    clientcertificateemail,
    clientcertificateip,
    clientcertificatesubject,
    clientcertificateuri,
  ];
}

/// Typed helper for the `topic_spaces_configuration.dynamic_routing_enrichment` block of
/// `azurerm_eventgrid_namespace` (derived from provider schema).
@immutable
final class EventgridNamespaceDynamicRoutingEnrichment {
  const EventgridNamespaceDynamicRoutingEnrichment({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `topic_spaces_configuration.static_routing_enrichment` block of
/// `azurerm_eventgrid_namespace` (derived from provider schema).
@immutable
final class EventgridNamespaceStaticRoutingEnrichment {
  const EventgridNamespaceStaticRoutingEnrichment({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_eventgrid_namespace`.
final class AzurermEventgridNamespace extends Resource {
  static const String tfType = 'azurerm_eventgrid_namespace';

  AzurermEventgridNamespace(
    super.localName, {
    TfArg<num>? capacity,
    required TfArg<String> location,
    required TfArg<String> name,
    EventgridNamespacePublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    EventgridNamespaceSku? sku,
    TfArg<Map<String, String>>? tags,
    EventgridNamespaceIdentity? identity,
    List<EventgridNamespaceInboundIpRule>? inboundIpRule,
    List<EventgridNamespaceTopicSpacesConfiguration>? topicSpacesConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity': ?capacity,
           'location': location,
           'name': name,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (inboundIpRule != null)
             'inbound_ip_rule': TfArg.literal([
               for (final e in inboundIpRule) e.encode(),
             ]),
           if (topicSpacesConfiguration != null)
             'topic_spaces_configuration': TfArg.literal([
               for (final e in topicSpacesConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventgridNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridNamespace>`.
  RefTo<AzurermEventgridNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
