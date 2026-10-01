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
extension type const AppconfigConfigurationProfileType._(TfArg<String> _)
    implements TfArg<String> {
  AppconfigConfigurationProfileType.variable(String name)
    : this._(TfArg.variable(name));
  AppconfigConfigurationProfileType.expression(String template)
    : this._(TfArg.expression(template));
  const AppconfigConfigurationProfileType.arg(TfArg<String> arg) : this._(arg);

  static const awsAppconfigFeatureflags = AppconfigConfigurationProfileType._(
    TfArgLiteral('AWS.AppConfig.FeatureFlags'),
  );
  static const awsFreeform = AppconfigConfigurationProfileType._(
    TfArgLiteral('AWS.Freeform'),
  );

  static const List<AppconfigConfigurationProfileType> values = [
    awsAppconfigFeatureflags,
    awsFreeform,
  ];
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

  final AppconfigConfigurationProfileValidatorType type;

  Map<String, Object?> encode() => {
    'content': ?content?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const AppconfigConfigurationProfileValidatorType._(
  TfArg<String> _
) implements TfArg<String> {
  AppconfigConfigurationProfileValidatorType.variable(String name)
    : this._(TfArg.variable(name));
  AppconfigConfigurationProfileValidatorType.expression(String template)
    : this._(TfArg.expression(template));
  const AppconfigConfigurationProfileValidatorType.arg(TfArg<String> arg)
    : this._(arg);

  static const jsonSchema = AppconfigConfigurationProfileValidatorType._(
    TfArgLiteral('JSON_SCHEMA'),
  );
  static const lambda = AppconfigConfigurationProfileValidatorType._(
    TfArgLiteral('LAMBDA'),
  );

  static const List<AppconfigConfigurationProfileValidatorType> values = [
    jsonSchema,
    lambda,
  ];
}

/// Factory wrapper for `aws_appconfig_configuration_profile`.
final class AwsAppconfigConfigurationProfile extends Resource {
  static const String tfType = 'aws_appconfig_configuration_profile';

  AwsAppconfigConfigurationProfile(
    super.localName, {
    required TfArg<String> applicationId,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
    required TfArg<String> locationUri,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? retrievalRoleArn,
    TfArg<Map<String, String>>? tags,
    AppconfigConfigurationProfileType? type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration_profile_id` attribute.
  TfRef<String> get configurationProfileId =>
      TfRef.attribute<String>(this, 'configuration_profile_id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifier =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `location_uri` attribute.
  TfRef<String> get locationUri =>
      TfRef.attribute<String>(this, 'location_uri');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retrieval_role_arn` attribute.
  TfRef<String> get retrievalRoleArn =>
      TfRef.attribute<String>(this, 'retrieval_role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
