// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_servicebus_subscription`.
const Set<String> _azurermServicebusSubscriptionSensitive = <String>{};

/// Servicebus Subscription enum for `status`.
extension type const ServicebusSubscriptionStatus._(TfArg<String> _)
    implements TfArg<String> {
  ServicebusSubscriptionStatus.variable(String name)
    : this._(TfArg.variable(name));
  ServicebusSubscriptionStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ServicebusSubscriptionStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = ServicebusSubscriptionStatus._(TfArgLiteral('Active'));
  static const disabled = ServicebusSubscriptionStatus._(
    TfArgLiteral('Disabled'),
  );
  static const receivedisabled = ServicebusSubscriptionStatus._(
    TfArgLiteral('ReceiveDisabled'),
  );

  static const List<ServicebusSubscriptionStatus> values = [
    active,
    disabled,
    receivedisabled,
  ];
}

/// Typed helper for the `client_scoped_subscription` block of
/// `azurerm_servicebus_subscription` (derived from provider schema).
@immutable
final class ServicebusSubscriptionClientScopedSubscription {
  const ServicebusSubscriptionClientScopedSubscription({
    this.clientId,
    this.isClientScopedSubscriptionShareable,
  });

  final TfArg<String>? clientId;

  final TfArg<bool>? isClientScopedSubscriptionShareable;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'is_client_scoped_subscription_shareable':
        ?isClientScopedSubscriptionShareable?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_servicebus_subscription`.
final class AzurermServicebusSubscription extends Resource {
  static const String tfType = 'azurerm_servicebus_subscription';

  AzurermServicebusSubscription(
    super.localName, {
    TfArg<String>? autoDeleteOnIdle,
    TfArg<bool>? batchedOperationsEnabled,
    TfArg<bool>? clientScopedSubscriptionEnabled,
    TfArg<bool>? deadLetteringOnFilterEvaluationError,
    TfArg<bool>? deadLetteringOnMessageExpiration,
    TfArg<String>? defaultMessageTtl,
    TfArg<String>? forwardDeadLetteredMessagesTo,
    TfArg<String>? forwardTo,
    TfArg<String>? lockDuration,
    required TfArg<num> maxDeliveryCount,
    required TfArg<String> name,
    TfArg<bool>? requiresSession,
    ServicebusSubscriptionStatus? status,
    required TfArg<String> topicId,
    ServicebusSubscriptionClientScopedSubscription? clientScopedSubscription,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_delete_on_idle': ?autoDeleteOnIdle,
           'batched_operations_enabled': ?batchedOperationsEnabled,
           'client_scoped_subscription_enabled':
               ?clientScopedSubscriptionEnabled,
           'dead_lettering_on_filter_evaluation_error':
               ?deadLetteringOnFilterEvaluationError,
           'dead_lettering_on_message_expiration':
               ?deadLetteringOnMessageExpiration,
           'default_message_ttl': ?defaultMessageTtl,
           'forward_dead_lettered_messages_to': ?forwardDeadLetteredMessagesTo,
           'forward_to': ?forwardTo,
           'lock_duration': ?lockDuration,
           'max_delivery_count': maxDeliveryCount,
           'name': name,
           'requires_session': ?requiresSession,
           'status': ?status,
           'topic_id': topicId,
           if (clientScopedSubscription != null)
             'client_scoped_subscription': TfArg.literal(
               clientScopedSubscription.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermServicebusSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServicebusSubscription>`.
  RefTo<AzurermServicebusSubscription> get ref => RefTo.of(this);

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

  /// Reference to `client_scoped_subscription_enabled` attribute.
  TfRef<bool> get clientScopedSubscriptionEnabled =>
      TfRef.attribute<bool>(this, 'client_scoped_subscription_enabled');

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

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `topic_id` attribute.
  TfRef<String> get topicId => TfRef.attribute<String>(this, 'topic_id');
}
