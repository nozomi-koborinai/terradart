// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_hosted_configuration_version`.
const Set<String> _awsAppconfigHostedConfigurationVersionSensitive = <String>{
  'content',
};

/// Factory wrapper for `aws_appconfig_hosted_configuration_version`.
final class AwsAppconfigHostedConfigurationVersion extends Resource {
  static const String tfType = 'aws_appconfig_hosted_configuration_version';

  AwsAppconfigHostedConfigurationVersion(
    super.localName, {
    required TfArg<String> applicationId,
    required TfArg<String> configurationProfileId,
    required Sensitive<String> content,
    required TfArg<String> contentType,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<String>? versionLabel,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'configuration_profile_id': configurationProfileId,
           'content': content,
           'content_type': contentType,
           'description': ?description,
           'region': ?region,
           'version_label': ?versionLabel,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppconfigHostedConfigurationVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppconfigHostedConfigurationVersion>`.
  RefTo<AwsAppconfigHostedConfigurationVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version_number` attribute.
  TfRef<num> get versionNumber => TfRef.attribute<num>(this, 'version_number');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `configuration_profile_id` attribute.
  TfRef<String> get configurationProfileId =>
      TfRef.attribute<String>(this, 'configuration_profile_id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `version_label` attribute.
  TfRef<String> get versionLabel =>
      TfRef.attribute<String>(this, 'version_label');
}
