// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_appconfig_configuration_profile`.
const Set<String> _awsAppconfigConfigurationProfileSensitive = <String>{
  'validator.content',
};

/// Appconfig Configuration Profile enum for `type`.
enum AppconfigConfigurationProfileType implements TerraformEnum {
  awsAppconfigFeatureflags('AWS.AppConfig.FeatureFlags'),
  awsFreeform('AWS.Freeform');

  const AppconfigConfigurationProfileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `validator` block of
/// `aws_appconfig_configuration_profile` (derived from provider schema).
@immutable
final class AppconfigConfigurationProfileValidator {
  const AppconfigConfigurationProfileValidator({
    this.content,
    required this.type,
  });

  final TfArg<String>? content;

  final TfArg<AppconfigConfigurationProfileValidatorType> type;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum AppconfigConfigurationProfileValidatorType implements TerraformEnum {
  jsonSchema('JSON_SCHEMA'),
  lambda('LAMBDA');

  const AppconfigConfigurationProfileValidatorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appconfig_configuration_profile`.
final class AwsAppconfigConfigurationProfile extends Resource {
  static const String tfType = 'aws_appconfig_configuration_profile';

  AwsAppconfigConfigurationProfile({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
    required TfArg<String> locationUri,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? retrievalRoleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<AppconfigConfigurationProfileType>? type,
    List<AppconfigConfigurationProfileValidator>? validator,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'description': ?description,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           'location_uri': locationUri,
           'name': name,
           'region': ?region,
           'retrieval_role_arn': ?retrievalRoleArn,
           'tags': ?tags,
           'type': ?type,
           if (validator != null)
             'validator': TfArg.literal([
               for (final e in validator) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigConfigurationProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppconfigConfigurationProfile>`.
  RefTo<AwsAppconfigConfigurationProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration_profile_id` attribute.
  TfRef<String> get configurationProfileId =>
      TfRef.attribute<String>(this, 'configuration_profile_id');
}
