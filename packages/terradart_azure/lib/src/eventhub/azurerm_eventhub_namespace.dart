// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventhub_namespace`.
const Set<String> _azurermEventhubNamespaceSensitive = <String>{
  'default_primary_connection_string',
  'default_primary_connection_string_alias',
  'default_primary_key',
  'default_secondary_connection_string',
  'default_secondary_connection_string_alias',
  'default_secondary_key',
};

/// Eventhub Namespace Minimum Tls enum for `minimum_tls_version`.
extension type const EventhubNamespaceMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  EventhubNamespaceMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  EventhubNamespaceMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubNamespaceMinimumTlsVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p2 = EventhubNamespaceMinimumTlsVersion._(TfArgLiteral('1.2'));

  static const List<EventhubNamespaceMinimumTlsVersion> values = [v1p2];
}

/// Eventhub Namespace enum for `sku`.
extension type const EventhubNamespaceSku._(TfArg<String> _)
    implements TfArg<String> {
  EventhubNamespaceSku.variable(String name) : this._(TfArg.variable(name));
  EventhubNamespaceSku.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubNamespaceSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = EventhubNamespaceSku._(TfArgLiteral('Basic'));
  static const premium = EventhubNamespaceSku._(TfArgLiteral('Premium'));
  static const standard = EventhubNamespaceSku._(TfArgLiteral('Standard'));

  static const List<EventhubNamespaceSku> values = [basic, premium, standard];
}

/// Typed helper for the `identity` block of
/// `azurerm_eventhub_namespace` (derived from provider schema).
@immutable
final class EventhubNamespaceIdentity {
  const EventhubNamespaceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_eventhub_namespace`.
final class AzurermEventhubNamespace extends Resource {
  static const String tfType = 'azurerm_eventhub_namespace';

  AzurermEventhubNamespace(
    super.localName, {
    TfArg<bool>? autoInflateEnabled,
    TfArg<num>? capacity,
    TfArg<String>? dedicatedClusterId,
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    TfArg<num>? maximumThroughputUnits,
    EventhubNamespaceMinimumTlsVersion? minimumTlsVersion,
    required TfArg<String> name,
    TfArg<List<Map<String, Object?>>>? networkRulesets,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required EventhubNamespaceSku sku,
    TfArg<Map<String, String>>? tags,
    EventhubNamespaceIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_inflate_enabled': ?autoInflateEnabled,
           'capacity': ?capacity,
           'dedicated_cluster_id': ?dedicatedClusterId,
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'maximum_throughput_units': ?maximumThroughputUnits,
           'minimum_tls_version': ?minimumTlsVersion,
           'name': name,
           'network_rulesets': ?networkRulesets,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventhubNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventhubNamespace>`.
  RefTo<AzurermEventhubNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_primary_connection_string` attribute.
  TfRef<String> get defaultPrimaryConnectionString =>
      TfRef.attribute<String>(this, 'default_primary_connection_string');

  /// Reference to `default_primary_connection_string_alias` attribute.
  TfRef<String> get defaultPrimaryConnectionStringAlias =>
      TfRef.attribute<String>(this, 'default_primary_connection_string_alias');

  /// Reference to `default_primary_key` attribute.
  TfRef<String> get defaultPrimaryKey =>
      TfRef.attribute<String>(this, 'default_primary_key');

  /// Reference to `default_secondary_connection_string` attribute.
  TfRef<String> get defaultSecondaryConnectionString =>
      TfRef.attribute<String>(this, 'default_secondary_connection_string');

  /// Reference to `default_secondary_connection_string_alias` attribute.
  TfRef<String> get defaultSecondaryConnectionStringAlias =>
      TfRef.attribute<String>(
        this,
        'default_secondary_connection_string_alias',
      );

  /// Reference to `default_secondary_key` attribute.
  TfRef<String> get defaultSecondaryKey =>
      TfRef.attribute<String>(this, 'default_secondary_key');

  /// Reference to `auto_inflate_enabled` attribute.
  TfRef<bool> get autoInflateEnabled =>
      TfRef.attribute<bool>(this, 'auto_inflate_enabled');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `dedicated_cluster_id` attribute.
  TfRef<String> get dedicatedClusterId =>
      TfRef.attribute<String>(this, 'dedicated_cluster_id');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_throughput_units` attribute.
  TfRef<num> get maximumThroughputUnits =>
      TfRef.attribute<num>(this, 'maximum_throughput_units');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `network_rulesets` attribute.
  TfRef<List<Map<String, Object?>>> get networkRulesets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_rulesets');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
