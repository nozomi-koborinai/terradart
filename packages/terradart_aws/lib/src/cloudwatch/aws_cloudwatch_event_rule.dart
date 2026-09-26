// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_rule`.
const Set<String> _awsCloudwatchEventRuleSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_event_rule`.
final class AwsCloudwatchEventRule extends Resource {
  static const String tfType = 'aws_cloudwatch_event_rule';

  AwsCloudwatchEventRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? eventBusName,
    TfArg<String>? eventPattern,
    TfArg<bool>? forceDestroy,
    TfArg<bool>? isEnabled,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<String>? scheduleExpression,
    TfArg<String>? state,
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
           if (isEnabled != null) 'is_enabled': isEnabled,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (scheduleExpression != null)
             'schedule_expression': scheduleExpression,
           if (state != null) 'state': state,
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
