// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_event_configurations`.
const Set<String> _awsIotEventConfigurationsSensitive = <String>{};

/// Factory wrapper for `aws_iot_event_configurations`.
final class AwsIotEventConfigurations extends Resource {
  static const String tfType = 'aws_iot_event_configurations';

  AwsIotEventConfigurations(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotEventConfigurationsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotEventConfigurations>`.
  RefTo<AwsIotEventConfigurations> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `event_configurations` attribute.
  TfRef<Map<String, bool>> get eventConfigurations =>
      TfRef.attribute<Map<String, bool>>(this, 'event_configurations');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
