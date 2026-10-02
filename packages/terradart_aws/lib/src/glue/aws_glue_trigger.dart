// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_trigger`.
const Set<String> _awsGlueTriggerSensitive = <String>{};

/// Glue Trigger enum for `type`.
extension type const GlueTriggerType._(TfArg<String> _)
    implements TfArg<String> {
  GlueTriggerType.variable(String name) : this._(TfArg.variable(name));
  GlueTriggerType.expression(String template)
    : this._(TfArg.expression(template));
  const GlueTriggerType.arg(TfArg<String> arg) : this._(arg);

  static const scheduled = GlueTriggerType._(TfArgLiteral('SCHEDULED'));
  static const conditional = GlueTriggerType._(TfArgLiteral('CONDITIONAL'));
  static const onDemand = GlueTriggerType._(TfArgLiteral('ON_DEMAND'));
  static const event = GlueTriggerType._(TfArgLiteral('EVENT'));

  static const List<GlueTriggerType> values = [
    scheduled,
    conditional,
    onDemand,
    event,
  ];
}

/// Typed helper for the `actions` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerActions {
  const GlueTriggerActions({
    this.arguments,
    this.crawlerName,
    this.jobName,
    this.securityConfiguration,
    this.timeout,
    this.notificationProperty,
  });

  final TfArg<Map<String, String>>? arguments;

  final TfArg<String>? crawlerName;

  final TfArg<String>? jobName;

  final TfArg<String>? securityConfiguration;

  final TfArg<num>? timeout;

  final GlueTriggerNotificationProperty? notificationProperty;

  @internal
  Map<String, Object?> encode() => {
    'arguments': ?arguments?.toTfJson(),
    'crawler_name': ?crawlerName?.toTfJson(),
    'job_name': ?jobName?.toTfJson(),
    'security_configuration': ?securityConfiguration?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'notification_property': ?notificationProperty?.encode(),
  };
}

/// Typed helper for the `actions.notification_property` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerNotificationProperty {
  const GlueTriggerNotificationProperty({this.notifyDelayAfter});

  final TfArg<num>? notifyDelayAfter;

  @internal
  Map<String, Object?> encode() => {
    'notify_delay_after': ?notifyDelayAfter?.toTfJson(),
  };
}

/// Typed helper for the `event_batching_condition` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerEventBatchingCondition {
  const GlueTriggerEventBatchingCondition({
    required this.batchSize,
    this.batchWindow,
  });

  final TfArg<num> batchSize;

  final TfArg<num>? batchWindow;

  @internal
  Map<String, Object?> encode() => {
    'batch_size': batchSize.toTfJson(),
    'batch_window': ?batchWindow?.toTfJson(),
  };
}

/// Typed helper for the `predicate` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerPredicate {
  const GlueTriggerPredicate({this.logical, required this.conditions});

  final GlueTriggerLogical? logical;

  final List<GlueTriggerConditions> conditions;

  @internal
  Map<String, Object?> encode() => {
    'logical': ?logical?.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// `logical` — derived from the provider schema description.
extension type const GlueTriggerLogical._(TfArg<String> _)
    implements TfArg<String> {
  GlueTriggerLogical.variable(String name) : this._(TfArg.variable(name));
  GlueTriggerLogical.expression(String template)
    : this._(TfArg.expression(template));
  const GlueTriggerLogical.arg(TfArg<String> arg) : this._(arg);

  static const and = GlueTriggerLogical._(TfArgLiteral('AND'));
  static const any = GlueTriggerLogical._(TfArgLiteral('ANY'));

  static const List<GlueTriggerLogical> values = [and, any];
}

/// Typed helper for the `predicate.conditions` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerConditions {
  const GlueTriggerConditions({
    this.crawlState,
    this.crawlerName,
    this.jobName,
    this.logicalOperator,
    this.state,
  });

  final GlueTriggerCrawlState? crawlState;

  final TfArg<String>? crawlerName;

  final TfArg<String>? jobName;

  final GlueTriggerLogicalOperator? logicalOperator;

  final GlueTriggerConditionsState? state;

  @internal
  Map<String, Object?> encode() => {
    'crawl_state': ?crawlState?.toTfJson(),
    'crawler_name': ?crawlerName?.toTfJson(),
    'job_name': ?jobName?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'state': ?state?.toTfJson(),
  };
}

/// `crawl_state` — derived from the provider schema description.
extension type const GlueTriggerCrawlState._(TfArg<String> _)
    implements TfArg<String> {
  GlueTriggerCrawlState.variable(String name) : this._(TfArg.variable(name));
  GlueTriggerCrawlState.expression(String template)
    : this._(TfArg.expression(template));
  const GlueTriggerCrawlState.arg(TfArg<String> arg) : this._(arg);

  static const running = GlueTriggerCrawlState._(TfArgLiteral('RUNNING'));
  static const cancelling = GlueTriggerCrawlState._(TfArgLiteral('CANCELLING'));
  static const cancelled = GlueTriggerCrawlState._(TfArgLiteral('CANCELLED'));
  static const succeeded = GlueTriggerCrawlState._(TfArgLiteral('SUCCEEDED'));
  static const failed = GlueTriggerCrawlState._(TfArgLiteral('FAILED'));
  static const error = GlueTriggerCrawlState._(TfArgLiteral('ERROR'));

  static const List<GlueTriggerCrawlState> values = [
    running,
    cancelling,
    cancelled,
    succeeded,
    failed,
    error,
  ];
}

/// `logical_operator` — derived from the provider schema description.
extension type const GlueTriggerLogicalOperator._(TfArg<String> _)
    implements TfArg<String> {
  GlueTriggerLogicalOperator.variable(String name)
    : this._(TfArg.variable(name));
  GlueTriggerLogicalOperator.expression(String template)
    : this._(TfArg.expression(template));
  const GlueTriggerLogicalOperator.arg(TfArg<String> arg) : this._(arg);

  static const equals = GlueTriggerLogicalOperator._(TfArgLiteral('EQUALS'));

  static const List<GlueTriggerLogicalOperator> values = [equals];
}

/// `state` — derived from the provider schema description.
extension type const GlueTriggerConditionsState._(TfArg<String> _)
    implements TfArg<String> {
  GlueTriggerConditionsState.variable(String name)
    : this._(TfArg.variable(name));
  GlueTriggerConditionsState.expression(String template)
    : this._(TfArg.expression(template));
  const GlueTriggerConditionsState.arg(TfArg<String> arg) : this._(arg);

  static const starting = GlueTriggerConditionsState._(
    TfArgLiteral('STARTING'),
  );
  static const running = GlueTriggerConditionsState._(TfArgLiteral('RUNNING'));
  static const stopping = GlueTriggerConditionsState._(
    TfArgLiteral('STOPPING'),
  );
  static const stopped = GlueTriggerConditionsState._(TfArgLiteral('STOPPED'));
  static const succeeded = GlueTriggerConditionsState._(
    TfArgLiteral('SUCCEEDED'),
  );
  static const failed = GlueTriggerConditionsState._(TfArgLiteral('FAILED'));
  static const timeout = GlueTriggerConditionsState._(TfArgLiteral('TIMEOUT'));
  static const error = GlueTriggerConditionsState._(TfArgLiteral('ERROR'));
  static const waiting = GlueTriggerConditionsState._(TfArgLiteral('WAITING'));
  static const expired = GlueTriggerConditionsState._(TfArgLiteral('EXPIRED'));

  static const List<GlueTriggerConditionsState> values = [
    starting,
    running,
    stopping,
    stopped,
    succeeded,
    failed,
    timeout,
    error,
    waiting,
    expired,
  ];
}

/// Factory wrapper for `aws_glue_trigger`.
final class AwsGlueTrigger extends Resource {
  static const String tfType = 'aws_glue_trigger';

  AwsGlueTrigger(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? schedule,
    TfArg<bool>? startOnCreation,
    TfArg<Map<String, String>>? tags,
    required GlueTriggerType type,
    TfArg<String>? workflowName,
    required List<GlueTriggerActions> actions,
    List<GlueTriggerEventBatchingCondition>? eventBatchingCondition,
    GlueTriggerPredicate? predicate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'enabled': ?enabled,
           'name': name,
           'region': ?region,
           'schedule': ?schedule,
           'start_on_creation': ?startOnCreation,
           'tags': ?tags,
           'type': type,
           'workflow_name': ?workflowName,
           'actions': TfArg.literal([for (final e in actions) e.encode()]),
           if (eventBatchingCondition != null)
             'event_batching_condition': TfArg.literal([
               for (final e in eventBatchingCondition) e.encode(),
             ]),
           if (predicate != null)
             'predicate': TfArg.literal(predicate.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueTriggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueTrigger>`.
  RefTo<AwsGlueTrigger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `start_on_creation` attribute.
  TfRef<bool> get startOnCreation =>
      TfRef.attribute<bool>(this, 'start_on_creation');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `workflow_name` attribute.
  TfRef<String> get workflowName =>
      TfRef.attribute<String>(this, 'workflow_name');
}
