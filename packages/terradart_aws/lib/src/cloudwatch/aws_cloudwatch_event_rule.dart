// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudwatch_event_rule`.
const Set<String> _awsCloudwatchEventRuleSensitive = <String>{};

/// Cloudwatch Event Rule enum for `state`.
enum CloudwatchEventRuleState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED'),
  enabledWithAllCloudtrailManagementEvents(
    'ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS',
  );

  const CloudwatchEventRuleState(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<CloudwatchEventRuleState> state,
  ) = CloudwatchEventRuleStatusState;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchEventRuleStatus.isEnabled] choice: sets `is_enabled`.
final class CloudwatchEventRuleStatusIsEnabled
    extends CloudwatchEventRuleStatus {
  const CloudwatchEventRuleStatusIsEnabled(this.isEnabled);

  final TfArg<bool> isEnabled;

  @override
  String get blockKey => 'is_enabled';

  @override
  Map<String, Object?> encode() => {'is_enabled': isEnabled.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'is_enabled': isEnabled};
}

/// The [CloudwatchEventRuleStatus.state] choice: sets `state`.
final class CloudwatchEventRuleStatusState extends CloudwatchEventRuleStatus {
  const CloudwatchEventRuleStatusState(this.state);

  final TfArg<CloudwatchEventRuleState> state;

  @override
  String get blockKey => 'state';

  @override
  Map<String, Object?> encode() => {'state': state.toTfJson()};

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
      CloudwatchEventRuleNameName;

  /// Sets `name_prefix`.
  const factory CloudwatchEventRuleName.namePrefix(TfArg<String> namePrefix) =
      CloudwatchEventRuleNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchEventRuleName.name] choice: sets `name`.
final class CloudwatchEventRuleNameName extends CloudwatchEventRuleName {
  const CloudwatchEventRuleNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [CloudwatchEventRuleName.namePrefix] choice: sets `name_prefix`.
final class CloudwatchEventRuleNameNamePrefix extends CloudwatchEventRuleName {
  const CloudwatchEventRuleNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_cloudwatch_event_rule`.
final class AwsCloudwatchEventRule extends Resource {
  static const String tfType = 'aws_cloudwatch_event_rule';

  AwsCloudwatchEventRule({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
