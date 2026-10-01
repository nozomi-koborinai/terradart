// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_trigger`.
const Set<String> _awsGlueTriggerSensitive = <String>{};

/// Glue Trigger enum for `type`.
enum GlueTriggerType implements TerraformEnum {
  scheduled('SCHEDULED'),
  conditional('CONDITIONAL'),
  onDemand('ON_DEMAND'),
  event('EVENT');

  const GlueTriggerType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<GlueTriggerLogical>? logical;

  final List<GlueTriggerConditions> conditions;

  Map<String, Object?> encode() => {
    'logical': ?logical?.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// `logical` — derived from the provider schema description.
enum GlueTriggerLogical implements TerraformEnum {
  and('AND'),
  any('ANY');

  const GlueTriggerLogical(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<GlueTriggerCrawlState>? crawlState;

  final TfArg<String>? crawlerName;

  final TfArg<String>? jobName;

  final TfArg<GlueTriggerLogicalOperator>? logicalOperator;

  final TfArg<GlueTriggerConditionsState>? state;

  Map<String, Object?> encode() => {
    'crawl_state': ?crawlState?.toTfJson(),
    'crawler_name': ?crawlerName?.toTfJson(),
    'job_name': ?jobName?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'state': ?state?.toTfJson(),
  };
}

/// `crawl_state` — derived from the provider schema description.
enum GlueTriggerCrawlState implements TerraformEnum {
  running('RUNNING'),
  cancelling('CANCELLING'),
  cancelled('CANCELLED'),
  succeeded('SUCCEEDED'),
  failed('FAILED'),
  error('ERROR');

  const GlueTriggerCrawlState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `logical_operator` — derived from the provider schema description.
enum GlueTriggerLogicalOperator implements TerraformEnum {
  equals('EQUALS');

  const GlueTriggerLogicalOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `state` — derived from the provider schema description.
enum GlueTriggerConditionsState implements TerraformEnum {
  starting('STARTING'),
  running('RUNNING'),
  stopping('STOPPING'),
  stopped('STOPPED'),
  succeeded('SUCCEEDED'),
  failed('FAILED'),
  timeout('TIMEOUT'),
  error('ERROR'),
  waiting('WAITING'),
  expired('EXPIRED');

  const GlueTriggerConditionsState(this.terraformValue);
  @override
  final String terraformValue;
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
    required TfArg<GlueTriggerType> type,
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
