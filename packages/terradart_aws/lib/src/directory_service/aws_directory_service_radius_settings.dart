// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_radius_settings`.
const Set<String> _awsDirectoryServiceRadiusSettingsSensitive = <String>{
  'shared_secret',
};

/// Directory Service Radius Settings Authentication enum for `authentication_protocol`.
enum DirectoryServiceRadiusSettingsAuthenticationProtocol
    implements TerraformEnum {
  pap('PAP'),
  chap('CHAP'),
  msChapv1('MS-CHAPv1'),
  msChapv2('MS-CHAPv2');

  const DirectoryServiceRadiusSettingsAuthenticationProtocol(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_directory_service_radius_settings`.
final class AwsDirectoryServiceRadiusSettings extends Resource {
  static const String tfType = 'aws_directory_service_radius_settings';

  AwsDirectoryServiceRadiusSettings({
    required super.localName,
    required TfArg<DirectoryServiceRadiusSettingsAuthenticationProtocol>
    authenticationProtocol,
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
           'region': ?region,
           'shared_secret': sharedSecret,
           'use_same_username': ?useSameUsername,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceRadiusSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceRadiusSettings>`.
  RefTo<AwsDirectoryServiceRadiusSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_protocol` attribute.
  TfRef<String> get authenticationProtocolRef =>
      TfRef.attribute<String>(this, 'authentication_protocol');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryIdRef =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `display_label` attribute.
  TfRef<String> get displayLabelRef =>
      TfRef.attribute<String>(this, 'display_label');

  /// Reference to `radius_port` attribute.
  TfRef<num> get radiusPortRef => TfRef.attribute<num>(this, 'radius_port');

  /// Reference to `radius_retries` attribute.
  TfRef<num> get radiusRetriesRef =>
      TfRef.attribute<num>(this, 'radius_retries');

  /// Reference to `radius_servers` attribute.
  TfRef<List<String>> get radiusServersRef =>
      TfRef.attribute<List<String>>(this, 'radius_servers');

  /// Reference to `radius_timeout` attribute.
  TfRef<num> get radiusTimeoutRef =>
      TfRef.attribute<num>(this, 'radius_timeout');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `shared_secret` attribute.
  TfRef<String> get sharedSecretRef =>
      TfRef.attribute<String>(this, 'shared_secret');

  /// Reference to `use_same_username` attribute.
  TfRef<bool> get useSameUsernameRef =>
      TfRef.attribute<bool>(this, 'use_same_username');
}
