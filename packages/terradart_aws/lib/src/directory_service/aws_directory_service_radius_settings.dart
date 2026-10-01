// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_radius_settings`.
const Set<String> _awsDirectoryServiceRadiusSettingsSensitive = <String>{
  'shared_secret',
};

/// Directory Service Radius Settings Authentication enum for `authentication_protocol`.
extension type const DirectoryServiceRadiusSettingsAuthenticationProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  DirectoryServiceRadiusSettingsAuthenticationProtocol.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceRadiusSettingsAuthenticationProtocol.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DirectoryServiceRadiusSettingsAuthenticationProtocol.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pap = DirectoryServiceRadiusSettingsAuthenticationProtocol._(
    TfArgLiteral('PAP'),
  );
  static const chap = DirectoryServiceRadiusSettingsAuthenticationProtocol._(
    TfArgLiteral('CHAP'),
  );
  static const msChapv1 =
      DirectoryServiceRadiusSettingsAuthenticationProtocol._(
        TfArgLiteral('MS-CHAPv1'),
      );
  static const msChapv2 =
      DirectoryServiceRadiusSettingsAuthenticationProtocol._(
        TfArgLiteral('MS-CHAPv2'),
      );

  static const List<DirectoryServiceRadiusSettingsAuthenticationProtocol>
  values = [pap, chap, msChapv1, msChapv2];
}

/// Factory wrapper for `aws_directory_service_radius_settings`.
final class AwsDirectoryServiceRadiusSettings extends Resource {
  static const String tfType = 'aws_directory_service_radius_settings';

  AwsDirectoryServiceRadiusSettings(
    super.localName, {
    required DirectoryServiceRadiusSettingsAuthenticationProtocol
    authenticationProtocol,
    required TfArg<String> directoryId,
    required TfArg<String> displayLabel,
    required TfArg<num> radiusPort,
    required TfArg<num> radiusRetries,
    required TfArg<List<String>> radiusServers,
    required TfArg<num> radiusTimeout,
    TfArg<String>? region,
    required Sensitive<String> sharedSecret,
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
  TfRef<String> get authenticationProtocol =>
      TfRef.attribute<String>(this, 'authentication_protocol');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `display_label` attribute.
  TfRef<String> get displayLabel =>
      TfRef.attribute<String>(this, 'display_label');

  /// Reference to `radius_port` attribute.
  TfRef<num> get radiusPort => TfRef.attribute<num>(this, 'radius_port');

  /// Reference to `radius_retries` attribute.
  TfRef<num> get radiusRetries => TfRef.attribute<num>(this, 'radius_retries');

  /// Reference to `radius_servers` attribute.
  TfRef<List<String>> get radiusServers =>
      TfRef.attribute<List<String>>(this, 'radius_servers');

  /// Reference to `radius_timeout` attribute.
  TfRef<num> get radiusTimeout => TfRef.attribute<num>(this, 'radius_timeout');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `shared_secret` attribute.
  TfRef<String> get sharedSecret =>
      TfRef.attribute<String>(this, 'shared_secret');

  /// Reference to `use_same_username` attribute.
  TfRef<bool> get useSameUsername =>
      TfRef.attribute<bool>(this, 'use_same_username');
}
