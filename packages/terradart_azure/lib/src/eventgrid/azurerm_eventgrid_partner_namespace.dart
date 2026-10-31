// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_partner_namespace`.
const Set<String> _azurermEventgridPartnerNamespaceSensitive = <String>{};

/// Eventgrid Partner Namespace Partner Topic Routing enum for `partner_topic_routing_mode`.
extension type const EventgridPartnerNamespacePartnerTopicRoutingMode._(
  TfArg<String> _
) implements TfArg<String> {
  EventgridPartnerNamespacePartnerTopicRoutingMode.variable(String name)
    : this._(TfArg.variable(name));
  EventgridPartnerNamespacePartnerTopicRoutingMode.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridPartnerNamespacePartnerTopicRoutingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const channelnameheader =
      EventgridPartnerNamespacePartnerTopicRoutingMode._(
        TfArgLiteral('ChannelNameHeader'),
      );
  static const sourceeventattribute =
      EventgridPartnerNamespacePartnerTopicRoutingMode._(
        TfArgLiteral('SourceEventAttribute'),
      );

  static const List<EventgridPartnerNamespacePartnerTopicRoutingMode> values = [
    channelnameheader,
    sourceeventattribute,
  ];
}

/// Eventgrid Partner Namespace Public Network enum for `public_network_access`.
extension type const EventgridPartnerNamespacePublicNetworkAccess._(
  TfArg<String> _
) implements TfArg<String> {
  EventgridPartnerNamespacePublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  EventgridPartnerNamespacePublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridPartnerNamespacePublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = EventgridPartnerNamespacePublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = EventgridPartnerNamespacePublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<EventgridPartnerNamespacePublicNetworkAccess> values = [
    disabled,
    enabled,
  ];
}

/// Typed helper for the `inbound_ip_rule` block of
/// `azurerm_eventgrid_partner_namespace` (derived from provider schema).
@immutable
final class EventgridPartnerNamespaceInboundIpRule {
  const EventgridPartnerNamespaceInboundIpRule({
    this.action,
    required this.ipMask,
  });

  final EventgridPartnerNamespaceAction? action;

  final TfArg<String> ipMask;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'ip_mask': ipMask.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const EventgridPartnerNamespaceAction._(TfArg<String> _)
    implements TfArg<String> {
  EventgridPartnerNamespaceAction.variable(String name)
    : this._(TfArg.variable(name));
  EventgridPartnerNamespaceAction.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridPartnerNamespaceAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = EventgridPartnerNamespaceAction._(TfArgLiteral('Allow'));

  static const List<EventgridPartnerNamespaceAction> values = [allow];
}

/// Factory wrapper for `azurerm_eventgrid_partner_namespace`.
final class AzurermEventgridPartnerNamespace extends Resource {
  static const String tfType = 'azurerm_eventgrid_partner_namespace';

  AzurermEventgridPartnerNamespace(
    super.localName, {
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> partnerRegistrationId,
    EventgridPartnerNamespacePartnerTopicRoutingMode? partnerTopicRoutingMode,
    EventgridPartnerNamespacePublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<EventgridPartnerNamespaceInboundIpRule>? inboundIpRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'name': name,
           'partner_registration_id': partnerRegistrationId,
           'partner_topic_routing_mode': ?partnerTopicRoutingMode,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (inboundIpRule != null)
             'inbound_ip_rule': TfArg.literal([
               for (final e in inboundIpRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventgridPartnerNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridPartnerNamespace>`.
  RefTo<AzurermEventgridPartnerNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `partner_registration_id` attribute.
  TfRef<String> get partnerRegistrationId =>
      TfRef.attribute<String>(this, 'partner_registration_id');

  /// Reference to `partner_topic_routing_mode` attribute.
  TfRef<String> get partnerTopicRoutingMode =>
      TfRef.attribute<String>(this, 'partner_topic_routing_mode');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
