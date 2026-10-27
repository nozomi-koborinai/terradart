// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_healthcare_medtech_service`.
const Set<String> _azurermHealthcareMedtechServiceSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_healthcare_medtech_service` (derived from provider schema).
@immutable
final class HealthcareMedtechServiceIdentity {
  const HealthcareMedtechServiceIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_healthcare_medtech_service`.
final class AzurermHealthcareMedtechService extends Resource {
  static const String tfType = 'azurerm_healthcare_medtech_service';

  AzurermHealthcareMedtechService(
    super.localName, {
    required TfArg<String> deviceMappingJson,
    required TfArg<String> eventhubConsumerGroupName,
    required TfArg<String> eventhubName,
    required TfArg<String> eventhubNamespaceName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    HealthcareMedtechServiceIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_mapping_json': deviceMappingJson,
           'eventhub_consumer_group_name': eventhubConsumerGroupName,
           'eventhub_name': eventhubName,
           'eventhub_namespace_name': eventhubNamespaceName,
           'location': location,
           'name': name,
           'tags': ?tags,
           'workspace_id': workspaceId,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareMedtechServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHealthcareMedtechService>`.
  RefTo<AzurermHealthcareMedtechService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `device_mapping_json` attribute.
  TfRef<String> get deviceMappingJson =>
      TfRef.attribute<String>(this, 'device_mapping_json');

  /// Reference to `eventhub_consumer_group_name` attribute.
  TfRef<String> get eventhubConsumerGroupName =>
      TfRef.attribute<String>(this, 'eventhub_consumer_group_name');

  /// Reference to `eventhub_name` attribute.
  TfRef<String> get eventhubName =>
      TfRef.attribute<String>(this, 'eventhub_name');

  /// Reference to `eventhub_namespace_name` attribute.
  TfRef<String> get eventhubNamespaceName =>
      TfRef.attribute<String>(this, 'eventhub_namespace_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
