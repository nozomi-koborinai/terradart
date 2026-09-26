// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_event_configurations`.
const Set<String> _awsIotEventConfigurationsSensitive = <String>{};

/// Factory wrapper for `aws_iot_event_configurations`.
final class AwsIotEventConfigurations extends Resource {
  static const String tfType = 'aws_iot_event_configurations';

  AwsIotEventConfigurations({
    required super.localName,
    required TfArg<Map<String, bool>> eventConfigurations,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'event_configurations': eventConfigurations,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotEventConfigurationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
