// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_domain`.
const Set<String> _azurermEventgridDomainSensitive = <String>{
  'primary_access_key',
  'secondary_access_key',
};

/// Eventgrid Domain Data Residency enum for `data_residency_boundary`.
extension type const EventgridDomainDataResidencyBoundary._(TfArg<String> _)
    implements TfArg<String> {
  EventgridDomainDataResidencyBoundary.variable(String name)
    : this._(TfArg.variable(name));
  EventgridDomainDataResidencyBoundary.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridDomainDataResidencyBoundary.arg(TfArg<String> arg)
    : this._(arg);

  static const withingeopair = EventgridDomainDataResidencyBoundary._(
    TfArgLiteral('WithinGeopair'),
  );
  static const withinregion = EventgridDomainDataResidencyBoundary._(
    TfArgLiteral('WithinRegion'),
  );

  static const List<EventgridDomainDataResidencyBoundary> values = [
    withingeopair,
    withinregion,
  ];
}

/// Eventgrid Domain Input enum for `input_schema`.
extension type const EventgridDomainInputSchema._(TfArg<String> _)
    implements TfArg<String> {
  EventgridDomainInputSchema.variable(String name)
    : this._(TfArg.variable(name));
  EventgridDomainInputSchema.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridDomainInputSchema.arg(TfArg<String> arg) : this._(arg);

  static const cloudeventschemav10 = EventgridDomainInputSchema._(
    TfArgLiteral('CloudEventSchemaV1_0'),
  );
  static const customeventschema = EventgridDomainInputSchema._(
    TfArgLiteral('CustomEventSchema'),
  );
  static const eventgridschema = EventgridDomainInputSchema._(
    TfArgLiteral('EventGridSchema'),
  );

  static const List<EventgridDomainInputSchema> values = [
    cloudeventschemav10,
    customeventschema,
    eventgridschema,
  ];
}

/// Eventgrid Domain Minimum Tls enum for `minimum_tls_version`.
extension type const EventgridDomainMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  EventgridDomainMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  EventgridDomainMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const EventgridDomainMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p1 = EventgridDomainMinimumTlsVersion._(TfArgLiteral('1.1'));
  static const v1p2 = EventgridDomainMinimumTlsVersion._(TfArgLiteral('1.2'));
  static const v1p0 = EventgridDomainMinimumTlsVersion._(TfArgLiteral('1.0'));

  static const List<EventgridDomainMinimumTlsVersion> values = [
    v1p1,
    v1p2,
    v1p0,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_eventgrid_domain` (derived from provider schema).
@immutable
final class EventgridDomainIdentity {
  const EventgridDomainIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `input_mapping_default_values` block of
/// `azurerm_eventgrid_domain` (derived from provider schema).
@immutable
final class EventgridDomainInputMappingDefaultValues {
  const EventgridDomainInputMappingDefaultValues({
    this.dataVersion,
    this.eventType,
    this.subject,
  });

  final TfArg<String>? dataVersion;

  final TfArg<String>? eventType;

  final TfArg<String>? subject;

  @internal
  Map<String, Object?> encode() => {
    'data_version': ?dataVersion?.toTfJson(),
    'event_type': ?eventType?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `input_mapping_fields` block of
/// `azurerm_eventgrid_domain` (derived from provider schema).
@immutable
final class EventgridDomainInputMappingFields {
  const EventgridDomainInputMappingFields({
    this.dataVersion,
    this.eventTime,
    this.eventType,
    this.id,
    this.subject,
    this.topic,
  });

  final TfArg<String>? dataVersion;

  final TfArg<String>? eventTime;

  final TfArg<String>? eventType;

  final TfArg<String>? id;

  final TfArg<String>? subject;

  final TfArg<String>? topic;

  @internal
  Map<String, Object?> encode() => {
    'data_version': ?dataVersion?.toTfJson(),
    'event_time': ?eventTime?.toTfJson(),
    'event_type': ?eventType?.toTfJson(),
    'id': ?id?.toTfJson(),
    'subject': ?subject?.toTfJson(),
    'topic': ?topic?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_eventgrid_domain`.
final class AzurermEventgridDomain extends Resource {
  static const String tfType = 'azurerm_eventgrid_domain';

  AzurermEventgridDomain(
    super.localName, {
    TfArg<bool>? autoCreateTopicWithFirstSubscription,
    TfArg<bool>? autoDeleteTopicWithLastSubscription,
    EventgridDomainDataResidencyBoundary? dataResidencyBoundary,
    TfArg<List<Map<String, Object?>>>? inboundIpRule,
    EventgridDomainInputSchema? inputSchema,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    EventgridDomainMinimumTlsVersion? minimumTlsVersion,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    EventgridDomainIdentity? identity,
    EventgridDomainInputMappingDefaultValues? inputMappingDefaultValues,
    EventgridDomainInputMappingFields? inputMappingFields,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_create_topic_with_first_subscription':
               ?autoCreateTopicWithFirstSubscription,
           'auto_delete_topic_with_last_subscription':
               ?autoDeleteTopicWithLastSubscription,
           'data_residency_boundary': ?dataResidencyBoundary,
           'inbound_ip_rule': ?inboundIpRule,
           'input_schema': ?inputSchema,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'minimum_tls_version': ?minimumTlsVersion,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (inputMappingDefaultValues != null)
             'input_mapping_default_values': TfArg.literal(
               inputMappingDefaultValues.encode(),
             ),
           if (inputMappingFields != null)
             'input_mapping_fields': TfArg.literal(inputMappingFields.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventgridDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridDomain>`.
  RefTo<AzurermEventgridDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `auto_create_topic_with_first_subscription` attribute.
  TfRef<bool> get autoCreateTopicWithFirstSubscription =>
      TfRef.attribute<bool>(this, 'auto_create_topic_with_first_subscription');

  /// Reference to `auto_delete_topic_with_last_subscription` attribute.
  TfRef<bool> get autoDeleteTopicWithLastSubscription =>
      TfRef.attribute<bool>(this, 'auto_delete_topic_with_last_subscription');

  /// Reference to `data_residency_boundary` attribute.
  TfRef<String> get dataResidencyBoundary =>
      TfRef.attribute<String>(this, 'data_residency_boundary');

  /// Reference to `inbound_ip_rule` attribute.
  TfRef<List<Map<String, Object?>>> get inboundIpRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'inbound_ip_rule');

  /// Reference to `input_schema` attribute.
  TfRef<String> get inputSchema =>
      TfRef.attribute<String>(this, 'input_schema');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
