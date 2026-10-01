// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_permission`.
const Set<String> _awsCloudwatchEventPermissionSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `aws_cloudwatch_event_permission` (derived from provider schema).
@immutable
final class CloudwatchEventPermissionCondition {
  const CloudwatchEventPermissionCondition({
    required this.key,
    required this.type,
    required this.value,
  });

  final TfArg<CloudwatchEventPermissionKey> key;

  final TfArg<CloudwatchEventPermissionType> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum CloudwatchEventPermissionKey implements TerraformEnum {
  awsPrincipalorgid('aws:PrincipalOrgID');

  const CloudwatchEventPermissionKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum CloudwatchEventPermissionType implements TerraformEnum {
  stringequals('StringEquals');

  const CloudwatchEventPermissionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudwatch_event_permission`.
final class AwsCloudwatchEventPermission extends Resource {
  static const String tfType = 'aws_cloudwatch_event_permission';

  AwsCloudwatchEventPermission({
    required super.localName,
    TfArg<String>? action,
    TfArg<String>? eventBusName,
    required TfArg<String> principal,
    TfArg<String>? region,
    required TfArg<String> statementId,
    CloudwatchEventPermissionCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': ?action,
           'event_bus_name': ?eventBusName,
           'principal': principal,
           'region': ?region,
           'statement_id': statementId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventPermission>`.
  RefTo<AwsCloudwatchEventPermission> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get actionRef => TfRef.attribute<String>(this, 'action');

  /// Reference to `event_bus_name` attribute.
  TfRef<String> get eventBusNameRef =>
      TfRef.attribute<String>(this, 'event_bus_name');

  /// Reference to `principal` attribute.
  TfRef<String> get principalRef => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `statement_id` attribute.
  TfRef<String> get statementIdRef =>
      TfRef.attribute<String>(this, 'statement_id');
}
