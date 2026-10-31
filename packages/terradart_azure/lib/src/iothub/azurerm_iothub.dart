// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub`.
const Set<String> _azurermIothubSensitive = <String>{
  'file_upload.connection_string',
};

/// Iothub Min Tls enum for `min_tls_version`.
extension type const IothubMinTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  IothubMinTlsVersion.variable(String name) : this._(TfArg.variable(name));
  IothubMinTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const IothubMinTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p2 = IothubMinTlsVersion._(TfArgLiteral('1.2'));

  static const List<IothubMinTlsVersion> values = [v1p2];
}

/// Typed helper for the `cloud_to_device` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubCloudToDevice {
  const IothubCloudToDevice({
    this.defaultTtl,
    this.maxDeliveryCount,
    this.feedback,
  });

  final TfArg<String>? defaultTtl;

  final TfArg<num>? maxDeliveryCount;

  final List<IothubFeedback>? feedback;

  @internal
  Map<String, Object?> encode() => {
    'default_ttl': ?defaultTtl?.toTfJson(),
    'max_delivery_count': ?maxDeliveryCount?.toTfJson(),
    if (feedback != null) 'feedback': [for (final e in feedback!) e.encode()],
  };
}

/// Typed helper for the `cloud_to_device.feedback` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubFeedback {
  const IothubFeedback({
    this.lockDuration,
    this.maxDeliveryCount,
    this.timeToLive,
  });

  final TfArg<String>? lockDuration;

  final TfArg<num>? maxDeliveryCount;

  final TfArg<String>? timeToLive;

  @internal
  Map<String, Object?> encode() => {
    'lock_duration': ?lockDuration?.toTfJson(),
    'max_delivery_count': ?maxDeliveryCount?.toTfJson(),
    'time_to_live': ?timeToLive?.toTfJson(),
  };
}

/// Typed helper for the `fallback_route` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubFallbackRoute {
  const IothubFallbackRoute({
    this.condition,
    this.enabled,
    this.endpointNames,
    this.source,
  });

  final TfArg<String>? condition;

  final TfArg<bool>? enabled;

  final TfArg<List<String>>? endpointNames;

  final IothubSource? source;

  @internal
  Map<String, Object?> encode() => {
    'condition': ?condition?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'endpoint_names': ?endpointNames?.toTfJson(),
    'source': ?source?.toTfJson(),
  };
}

/// `source` — derived from the provider schema description.
extension type const IothubSource._(TfArg<String> _) implements TfArg<String> {
  IothubSource.variable(String name) : this._(TfArg.variable(name));
  IothubSource.expression(String template) : this._(TfArg.expression(template));
  const IothubSource.arg(TfArg<String> arg) : this._(arg);

  static const deviceconnectionstateevents = IothubSource._(
    TfArgLiteral('DeviceConnectionStateEvents'),
  );
  static const devicejoblifecycleevents = IothubSource._(
    TfArgLiteral('DeviceJobLifecycleEvents'),
  );
  static const devicelifecycleevents = IothubSource._(
    TfArgLiteral('DeviceLifecycleEvents'),
  );
  static const devicemessages = IothubSource._(TfArgLiteral('DeviceMessages'));
  static const digitaltwinchangeevents = IothubSource._(
    TfArgLiteral('DigitalTwinChangeEvents'),
  );
  static const invalid = IothubSource._(TfArgLiteral('Invalid'));
  static const twinchangeevents = IothubSource._(
    TfArgLiteral('TwinChangeEvents'),
  );

  static const List<IothubSource> values = [
    deviceconnectionstateevents,
    devicejoblifecycleevents,
    devicelifecycleevents,
    devicemessages,
    digitaltwinchangeevents,
    invalid,
    twinchangeevents,
  ];
}

/// Typed helper for the `file_upload` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubFileUpload {
  const IothubFileUpload({
    this.authenticationType,
    required this.connectionString,
    required this.containerName,
    this.defaultTtl,
    this.identityId,
    this.lockDuration,
    this.maxDeliveryCount,
    this.notifications,
    this.sasTtl,
  });

  final TfArg<String>? authenticationType;

  final Sensitive<String> connectionString;

  final TfArg<String> containerName;

  final TfArg<String>? defaultTtl;

  final TfArg<String>? identityId;

  final TfArg<String>? lockDuration;

  final TfArg<num>? maxDeliveryCount;

  final TfArg<bool>? notifications;

  final TfArg<String>? sasTtl;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'connection_string': connectionString.toTfJson(),
    'container_name': containerName.toTfJson(),
    'default_ttl': ?defaultTtl?.toTfJson(),
    'identity_id': ?identityId?.toTfJson(),
    'lock_duration': ?lockDuration?.toTfJson(),
    'max_delivery_count': ?maxDeliveryCount?.toTfJson(),
    'notifications': ?notifications?.toTfJson(),
    'sas_ttl': ?sasTtl?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubIdentity {
  const IothubIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_rule_set` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubNetworkRuleSet {
  const IothubNetworkRuleSet({
    this.applyToBuiltinEventhubEndpoint,
    this.defaultAction,
    this.ipRule,
  });

  final TfArg<bool>? applyToBuiltinEventhubEndpoint;

  final TfArg<String>? defaultAction;

  final List<IothubIpRule>? ipRule;

  @internal
  Map<String, Object?> encode() => {
    'apply_to_builtin_eventhub_endpoint': ?applyToBuiltinEventhubEndpoint
        ?.toTfJson(),
    'default_action': ?defaultAction?.toTfJson(),
    if (ipRule != null) 'ip_rule': [for (final e in ipRule!) e.encode()],
  };
}

/// Typed helper for the `network_rule_set.ip_rule` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubIpRule {
  const IothubIpRule({this.action, required this.ipMask, required this.name});

  final TfArg<String>? action;

  final TfArg<String> ipMask;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'ip_mask': ipMask.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_iothub` (derived from provider schema).
@immutable
final class IothubSku {
  const IothubSku({required this.capacity, required this.name});

  final TfArg<num> capacity;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_iothub`.
final class AzurermIothub extends Resource {
  static const String tfType = 'azurerm_iothub';

  AzurermIothub(
    super.localName, {
    TfArg<List<Map<String, Object?>>>? endpoint,
    TfArg<List<Map<String, Object?>>>? enrichment,
    TfArg<num>? eventHubPartitionCount,
    TfArg<num>? eventHubRetentionInDays,
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    IothubMinTlsVersion? minTlsVersion,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<List<Map<String, Object?>>>? route,
    TfArg<Map<String, String>>? tags,
    IothubCloudToDevice? cloudToDevice,
    IothubFallbackRoute? fallbackRoute,
    IothubFileUpload? fileUpload,
    IothubIdentity? identity,
    List<IothubNetworkRuleSet>? networkRuleSet,
    required IothubSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint': ?endpoint,
           'enrichment': ?enrichment,
           'event_hub_partition_count': ?eventHubPartitionCount,
           'event_hub_retention_in_days': ?eventHubRetentionInDays,
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'min_tls_version': ?minTlsVersion,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'route': ?route,
           'tags': ?tags,
           if (cloudToDevice != null)
             'cloud_to_device': TfArg.literal(cloudToDevice.encode()),
           if (fallbackRoute != null)
             'fallback_route': TfArg.literal(fallbackRoute.encode()),
           if (fileUpload != null)
             'file_upload': TfArg.literal(fileUpload.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (networkRuleSet != null)
             'network_rule_set': TfArg.literal([
               for (final e in networkRuleSet) e.encode(),
             ]),
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothub>`.
  RefTo<AzurermIothub> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `event_hub_events_endpoint` attribute.
  TfRef<String> get eventHubEventsEndpoint =>
      TfRef.attribute<String>(this, 'event_hub_events_endpoint');

  /// Reference to `event_hub_events_namespace` attribute.
  TfRef<String> get eventHubEventsNamespace =>
      TfRef.attribute<String>(this, 'event_hub_events_namespace');

  /// Reference to `event_hub_events_path` attribute.
  TfRef<String> get eventHubEventsPath =>
      TfRef.attribute<String>(this, 'event_hub_events_path');

  /// Reference to `event_hub_operations_endpoint` attribute.
  TfRef<String> get eventHubOperationsEndpoint =>
      TfRef.attribute<String>(this, 'event_hub_operations_endpoint');

  /// Reference to `event_hub_operations_path` attribute.
  TfRef<String> get eventHubOperationsPath =>
      TfRef.attribute<String>(this, 'event_hub_operations_path');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `shared_access_policy` attribute.
  TfRef<List<Map<String, Object?>>> get sharedAccessPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'shared_access_policy');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get endpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoint');

  /// Reference to `enrichment` attribute.
  TfRef<List<Map<String, Object?>>> get enrichment =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'enrichment');

  /// Reference to `event_hub_partition_count` attribute.
  TfRef<num> get eventHubPartitionCount =>
      TfRef.attribute<num>(this, 'event_hub_partition_count');

  /// Reference to `event_hub_retention_in_days` attribute.
  TfRef<num> get eventHubRetentionInDays =>
      TfRef.attribute<num>(this, 'event_hub_retention_in_days');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `min_tls_version` attribute.
  TfRef<String> get minTlsVersion =>
      TfRef.attribute<String>(this, 'min_tls_version');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `route` attribute.
  TfRef<List<Map<String, Object?>>> get route =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'route');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
