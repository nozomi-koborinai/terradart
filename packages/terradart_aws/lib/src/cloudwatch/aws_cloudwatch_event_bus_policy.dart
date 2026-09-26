// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_bus_policy`.
const Set<String> _awsCloudwatchEventBusPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_event_bus_policy`.
final class AwsCloudwatchEventBusPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_event_bus_policy';

  AwsCloudwatchEventBusPolicy({
    required super.localName,
    TfArg<String>? eventBusName,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (eventBusName != null) 'event_bus_name': eventBusName,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventBusPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
