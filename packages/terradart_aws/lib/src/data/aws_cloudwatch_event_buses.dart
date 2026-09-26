// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_buses`.
const Set<String> _awsCloudwatchEventBusesSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_event_buses`.
final class DataAwsCloudwatchEventBuses extends Data {
  static const String tfType = 'aws_cloudwatch_event_buses';

  DataAwsCloudwatchEventBuses({
    required super.localName,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventBusesSensitive;

  /// Reference to `event_buses` attribute.
  TfRef<List<Map<String, Object?>>> get eventBuses =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'event_buses');
}
