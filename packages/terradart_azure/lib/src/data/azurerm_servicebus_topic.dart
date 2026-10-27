// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicebus/azurerm_servicebus_topic.dart';

/// Sensitive field paths for `azurerm_servicebus_topic`.
const Set<String> _azurermServicebusTopicSensitive = <String>{};

/// Factory wrapper for `azurerm_servicebus_topic`.
final class DataAzurermServicebusTopic extends Data {
  static const String tfType = 'azurerm_servicebus_topic';

  DataAzurermServicebusTopic(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'namespace_id': namespaceId},
       );

  @override
  Set<String> get sensitiveFields => _azurermServicebusTopicSensitive;

  /// A reference to the `azurerm_servicebus_topic` this data source reads, for
  /// arguments typed `RefTo<AzurermServicebusTopic>`.
  RefTo<AzurermServicebusTopic> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_delete_on_idle` attribute.
  TfRef<String> get autoDeleteOnIdle =>
      TfRef.attribute<String>(this, 'auto_delete_on_idle');

  /// Reference to `batched_operations_enabled` attribute.
  TfRef<bool> get batchedOperationsEnabled =>
      TfRef.attribute<bool>(this, 'batched_operations_enabled');

  /// Reference to `default_message_ttl` attribute.
  TfRef<String> get defaultMessageTtl =>
      TfRef.attribute<String>(this, 'default_message_ttl');

  /// Reference to `duplicate_detection_history_time_window` attribute.
  TfRef<String> get duplicateDetectionHistoryTimeWindow =>
      TfRef.attribute<String>(this, 'duplicate_detection_history_time_window');

  /// Reference to `express_enabled` attribute.
  TfRef<bool> get expressEnabled =>
      TfRef.attribute<bool>(this, 'express_enabled');

  /// Reference to `max_size_in_megabytes` attribute.
  TfRef<num> get maxSizeInMegabytes =>
      TfRef.attribute<num>(this, 'max_size_in_megabytes');

  /// Reference to `maximum_message_size_in_kb` attribute.
  TfRef<num> get maximumMessageSizeInKb =>
      TfRef.attribute<num>(this, 'maximum_message_size_in_kb');

  /// Reference to `partitioning_enabled` attribute.
  TfRef<bool> get partitioningEnabled =>
      TfRef.attribute<bool>(this, 'partitioning_enabled');

  /// Reference to `requires_duplicate_detection` attribute.
  TfRef<bool> get requiresDuplicateDetection =>
      TfRef.attribute<bool>(this, 'requires_duplicate_detection');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `support_ordering` attribute.
  TfRef<bool> get supportOrdering =>
      TfRef.attribute<bool>(this, 'support_ordering');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
