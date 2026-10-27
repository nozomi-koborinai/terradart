// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_monitor_data_collection_rule_association`.
const Set<String> _azurermMonitorDataCollectionRuleAssociationSensitive =
    <String>{};

/// Exactly one of `data_collection_endpoint_id`, `data_collection_rule_id` on `azurerm_monitor_data_collection_rule_association`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dataCollectionEndpointId(...)`.
sealed class MonitorDataCollectionRuleAssociationDataCollection {
  const MonitorDataCollectionRuleAssociationDataCollection();

  /// Sets `data_collection_endpoint_id`.
  const factory MonitorDataCollectionRuleAssociationDataCollection.dataCollectionEndpointId(
    TfArg<String> dataCollectionEndpointId,
  ) = MonitorDataCollectionRuleAssociationDataCollectionEndpointId;

  /// Sets `data_collection_rule_id`.
  const factory MonitorDataCollectionRuleAssociationDataCollection.dataCollectionRuleId(
    TfArg<String> dataCollectionRuleId,
  ) = MonitorDataCollectionRuleAssociationDataCollectionRuleId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MonitorDataCollectionRuleAssociationDataCollection.dataCollectionEndpointId] choice: sets `data_collection_endpoint_id`.
final class MonitorDataCollectionRuleAssociationDataCollectionEndpointId
    extends MonitorDataCollectionRuleAssociationDataCollection {
  const MonitorDataCollectionRuleAssociationDataCollectionEndpointId(
    this.dataCollectionEndpointId,
  );

  final TfArg<String> dataCollectionEndpointId;

  @internal
  @override
  String get blockKey => 'data_collection_endpoint_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'data_collection_endpoint_id': dataCollectionEndpointId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_collection_endpoint_id': dataCollectionEndpointId,
  };
}

/// The [MonitorDataCollectionRuleAssociationDataCollection.dataCollectionRuleId] choice: sets `data_collection_rule_id`.
final class MonitorDataCollectionRuleAssociationDataCollectionRuleId
    extends MonitorDataCollectionRuleAssociationDataCollection {
  const MonitorDataCollectionRuleAssociationDataCollectionRuleId(
    this.dataCollectionRuleId,
  );

  final TfArg<String> dataCollectionRuleId;

  @internal
  @override
  String get blockKey => 'data_collection_rule_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'data_collection_rule_id': dataCollectionRuleId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_collection_rule_id': dataCollectionRuleId,
  };
}

/// Factory wrapper for `azurerm_monitor_data_collection_rule_association`.
final class AzurermMonitorDataCollectionRuleAssociation extends Resource {
  static const String tfType =
      'azurerm_monitor_data_collection_rule_association';

  AzurermMonitorDataCollectionRuleAssociation(
    super.localName, {
    required MonitorDataCollectionRuleAssociationDataCollection dataCollection,
    TfArg<String>? description,
    TfArg<String>? name,
    required TfArg<String> targetResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...dataCollection.argMap,
           'description': ?description,
           'name': ?name,
           'target_resource_id': targetResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorDataCollectionRuleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorDataCollectionRuleAssociation>`.
  RefTo<AzurermMonitorDataCollectionRuleAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_collection_endpoint_id` attribute.
  TfRef<String> get dataCollectionEndpointId =>
      TfRef.attribute<String>(this, 'data_collection_endpoint_id');

  /// Reference to `data_collection_rule_id` attribute.
  TfRef<String> get dataCollectionRuleId =>
      TfRef.attribute<String>(this, 'data_collection_rule_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
