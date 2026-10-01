// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../appconfig/aws_appconfig_configuration_profile.dart';

/// Sensitive field paths for `aws_appconfig_configuration_profile`.
const Set<String> _awsAppconfigConfigurationProfileSensitive = <String>{};

/// Factory wrapper for `aws_appconfig_configuration_profile`.
final class DataAwsAppconfigConfigurationProfile extends Data {
  static const String tfType = 'aws_appconfig_configuration_profile';

  DataAwsAppconfigConfigurationProfile({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> configurationProfileId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'configuration_profile_id': configurationProfileId,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigConfigurationProfileSensitive;

  /// A reference to the `aws_appconfig_configuration_profile` this data source reads, for
  /// arguments typed `RefTo<AwsAppconfigConfigurationProfile>`.
  RefTo<AwsAppconfigConfigurationProfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifier =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `location_uri` attribute.
  TfRef<String> get locationUri =>
      TfRef.attribute<String>(this, 'location_uri');

  /// Reference to `retrieval_role_arn` attribute.
  TfRef<String> get retrievalRoleArn =>
      TfRef.attribute<String>(this, 'retrieval_role_arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `validator` attribute.
  TfRef<List<Map<String, Object?>>> get validator =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validator');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `configuration_profile_id` attribute.
  TfRef<String> get configurationProfileId =>
      TfRef.attribute<String>(this, 'configuration_profile_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
