// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_configuration_profile`.
const Set<String> _awsAppconfigConfigurationProfileSensitive = <String>{
  'validator.content',
};

/// Typed helper for the `validator` block of
/// `aws_appconfig_configuration_profile` (derived from provider schema).
@immutable
final class AppconfigConfigurationProfileValidator {
  const AppconfigConfigurationProfileValidator({
    this.content,
    required this.type,
  });

  final TfArg<String>? content;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (content != null) 'content': content!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_appconfig_configuration_profile`.
final class AwsAppconfigConfigurationProfile extends Resource {
  static const String tfType = 'aws_appconfig_configuration_profile';

  AwsAppconfigConfigurationProfile({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? description,
    TfArg<String>? kmsKeyIdentifier,
    required TfArg<String> locationUri,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? retrievalRoleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    List<AppconfigConfigurationProfileValidator>? validator,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           if (description != null) 'description': description,
           if (kmsKeyIdentifier != null) 'kms_key_identifier': kmsKeyIdentifier,
           'location_uri': locationUri,
           'name': name,
           if (region != null) 'region': region,
           if (retrievalRoleArn != null) 'retrieval_role_arn': retrievalRoleArn,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (validator != null)
             'validator': TfArg.literal([
               for (final e in validator) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigConfigurationProfileSensitive;

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
