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

  final TfArg<String> key;

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
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
           if (action != null) 'action': action,
           if (eventBusName != null) 'event_bus_name': eventBusName,
           'principal': principal,
           if (region != null) 'region': region,
           'statement_id': statementId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventPermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
