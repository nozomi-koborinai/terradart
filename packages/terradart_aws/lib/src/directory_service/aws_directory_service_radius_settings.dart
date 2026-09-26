// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_radius_settings`.
const Set<String> _awsDirectoryServiceRadiusSettingsSensitive = <String>{
  'shared_secret',
};

/// Factory wrapper for `aws_directory_service_radius_settings`.
final class AwsDirectoryServiceRadiusSettings extends Resource {
  static const String tfType = 'aws_directory_service_radius_settings';

  AwsDirectoryServiceRadiusSettings({
    required super.localName,
    required TfArg<String> authenticationProtocol,
    required TfArg<String> directoryId,
    required TfArg<String> displayLabel,
    required TfArg<num> radiusPort,
    required TfArg<num> radiusRetries,
    required TfArg<List<String>> radiusServers,
    required TfArg<num> radiusTimeout,
    TfArg<String>? region,
    required TfArg<String> sharedSecret,
    TfArg<bool>? useSameUsername,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_protocol': authenticationProtocol,
           'directory_id': directoryId,
           'display_label': displayLabel,
           'radius_port': radiusPort,
           'radius_retries': radiusRetries,
           'radius_servers': radiusServers,
           'radius_timeout': radiusTimeout,
           if (region != null) 'region': region,
           'shared_secret': sharedSecret,
           if (useSameUsername != null) 'use_same_username': useSameUsername,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceRadiusSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
