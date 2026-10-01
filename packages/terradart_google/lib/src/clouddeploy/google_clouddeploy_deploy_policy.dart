// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_deploy_policy`.
const Set<String> _googleClouddeployDeployPolicySensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyRules {
  const ClouddeployDeployPolicyRules({this.rolloutRestriction});

  final ClouddeployDeployPolicyRolloutRestriction? rolloutRestriction;

  Map<String, Object?> encode() => {
    'rollout_restriction': ?rolloutRestriction?.encode(),
  };
}

/// Typed helper for the `rules.rollout_restriction` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyRolloutRestriction {
  const ClouddeployDeployPolicyRolloutRestriction({
    this.actions,
    required this.id,
    this.invokers,
    this.timeWindows,
  });

  final List<TfArg<ClouddeployDeployPolicyActions>>? actions;

  final TfArg<String> id;

  final List<TfArg<ClouddeployDeployPolicyInvokers>>? invokers;

  final ClouddeployDeployPolicyTimeWindows? timeWindows;

  Map<String, Object?> encode() => {
    if (actions != null) 'actions': [for (final e in actions!) e.toTfJson()],
    'id': id.toTfJson(),
    if (invokers != null) 'invokers': [for (final e in invokers!) e.toTfJson()],
    'time_windows': ?timeWindows?.encode(),
  };
}

/// `actions` — derived from the provider schema description.
enum ClouddeployDeployPolicyActions implements TerraformEnum {
  advance('ADVANCE'),
  approve('APPROVE'),
  cancel('CANCEL'),
  create('CREATE'),
  ignoreJob('IGNORE_JOB'),
  retryJob('RETRY_JOB'),
  rollback('ROLLBACK'),
  terminateJobrun('TERMINATE_JOBRUN');

  const ClouddeployDeployPolicyActions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `invokers` — derived from the provider schema description.
enum ClouddeployDeployPolicyInvokers implements TerraformEnum {
  user('USER'),
  deployAutomation('DEPLOY_AUTOMATION');

  const ClouddeployDeployPolicyInvokers(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.rollout_restriction.time_windows` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyTimeWindows {
  const ClouddeployDeployPolicyTimeWindows({
    required this.timeZone,
    this.oneTimeWindows,
    this.weeklyWindows,
  });

  final TfArg<String> timeZone;

  final List<ClouddeployDeployPolicyOneTimeWindows>? oneTimeWindows;

  final List<ClouddeployDeployPolicyWeeklyWindows>? weeklyWindows;

  Map<String, Object?> encode() => {
    'time_zone': timeZone.toTfJson(),
    if (oneTimeWindows != null)
      'one_time_windows': [for (final e in oneTimeWindows!) e.encode()],
    if (weeklyWindows != null)
      'weekly_windows': [for (final e in weeklyWindows!) e.encode()],
  };
}

/// Typed helper for the `rules.rollout_restriction.time_windows.one_time_windows` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyOneTimeWindows {
  const ClouddeployDeployPolicyOneTimeWindows({
    required this.endDate,
    required this.endTime,
    required this.startDate,
    required this.startTime,
  });

  final ClouddeployDeployPolicyEndDate endDate;

  final ClouddeployDeployPolicyEndTime endTime;

  final ClouddeployDeployPolicyStartDate startDate;

  final ClouddeployDeployPolicyStartTime startTime;

  Map<String, Object?> encode() => {
    'end_date': endDate.encode(),
    'end_time': endTime.encode(),
    'start_date': startDate.encode(),
    'start_time': startTime.encode(),
  };
}

/// Typed helper for the `rules.rollout_restriction.time_windows.one_time_windows.end_date` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyEndDate {
  const ClouddeployDeployPolicyEndDate({this.day, this.month, this.year});

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `rules.rollout_restriction.time_windows.one_time_windows.end_time` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeployPolicyEndTime {
  const ClouddeployDeployPolicyEndTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `rules.rollout_restriction.time_windows.one_time_windows.start_date` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyStartDate {
  const ClouddeployDeployPolicyStartDate({this.day, this.month, this.year});

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `rules.rollout_restriction.time_windows.one_time_windows.start_time` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeployPolicyStartTime {
  const ClouddeployDeployPolicyStartTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `rules.rollout_restriction.time_windows.weekly_windows` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyWeeklyWindows {
  const ClouddeployDeployPolicyWeeklyWindows({
    this.daysOfWeek,
    this.endTime,
    this.startTime,
  });

  final List<TfArg<ClouddeployDeployPolicyDaysOfWeek>>? daysOfWeek;

  final ClouddeployDeployPolicyEndTime? endTime;

  final ClouddeployDeployPolicyStartTime? startTime;

  Map<String, Object?> encode() => {
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    'end_time': ?endTime?.encode(),
    'start_time': ?startTime?.encode(),
  };
}

/// `days_of_week` — derived from the provider schema description.
enum ClouddeployDeployPolicyDaysOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const ClouddeployDeployPolicyDaysOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `selectors` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicySelectors {
  const ClouddeployDeployPolicySelectors({this.deliveryPipeline, this.target});

  final ClouddeployDeployPolicyDeliveryPipeline? deliveryPipeline;

  final ClouddeployDeployPolicyTarget? target;

  Map<String, Object?> encode() => {
    'delivery_pipeline': ?deliveryPipeline?.encode(),
    'target': ?target?.encode(),
  };
}

/// Typed helper for the `selectors.delivery_pipeline` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyDeliveryPipeline {
  const ClouddeployDeployPolicyDeliveryPipeline({this.id, this.labels});

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'labels': ?labels?.toTfJson(),
  };
}

/// Typed helper for the `selectors.target` block of
/// `google_clouddeploy_deploy_policy` (derived from provider schema).
@immutable
final class ClouddeployDeployPolicyTarget {
  const ClouddeployDeployPolicyTarget({this.id, this.labels});

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'labels': ?labels?.toTfJson(),
  };
}

/// Factory wrapper for `google_clouddeploy_deploy_policy`.
///
/// A `DeployPolicy` inhibits manual or DeployPolicy-driven actions within a
/// Delivery Pipeline or Target.
///
/// Cloud Deploy **deploy policy** — restricts rollout actions on
/// selected pipelines / targets. Nested `rules` and `selectors` blocks
/// take the derived helper types.
///
/// **Cost:** gcp-cost: Cloud Deploy `C3AD-803F-FC89` Active Multiple
/// Target Delivery Pipelines `E1A5-8E1F-C1DE` **$5/count**.
/// billing-behavior: a deploy policy is restriction metadata — the
/// catalog SKU is for *active multi-target pipelines*, not for creating
/// a policy. Enable `clouddeploy.googleapis.com` before apply.
///
/// Example:
/// ```dart
/// GoogleClouddeployDeployPolicy(
///   localName: 'freeze',
///   name: TfArg.literal('terradart-deploy-policy'),
///   location: TfArg.literal('us-central1'),
///   selectors: [
///     ClouddeployDeployPolicySelectors(
///       deliveryPipeline: .new(
///         id: TfArg.literal('terradart-pipeline'),
///       ),
///     ),
///   ],
///   rules: [
///     ClouddeployDeployPolicyRules(
///       rolloutRestriction: .new(
///         id: TfArg.literal('no-automation'),
///         invokers: [TfArg.literal(.deployAutomation)],
///       ),
///     ),
///   ],
/// );
/// ```
final class GoogleClouddeployDeployPolicy extends Resource {
  static const String tfType = 'google_clouddeploy_deploy_policy';

  GoogleClouddeployDeployPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required List<ClouddeployDeployPolicySelectors> selectors,
    required List<ClouddeployDeployPolicyRules> rules,
    TfArg<bool>? suspended,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'selectors': TfArg.literal([for (final e in selectors) e.encode()]),
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           'suspended': ?suspended,
           'description': ?description,
           'annotations': ?annotations,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployDeployPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployDeployPolicy>`.
  RefTo<GoogleClouddeployDeployPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspended => TfRef.attribute<bool>(this, 'suspended');
}
