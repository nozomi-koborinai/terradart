// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
sealed class CloudwatchEventRuleIsEnabledOrState {
  const CloudwatchEventRuleIsEnabledOrState();

  /// Sets `is_enabled`.
  const factory CloudwatchEventRuleIsEnabledOrState.isEnabled(
    TfArg<bool> isEnabled,
  ) = CloudwatchEventRuleIsEnabledOrStateIsEnabled;

  /// Sets `state`.
  const factory CloudwatchEventRuleIsEnabledOrState.state(
    TfArg<CloudwatchEventRuleState> state,
  ) = CloudwatchEventRuleIsEnabledOrStateState;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchEventRuleIsEnabledOrState.isEnabled] choice: sets `is_enabled`.
final class CloudwatchEventRuleIsEnabledOrStateIsEnabled
    extends CloudwatchEventRuleIsEnabledOrState {
  const CloudwatchEventRuleIsEnabledOrStateIsEnabled(this.isEnabled);

  final TfArg<bool> isEnabled;

  @override
  String get blockKey => 'is_enabled';

  @override
  Map<String, Object?> encode() => {'is_enabled': isEnabled.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'is_enabled': isEnabled};
}

/// The [CloudwatchEventRuleIsEnabledOrState.state] choice: sets `state`.
final class CloudwatchEventRuleIsEnabledOrStateState
    extends CloudwatchEventRuleIsEnabledOrState {
  const CloudwatchEventRuleIsEnabledOrStateState(this.state);

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
sealed class CloudwatchEventRuleNameOrNamePrefix {
  const CloudwatchEventRuleNameOrNamePrefix();

  /// Sets `name`.
  const factory CloudwatchEventRuleNameOrNamePrefix.name(TfArg<String> name) =
      CloudwatchEventRuleNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory CloudwatchEventRuleNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = CloudwatchEventRuleNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudwatchEventRuleNameOrNamePrefix.name] choice: sets `name`.
final class CloudwatchEventRuleNameOrNamePrefixName
    extends CloudwatchEventRuleNameOrNamePrefix {
  const CloudwatchEventRuleNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [CloudwatchEventRuleNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class CloudwatchEventRuleNameOrNamePrefixNamePrefix
    extends CloudwatchEventRuleNameOrNamePrefix {
  const CloudwatchEventRuleNameOrNamePrefixNamePrefix(this.namePrefix);

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
    CloudwatchEventRuleIsEnabledOrState? isEnabledOrState,
    CloudwatchEventRuleNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<String>? scheduleExpression,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (eventBusName != null) 'event_bus_name': eventBusName,
           if (eventPattern != null) 'event_pattern': eventPattern,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           ...?isEnabledOrState?.argMap,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (scheduleExpression != null)
             'schedule_expression': scheduleExpression,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
