// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_servicebus_subscription_rule`.
const Set<String> _azurermServicebusSubscriptionRuleSensitive = <String>{};

/// Servicebus Subscription Rule Filter enum for `filter_type`.
extension type const ServicebusSubscriptionRuleFilterType._(TfArg<String> _)
    implements TfArg<String> {
  ServicebusSubscriptionRuleFilterType.variable(String name)
    : this._(TfArg.variable(name));
  ServicebusSubscriptionRuleFilterType.expression(String template)
    : this._(TfArg.expression(template));
  const ServicebusSubscriptionRuleFilterType.arg(TfArg<String> arg)
    : this._(arg);

  static const correlationfilter = ServicebusSubscriptionRuleFilterType._(
    TfArgLiteral('CorrelationFilter'),
  );
  static const sqlfilter = ServicebusSubscriptionRuleFilterType._(
    TfArgLiteral('SqlFilter'),
  );

  static const List<ServicebusSubscriptionRuleFilterType> values = [
    correlationfilter,
    sqlfilter,
  ];
}

/// At most one of `correlation_filter`, `sql_filter` on `azurerm_servicebus_subscription_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.correlationFilter(...)`.
sealed class ServicebusSubscriptionRuleFilter {
  const ServicebusSubscriptionRuleFilter();

  /// Sets `correlation_filter`.
  const factory ServicebusSubscriptionRuleFilter.correlationFilter(
    ServicebusSubscriptionRuleCorrelationFilter correlationFilter,
  ) = ServicebusSubscriptionRuleCorrelationFilterChoice;

  /// Sets `sql_filter`.
  const factory ServicebusSubscriptionRuleFilter.sqlFilter(
    TfArg<String> sqlFilter,
  ) = ServicebusSubscriptionRuleSqlFilter;

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

/// The [ServicebusSubscriptionRuleFilter.correlationFilter] choice: sets `correlation_filter`.
final class ServicebusSubscriptionRuleCorrelationFilterChoice
    extends ServicebusSubscriptionRuleFilter {
  const ServicebusSubscriptionRuleCorrelationFilterChoice(
    this.correlationFilter,
  );

  final ServicebusSubscriptionRuleCorrelationFilter correlationFilter;

  @internal
  @override
  String get blockKey => 'correlation_filter';

  @internal
  @override
  Map<String, Object?> encode() => {
    'correlation_filter': correlationFilter.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'correlation_filter': TfArg.literal(correlationFilter.encode()),
  };
}

/// The [ServicebusSubscriptionRuleFilter.sqlFilter] choice: sets `sql_filter`.
final class ServicebusSubscriptionRuleSqlFilter
    extends ServicebusSubscriptionRuleFilter {
  const ServicebusSubscriptionRuleSqlFilter(this.sqlFilter);

  final TfArg<String> sqlFilter;

  @internal
  @override
  String get blockKey => 'sql_filter';

  @internal
  @override
  Map<String, Object?> encode() => {'sql_filter': sqlFilter.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'sql_filter': sqlFilter};
}

/// Typed helper for the `correlation_filter` block of
/// `azurerm_servicebus_subscription_rule` (derived from provider schema).
@immutable
final class ServicebusSubscriptionRuleCorrelationFilter {
  const ServicebusSubscriptionRuleCorrelationFilter({
    this.contentType,
    this.correlationId,
    this.label,
    this.messageId,
    this.properties,
    this.replyTo,
    this.replyToSessionId,
    this.sessionId,
    this.to,
  });

  final TfArg<String>? contentType;

  final TfArg<String>? correlationId;

  final TfArg<String>? label;

  final TfArg<String>? messageId;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? replyTo;

  final TfArg<String>? replyToSessionId;

  final TfArg<String>? sessionId;

  final TfArg<String>? to;

  @internal
  Map<String, Object?> encode() => {
    'content_type': ?contentType?.toTfJson(),
    'correlation_id': ?correlationId?.toTfJson(),
    'label': ?label?.toTfJson(),
    'message_id': ?messageId?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'reply_to': ?replyTo?.toTfJson(),
    'reply_to_session_id': ?replyToSessionId?.toTfJson(),
    'session_id': ?sessionId?.toTfJson(),
    'to': ?to?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_servicebus_subscription_rule`.
final class AzurermServicebusSubscriptionRule extends Resource {
  static const String tfType = 'azurerm_servicebus_subscription_rule';

  AzurermServicebusSubscriptionRule(
    super.localName, {
    TfArg<String>? action,
    required ServicebusSubscriptionRuleFilterType filterType,
    required TfArg<String> name,
    ServicebusSubscriptionRuleFilter? filter,
    required TfArg<String> subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': ?action,
           'filter_type': filterType,
           'name': name,
           ...?filter?.argMap,
           'subscription_id': subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermServicebusSubscriptionRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServicebusSubscriptionRule>`.
  RefTo<AzurermServicebusSubscriptionRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `sql_filter_compatibility_level` attribute.
  TfRef<num> get sqlFilterCompatibilityLevel =>
      TfRef.attribute<num>(this, 'sql_filter_compatibility_level');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `filter_type` attribute.
  TfRef<String> get filterType => TfRef.attribute<String>(this, 'filter_type');

  /// Reference to `sql_filter` attribute.
  TfRef<String> get sqlFilter => TfRef.attribute<String>(this, 'sql_filter');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
