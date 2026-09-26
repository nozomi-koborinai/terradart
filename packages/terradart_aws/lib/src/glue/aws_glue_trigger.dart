// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_trigger`.
const Set<String> _awsGlueTriggerSensitive = <String>{};

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

  final GlueTriggerActionsNotificationProperty? notificationProperty;

  Map<String, Object?> encode() => {
    if (arguments != null) 'arguments': arguments!.toTfJson(),
    if (crawlerName != null) 'crawler_name': crawlerName!.toTfJson(),
    if (jobName != null) 'job_name': jobName!.toTfJson(),
    if (securityConfiguration != null)
      'security_configuration': securityConfiguration!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
    if (notificationProperty != null)
      'notification_property': notificationProperty!.encode(),
  };
}

/// Typed helper for the `actions.notification_property` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerActionsNotificationProperty {
  const GlueTriggerActionsNotificationProperty({this.notifyDelayAfter});

  final TfArg<num>? notifyDelayAfter;

  Map<String, Object?> encode() => {
    if (notifyDelayAfter != null)
      'notify_delay_after': notifyDelayAfter!.toTfJson(),
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

  Map<String, Object?> encode() => {
    'batch_size': batchSize.toTfJson(),
    if (batchWindow != null) 'batch_window': batchWindow!.toTfJson(),
  };
}

/// Typed helper for the `predicate` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerPredicate {
  const GlueTriggerPredicate({this.logical, required this.conditions});

  final TfArg<String>? logical;

  final List<GlueTriggerPredicateConditions> conditions;

  Map<String, Object?> encode() => {
    if (logical != null) 'logical': logical!.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// Typed helper for the `predicate.conditions` block of
/// `aws_glue_trigger` (derived from provider schema).
@immutable
final class GlueTriggerPredicateConditions {
  const GlueTriggerPredicateConditions({
    this.crawlState,
    this.crawlerName,
    this.jobName,
    this.logicalOperator,
    this.state,
  });

  final TfArg<String>? crawlState;

  final TfArg<String>? crawlerName;

  final TfArg<String>? jobName;

  final TfArg<String>? logicalOperator;

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    if (crawlState != null) 'crawl_state': crawlState!.toTfJson(),
    if (crawlerName != null) 'crawler_name': crawlerName!.toTfJson(),
    if (jobName != null) 'job_name': jobName!.toTfJson(),
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_trigger`.
final class AwsGlueTrigger extends Resource {
  static const String tfType = 'aws_glue_trigger';

  AwsGlueTrigger({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? schedule,
    TfArg<bool>? startOnCreation,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
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
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (region != null) 'region': region,
           if (schedule != null) 'schedule': schedule,
           if (startOnCreation != null) 'start_on_creation': startOnCreation,
           if (tags != null) 'tags': tags,
           'type': type,
           if (workflowName != null) 'workflow_name': workflowName,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
