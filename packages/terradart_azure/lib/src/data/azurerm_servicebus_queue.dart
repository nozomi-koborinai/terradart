// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicebus/azurerm_servicebus_queue.dart';

/// Sensitive field paths for `azurerm_servicebus_queue`.
const Set<String> _azurermServicebusQueueSensitive = <String>{};

/// Factory wrapper for `azurerm_servicebus_queue`.
final class DataAzurermServicebusQueue extends Data {
  static const String tfType = 'azurerm_servicebus_queue';

  DataAzurermServicebusQueue(
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
  Set<String> get sensitiveFields => _azurermServicebusQueueSensitive;

  /// A reference to the `azurerm_servicebus_queue` this data source reads, for
  /// arguments typed `RefTo<AzurermServicebusQueue>`.
  RefTo<AzurermServicebusQueue> get ref =>
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

  /// Reference to `dead_lettering_on_message_expiration` attribute.
  TfRef<bool> get deadLetteringOnMessageExpiration =>
      TfRef.attribute<bool>(this, 'dead_lettering_on_message_expiration');

  /// Reference to `default_message_ttl` attribute.
  TfRef<String> get defaultMessageTtl =>
      TfRef.attribute<String>(this, 'default_message_ttl');

  /// Reference to `duplicate_detection_history_time_window` attribute.
  TfRef<String> get duplicateDetectionHistoryTimeWindow =>
      TfRef.attribute<String>(this, 'duplicate_detection_history_time_window');

  /// Reference to `express_enabled` attribute.
  TfRef<bool> get expressEnabled =>
      TfRef.attribute<bool>(this, 'express_enabled');

  /// Reference to `forward_dead_lettered_messages_to` attribute.
  TfRef<String> get forwardDeadLetteredMessagesTo =>
      TfRef.attribute<String>(this, 'forward_dead_lettered_messages_to');

  /// Reference to `forward_to` attribute.
  TfRef<String> get forwardTo => TfRef.attribute<String>(this, 'forward_to');

  /// Reference to `lock_duration` attribute.
  TfRef<String> get lockDuration =>
      TfRef.attribute<String>(this, 'lock_duration');

  /// Reference to `max_delivery_count` attribute.
  TfRef<num> get maxDeliveryCount =>
      TfRef.attribute<num>(this, 'max_delivery_count');

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

  /// Reference to `requires_session` attribute.
  TfRef<bool> get requiresSession =>
      TfRef.attribute<bool>(this, 'requires_session');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
