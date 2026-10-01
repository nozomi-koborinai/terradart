// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudwatch_event_rule`.
const Set<String> _awsCloudwatchEventRuleSensitive = <String>{};

/// Cloudwatch Event Rule enum for `state`.
extension type const CloudwatchEventRuleState._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchEventRuleState.variable(String name) : this._(TfArg.variable(name));
  CloudwatchEventRuleState.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventRuleState.arg(TfArg<String> arg) : this._(arg);

  static const enabled = CloudwatchEventRuleState._(TfArgLiteral('ENABLED'));
  static const disabled = CloudwatchEventRuleState._(TfArgLiteral('DISABLED'));
  static const enabledWithAllCloudtrailManagementEvents =
      CloudwatchEventRuleState._(
        TfArgLiteral('ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS'),
      );

  static const List<CloudwatchEventRuleState> values = [
    enabled,
    disabled,
    enabledWithAllCloudtrailManagementEvents,
  ];
}

/// At most one of `is_enabled`, `state` on `aws_cloudwatch_event_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.isEnabled(...)`.
sealed class CloudwatchEventRuleStatus {
  const CloudwatchEventRuleStatus();

  /// Sets `is_enabled`.
  const factory CloudwatchEventRuleStatus.isEnabled(TfArg<bool> isEnabled) =
      CloudwatchEventRuleStatusIsEnabled;

  /// Sets `state`.
  const factory CloudwatchEventRuleStatus.state(
    CloudwatchEventRuleState state,
  ) = CloudwatchEventRuleStatusState;

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

/// The [CloudwatchEventRuleStatus.isEnabled] choice: sets `is_enabled`.
final class CloudwatchEventRuleStatusIsEnabled
    extends CloudwatchEventRuleStatus {
  const CloudwatchEventRuleStatusIsEnabled(this.isEnabled);

  final TfArg<bool> isEnabled;

  @internal
  @override
  String get blockKey => 'is_enabled';

  @internal
  @override
  Map<String, Object?> encode() => {'is_enabled': isEnabled.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'is_enabled': isEnabled};
}

/// The [CloudwatchEventRuleStatus.state] choice: sets `state`.
final class CloudwatchEventRuleStatusState extends CloudwatchEventRuleStatus {
  const CloudwatchEventRuleStatusState(this.state);

  final CloudwatchEventRuleState state;

  @internal
  @override
  String get blockKey => 'state';

  @internal
  @override
  Map<String, Object?> encode() => {'state': state.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'state': state};
}

/// At most one of `name`, `name_prefix` on `aws_cloudwatch_event_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class CloudwatchEventRuleName {
  const CloudwatchEventRuleName();

  /// Sets `name`.
  const factory CloudwatchEventRuleName.name(TfArg<String> name) =
      CloudwatchEventRuleNameChoice;

  /// Sets `name_prefix`.
  const factory CloudwatchEventRuleName.namePrefix(TfArg<String> namePrefix) =
      CloudwatchEventRuleNamePrefix;

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

/// The [CloudwatchEventRuleName.name] choice: sets `name`.
final class CloudwatchEventRuleNameChoice extends CloudwatchEventRuleName {
  const CloudwatchEventRuleNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [CloudwatchEventRuleName.namePrefix] choice: sets `name_prefix`.
final class CloudwatchEventRuleNamePrefix extends CloudwatchEventRuleName {
  const CloudwatchEventRuleNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_cloudwatch_event_rule`.
final class AwsCloudwatchEventRule extends Resource {
  static const String tfType = 'aws_cloudwatch_event_rule';

  AwsCloudwatchEventRule(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? eventBusName,
    TfArg<String>? eventPattern,
    TfArg<bool>? forceDestroy,
    CloudwatchEventRuleStatus? status,
    CloudwatchEventRuleName? name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<String>? scheduleExpression,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'event_bus_name': ?eventBusName,
           'event_pattern': ?eventPattern,
           'force_destroy': ?forceDestroy,
           ...?status?.argMap,
           ...?name?.argMap,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'schedule_expression': ?scheduleExpression,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventRule>`.
  RefTo<AwsCloudwatchEventRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `event_bus_name` attribute.
  TfRef<String> get eventBusName =>
      TfRef.attribute<String>(this, 'event_bus_name');

  /// Reference to `event_pattern` attribute.
  TfRef<String> get eventPattern =>
      TfRef.attribute<String>(this, 'event_pattern');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `is_enabled` attribute.
  TfRef<bool> get isEnabled => TfRef.attribute<bool>(this, 'is_enabled');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `schedule_expression` attribute.
  TfRef<String> get scheduleExpression =>
      TfRef.attribute<String>(this, 'schedule_expression');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
