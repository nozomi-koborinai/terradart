// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicebus/azurerm_servicebus_subscription.dart';

/// Sensitive field paths for `azurerm_servicebus_subscription`.
const Set<String> _azurermServicebusSubscriptionSensitive = <String>{};

/// Factory wrapper for `azurerm_servicebus_subscription`.
final class DataAzurermServicebusSubscription extends Data {
  static const String tfType = 'azurerm_servicebus_subscription';

  DataAzurermServicebusSubscription(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> topicId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'topic_id': topicId},
       );

  @override
  Set<String> get sensitiveFields => _azurermServicebusSubscriptionSensitive;

  /// A reference to the `azurerm_servicebus_subscription` this data source reads, for
  /// arguments typed `RefTo<AzurermServicebusSubscription>`.
  RefTo<AzurermServicebusSubscription> get ref =>
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

  /// Reference to `dead_lettering_on_filter_evaluation_error` attribute.
  TfRef<bool> get deadLetteringOnFilterEvaluationError =>
      TfRef.attribute<bool>(this, 'dead_lettering_on_filter_evaluation_error');

  /// Reference to `dead_lettering_on_message_expiration` attribute.
  TfRef<bool> get deadLetteringOnMessageExpiration =>
      TfRef.attribute<bool>(this, 'dead_lettering_on_message_expiration');

  /// Reference to `default_message_ttl` attribute.
  TfRef<String> get defaultMessageTtl =>
      TfRef.attribute<String>(this, 'default_message_ttl');

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

  /// Reference to `requires_session` attribute.
  TfRef<bool> get requiresSession =>
      TfRef.attribute<bool>(this, 'requires_session');

  /// Reference to `topic_id` attribute.
  TfRef<String> get topicId => TfRef.attribute<String>(this, 'topic_id');
}
